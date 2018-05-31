//
//  SecondSceneModal.swift
//  Router
//
//  Created by goncharov on 31.05.2018.
//  Copyright © 2018 Anton Goncharov. All rights reserved.
//

import Foundation

struct SecondSceneModal: Scene {

    typealias Module = SecondPresenter

    init(with param: SecondPresenter.Param) {
        self.param = param
    }

    let param: SecondPresenter.Param
    let storyboard = "Main"
    let identifier = "Second"
    let transitionType: TransitionType = .modal
}

