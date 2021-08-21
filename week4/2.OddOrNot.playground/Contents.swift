import UIKit

var oddOrNot = { ( num : Int ) -> Bool in
    if num % 2 == 1 {
    return true
    } else {
    return false
}
}

oddOrNot(3)
