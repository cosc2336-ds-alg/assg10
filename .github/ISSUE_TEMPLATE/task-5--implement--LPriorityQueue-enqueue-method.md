---
name: 'Task 5: Implement `LPriorityQueue` `enqueue()` Overridden Method'
about: Task 5 for Students
title: 'Task 5: Implement `LPriorityQueue` `enqueue()` Overridden Method'
labels: enhancement
assignees: ''

---

**Description**

The fifth task is to implement the `enqueue()` method but now for the linked list implementation of the priority queue `LPriorityQueue` class.  

This class is again derived from the non-priority linked list `LQueue` implementation.  So it will inherit all of the member variables and functions from the parent, including the `frontNode` and `backNode` member variables.  Again like the previous task, you can start by simply copying the `enqueue()` implementation and its declaration from the `LQueue` header and implementation file into the `LPriorityQueue` files.  This should allow you to compile and run the tests of the linked list priority queue, though the tests will not run until your `enqueue()` properly inerts items into the queue ordered by priority.  Inserting the new value by priority order will require some kind of searching and/or swapping, which means that this method becomes O(n) to perform.

**Suggested Solution**

There are again two suggested approaches based on swapping or insertion that you can try to implement the linked list priority `enqueue()` method:

1) A bubbling approach again.  Create a new node and insert it on the
   front of the linked list.  Then compare node values with the next
   node value, and swap the actual values if they are out of order.
   Notice for this approach you actually swap the values in two nodes,
   not the nodes themselves.  You can stop once you detect you no
   longer need to swap values because they are in the correct order.
   
or alternatively you can do an insertion approach

2) Create a new node with the new value.  But instead of inserting on the front,
   start a search of the list.  You want to find the position where the current
   node is greater or equal in priority to the new value, but the next node it
   points to is lower priority.  When you find that position, insert the new node, by
   pointing the current position to the new node, and the new node next link
   points to the next node with the lower priority.


In both cases, you may want or need to have a first special case that detects when
the linked list is empty, and sets the `frontNode` correctly so the list now has a single
node.  Likewise, you may need a special case for when the new item being inserted has
the highest priority, and thus needs to become the new `frontNode` of the linked list.

**Additional Requirements**






