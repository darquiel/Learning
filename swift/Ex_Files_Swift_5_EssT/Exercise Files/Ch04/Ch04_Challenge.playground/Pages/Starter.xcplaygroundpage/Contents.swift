/*:
 # Chapter Challenge: Game Logic
 ---
 ### Tasks
 1. Create two optional string variable called **lefthandWeapon** and **righthandWeapon**. Assigning them initial values is at your discretion.
 2. Use optional binding to unwrap both optionals in a single statement and debug both outcomes.
 3. Create a dictionary called **playerExp** and assign it some key-value pairs of type string and integer.
 4. Use a `for-in` loop to iterate over **playerExp** and capture the keys and values.
 5. Add a `guard` statement inside the `for-in` loop to make sure each player is at least level 1 to proceed. Don't forget to include the `continue` keyword.
 6. Use a switch statement to define the following cases:
 6a. exp is equal to 32
 6b. exp is between 200 and 500
 6c. Use value binding to store exp and check that it is greater than 500 using the `where` keyword
 
 [Previous Topic](@previous)
 
 */
// 1
var lefthadnWeapon: String? = "Gladius"
var righthandWeapon: String?

// 2
if let leftWeapon = lefthadnWeapon, let rightWeapon = righthandWeapon {
    print("Looks like your \(leftWeapon) and \(rightWeapon) are an even match for me!")
} else {
    print("I didn't bring enough hardware for this...")
}

// 3
var playerExp: [String: Int] = ["Bilbo": 250, "Gandalf": 1000, "Thorin": 750]

// 4
for (player, exp) in playerExp {
    print("\(player): \(exp)")
}

// 5
var level1 = 250
for (player, exp) in playerExp {
    guard exp >= level1 else {
        print("You are not level 1, you need at least \(level1) XP!")
        continue
    }
    print("Great, \(player) is over level 1!")
}
    

// 6
for (player, exp) in playerExp {
    switch (exp) {
    case (32):
        print("\(player) EXP is 32")
    case (200...500):
        print("\(player)Exp is in the range")
    case (let localEXP) where exp > 500:
        print("\(player) has more exp!, \(localEXP)")
    default:
        print("I've gto nothing. for \(player)")
    }
}
