//
//  SecondViewController.swift
//  Router
//
//  Created by Anton Goncharov on 5/26/18.
//  Copyright © 2018 Anton Goncharov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, SecondViewInput {
    
    var output: SecondViewOutput!
    
    var a: SecondModuleInput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        // Do any additional setup after loading the view.
    }
    
    func show(value: String) {
        
    }

}
