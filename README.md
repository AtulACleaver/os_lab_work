<!-- This is account of all my notes on experiments conducted in the OS Lab & all the important details that could be important till the end -->

# OS Lab Notes

## Lab 1: Basic Linux Commands

- `ls` : List files and directories
- `cd` : Change directory
- `pwd` : Print working directory
- `mkdir` : Make directory
- `rmdir` : Remove directory
- `touch` : Create an empty file
- `rm` : Remove files
- `cp` : Copy files and directories
- `mv` : Move or rename files and directories
- `cat` : Concatenate and display file content
- `echo` : Display a line of text
- `chmod` : Change file permissions
- `tree` : Display directory structure in a tree format

## Lab 2: Shell Scripting Basics

- Shebang (`#!/bin/bash`) : Indicates the script should be run in the bash shell
- Preferred way to solve arithmetic expressions: 
  - **use either `expr` integer arithmetic or `bc` for floating point arithmetic**
  - *Using `expr` command*
    - Example: result=`expr \( $a + $b \) \* $c`
    - Avoid using `$(( ))` for arithmetic in scripts as it may not be supported in all shells
    - +, -, /, % can be done normally with `expr` but multiplication `*` needs to be escaped with backslashes `\*`
    - Parentheses also need to be escaped with backslashes `\(` and `\)`
  - *Using `bc` command*
    - Example: result=`echo "scale=2; $a / $b" | bc`
    - `scale` sets the number of decimal places for floating point division
    - Here you can use normal operators `+, -, *, /` without escaping also parentheses work normally
- Reading user input: `read variable_name`

## Lab 3: Conditional Statements in Shell Scripting

- `if`, `elif`, `else` statements for conditional execution
- Use `test` command is preferred, **avoid** `[ ]` for condition evaluation
- String comparison: `=` for equality, `!=` for inequality
- Numeric comparison: `-eq`, `-ne`, `-lt`, `-le`, `-gt`, `-ge`

- Example structure:

  ```bash
  if test condition1
  then
      # commands if condition1 is true
  elif test condition2
  then
      # commands if condition2 is true
  else
      # commands if none of the above conditions are true
  fi
  ```

- case statements can also be used for multi-way branching
- Structure of case statement:

  ```bash
  case variable in
      command)
          # commands for pattern1
          ;;
      command2)
          # commands for pattern2
          ;;
      * command)
          # default commands
          ;;
  esac
  ```

  - Each pattern ends with `)` and commands end with `;;`
  - `*` is used as a wildcard for default case
  - Example:

  ```bash
  case $var in
      1)
          echo "You selected option 1"
          ;;
      2)
          echo "You selected option 2"
          ;;
      *)
          echo "Invalid option"
          ;;
  esac

## Lab 4: Loops in Shell Scripting

- `for` loop: Iterate over a list of items
- `while` loop: Execute commands as long as a condition is true
- `until` loop: Execute commands until a condition becomes true
- Example `for` loop:

     ```bash
  for item in list
  do
      # commands to execute for each item
  done
  ```
- Example `while` loop:

  ```bash
  while test condition
  do
      # commands to execute while condition is true
  done
  ```

- Example `until` loop:

  ```bash
  until test condition
  do
      # commands to execute until condition is true
  done
  ```
