//
//  ViewController.swift
//  LoginorSignup
//
//  Created by Ed Chang on 2021/8/15.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var control : UISegmentedControl!
    @IBOutlet weak var accountTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var checkTextfield: UITextField!
    @IBOutlet weak var checkLabel: UILabel!
    
    var accesseMethod = 0 // segment初始值
    let account = "appworks_school@gmail.com"
    let password = "1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        control.selectedSegmentTintColor = UIColor.black
        control.setTitleTextAttributes([.foregroundColor : UIColor.white], for: .selected)
        control.layer.borderColor = UIColor.black.cgColor
        control.layer.borderWidth = 0.5
        checkTextfield.isEnabled = false
        checkLabel.textColor = UIColor.gray
        checkTextfield.backgroundColor = UIColor.gray
//        
    }
    
    @IBAction func didChangeSegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            checkTextfield.isEnabled = false
            checkLabel.textColor = UIColor.gray
            checkTextfield.backgroundColor = UIColor.gray
            accesseMethod = 0
        } else {
            checkTextfield.isEnabled = true
            checkLabel.textColor = UIColor.black
            checkTextfield.backgroundColor = UIColor.white
            accesseMethod = 1
        }
    }
    @IBAction func checkAccount(_ sender: Any) {
        var errorText = ""
        var isSuceed = false
        if accesseMethod == 0 { // login
            func checkInput()  {
                guard accountTextfield.text != "" else {
                    errorText = ErrorType.accountEmpty.showError()
                    return
                }
                guard passwordTextfield.text != "" else {
                    errorText = ErrorType.accountEmpty.showError()
                    return
                }
                guard accountTextfield.text == account
                        && passwordTextfield.text == password
                else {
                    errorText = ErrorType.loginFailed.showError()
                    return
                }
                isSuceed = true
                }
            checkInput()
            }
        if accesseMethod == 1 { // signup
            func checkInput()  {
                guard accountTextfield.text != "" else {
                    errorText = ErrorType.accountEmpty.showError()
                    return
                }
                guard passwordTextfield.text != "" else {
                    errorText = ErrorType.passwordeEmpty.showError()
                    return
                }
                guard checkTextfield.text != "" else {
                    errorText = ErrorType.checkPasswordEmpty.showError()
                    return
                }
                guard checkTextfield.text == passwordTextfield.text
                else {
                    errorText = ErrorType.signFailed.showError()
                    return
                }
                isSuceed = true
                }
            
            checkInput()
        }
        if isSuceed == true {
            return
        } else {
        let alert = UIAlertController(title: "Error", message: "\(errorText)" , preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: {action in
        })
            alert.addAction(action)
            present(alert, animated: true)
    }
    }
}
