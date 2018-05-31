//
//  ViewController.swift
//  Router
//
//  Created by Anton Goncharov on 5/26/18.
//  Copyright © 2018 Anton Goncharov. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var inputTextField: UITextField!

    var router: Router!

    override func viewDidLoad() {
        super.viewDidLoad()
        router = RouterImpl(vc: self)
    }

    @IBAction func push(_ sender: Any) {
        router.transition(to: SecondScenePush(with: inputTextField.text!))
    }

    @IBAction func modal(_ sender: Any) {
        router.transition(to: SecondSceneModal(with: inputTextField.text!))
    }
}

