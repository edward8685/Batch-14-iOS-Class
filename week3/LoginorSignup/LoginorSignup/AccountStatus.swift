//
//  AccountStatus.swift
//  LoginorSignup
//
//  Created by Ed Chang on 2021/8/15.
//

import Foundation


class AccountStatus {
    enum Status: Int {
    case login, signup
//        func checkAccount(account: ,password: ,checkpassword: )
        
        
  }
}

enum ErrorType {
    case accountEmpty
    case passwordeEmpty
    case checkPasswordEmpty
    case loginFailed
    case signFailed
    
    func showError () -> String{
        switch self {
        case .accountEmpty:
            return ("Account should not be empty.")
        case .passwordeEmpty:
            return ("Password should not be empty.")
        case .checkPasswordEmpty:
            return ("Check Password should not be empty.")
        case .loginFailed:
            return ("Login fail")
        case .signFailed:
            return ("Signup fail")
        }
    }
}

