//1.
enum Gasoline : String {
    
    case oil92 = "92"
    
    case oil95 = "95"
    
    case oil98 = "98"
    
    case diesel = "Diesel"
    
    func getPrice(){
        switch self{
        case .oil92:
            print("oil92 is 28.7 NT$/L")
        case .oil95:
            print("oil95 is 30.2 NT$/L")
        case .oil98:
            print("oil98 is 32.2 NT$/L")
        case .diesel:
            print("Diesel is 28.7 NT$/L")
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
    var pet : Pet? // have pet or nil
    init (pet : Pet? ){
        self.pet = pet
    }
}
class Pet {
    var name : String  //pet has name
    init(name : String) {
        self.name = name
    }
}
//
//func havePet(pet : Pet?){
//    guard let pet = People.pet else{
//    }
//}
//
//func havePet(pet : Pet?){
//    if let pet = People.pet else{
//    }
//}


