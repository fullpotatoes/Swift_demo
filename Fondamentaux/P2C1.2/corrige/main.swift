var money = 0.0

var nuriture = 4.0
var sellingMilk = 30 * 0.5

for _ in 1...30 {
    money += sellingMilk
    money -= nuriture
}

print(money)