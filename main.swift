var pi = 0.0
var index = 0.0
var cycles = 0

print("Hello and Welcome to my Swift Pi Calculator.\nPlease enter your desired accuracy of the calculator.\n")
print("Note that higher accuracy is more demanding,\nand will take longer to calculate.\n")

let accuracy = readLine()

print("Calculating... Accuracy: " + accuracy! + "\n")

func calculate(cycles: Int) {
    pi = 3.0
    index = 2.0
    
    for _ in 1 ... cycles {
        pi += 4.0/(index * (index + 1.0) * (index + 2.0))
        index += 2.0

        pi -= 4.0/(index * (index + 1.0) * (index + 2.0))
        index += 2.0
    }
}

let iterations = Int(accuracy!)!

calculate(cycles: iterations)

let piString = String(pi)
let decimalIndex = piString.index(piString.startIndex, offsetBy: 0)

for i in 0 ..< 12 {
    let desiredCharacter = piString[piString.index(decimalIndex, offsetBy: i)]
    print(desiredCharacter, terminator: "")
}
