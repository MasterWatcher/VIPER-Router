//
//  SecondModuleAssembly.swift
//  Router
//
//  Created by Anton Goncharov on 5/26/18.
//  Copyright © 2018 Anton Goncharov. All rights reserved.
//

import Swinject
import SwinjectStoryboard

final class SecondModuleAssembly: Assembly {
    
    func assemble(container: Container) {
        
        
        container.register(SecondPresenter.self) { (r, viewController: SecondViewController) in
            let presenter = SecondPresenter()
            presenter.view = viewController
            presenter.router = r.resolve(Router.self)
            
            return presenter
        }
        
        container.storyboardInitCompleted(SecondViewController.self) { r, viewController in
            viewController.output = r.resolve(SecondPresenter.self, argument: viewController)
        }
    }
    
}
