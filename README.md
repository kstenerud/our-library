Our Library
===========

This is our library, containing the API that we provide to our clients.


New Feature Request
-------------------

Our clients have expressed a need to parse hexadecimal numbers, and want a
function that accepts a string representing a hexadecimal integer
(for example `0xfa01`) and converts it to an integer.

**Note:** Assume that `sscanf`, `strtol`, and other such string scanning/
          conversion functions don't exist.
          In other words: Implement this by hand ;-)

#### Instructions

* Ask any clarifying questions you need.

* Come up with an API for this function and explain your design choices.

* Implement the function in this library and make it production ready.

* Submit it as a PR to this repository


Setup
-----

You'll need a standard gcc-like build environment, as well as the cmocka
library.

### Redhat based

    yum install gcc glibc-devel make binutils libcmocka-devel

### Debian/Ubuntu based

    sudo apt install build-essential libcmocka-dev


Building
--------

To build the shared library:

    make


Testing
-------

To build and run the tests:

    make tests
