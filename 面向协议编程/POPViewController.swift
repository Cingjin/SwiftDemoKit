//
//  POPViewController.swift
//  SwiftDemoKit
//
//  Created by Anmo on 2021/6/28.
//

import UIKit

class POPViewController: UIViewController {

    lazy var label: CJLabel = {
        let label = CJLabel(frame: CGRect(x: 20, y: 100, width: self.view.frame.size.width - 40, height: 40))
        label.backgroundColor = UIColor.orange
        label.adjustsFontSizeToFitWidth = true
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.text = "我是一个Label，我具有shake的能力"
        return label
    }()
    
    lazy var imageView: CJImageView = {
        let imageView = CJImageView(frame: CGRect(x: 20, y: label.frame.maxY + 20.0, width: 200, height: 200))
        imageView.backgroundColor = .orange
        return  imageView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(label)
        self.view.addSubview(imageView)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        label.shake()
        imageView.shake()
    }
}

class CJLabel: UILabel,Shakeable {
    
}

class CJImageView: UIImageView,Shakeable {
    
}
