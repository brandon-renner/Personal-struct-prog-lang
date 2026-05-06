// Testing Enum Functionality - Basic enum definition, access, and printing

print("Testing basic enum value functionality");

enum MyEnum {A, B, C};

x = MyEnum.A;
print(x);
print(MyEnum.B);
print(MyEnum.C);

// Testing Enum Functionality - Truth-y nature of order values 

print("Testing truthiness of enum values");

enum boolEnum {False, True};
print(" ");

if(boolEnum.True) {
    print("This should print"); // Enum value of second index should be 1, which is truthy
} else {
    print("This should not print");
}

if(boolEnum.False) {
    print("This should not print"); 
} else {
    print("This should print"); // Enum value of first index should be 0, which is not truthy
}

// Testing Enum Functionality - Comparison of enum values

print("Testing equality comparison of enum values");

enum MyEnum2 {X, Y, Z};
print(" ");

if (MyEnum2.X == MyEnum2.X) {
    print("X is equal to X");
} else {
    print("X is not equal to X");
}

if (MyEnum2.X == MyEnum2.Y) {
    print("X is equal to Y");
} else {
    print("X is not equal to Y");
}

// Testing Enum Functionality - Less than and greater than comparisons of enum values

print("Testing less than and greater than comparisons of enum values");

enum MyEnum3 {First, Second, Third};
print(" ");

if (MyEnum3.First < MyEnum3.Second) {
    print("First is less than Second");
} else {
    print("First is not less than Second");
}

if (MyEnum3.Third > MyEnum3.Second) {
    print("Third is greater than Second");
} else {
    print("Third is not greater than Second");
}

// Testing Enum Functionality - Passing into functions

print("Testing passing enums in functions as parameters");

enum State {Stopped, Running, Paused};

function statePrint(state) {
    print("State value: ");
    print(state);
}

print(" ");
statePrint(State.Stopped);
statePrint(State.Running);
statePrint(State.Paused);

function stateCheck(state) {
    if (state == State.Running) {
        print("The system is running");
    } else if (state == State.Paused) {
        print("The system is paused");
    } else {
        print("The system is stopped");
    }
}

print(" ");
function testStateCheck() {
    stateCheck(State.Stopped);
    stateCheck(State.Running);
    stateCheck(State.Paused);
}

// Testing Enum Functionality - Scopes

print(" ");
print("Testing enum scopes");

function outer() {
    enum OuterEnum {Alpha, Beta, Gamma};

    function inner() {
        print("Inner: ");
        enum InnerEnum {Delta, Epsilon, Zeta};
        print(InnerEnum.Delta);
        print(InnerEnum.Epsilon);
        print(InnerEnum.Zeta);
    }

    inner();
    print(" ");
    print("Outer: ");
    print(OuterEnum.Alpha);
    print(OuterEnum.Beta);
    print(OuterEnum.Gamma);
}

outer();
// inner(); // This should cause an error since InnerEnum is not in scope here

// Testing Enum Functionality - Enum values in arrays
print(" ");
print("Arrays of Enums");

enum ArrayEnum {One, Two, Three};
arr = [ArrayEnum.One, ArrayEnum.Two, ArrayEnum.Three];
print(arr[0]);
print(arr[1]);
print(arr[2]);

// Testing Enum Functionality - Comparing enum values across different enums

print(" ");
print("Comparing EnumA and EnumB:");

enum EnumA {A1, A2, A3};
enum EnumB {B1, B2, B3};

if (EnumA.A1 == EnumB.B1) {
    print("EnumA.A1 is equal to EnumB.B1");
} else {
    print("EnumA.A1 is not equal to EnumB.B1");
}

if (EnumA.A1 < EnumB.B1) {
    print("EnumA.A1 is less than EnumB.B1"); 
} else {
    print("EnumA.A1 is not less than EnumB.B1"); // expected output
}

print(" ");
print("All Enum tests completed.");