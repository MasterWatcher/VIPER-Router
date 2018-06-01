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
    func close(animated: Bool)
}

class RouterImpl: Router {

    private var window: UIWindow
    private var currentViewController: UIViewController?

    init(window: UIWindow) {
        self.window = window
        currentViewController = window.rootViewController
    }

    func transition<T:Scene>(to scene: T) {
        let storyboard = UIStoryboard(name: scene.storyboard, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: scene.identifier)
        if let moduleInput = viewController.moduleInput as? T.Module {
            moduleInput.configure(with: scene.param)
        }
        let wrappedViewController = scene.wrapInNavigationController ? wrap(viewController) : viewController

        switch scene.transitionType {
        case .root:
            window.rootViewController = wrappedViewController
        case .push:
            guard let navigationController = currentViewController?.navigationController else { return }
            navigationController.pushViewController(wrappedViewController, animated: true)
        case .modal:
            currentViewController?.present(wrappedViewController, animated: true, completion: nil)
        }

        currentViewController = viewController
    }

    func close(animated: Bool) {
        if let presentingViewController = currentViewController?.presentingViewController {
            currentViewController?.dismiss(animated: animated, completion: nil)
            //unwrap because of https://stackoverflow.com/questions/41114042/viewcontrollers-presentingviewcontroller-being-set-wrong
            currentViewController = unwrap(presentingViewController)

        } else if let navigationController = currentViewController?.navigationController,
            navigationController.viewControllers.count > 1 {
            navigationController.popViewController(animated: animated)
            currentViewController = navigationController.viewControllers.last
        }
    }

    private func wrap(_ viewController: UIViewController) -> UIViewController {
        let navigationController = UINavigationController()
        navigationController.viewControllers = [viewController]
        return navigationController
    }

    private func unwrap(_ viewController: UIViewController) -> UIViewController? {
        if let navigationController = viewController as? UINavigationController {
            return navigationController.viewControllers.first
        } else {
            return viewController
        }
    }
}
