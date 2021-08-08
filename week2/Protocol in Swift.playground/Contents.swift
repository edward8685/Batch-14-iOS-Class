//1.
protocol PoliceMan {
    var name : String { get }
    func arresCriminals()
}

struct Person : PoliceMan {
    var name : String
    var toolMan : ToolMan
    func arresCriminals(){
    }
}
protocol ToolMan {
    func fixComputer()
}

struct Engineer : ToolMan {
    func fixComputer(){
    }
}
let toolman = Engineer()
let man=Person (
    name: "Steven", toolMan: toolman)

