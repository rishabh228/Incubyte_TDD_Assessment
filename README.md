# Incubyte String Calculator

## Introduction

The Incubyte String Calculator is designed to demonstrate TDD practices. It takes a string of comma-separated numbers and returns their sum, supports custom delimiters, and raises exceptions for negative numbers.

## Features

- Returns 0 for an empty string.
- Returns the number itself for a single number input.
- Returns the sum of multiple numbers separated by commas.
- Handles new lines between numbers as delimiters.
- Supports custom delimiters in the format `//[delimiter]\n[numbers]`.
- Throws an exception for negative numbers, listing all negative numbers.

## Usage

### Method Signature

```ruby
int add(string numbers)

Examples
1."" -> 0
2."1" -> 1
3."1,2" -> 3
4."1,2,3" -> 6
5."1\n2,3" -> 6
6."//;\n1;2" -> 3
7."1,-2" -> Exception: negative numbers are not allowed: -2
8."1,-2,-3" -> Exception: negative numbers are not allowed: -2, -3

Installation
1.Clone the repository:
  git clone https://github.com/yourusername/incubyte_string_calculator.git
  cd incubyte_string_calculator

2.Install dependencies
  bundle install

3.Set up the database
  rails db:create
  rails db:migrate

4.Run the tests:
  bundle exec rspec
  
