# Dart Asynchronous Operation Error Handling Bug

This repository demonstrates a common error in Dart when handling asynchronous operations: incomplete error handling in `async` functions.  The provided code only catches exceptions thrown directly within the `try` block, neglecting potential errors from the underlying asynchronous operation (e.g., network requests).

The `bug.dart` file shows the problematic code.  The `bugSolution.dart` file provides a corrected version using `on` clauses for more precise error handling and showing how to handle different types of exceptions more gracefully.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`. Observe that network errors are not caught and handled appropriately.
3. Run `bugSolution.dart` to see the improved error handling.

## Solution

The solution involves using more specific `on` clauses within the `catch` block to handle different types of exceptions or checking the status code of the response before proceeding.