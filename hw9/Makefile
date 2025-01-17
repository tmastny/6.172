all: hashtable undef user
#DBG=-DVERBOSE
CC=clang
CFLAGS=-std=gnu99 -gdwarf-3 -Wall -O1
LDFLAGS += -ldl
REPLAY=0
# non-cilk, single-threaded only record replay support with gdb 7.5
ifeq ($(REPLAY),0)
# Cilk Plus flags
hashtable: CFLAGS += -fopenmp
hashtable: LDFLAGS += -fopenmp
hashlock-unit: CFLAGS += -fopenmp
hashlock-unit: LDFLAGS += -fopenmp
endif
hashtable: LDFLAGS += -lpthread
hashlock-unit: LDFLAGS += -lpthread

hashtable1: ./hashtable
	./hashtable
hashtable10: ./hashtable
	bash -c "for((i=0;i<10;i++)) do ./hashtable; done"
hashtable1000: ./hashtable
	bash -c "for((i=0;i<1000;i++)) do ./hashtable; done"

# XXX modify this target so that 1000 runs all succeed
hashtable1000-good: ./hashtable
	bash -c "for((i=0;i<1000;i++)) do setarch x86_64 -R ./hashtable 1 100; done"
# XXX modify this target so the program always fails
hashtable1-bad: ./hashtable
	setarch x86_64 -R ./hashtable 1 1
 

hashtable-mt: ./hashtable
	./hashtable 10
hashtable-mt1000: ./hashtable
	bash -c 'for((i=0;i<1000;i++)); do \
		if ! ./hashtable 10 2>&1 | grep -q "failed"; then \
			continue; \
		else \
			echo "Failed at iteration $$i"; \
			exit 1; \
		fi; \
	done'

whoami: ./user
	@./user

clean: 
	@-rm -f ./undef ./hashtable ./hashlock-unit ./user

undef-run: ./undef
	./undef
	./undef

undef-compare: 
	make CFLAGS=-O3 clean undef; ./undef
	make CFLAGS=-O1 clean undef; ./undef

undef-noaslr: ./undef
	setarch x86_64 -R ./undef
	setarch x86_64 -R ./undef

undef-env: ./undef
	setarch x86_64 -R env USER=me ./undef
	setarch x86_64 -R env USER=professoramarasinghe ./undef

undef-all: undef-run undef-compare undef-env undef-noaslr 

hashtable: hashtable.c hashlock.c common.h
	$(CC) -o $@ $(DBG) $(CFLAGS) hashtable.c hashlock.c $(LDFLAGS)

%: %.c
	$(CC) -o $@ $(DBG) $(CFLAGS) $^ $(LDFLAGS)

hashlock-unit: hashlock.c Makefile
	$(CC) -o $@ -Wall -g -DUNIT_TEST $< $(LDFLAGS)

testall: hashtable10 hashlock-unit undef-all
