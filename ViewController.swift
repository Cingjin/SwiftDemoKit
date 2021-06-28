//
//  ViewController.swift
//  SwiftDemoKit
//
//  Created by Anmo on 2021/6/27.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = .white
        
        /// 面向协议编程（POP）个视图添加shake动画
        popFunc()
        
    }
    
    fileprivate func popFunc()
    {
        let popVc = POPViewController()
        popVc.view.bounds = view.bounds
        addChild(popVc)
        view.addSubview(popVc.view)
    }
    
}



