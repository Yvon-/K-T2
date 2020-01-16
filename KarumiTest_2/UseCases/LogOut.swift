//
//  LogOut.swift
//  KarumiTest_2
//
//  Created by Valdepenas, Yvon on 15/01/2020.
//  Copyright © 2020 Sicpa. All rights reserved.
//

import Foundation

class LogOut{
    
    var delegate: LoginLogoutPresenter?
    var time: Date?
    
    init() {
        
    }
    
    convenience init(delegate: LoginLogoutPresenter){
        self.init()
        self.delegate = delegate
    }
    
    convenience init(time: Date){
        self.init()
        self.time = time
    }
    
    func execute() {
        if time!.timeIntervalSince1970 / 2 == 0 {
            delegate?.doLogout()
        } else {
            print("Error")
        }
        
    }
}
