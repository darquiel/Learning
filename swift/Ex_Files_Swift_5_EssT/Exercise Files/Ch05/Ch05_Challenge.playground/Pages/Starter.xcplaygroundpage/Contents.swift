/*:
 # Chapter Challenge: Battle Grounds
 ---
 
 ### Tasks
 1. Create a type alias tuple called **Attack** with named values for name and damage
 2. Write a simple function called **attackEnemy** with an integer parameter that prints out an interpolated string
 3. Write an overloaded version of **attackEnemy** with a parameter of type Attack that returns an string
 4. Use both **attackEnemy** methods
 5. Create a type alias closure called **AttackClosure** that takes in an array of Attacks and returns void, then declare a test array of Attack values.
 6. Write a function called **fetchPlayerAttacks** that has a closure parameter of type AttackClosure and no return value
 7. Call **fetchPlayerAttacks** and loop through the array inside the closure body to print out its tuple values
 
 [Previous Topic](@previous)
 
 */
// 1
typealias Attack = (name: String, damage: Int)

// 2
func attackEnemy(damage: Int) {
    print("Attacking enemy for \(damage) Damage!")
}

// attackEnemy(damage: 45)

// 3
func attackEnemy(attack: Attack) -> String {
    return "Attacked with \(attack.name).\nEnemy hit for \(attack.damage) points for Damage!\n"
}

// 4
attackEnemy(damage: 45)
var message = attackEnemy(attack: ("Sunstrike", 45))
print(message)

// 5
typealias AttackClosure = ([Attack]) -> Void
let playerActions = [("Fire Ball", 165), ("Magic Missile", 35), ("Dragon Claw", 75)]

// 6
func fetchPlayerAttacks(attacks: AttackClosure) {
    attacks(playerActions)
}

// 7
fetchPlayerAttacks { (attackOptions) in
    for (name, damage) in attackOptions {
        print("\(name) will hit for \(damage) if cast.")
    }
}
