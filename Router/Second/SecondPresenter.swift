//
//  SecondPresenter.swift
//  Router
//
//  Created by Anton Goncharov on 5/26/18.
//  Copyright © 2018 Anton Goncharov. All rights reserved.
//

import Foundation

class SecondPresenter: SecondViewOutput {
    
    weak var view: SecondViewInput!
    var router: Router!

    var value: String!

    func viewIsReady() {
        view.show(value: value)
    }

    func closeTapped() {
        router.close(animated: true)
    }
}

extension SecondPresenter: ModuleInput {
    func configure(with value: String) {
        print(value)
        self.value = value
    }

}
