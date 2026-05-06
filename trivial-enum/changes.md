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

1. Reconginzes the 'enum' tag and creates a new enum type in the environment with the specified name and values
2. Enum values are assigned integer values starting from 0, and the enum type is stored in the environment for later reference
3. Added test cases in `test_eval_program()` to verify that enums are correctly defined and that their values are properly assigned and accessible in the environment
