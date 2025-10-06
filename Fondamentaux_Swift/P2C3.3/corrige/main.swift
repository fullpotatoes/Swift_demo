var day = 0 // Le 0 c'est donc lundi

while day < 30 {
    if day % 7 == 5 || day % 7 == 6 {
        print("Super c'est le week-end !")
    } else {
        print("Allez au travail !")
    }
    day += 1
}