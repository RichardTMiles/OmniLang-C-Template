# OmniLang C Template (In Active Development)

Write your functions once in C and call them from any language written in C using the `.so` shared object file.

## This Repository ( Hello World )

When I think about writing a client library for high-level languages, I realize the one-and-done principle can be
abstracted in a simple "Hello World" repository. Thus, the initial goal of my new project will be to write a simple C
Hello World
library that can be imported via it's compiled C `.so` module. The `helloWorld()` function should then be available
directly
from any language (written in C) as a built-in module function. Please throw a star and follow my project on GitHub :)

```C
void helloWorld() {
    printf("Hello World!\n");
}
```

### Getting Started

1. Clone the repository
2. Run `cmake .` to generate the Makefile
3. Run `make` to compile the C code
4. Run the language-specific script to test the function

### Issues

Contextual issues will porabably exists. For example in web context the `printf` function will not work as expected as
stdout is not `dup`ed to the browser. I do plan to address these issues by passing a file descriptor to the function.

# What languages are written in C?

C++, Objective-C, Python, Perl, Ruby, Rust, PHP, R, Lua, JavaScript (Node.js), Go, Tcl, Erlang, Bash, TensorFlow, and
even the Java Virtual Machine (JVM), which runs Java bytecode, has components written in C and C++.

## Supported Languages (current targets)

- node
    ```node
    const carbon = require('./build/Release/carbon');
    console.log(carbon.version());
    carbon.helloWorld();
    ```
- php 
  - @link https://www.php.net/manual/en/function.dl.php
  ```php
  dl('carbon.so');
  echo carbon_version();
  carbon_hello_world();
  ```
- python
    ```python
    import carbon
    print(carbon.version())
    carbon.hello_world()
    ```
- ruby
    ```ruby
    require './carbon'
    puts Carbon.version
    Carbon.hello_world
    ```

## Future Targets

Everything possible!

