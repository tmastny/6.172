# hw9

## write-up 4

The problem with linear probing is that whenever a key collides, the final position of the entry will depend on which key was inserted first. 

So my first thought was the linked-list style hashtable, because then every key that collides will still be in the same bucket. BUT the order of the linked list will change, so that seems to violate "final state" requirement.

The question is ambigious in my opinion, but one option is the
deterministic hashtable described here:
https://wiki.mozilla.org/User:Jorend/Deterministic_hash_tables#:~:text=A%20deterministic%20hash%20table%20proposed,than%20the%20open%20addressing%20implementations.

Funny enough, it uses the same idea from write-up 3. 
The difference is that we keep `entries` in insertion order,
so we can always iterate over the hashtable in a deterministic
order.

## write-up 3

One method could be that that hashtable stores pointers to the entries rather than the entries themselves. This might make data access a little more inefficient, but would require only one swap. 

The trick is to avoid dynamic alloctaion is to create
an `entries` array and `hashtable` array like this:
```c
entry_t entries[TABLESIZE];  // Pre-allocated array
entry_t* hashtable[TABLESIZE];  // Array of pointers into entries
```
with an `init` function that initializes the `hashtable` array
to point to the corresponding element in the `entries` array.

## write-up 2

Global contention with hash table lock?
We could make that lockless at least.
But that point of contention is much shorter than the 
rowlock contention.

## write-up 1

False sharing!

Recall cache coherency policies:
* CPU-0 writes to a byte in a cache line. 
* that cache line is marked as M, modified.
* the memory controller marks that cache line as I, invalid
  for all other CPUs.
* Later, CPU-1 reads the same cache line and sees it as invalid.
* the memory controll then requests the cache line from 
  CPU-0 and both are marked as S for shared. 

Problem: two separate threads working on independent pieces of
data in the same cache line. Even though there is no mutex sync,
they have to wait for the cache coherency policy each write. 
Example:
* thread A writes to cache line, becomes M
* thread B reads the same cache line sees line as I
* thread B has to wait for the cache line to be synced
  from CPU-0 to CPU-1

Assume that a mutex is 40 bytes. One idea is to pad the mutexes,
so each is on a separate cache line. So instead of 16 * 40 = 640 bytes,
we use 16 * 64 = 1024 bytes, but each mutex is separate, 
separate threads locking on different mutexes never have to wait for
cache coherency.

One interesting note: if we used `rowlock` how many mutexes would we get for
1024 bytes? 1024 / 40 = 25. So the extra memory from padding isn't even that much,
especially since those mutexes could still be false sharing.

### false sharing benchmark

```bash
clang -o mutex_bench mutex_bench.c -fopenmp -lpthread
./mutex_bench

# w/0 CPU affinity
Testing with 2 threads:
Average time with regular locks: 0.698022 seconds
Average time with padded locks: 0.631817 seconds
Difference: 0.066205 seconds

Testing with 4 threads:
Average time with regular locks: 0.752809 seconds
Average time with padded locks: 0.712890 seconds
Difference: 0.039919 seconds

Testing with 8 threads:
Average time with regular locks: 1.614843 seconds
Average time with padded locks: 1.600959 seconds
Difference: 0.013884 seconds
```

## item3 

Linear probing was running out the array bounds.

### attempts

Record and replay:
```bash
gdb -q \
    -ex "set follow-fork-mode child" \
    -ex "set breakpoint pending on" \
    -ex "b main" \
    -ex "run" \
    -ex "continue" \
    --args setarch x86_64 -R ./hashtable 1 1
```

```bash
gdb -q \
    -ex "b main" \
    -ex "run" \
    -ex "record" \
    --args ./hashtable 1 1
```

`gdb` reverse debugging stackoverflow errors:
* https://stackoverflow.com/questions/43750603/gdb-reverse-debugging-avx2
* https://stackoverflow.com/questions/42451492/disable-avx-optimized-functions-in-glibc-ld-hwcap-mask-etc-ld-so-nohwcap-for
* https://stackoverflow.com/questions/2528918/gdb-reverse-debugging-fails-with-process-record-does-not-support-instruction-0x
* https://stackoverflow.com/questions/40125154/target-record-full-in-gdb-makes-n-command-fail-on-printf-with-process-recor

Also, to use `rr` you need `-cpu host` in qemu, but I need `-cpu Haswell` for x86 support.
* https://github.com/rr-debugger/rr/wiki/Building-And-Installing

I also think you need to get enable `pmu` in qemu, but I couldn't figure out how:
I added it to the qemu flags, but the hardware performance counters were still disabled.


## item 1 and 2

Remove ASLR randomization and find a seed that works.

```bash
# XXX modify this target so that 1000 runs all succeed
hashtable1000-good: ./hashtable
	bash -c "for((i=0;i<1000;i++)) do setarch x86_64 -R ./hashtable 1 100; done"
# XXX modify this target so the program always fails
hashtable1-bad: ./hashtable
	setarch x86_64 -R ./hashtable 1 1
``` 

## nondeterministic hashtable

`hashtable_insert_fair`:
* instead of locking the entire hashtable, 
  this function locks the index of the hashtable
  it is trying to insert into. 
* if the index is empty, it puts in the entry and
  breaks. Otherwise, it locks the next index and
  releases the old index.


## undef

```bash
undef-env: ./undef
	setarch x86_64 -R env USER=me ./undef
	setarch x86_64 -R env USER=professoramarasinghe ./undef

make undef-env | grep hash
# hash of i=44
# hash of i=28
```


```bash
undef-env: ./undef
	setarch x86_64 -R env USER=me ./undef
	setarch x86_64 -R env USER=pr ./undef

make undef-env | grep hash
# hash of i=44
# hash of i=44
```

The key idea: when a program starts,
environment variables are stored at the top of the stack!

So variables of different lengths make the stack pointer
go lower, so the "hash" changes.




