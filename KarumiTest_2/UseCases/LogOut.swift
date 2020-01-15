//
//  LogOut.swift
//  KarumiTest_2
//
//  Created by Valdepenas, Yvon on 15/01/2020.
//  Copyright © 2020 Sicpa. All rights reserved.
//

import Foundation

class LogOut{
    
    var delegate: ViewController?
    var time: Date?
    
    init() {
        
    }
    
    convenience init(delegate: ViewController){
        self.delegate = delegate
    }
    
    convenience init(time: Date){
        self.time = time
    }
    
    func execute() {
        if time!.timeIntervalSince1970 / 2 == 0 {
            delegate?.showLogout()
        } else {
            print("Error")
        }
        
    }
}
