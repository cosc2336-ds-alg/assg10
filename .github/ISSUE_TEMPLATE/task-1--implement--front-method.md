---
name: 'Task 1: Implement `AQueue` `front()` Accessor Method'
about: Task 1 for Students
title: 'Task 1: Implement `AQueue` `front()` Accessor Method'
labels: enhancement, good first issue
assignees: ''

---

**Description**

Implement the missing `front()` method for the `AQueue` array based implementation
of the `Queue` abstraction.  This function should be similar to previous data
structure methods you have seen where we were getting the value from the
front ot back of the array holding the values for the data structure.

**Suggested Solution**

For the `AQueue` class, there are member variables named `frontIndex` and `backIndex`
which keep track of the location of the items on the front and back of the queue
respectively.  You need to access the item at the front and return its value.

Also, as with methods of this type, you need to first check if the queue is
empty, and throw an exception instead if an attempt is made to access the front
item from an empty queue.

**Additional Requirements**

- You should make it a habit to always reuse code instead of repeating code.  Here you need to test if the stack is empty or not.  Reuse the `isEmpty()` function instead of testing size or the status of `front` and `back` pointers.  This makes your intention clearer (`isEmpty()` is generally more readable).  And it means if we want to change how we test if the list is empty or not, we can do it in one function if all parts of the class use this function when checking if the list is empty or not. 
- You are required to throw the `QueueEmptyException` from this method if an attempt is made to access the front item from an empty queue.
