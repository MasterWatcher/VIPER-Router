//
//  SecondViewIO.swift
//  Router
//
//  Created by Anton Goncharov on 5/26/18.
//  Copyright © 2018 Anton Goncharov. All rights reserved.
//

import Foundation

protocol SecondViewInput: ViewInput {
    func show(value: String)
}

protocol SecondViewOutput {
    func viewIsReady()
}
