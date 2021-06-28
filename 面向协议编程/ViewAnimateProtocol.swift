//
//  ViewAnimateProtocol.swift
//  SwiftDemoKit
//
//  Created by Anmo on 2021/6/28.
//

import UIKit

protocol Shakeable {}

extension Shakeable where Self: UIView {
    
    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5.0
        animation.autoreverses = true
        animation.fromValue = NSValue.init(cgPoint: CGPoint.init(x: self.center.x - 10, y: self.center.y))
        animation.toValue = NSValue.init(cgPoint: CGPoint.init(x: self.center.x + 10, y: self.center.y))
        layer.add(animation, forKey: "position")
    }
}
