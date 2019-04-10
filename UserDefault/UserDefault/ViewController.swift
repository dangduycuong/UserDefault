//
//  ViewController.swift
//  UserDefault
//
//  Created by duycuong on 4/10/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let USER_DEFAULT = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        USER_DEFAULT.set(123, forKey: "Number")
        let number = USER_DEFAULT.integer(forKey: "Number") as Int
        
        UserDefaults.standard.set("23", forKey: "name_user")
        let name = UserDefaults.standard.object(forKey: "name_user") as? String
        let value = USER_DEFAULT.integer(forKey: "name_user") as Int
        UserDefaults.standard.set("abc", forKey: "name")
        
        let str = UserDefaults.standard.object(forKey: "name")
        
        print(number)
        print(name!)
        print(value)
        print(str!)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}
