var money = 0.0

for day in 1...30 {

    // Joe nourrit les vaches
    money -= 4

    if day == 1 {
        // Joe ajoute l'argent du blé
        money += 10 * 0.30
    } else if day == 10 || day == 20 {
        // Joe ajoute l'argent de la laine
        money += 30 * 1
    } else {
        // Joe vends son lait
        money += 30 * 0.50
    }
}

print("\(money) €")