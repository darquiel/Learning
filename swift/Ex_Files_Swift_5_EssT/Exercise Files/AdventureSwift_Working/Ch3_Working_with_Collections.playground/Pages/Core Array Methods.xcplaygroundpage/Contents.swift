/*:
 # Core Array Methods
 ---
 
 ## Topic Essentials
 Now that we know how to create and access arrays, we need to learn how to dynamically modify them. Like `Strings`, `Arrays` come with several handy methods built right in for just that purpose.
 
 ### Objectives
 + Create an array called **characterClasses** and assign it initial values
 + Use `append` and += operator to add items
 + Use the `insert` and `remove` methods to change the array further
 + Explore the `reverse`, `contains`, and`sort` methods
 + Create a jagged array called **skillTree** that stores arrays as its values
 + Use chained **subscript syntax** to access a value in **skillTree**
 
  [Previous Topic](@previous)                                                 [Next Topic](@next)
 
 */
// Changing & appending items
var charcterClasses = ["Ranger", "Paladin", "Druid"]
charcterClasses.append("Gunslinger")
charcterClasses += ["Healer", "Beserker"]

//Inserting and removing items
charcterClasses.insert("Beast Master", at: 2)
charcterClasses.remove(at: 1)

// Ordering and querying values
charcterClasses.reversed()
var reversedClasses = charcterClasses.reversed()

//charcterClasses.sort()
var sortedClasses = charcterClasses.sorted()

charcterClasses.contains("Gunslinger")

print(charcterClasses)
// print(reversedClasses)
// print(sortedClasses)

// 2D arrays and subscripts
var skillTree: [[String]] = [
    ["Attack+", "Barrage", "Heavy Hitter"],
    ["Guard", "Evasion", "Run"]
]

var attaclTreeSkill = skillTree[1][2]
