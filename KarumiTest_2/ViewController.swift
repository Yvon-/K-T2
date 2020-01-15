//
//  ViewController.swift
//  KarumiTest_2
//
//  Created by Valdepenas, Yvon on 15/01/2020.
//  Copyright © 2020 Sicpa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("")
    }

    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var passwd: UITextField!
    @IBOutlet weak var logout_btn: UIButton!
    
    @IBAction func login(_ sender: Any) {
        LogIn(delegate: self).execute(name: user.text!, passwd: passwd.text!)
        
    }
    
    @IBAction func logout_btn(_ sender: Any) {
        LogOut(delegate: self).execute()
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

