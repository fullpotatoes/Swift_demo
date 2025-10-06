// Le prix du voyage
let price = 1499.0

// L'argent de Joe
var money = 0.0

// Le nombre de jours pendant lesquels Joe doit économiser
var numberOfDay = 0

// La grange de Joe : [lait, blé, laine]
var barn = ["milk": 0, "wheat": 0, "wool": 0]

func calculateBarnSize() -> Int {
    var barnSize = 0

    for (_, count) in barn {
        barnSize += count
    }

    return barnSize
}

func feedCows() {
    money -= 4
}
func sell() {
    if let milk = barn["milk"], let wheat = barn["wheat"], let wool = barn["wool"] {
        money = money + Double(milk) * 0.50
        money = money + Double(wheat) * 0.30
        money = money + Double(wool) * 1
    }
    barn = ["milk": 0, "wheat": 0, "wool": 0]
}

func harvest() {
    if let wheat = barn["wheat"] {
        barn["wheat"] = wheat + 100
    }
}

func mowSheep() {
    if let wool = barn["wool"] {
        barn["wool"] = wool + 30
    }
}

func milkCows() {
    if let milk = barn["milk"] {
        barn["milk"] = milk + 30
    }
}

while money < price {
    // Joe nourrit les vaches tous les jours
    feedCows()

    // On calcule la taille de la grange
    var barnSize = 0
    for (_, count) in barn {
        barnSize += count
    }

    
    if barnSize >= 500 {
        sell()
    } else {
        // C'est une journée normale

        if numberOfDay % 30 == 1 {
            // Joe moissonne
            harvest()
        } else if numberOfDay % 30 == 10 || numberOfDay % 30 == 20 {
            // Joe tond les moutons
            mowSheep()
        } else {
            // Joe trait les vaches
            milkCows()
        }
    }
    

    // On passe au jour suivant
    numberOfDay += 1
}


print("Il aura fallu \(numberOfDay) jours à Joe pour économiser \(money) €")
