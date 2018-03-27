//
//  custombar.swift
//  controllmemusample
//
//  Created by tatsumi kentaro on 2018/03/27.
//  Copyright © 2018年 tatsumi kentaro. All rights reserved.
//

import UIKit
@IBDesignable class CustomNavigationBar: UINavigationBar {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if #available(iOS 11.0, *) {
            for subview in self.subviews {
                let stringFromClass = NSStringFromClass(subview.classForCoder)
                if stringFromClass.contains("BarBackground") {
                    subview.frame = self.bounds
                } else if stringFromClass.contains("BarContentView") {
                    subview.frame.origin.y = UIApplication.shared.statusBarFrame.height
                    subview.frame.size.height = self.bounds.height - UIApplication.shared.statusBarFrame.height
                }
            }
        }
    }
}
