#include <stdio.h>
#include <omp.h>
#include <pthread.h>
#include <unistd.h>  // for usleep

// Regular mutexes (potential false sharing)
pthread_mutex_t regular_locks[16];

// Padded mutexes (avoid false sharing)
struct padded_mutex {
    pthread_mutex_t mutex;
    char padding[64 - sizeof(pthread_mutex_t)];
} __attribute__((aligned(64)));
struct padded_mutex padded_locks[16];

// Some work to do while holding lock
void do_work() {
    // Small, consistent amount of work
    volatile int x = 0;
    for(int i = 0; i < 100; i++) {
        x += i;
    }
}

double test_locks(int padded) {
    double start = omp_get_wtime();
    
    #pragma omp parallel
    {
        int id = omp_get_thread_num();
        int lock_index = id % 16;
        
        // Each thread hammers its own lock
        for(int i = 0; i < 1000000; i++) {
            if (padded) {
                pthread_mutex_lock(&padded_locks[lock_index].mutex);
                do_work();
                pthread_mutex_unlock(&padded_locks[lock_index].mutex);
            } else {
                pthread_mutex_lock(&regular_locks[lock_index]);
                do_work();
                pthread_mutex_unlock(&regular_locks[lock_index]);
            }
        }
    }
    
    return omp_get_wtime() - start;
}

int main() {
    // Initialize locks
    for(int i = 0; i < 16; i++) {
        pthread_mutex_init(&regular_locks[i], NULL);
        pthread_mutex_init(&padded_locks[i].mutex, NULL);
    }
    
    // Run tests with different thread counts
    for(int threads = 2; threads <= 8; threads *= 2) {
        printf("\nTesting with %d threads:\n", threads);
        omp_set_num_threads(threads);
        
        double regular_total = 0, padded_total = 0;
        
        // Run 20 iterations
        for(int iter = 0; iter < 20; iter++) {
            regular_total += test_locks(0);
            padded_total += test_locks(1);
        }
        
        printf("Average time with regular locks: %f seconds\n", 
               regular_total / 20.0);
        printf("Average time with padded locks: %f seconds\n", 
               padded_total / 20.0);
        printf("Difference: %f seconds\n", 
               (regular_total - padded_total) / 20.0);
    }
    
    return 0;
}