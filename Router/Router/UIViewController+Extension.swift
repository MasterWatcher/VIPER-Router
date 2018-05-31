//
//  UIViewController+Extension.swift
//  Router
//
//  Created by Anton Goncharov on 5/26/18.
//  Copyright © 2018 Anton Goncharov. All rights reserved.
//

import UIKit

protocol Transition {
    var output: ViewInput! {get set}
}

extension UIViewController {
    var moduleInput: Any? {
        return findValue(for: "output", in: Mirror(reflecting: self))
    }

    private func findValue(for propertyName: String, in mirror: Mirror) -> Any? {
        for property in mirror.children {
            if property.label! == propertyName {
                return property.value
            }
        }

        if let superclassMirror = mirror.superclassMirror {
            return findValue(for: propertyName, in: superclassMirror)
        }

        return nil
    }
}
