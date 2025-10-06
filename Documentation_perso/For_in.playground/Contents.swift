import UIKit

let range1: Range<Int> = 1..<3
let range2: ClosedRange<Int> = 1...3

for i in range1 {
    print(i)
}

for i in range2 {
    print(i)
}
