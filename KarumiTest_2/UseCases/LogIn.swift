//
//  LogIn.swift
//  KarumiTest_2
//
//  Created by Valdepenas, Yvon on 15/01/2020.
//  Copyright © 2020 Sicpa. All rights reserved.
//

import Foundation


class LogIn{
    
    var delegate: LoginLogoutPresenter?
    
    init() {
        
    }
    
    convenience init(delegate: LoginLogoutPresenter){
        self.init()
        self.delegate = delegate
    }
    
    func execute(name: String, passwd: String) {
        
        if name == "a" && passwd == "a" {
             delegate!.doLogin()
        } else {
            print("Login Error")
        }
       
    }
}
