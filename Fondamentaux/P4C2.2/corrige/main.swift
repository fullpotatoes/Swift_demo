// L'argent de Joe
var money = 0.0

// La grange de Joe : [lait, blé, laine]
var barn = ["milk": 0, "wheat": 0, "wool": 0]

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

func askForActivity() {
    print("Quelle activité voulez-vous enregistrer ?")
    print("1. J'ai nourri mes animaux")
    print("2. J'ai vendu mes produits")
    print("3. J'ai trait mes vaches")
    print("4. J'ai moissoné")
    print("5. J'ai tondu mes moutons")
    if let choice = readLine() {
        switch choice {
        case "1":
            feedCows()
        case "2":
            sell()
        case "3":
            milkCows()
        case "4":
            harvest()
        case "5":
            mowSheep()
        default:
            print("Je ne comprends pas.")
            askForActivity()
        }
    }

}


func askForChoice() {
    print("Que voulez-vous faire ?")
    print("1. Enregistrer une nouvelle activité")
    print("2. Consulter votre banque")
    print("3. Consulter votre grange")
    if let choice = readLine() {
        switch choice {
        case "1":
            askForActivity()
        case "2":
            print("Votre banque contient \(money) euros !")
        case "3":
            if let milk = barn["milk"], let wheat = barn["wheat"], let wool = barn["wool"] {
                print("""
                Votre grange contient :
                🍼  \(milk) bidons de lait
                🌾  \(wheat) bottes de blé
                ⚪️  \(wool) pelottes de laine
                """)
            }
        default:
            print("Je ne comprends pas.")
        }
    }
}

while(true) {
    askForChoice()
}