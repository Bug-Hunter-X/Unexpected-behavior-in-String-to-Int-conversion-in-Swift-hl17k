func myFunc(param: String) -> Int? {
    guard let number = Int(param) else {
        return nil // Return nil for non-numeric input
    }
    return number * 2
}

if let result = myFunc(param: "123") {
    print(result) // Output: 246
}

if let result = myFunc(param: "abc") {
    print(result) // No output
}

if let result = myFunc(param: "") {
    print(result) // No output
}
if let result = myFunc(param: "123.45") {
    print(result) // No output
}
//Alternatively, handle error using a default value
func myFuncWithDefault(param: String) -> Int {
    guard let number = Int(param) else {
        return 0 // Return 0 for non-numeric input
    }
    return number * 2
}
print(myFuncWithDefault(param: "123")) // Output: 246
print(myFuncWithDefault(param: "abc")) // Output: 0
print(myFuncWithDefault(param: "")) //Output:0
print(myFuncWithDefault(param: "123.45")) //Output: 0