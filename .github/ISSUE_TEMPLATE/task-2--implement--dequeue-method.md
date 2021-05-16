---
name: 'Task 2: Implement `AQueue` `dequeue()` Mutator Method'
about: Task 2 for Students
title: 'Task 2: Implement `AQueue` `dequeue()` Mutator Method'
labels: enhancement
assignees: ''

---

**Description**

Implement the missing `dequeue()` method for the `AQueue` array based implementation
of the `Queue` abstraction.  This method will also be similar to previous
methods to remove an item from an array based implementation, though in this case
the `AQueue` class has a specific member variable named `frontIndex` that keeps
track of the item at the front of the queue.  Of course, for a standard `Queue` abstraction,
it is the front item on the queue that is removed by the `dequeue()` operation, which
is the standard definition of a queue operation being a FIFO (first-in-first-out).


**Suggested Solution**

As usual, you should first check if the queue is empty for these types of methods, and
throw a `QueueEmptyException` if an attempt is made to dequeue from an empty queue.

As discussed in the assignment description, for the `AQueue` class, the array of `values`
is treated as a circular buffer.  So while dequeueing an item is simply, you simply need
to increment the `frontIndex`, there is a wrinkle.  If, after incrementing the index,
you wrap around bast the end of the array of `values`, you need to make sure that you
wrap back to the beginning index 0 for the `frontIndex`.  As discussed in the assignment,
you can do this with an explicit `if` condition statement, or more commonly this is done
using modulo arithmetic.

**Additional Requirements**

- You should make it a habit to always reuse code instead of repeating code.  Here you need to test if the stack is empty or not.  Reuse the `isEmpty()` function instead of testing size or the status of `front` and `back` pointers.  This makes your intention clearer (`isEmpty()` is generally more readable).  And it means if we want to change how we test if the list is empty or not, we can do it in one function if all parts of the class use this function when checking if the list is empty or not. 
- You are required to throw the `QueueEmptyException` from this method if an attempt is made to access the front item from an empty queue.
