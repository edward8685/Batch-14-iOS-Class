//1.
enum Gasoline : String {
    
    case oil92 = "92"
    
    case oil95 = "95"
    
    case oil98 = "98"z
    
    case diesel = "Diesel"
    
    func getPrice() -> String {     //return String
        switch self{
        case .oil92:
            return ("oil92 is 28.7 NT$/L")  // print -> return
        case .oil95:
            return ("oil95 is 30.2 NT$/L")
        case .oil98:
            return ("oil98 is 32.2 NT$/L")
        case .diesel:
            return ("Diesel is 28.7 NT$/L")
        }
    }
}
Gasoline.oil92.getPrice()
Gasoline.oil92.rawValue

/*It can define any types and several values to each enum case. Ex.
 enum Status {
     case onTime
     case delayed(minute: Int, second: Int)
 }
 */

//2.

class People {
    var name : String
    var pet : Pet? // have pet or nil
    init (name: String , pet : Pet? ) {
        self.name = name
        self.pet = pet
    }
}
class Pet {
    var name : String  //pet has name
    init(name : String) {
        self.name = name
    }
}
func havePet1(people: People) {
    guard let _ = people.pet else { return }
    print("have pet!")  // check
}

func havePet2(people: People) {
    if let _ = people.pet  { print("have pet!") } // check
}

let dog = Pet (name: "dog")
let jack = People(name: "jack", pet: dog)
havePet1(people: jack)
havePet2(people: jack)
