# Final Project: Enum Implementation

### By Brandon Renner & Ben Leber

## Changes

### Tokenizer

1. Created 'enum' keyword
2. Tested enum keyword recognition
3. Implemented test for enum tokenization and proper tokenization
   of additional syntactic elements related to declaring an enum in `test_tokenize_enum_statement()`
   Example:
   Given the code:
   `enum MyEnum { 
    A, 
    B, 
    C 
}`
   The tokenizer should produce the following tokens:

   ```
   [
       {"tag": "enum", 'value': 'enum'},
       {"tag": "identifier", "value": "MyEnum"},
       {"tag": "{"},
       {"tag": "identifier", "value": "A"},
       {"tag": ","},
       {"tag": "identifier", "value": "B"},
       {"tag": ","},
       {"tag": "identifier", "value": "C"},
       {"tag": "}"},
       {"tag": None}
   ]
   ```

### Parser

1. Established `enum_statement` EBNF Grammar rules:
   ```
       enum_statement = "enum" identifier "{" [ identifier { ", " identifier } ] "}"
   ```
2. Created `parse_enum_statement()` and `test_parse_enum_statement()` to parse through the tokens
3. Made modifications to `parse_statement()` to call `parse_enum_statement()` if the tag is discovered during parsing
4. Added multiple test cases in other test functions to verify that enum statements are properly parsed and integrated into the overall parsing process, including:
   - `test_parse_statement()`
   - `test_parse_statement_list()`
   - `test_parse_program()`
   - `test_parse_complex_expression()`

### Evaluator

1. Reconginzes the 'enum' tag and creates a new enum type in the environment with the specified name and values
2. Enum values are assigned integer values starting from 0, and the enum type is stored in the environment for later reference
3. Added test cases in `test_eval_program()` to verify that enums are correctly defined and that their values are properly assigned and accessible in the environment

### Test Suite

1. Created `Enum_test-suite.t` to test various aspects of enum functionality, including:
   - Basic enum definition, access, and printing
   - Truth-y nature of enum values
   - Comparison of enum values (equality and inequality)
   - Less than and greater than comparisons of enum values
   - Scopes of enums and their values
2. Each test case includes print statements to indicate what is being tested and the expected output, allowing for easy verification of correct enum behavior in the language.
3. To run the test suite, naviate into the `trivial-enum` directory and execute the command
   `python3 runner.py Enum_test-suite.t`
   in the terminal, which will run all the tests and display the results.
