//
//  ViewController.swift
//  KarumiTest_2
//
//  Created by Valdepenas, Yvon on 15/01/2020.
//  Copyright © 2020 Sicpa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, LoginLogoutView {

    private var presenter: LoginLogoutPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print()
        presenter = LoginLogoutPresenter(loginUseCase: LogIn(delegate: presenter), logoutUseCase: LogOut(delegate: presenter), view: self)
        
    }

    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var passwd: UITextField!
    @IBOutlet weak var logout_btn: UIButton!
    
    @IBAction func login(_ sender: Any) {

       self.presenter.onLoginButtonClick(name: user.text!, passwd: passwd.text!)
    }
    
    @IBAction func logout_btn(_ sender: Any) {
        
        self.presenter.onLogoutButtonClick()
    }
    
    
    public func showLogin() {
        loginView.isHidden = true
        logout_btn.isHidden = false
    }
    
    public func showLogout(){
        loginView.isHidden = false
        logout_btn.isHidden = true
    }
}

