##### AQS中的变量如何保证线程

exclusiveOwnerThread通过state来保证线程安全

通过cas对state进行原子操作。其它的成员变量需要通过对state判断后再进行操作

要不就是同一个线程

![tryAcquire](tryAcquire.png)