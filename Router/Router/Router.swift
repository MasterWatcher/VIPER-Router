//
//  Router.swift
//  Router
//
//  Created by Anton Goncharov on 5/26/18.
//  Copyright © 2018 Anton Goncharov. All rights reserved.
//

import UIKit

protocol Router {
    func transition<T:Scene>(to: T)
}

class RouterImpl: Router {

   // private var window: UIWindow
    private var currentViewController: UIViewController

//    init(window: UIWindow) {
//        self.window = window
//        currentViewController = window.rootViewController!
//    }

    init(vc: UIViewController) {
        self.currentViewController = vc
    }

    func transition<T:Scene>(to scene: T) {
        let storyboard = UIStoryboard(name: scene.storyboard, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: scene.identifier)
        if let moduleInput = viewController.moduleInput as? T.Module {
            moduleInput.configure(with: scene.param)
        }

        switch scene.transitionType {
        case .root:
            //TODO: need to implement
            return
        case .push:
            guard let navigationController = currentViewController.navigationController else { return }
            navigationController.pushViewController(viewController, animated: true)
        case .modal:
            currentViewController.present(viewController, animated: true, completion: nil)
        }
    }
}
