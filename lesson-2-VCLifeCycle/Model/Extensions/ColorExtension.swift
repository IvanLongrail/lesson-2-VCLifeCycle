//
//  Color.swift
//  lesson-2-VCLifeCycle
//
//  Created by Иван longrail on 12/03/2019.
//  Copyright © 2019 Иван longrail. All rights reserved.
//

import UIKit


extension UIColor {

    // Background color of textView depends of view background
    func getDarkColor() -> UIColor {
        var h: CGFloat = 0
        var s: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        self.getHue(&h, saturation: &s, brightness: &b, alpha: &a)
        return UIColor(hue: h, saturation: s, brightness: b - 0.9, alpha: a)
    }
}
