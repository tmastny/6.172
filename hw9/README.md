# hw9

## item3 

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




