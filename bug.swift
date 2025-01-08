func myFunc(param: String) -> Int {
    guard let number = Int(param) else {
        return 0 // Handle non-numeric input
    }
    return number * 2
}

print(myFunc(param: "123")) // Output: 246
print(myFunc(param: "abc")) // Output: 0
print(myFunc(param: "")) //Output:0
print(myFunc(param: "123.45")) //Output: 0