//
//  ApplicationAssembly.swift
//  Router
//
//  Created by Anton Goncharov on 5/26/18.
//  Copyright © 2018 Anton Goncharov. All rights reserved.
//

import Swinject
import SwinjectStoryboard

final class ApplicationAssembly {
    
    //Use default dependency
    class var assembler: Assembler {
        return Assembler([
         //   RouterAssembly(),
            FisrtModuleAssembly(),
            SecondModuleAssembly()
            ])
    }
    
    var assembler: Assembler
    
    //If you want use custom Assembler
    init(with assemblies: [Assembly]) {
        assembler = Assembler(assemblies)
    }
}

//Inject dependency in Main Storyboard
extension SwinjectStoryboard {
    
    @objc class func setup() {
        Container.loggingFunction = nil
        defaultContainer = ApplicationAssembly.assembler.resolver as! Container
    }
    
}
