# Hello World

Write a function that greets the user by name, or by saying "Hello, World!" if no name is given.

["Hello, World!"](http://en.wikipedia.org/wiki/%22Hello,_world!%22_program) is the traditional first program for beginning programming in a new language.

**Note:** You can skip this exercise by running:

    exercism skip $LANGUAGE hello-world

## Specification

Write a `Hello World!` function that can greet someone given their name.
The function should return the appropriate greeting.

For an input of "Alice", the response should be "Hello, Alice!".

If a name is not given, the response should be "Hello, World!"

## Test-Driven Development

As programmers mature, they eventually want to test their code.

Here at Exercism we simulate [Test-Driven Development](http://en.wikipedia.org/wiki/Test-driven_development) (TDD), where you write your tests before writing any functionality. The simulation comes in the form of a pre-written test suite, which will signal that you have solved the problem.

It will also provide you with a safety net to explore other solutions without breaking the functionality.

### A typical TDD workflow on Exercism:

1. Run the test file and pick one test that's failing.
2. Write some code to fix the test you picked.
3. Re-run the tests to confirm the test is now passing.
4. Repeat from step 1.
5. Submit your solution (`exercism submit /path/to/file`)

## Instructions

Submissions are encouraged to be general, within reason. Having said that, it's also important not to over-engineer a solution.

It's important to remember that the goal is to make code as expressive and readable as we can. However, solutions to the hello-world exercise will not be reviewed by a person, but by rikki- the robot, who will offer an encouraging word.

These instructions assume you have installed exercism, Groovy, Java, and have an available IDE (this guide uses IntelliJ IDEA). If you run into trouble, consult the exercism docs on [Groovy](http://exercism.io/languages/groovy), or send us an issue on GitHub.

## Fetch the exercise

In a Command Prompt or Terminal, fetch the first exercise.

```
C:\Users\You>exercism fetch groovy

Not Submitted:       1 problem
groovy (Hello World) Path\To\Your\Exercism\groovy\hello-world

New:                 1 problem
groovy (Hello World) Path\To\Your\Exercism\groovy\hello-world

unchanged: 0, updated: 0, new: 1
```

## Import the exercise

1) Start IntelliJ IDEA. In the "Welcome to IntelliJ IDEA" window, click the "Open" option.

2) Navigate to the "Path\To\Your\Exercism\groovy\THIS_EXERCISE" folder.  Make sure you've selected the root directory of the exercise. Click "OK".

3) Follow the dialog for creating the project from existing external sources.

4) IntelliJ will then create a new project structure in the editor for your exercise.

5) Depending on how much of the IDE you have configured before, you will likely need to add a Groovy SDK and a Java SDK (JDK 7+, ideally). These can be configured through the project/module settings by right clicking on the imported project. 

6) You may also need to configure the location of the compiler output (exercism doesn't provide all IDE files since you could work the problems in a myriad of editors instead). This can be configured in the project settings as well. 

## Start the exercise

1) Open the `README.md` file and carefully read the background for the assignment.

2) Start by running the test suite: In the "Project" view, right-click on the test file (`hello-world\HelloWorldTest.groovy`), select "Run", then pick the "HelloWorldTest" that has a JUnit icon to the left of it (red and green arrows).

3) The tests are designed to fail at the beginning. Each exercise will expect you to update the associated groovy file (named the same as the test without the ````Tests```` suffix in the filename.

4) To skip a test, you can add the @Ignore annotation a test method:

````
  //This test will run.
  @Test
  void testNoName() {
    assertTrue new HelloWorld().hello() == 'Hello, World!'
  }

  //this test will be skipped.
  @Test
  @Ignore
  void testSampleName() {
    assertTrue new HelloWorld().hello('Alice') == 'Hello, Alice!'
  }
````

Alternatively, you can simply comment out an entire method to have it removed from compilation and being included in test output.

5) Update the main Groovy code and re-run the tests until they pass.

## Source

This is an exercise to introduce users to using Exercism [http://en.wikipedia.org/wiki/%22Hello,_world!%22_program](http://en.wikipedia.org/wiki/%22Hello,_world!%22_program)

## Submitting Incomplete Problems
It's possible to submit an incomplete solution so you can see how others have completed the exercise.

