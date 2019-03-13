//
//  Color.swift
//  lesson-2-VCLifeCycle
//
//  Created by Иван longrail on 12/03/2019.
//  Copyright © 2019 Иван longrail. All rights reserved.
//

import UIKit


extension UIColor {
//    var hsba: (hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat) {
//        var hue: CGFloat = 0
//        var saturation: CGFloat = 0
//        var brightness: CGFloat = 0
//        var alpha: CGFloat = 0
//        self.getHue(
//            &hue,
//            saturation: &saturation,
//            brightness: &brightness,
//            alpha: &alpha
//        )
//        return (hue, saturation, brightness, alpha)
//    }
    func getDarkColor() -> UIColor {
        var h: CGFloat = 0
        var s: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        self.getHue(&h, saturation: &s, brightness: &b, alpha: &a)
        return UIColor(hue: h, saturation: s, brightness: b - 0.7, alpha: a)
    }

}
