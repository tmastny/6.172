# hw9



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



