# test_demo

# Description

- Load ListWidget and run the app.
- Increment first list item by clicking it 3 times. Scroll to bottom and then scroll to top, the
  count will get reset

# Functional/Product Requirement

- There should be 100 list items, each should be set at 0 initially and user can increment its
  count.
- The count incremented by user should be persisted when he scrolls the list.

# Task:

- Solve the functional requirement.
- Review this file from Code Review perspective, list the issues and what changes should be made,
  perform the changes to the file.
- Think of it as a intern checked in this code and as a senior has to code review and fix the code
  from implementation perspective to make it correct and efficient.
- Send the fixed file back to the recruiter.



# Solution of the problem:

- [First Solution]
- I maintain a count within a custom model class to store the value of each item persistently.
- When a user increases the value of a specific item, I utilize the setState function to update its value.
- Each item retains its value based on its corresponding index.

- [Second Solution]
- To enhance the performance of the app, I implemented the Provider as a state management technique.
- Here, I have used the notifyListeners() method to update the value of a specific index whenever the user clicks the increment button, instead of using the setState() method.
