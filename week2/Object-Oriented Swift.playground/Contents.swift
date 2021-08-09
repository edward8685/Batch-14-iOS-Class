//Object-Oriented Swift
//1.
class Animal{
    var animal : String
    var gender : String     //add propoty gender
    init(animal:String , gender : String){
        self.animal = animal
        self.gender = gender
    }
    enum Gender {
        case male

        case female
        
        case underfined
    }
    class func eat(){
        print("I eat everything!")
    }
}
Animal.eat()

//2.
class Elephant : Animal{
    init(){
        super.init(animal: "elephant", gender: "male")
    }
    override class func eat(){
        print("I eat bananas!")
    }
}

class Tiger : Animal{
    init(){
        super.init(animal: "tiger", gender: "male")
    }
    override class func eat(){
        print("I eat elephants!")
    }
}

class Horse : Animal{
    init(){
        super.init(animal : "horse", gender: "male")
    }
    override class func eat(){
        print("I eat grass!")
    }
}
Horse.eat()

//3.
class Zoo{
    var weeklyHot : Animal
    init(weeklyHot : Animal){
        self.weeklyHot = weeklyHot
    }
}
let zoo = Zoo(weeklyHot: Tiger())
print(zoo.weeklyHot.animal)
/*4.What’s the difference between Struct and Class ?
 Struct :
    Struct are value type.
    If properties changed inside a method, using the    mutating fucn.
 Class :
    Class are reference type which lives on the heap.
    Class con inherit superclass.
    Class can be deinitialized.
 */

/*5.What’s the difference between instance method and type method?
 Instance method need an instance to execute the method and,cannot be called on a type.
 Add "static" or "class" in front of func that the method can be called from the type’s context.
 */

/*
 6.What does Initilizer do in class and struct ?
 Class and structure must set all of their stored properties to an appropriate initial value
 Using "init" to create a new instance of a particular type.
 */

/*
 7.What does self mean in an instance method and a type method ?
 "self" used in instance method that refers to itself. It’s used to access instance within methods.
 self refers to a type  when used in a type method
 
 
*/
/*
 8.What’s the difference between reference type and value type ?
 When coping value type variations,it creats an independant instance with it's copy.
 Coping reference type will create a shared instace that mutiple variables refer to a single instance.
 */
