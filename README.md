# - Assignment 3 -
[![assignment-autotest-test](https://github.com/cu-ecen-aeld/assignment-2-Fo-Zi/actions/workflows/github-actions.yml/badge.svg)](https://github.com/cu-ecen-aeld/assignment-2-Fo-Zi/actions/workflows/github-actions.yml)

This repo contains the base/template files regarding the second assignment of the course "Linux System Programming and Introduction to Buildroot", and the added scripts in order to pass all the tests.

## Build
I also added a Makefile in the base directory of the repo, that allows you to build, clean and test by using simple commands.
To build:
```
make buildit
```

To test, you need to run buildit first, and then:
```
make test
```

To clean:
```
make clean
```
