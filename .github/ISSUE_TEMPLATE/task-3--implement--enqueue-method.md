---
name: 'Task 3: Implement `AQueue` `enqueue()` Mutator Method'
about: Task 3 for Students
title: 'Task 3: Implement `AQueue` `enqueue()` Mutator Method'
labels: enhancement
assignees: ''

---

**Description**

Implement the missing `enqueue()` method for the `AQueue` array based implementation
of the `Queue` abstraction.  This method will be similar ot previous methods
to add new items to the data structure that you have seen before.  The purpose of
`enqueue()` is to add an item onto the back of the queue, which is the standard
definition of a queue FIFO (first-in-first-out).


**Suggested Solution**

You need to first make sure there is enough room in the array to enqueue the item.
You should call/reuse the provided `growQueueIfNeeded()` private member function
to ensure this.

When there is enough room in the array, the actual enqueuing of the new value is
relatively simple.  You need to first increase the `backIndex` location by 1, with the
wrinkle being the same as for the previous `dequeue()` method, that you need to 
correctly wrap the `backIndex` around the circular buffer if it goes beyond the
end of the current array `allocationSize`.

**Additional Requirements**

- You must reuse the `growQueueIfNeeded()` correctly to ensure the array is big
  enough, or if not will be grown to be big enough, before enqueing the value.

