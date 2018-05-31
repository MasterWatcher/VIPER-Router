//
//  Transition.swift
//  Router
//
//  Created by Anastasia Goncharova on 27/05/2018.
//  Copyright © 2018 Anastasia Goncharova. All rights reserved.
//

import UIKit

protocol Scene {
    associatedtype Module: ModuleInput
    
    var param: Module.Param {get}
    var storyboard: String {get}
    var identifier: String {get}
    var transitionType: TransitionType {get}
    var wrapInNavigationController: Bool {get}
}

enum TransitionType {
    case root
    case push
    case modal
}

extension Scene {
    var wrapInNavigationController: Bool {
        return false
    }
}
