//
//  FirstPresetner.swift
//  Router
//
//  Created by goncharov on 31.05.2018.
//  Copyright © 2018 Anton Goncharov. All rights reserved.
//

import Foundation

class FirstPresenter: FirstViewOutput {

    weak var view: FirstViewInput!
    var router: Router!

    func viewIsReady() {
        
    }

    func push(_ value: String) {
        router.transition(to: SecondScenePush(with: value))
    }

    func modal(_ value: String) {
        router.transition(to: SecondSceneModal(with: value))
    }

    func root(_ value: String) {
        router.transition(to: SecondSceneRoot(with: value))
    }
}

extension FirstPresenter: ModuleInput {
    func configure(with value: String) {
        print(value)
    }

}
