# Hello World

Write a program that greets the user by name, or by saying "Hello, World!" if no name is given.

["Hello, World!"](http://en.wikipedia.org/wiki/%22Hello,_world!%22_program) is the traditional first program for beginning programming in a new language.

**Note:** You can skip this exercise by running:

    exercism skip $LANGUAGE hello-world

## Specification

The `Hello World!` program will greet me, the caller.

If I tell the program my name is Alice, it will greet me by saying "Hello, Alice!".

If I neglect to give it my name, it will greet me by saying "Hello, World!"

## Test-Driven Development

As programmers mature, they eventually want to test their code.

Here at Exercism we simulate [Test-Driven Development](http://en.wikipedia.org/wiki/Test-driven_development) (TDD), where you write your tests before writing any functionality. The simulation comes in the form of a pre-written test suite, which will signal that you have solved the problem.

It will also provide you with a safety net to explore other solutions without breaking the functionality.

### A typical TDD workflow on Exercism:

1. Run the test file and pick one test that's failing.
2. Write some code to fix the test you picked.
3. Re-run the tests to confirm the test is now passing.
4. Repeat from step 1.
5. [Submit your solution](http://help.exercism.io/submitting-exercises.html).

## Instructions

Submissions are encouraged to be general, within reason. Having said that, it's also important not to over-engineer a solution.

It's important to remember that the goal is to make code as expressive and readable as we can. However, solutions to the hello-world exercise will be not be reviewed by a person, but by rikki- the robot, who will offer an encouraging word.

## Installation
See [this guide](https://github.com/exercism/xr/blob/master/docs/INSTALLATION.md) for instructions on how to setup your local R environment.

## How the R files are organized and why
When a new exercism problem is fetched, what you get is a folder with this structure:

```
./bob
├── bob.Rproj
├── DESCRIPTION
├── NAMESPACE
├── R
│   └── bob.R
└── tests
    ├── testthat
    │   └── test_bob.R
    └── testthat.R
```

This is package skeleton created using `devtools::create`. Having a whole package to run tests for a single script adds a little bit of clutter and complexity, but it also provides some consistency and allows us to take advantage of tooling.

The intent is to structure problems within self-contained modules or classes as is done for other languages at exercism. Unfortunately, R does not support this pattern, hence this workaround (see [this Stack Overflow question](https://stackoverflow.com/questions/15789036/namespaces-without-packages) for more explanation).

## How to implement your solution in RStudio
In the example file tree above, there is a file called `bob.Rproj`, which is an RStudio project file. Open it in RStudio.

In the `./bob/R` folder, you will find a single script file (e.g. `bob.R`), which provides some skeleton code for you to implement your solution. Fill it in, and run the test suite (see next section).

## How to run tests inside of RStudio
If you opened the `Rproj` file, the IDE will be configured to run the test suite for you. To run your tests, from the menu select `Build > Test Package` or use the keyboard shortcut `Cmd/Ctrl-Shift-T`. The test report should appear in one of the panels.

You can view the specs in the `./Bob/tests/testthat` folder.

## How to run tests on the command line
If you prefer to not use an IDE for your coding and test running, you will need to create a helper script. At the root of the problem folder, create this one-line script `run_tests.R`:

```
devtools::test()
```

Then, on the command line, type `Rscript run_tests.R` to run the test suite.

## Source

This is a program to introduce users to using Exercism [view source](http://en.wikipedia.org/wiki/%22Hello,_world!%22_program)
