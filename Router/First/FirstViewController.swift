//
//  ViewController.swift
//  Router
//
//  Created by Anton Goncharov on 5/26/18.
//  Copyright © 2018 Anton Goncharov. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, FirstViewInput {

    @IBOutlet var inputTextField: UITextField!

    var output: FirstViewOutput!

    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }

    @IBAction func push(_ sender: Any) {
        output.push(inputTextField.text!)
    }

    @IBAction func modal(_ sender: Any) {
        output.modal(inputTextField.text!)
    }
}

