//
//  FirstViewIO.swift
//  Router
//
//  Created by goncharov on 31.05.2018.
//  Copyright © 2018 Anton Goncharov. All rights reserved.
//

import Foundation

protocol FirstViewInput: class  {
}

protocol FirstViewOutput: class  {
    func viewIsReady()
    func push(_: String)
    func modal(_: String)
}
