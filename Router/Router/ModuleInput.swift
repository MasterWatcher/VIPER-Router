//
//  ModuleInput.swift
//  Router
//
//  Created by Anastasia Goncharova on 27/05/2018.
//  Copyright © 2018 Anastasia Goncharova. All rights reserved.
//

import Foundation

protocol ModuleInput {
    associatedtype Param
    func configure(with: Param)
}
