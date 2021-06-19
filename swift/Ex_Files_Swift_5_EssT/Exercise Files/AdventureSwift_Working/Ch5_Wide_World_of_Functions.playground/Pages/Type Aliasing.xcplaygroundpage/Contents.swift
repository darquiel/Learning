 // Test variables
var partyMembers = ["Harrison", "Steven", "Bob the Noob"]

// Type alias as a return value
 typealias AttackTuple = (name: String, damage: Int, rechargeable: Bool)

 var sunStrike: AttackTuple = ("Sun Strike", 45, false)
 
 func levelUpAttack(baseAttack: AttackTuple) -> AttackTuple {
    let increasedAttack: AttackTuple = (baseAttack.name, baseAttack.damage + 10, true)
    return increasedAttack
 }
 
 var poweredAttack = levelUpAttack(baseAttack: sunStrike)
 
// Type alias as a function parameter
typealias ArrayClosure = ([String]) -> Void
 
func activeMembers(completion: ([String]) -> Void) {
    completion(partyMembers)
}

activeMembers { (members) in
    for name in members {
        print("\(name) is active")
    }
}
