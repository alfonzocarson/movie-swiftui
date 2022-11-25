//
//  UserRegister.swift
//  
//
//  Created by Alfonzo on 2021/5/22.
//

import Foundation

struct UserRegister: Encodable{
    var user_name: String
    var email: String
    var password: String
    var confirm_password: String
}

