//
//  LoginLogoutPresenter.swift
//  KarumiTest_2
//
//  Created by Valdepenas, Yvon on 15/01/2020.
//  Copyright © 2020 Sicpa. All rights reserved.
//

import Foundation

protocol LoginLogoutView {
    
    func showLogin()
    func showLogout()
}

class LoginLogoutPresenter {
    
    private let view: LoginLogoutView
    private let loginUseCase: LogIn
    private let logoutUseCase: LogOut
    
    init(loginUseCase: LogIn, logoutUseCase: LogOut, view: LoginLogoutView) {
        
        self.view = view
        self.loginUseCase = loginUseCase
        self.logoutUseCase = logoutUseCase
    }
    
    public func doLogin(){
        
        self.view.showLogin()
    }
    
    public func doLogout(){
        
        self.view.showLogout()
    }
    
    public func onLogoutButtonClick(){
        
        self.logoutUseCase.execute()
    }
    
    public func onLoginButtonClick(name: String, passwd: String) {
        
        self.loginUseCase.execute(name: name, passwd: passwd)
    }
    
}
