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
    }

    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var passwd: UITextField!
    @IBOutlet weak var logout_btn: UIButton!
    
    @IBAction func login(_ sender: Any) {
        
        loginView.isHidden = true
        logout_btn.isHidden = false
    }
    
    @IBAction func logout_btn(_ sender: Any) {
        
        loginView.isHidden = false
        logout_btn.isHidden = true
    }
    
    
}

