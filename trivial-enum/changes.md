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

1. Ast creation

### Evaluator

1. Correctly evaluates values in enum i guess
