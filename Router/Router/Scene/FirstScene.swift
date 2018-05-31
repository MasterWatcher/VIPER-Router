//
//  FirstScene.swift
//  Router
//
//  Created by goncharov on 31.05.2018.
//  Copyright © 2018 Anton Goncharov. All rights reserved.
//

import Foundation

struct FirstScene: Scene {

    typealias Module = FirstPresenter

    init(with param: FirstPresenter.Param) {
        self.param = param
    }

    let param: FirstPresenter.Param
    let storyboard = "Main"
    let identifier = "First"
    let transitionType: TransitionType = .root
    let wrapInNavigationController = true
}
