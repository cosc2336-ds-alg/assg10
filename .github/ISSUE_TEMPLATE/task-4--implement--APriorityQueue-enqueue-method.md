---
name: 'Task 4: Implement `APriorityQueue` `enqueue()` Overridden Method'
about: Task 4 for Students
title: 'Task 4: Implement `APriorityQueue` `enqueue()` Overridden Method'
labels: enhancement
assignees: ''

---

**Description**

The fourth task is to implement `enqueue()` but this time for the `APriorityQueue` class.  This task will be a bit more challenging than the previous 3.

The `APriorityQueue` class inherts from the `AQueue` class its array based implementation, member functions and member variables.  You only need to redefine an overridden `enqueue()` method.  This method will start off the same as the `enqueue` for the `AQueue` parent class.  However, in order to implement a priority queue, you need to insert new values into the queue ordered by priority, instead of inserting new values at the back of the queue.  This requires you to do some sort of search and shifting and/or swapping, thus this method becomes O(n) to perform.


**Suggested Solution**

There are two suggested possible approaches, try the one that makes the most sense to you:

1. Use a reverse bubble sort pass, e.g. iterating from the back of the queue
   towards the front, compare each value to the previous value, and if they
   are out of order swap them.  Though it doesn't hurt to do this all of the
   way till the front, you can stop bubble/swapping as soon as you find two
   items that are not out of order.
   
or

2. Like an insertion sort.  Again iterating from the back of the queue towards
   the front, shift up items by 1 location.  You perform the shifting up until
   you detect an index with a greater or equal priority to the new value
   being placed in the queue.  Once you find this location, you have just
   shifted the item with a smaller priority up by 1 location, leaving a hole
   in the array, where you should insert the new value.

As discussed, the `%` operator doesn't work in C/C++ when decrementing a value,
to wrap the value around in the other direction to the end of the array.  There is
a `modulo()` function defined for you in the `APriorityQueue` class that you can
use instead of `%`.  But feel free to use explict `if` conditions if that makes more
sense to you.


**Additional Requirements**



