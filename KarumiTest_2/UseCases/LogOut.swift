//
//  LogOut.swift
//  KarumiTest_2
//
//  Created by Valdepenas, Yvon on 15/01/2020.
//  Copyright © 2020 Sicpa. All rights reserved.
//

import Foundation

class LogOut{
    
    var delegate: ViewController
    
    init(delegate: ViewController){
        self.delegate = delegate
    }
    
    func execute() {
        delegate.showLogout()
    }
}
