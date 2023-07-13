#include "types.h"
#include "x86.h"
#include "defs.h"
#include "date.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"

int
sys_fork(void)
{
  return fork();
}

int
sys_exit(void)
{
  exit();
  return 0;  // not reached
}

int
sys_wait(void)
{
  return wait();
}

int
sys_kill(void)
{
  int pid;

  if(argint(0, &pid) < 0)
    return -1;
  return kill(pid);
}

int
sys_getpid(void)
{
  return myproc()->pid;
}

int
sys_sbrk(void)
{
  int addr;
  int n;

  if(argint(0, &n) < 0)
    return -1;
  addr = myproc()->sz;
  if(growproc(n) < 0)
    return -1;
  return addr;
}

int
sys_sleep(void)
{
  int n;
  uint ticks0;

  if(argint(0, &n) < 0)
    return -1;
  acquire(&tickslock);
  ticks0 = ticks;
  while(ticks - ticks0 < n){
    if(myproc()->killed){
      release(&tickslock);
      return -1;
    }
    sleep(&ticks, &tickslock);
  }
  release(&tickslock);
  return 0;
}

// return how many clock tick interrupts have occurred
// since start.
int
sys_uptime(void)
{
  uint xticks;

  acquire(&tickslock);
  xticks = ticks;
  release(&tickslock);
  return xticks;
}

int thread_create(void (*tmain)(void *), void *stack, void *arg);

int
sys_thread_create(void){
  char *stack;
  char *arg;
  char *function;
  if(argptr(0, &function, 1) < 0 || argptr(1, &stack, 0) < 0 || argptr(2, &arg, 0) < 0){
    return -1;
  }
  else{
    return thread_create((void *)function, (void *)stack, (void *)arg);
  }
}

int thread_join(void **stack);

int
sys_thread_join(void){
  char* stack;
  if(argptr(0, &stack, 1) < 0){
    return -1;
  }
  else{
    return thread_join((void **)stack);
  }
}

int mtx_create(int locked);

int
sys_mtx_create(void){
  int locked;
  if(argint(0, &locked) < 0){
    return -1;
  }
  else{
    return mtx_create(locked);
  }
}

int mtx_lock(int lock_id);

int sys_mtx_lock(void){
  int lock_id;
  if(argint(0, &lock_id) < 0){
    return -1;
  }
  else{
    return mtx_lock(lock_id);
  }
}

int mtx_unlock(int lock_id);

int sys_mtx_unlock(void){
  int lock_id;
  if(argint(0, &lock_id) < 0){
    return -1;
  }
  else{
    return mtx_unlock(lock_id);
  }
}

int clone(void (*tmain)(void *, void*), void *arg1, void *arg2, void *stack);

int 
sys_clone(void){
  void (*func)(void *, void *);
  void *arg1;
  void *arg2;
  void *stack;
  if((argptr(0, (void*)&func, sizeof(void*)) < 0) || (argptr(1, (void*)&arg1, sizeof(void*)) < 0) || (argptr(2, (void*)&arg2, sizeof(void*)) < 0) || (argptr(3, (void*)&stack, sizeof(void*)) < 0)){
    return -1;
  }
  else{
    return clone(func, arg1, arg2, stack);
  }
}

int join(void **stack);

int sys_join(void)
{
  void **stack = 0;
  if(argptr(0, (void*)&stack, sizeof(void**)) < 0){
    return -1;
  }
  else{
    return join(stack);
  }
}