# Final Project: Enum Implementation

### By Brandon Renner & Ben Leber

## Changes

### Tokenizer

1. Created 'enum' keyword
2. Tested enum keyword recognition
3. Example:
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
2. Created `parse_enum_statement()` and `test_parse_enum_statement()` to parse through the tokens
3. Made modifications to `parse_statement()` to call `parse_enum_statement()` if the tag is discovered during parsing
4. Added multiple test cases in other test functions:
    - `test_parse_statement()`
    - `test_parse_statement_list()`
    - `test_parse_program()`
    - `test_parse_complex_expression()`

### Evaluator

1. Correctly evaluates values in enum i guess
