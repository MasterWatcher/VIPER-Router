//
//  SecondSceneRoot.swift
//  Router
//
//  Created by goncharov on 01.06.2018.
//  Copyright © 2018 Anton Goncharov. All rights reserved.
//

import Foundation

struct SecondSceneRoot: Scene {

    typealias Module = SecondPresenter

    init(with param: SecondPresenter.Param) {
        self.param = param
    }

    let param: SecondPresenter.Param
    let storyboard = "Main"
    let identifier = "Second"
    let transitionType: TransitionType = .root
    let wrapInNavigationController = true
}
