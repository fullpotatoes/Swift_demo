if let choice = readLine() {
    switch choice {
    case "1":
        print("Vous voulez enregistrer une nouvelle activité !")
    case "2":

        print("Votre banque contient X euros !")
    case "3":
        print("""
        Votre grange contient :
        🍼  X bidons de lait
        🌾  X bottes de blé
        ⚪️  X pelottes de laine
        """)
    default:
        print("Je ne comprends pas.")
    }
}
