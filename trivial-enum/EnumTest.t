// Testing Enum Functionality - Basic enum definition, access, and printing

enum MyEnum {A, B, C};

x = MyEnum.A;
print(x);
print(MyEnum.B);
print(MyEnum.C);

// Testing Enum Functionality - Truth-y nature of order values 

enum boolEnum {False, True};
if(boolEnum.True) {
    print("This should print");
} else {
    print("This should not print");
}

if(boolEnum.False) {
    print("This should not print");
} else {
    print("This should print");
}