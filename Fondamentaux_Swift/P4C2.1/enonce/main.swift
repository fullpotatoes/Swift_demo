if let choice = readLine() {
    if choice == "1" {
        print("Vous voulez enregistrer une nouvelle activité !")
    } else if choice == "2" {
        print("Votre banque contient X euros !")
    } else if choice == "3" {
        print("""
        Votre grange contient :
        🍼  X bidons de lait
        🌾  X bottes de blé
        ⚪️  X pelottes de laine
        """)
    } else {
        print("Je ne comprends pas.")
    }
}
