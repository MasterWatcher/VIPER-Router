//
//  FirstModuleAssembly.swift
//  Router
//
//  Created by Anton Goncharov on 5/26/18.
//  Copyright © 2018 Anton Goncharov. All rights reserved.
//

import Swinject
import SwinjectStoryboard

final class FisrtModuleAssembly: Assembly {
    
    //Module assembly
    func assemble(container: Container) {
       
        container.storyboardInitCompleted(FirstViewController.self) { r, viewController in
           //   viewController.router = r.resolve(Router.self)
        }
    }
    
}

