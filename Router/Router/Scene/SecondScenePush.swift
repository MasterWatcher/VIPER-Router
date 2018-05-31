//
//  SecondTransition.swift
//  Router
//
//  Created by Anastasia Goncharova on 27/05/2018.
//  Copyright © 2018 Anastasia Goncharova. All rights reserved.
//

import Foundation

struct SecondScenePush: Scene {

    typealias Module = SecondPresenter
    
    init(with param: SecondPresenter.Param) {
        self.param = param
    }
    
    let param: SecondPresenter.Param
    let storyboard = "Main"
    let identifier = "Second"
    let transitionType: TransitionType = .push
}
