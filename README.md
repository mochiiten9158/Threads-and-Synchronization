# CS 450 Machine Problem: Threads and Synchronization

## Overview

For this machine problem you will be adding more system calls to xv6 that:

1. Support *kernel-level threading*, so that concurrency within a single
   user-level process is possible.
2. Provide a *basic synchronization mechanism* -- the mutex lock -- for said
   threads to use.

## Threading API (25 points)

You will implement the following system calls to support thread creation and
management:

`int thread_create(void (*tmain)(void *), void *stack, void *arg);`

- This creates a new thread that starts execution at the function `tmain`, which
  is called with the argument `arg`. The caller is responsible for allocating
  (using `malloc`, given in the file "umalloc.c") a new user stack before
  calling `thread_create` and passing the address of the top of this memory
  region in as the `stack` argument. Returns the thread ID (which is really just
  a process ID) of the new thread.

- Its implementation will closely mimic that of `fork`, except that the newly
  created process will *share the address space* of its parent and will
  therefore have automatic access to all of its parent's code and data segments.

`int thread_join(void **stack);`

- This will cause the caller to block until a child thread has terminated, upon
  which its ID will be returned and a pointer to its stack placed in `stack` (so
  that the latter can be freed). If the caller does not have any child threads,
  it will return immediately with `-1`.

- While this is similar to the `wait` system call, note that it only operates on
  children that share the same address space. `wait`, in turn, will need to be
  updated so that it only synchronizes on processes created by the caller that
  do *not* share the same address space.

- The main thread (i.e., the "original" thread) of a given process can call
  `thread_join` as many times as it invoked `thread_create`, so to ensure it
  exits last.

## Mutex (25 points)

To allow your newly minted threads to coordinate critical sections and safely
share data, you will implement the following system calls that expose a mutex
lock. The lock will be implemented internally using a spinlock.

`int mtx_create(int locked);`

- Creates a mutex lock and returns an opaque ID (you might wish to `typedef` a
  separate type for the lock ID, though it isn't strictly necessary). The lock
  starts out in the `locked` state (binary: true or false).

`int mtx_lock(int lock_id);`

- Blocks until the lock has been acquired.

`int mtx_unlock(int lock_id);`

- Releases the lock, potentially unblocking a single waiting thread. 

Note that you can build arbitrarily more sophisticated synchronization
mechanisms (e.g., semaphores) in userspace by leveraging this mutex lock.

## Testing (15 points)

To test your code, you should write a program named `pctest` that implements the
producer/consumer problem by sharing a bounded buffer between a parent and child
(or sibling) threads, using the mutex as a primitive for implementing
synchronization. The bounded buffer itself may be as simple as a fixed sized
array (with global indices to mark the in/out positions), or a (non-thread-safe)
data structure that you implement separately.

Your program should run for sufficiently long to demonstrate concurrency (i.e.,
the consumer and producer should preempt each other), and you should also output
the values as they are produced and consumed so as to demonstrate that they are
communicated wholly, and in order. To keep things simple, the values may just be
ordinal values; e.g., sequential integer values. 

Add this test program (`pctest.c`) to your git repository, and be sure to commit
and push it as part of your submission.

## Submission

To submit your work, simply commit all your changes and push your work to your
GitHub repository.

Be sure to add any new source files you created with "`git add
FILENAME`", then commit all your changes and push them to your GitHub repository.
