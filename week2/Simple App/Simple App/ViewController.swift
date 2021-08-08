//
//  ViewController.swift
//  Simple App
//
//  Created by Ed Chang on 2021/8/8.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelOnTop: UILabel!
    
    @IBOutlet weak var funFackText: UITextView!
    
    let button = UIButton()
    
    let text = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
    "Contrary to popular belief, Lorem Ipsum is not simply random text.",
    "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
    "looked up one of the more obscure Latin words, consectetur",
    "from a Lorem Ipsum passage, and going through the cities of the word",
    "This book is a treatise on the theory of ethics, very popular during the.",
    "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.."]
    
    var color = [UIColor.red, UIColor.yellow, UIColor.systemPink ,UIColor.green, UIColor.purple, UIColor.orange , UIColor.blue]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickButtom(_ sender: UIButton) {
    
        view.backgroundColor = color.randomElement()
        funFackText.text = text.randomElement()!
        button.setTitleColor(color.randomElement(), for: .normal)
    }
}

