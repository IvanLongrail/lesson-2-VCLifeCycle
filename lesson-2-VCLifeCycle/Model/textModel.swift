//
//  textModel.swift
//  lesson-2-VCLifeCycle
//
//  Created by Иван longrail on 12/03/2019.
//  Copyright © 2019 Иван longrail. All rights reserved.
//

import UIKit // Isn`t Foundation only because of UIColor

class ListOfMethods {
    
    private init() {}
    
    static var shared = ListOfMethods()
    
    private var methodsName = NSMutableAttributedString() {
        didSet {
            methodsArray.append(methodsName)
        }
    }
    private var methodsArray = [NSMutableAttributedString]()

    
    func getText(title: String?, function: String, backgroundColor textColor: UIColor?) -> NSMutableAttributedString {
    
        guard textColor != nil else { return NSMutableAttributedString() }
        let attributedStr = getAlignmentedLine(count: methodsArray.count, title: title, function: function)
    
        // Add a two attribute:
        attributedStr.addAttribute(NSAttributedString.Key.foregroundColor, value:  textColor!, range: NSMakeRange(0, attributedStr.length))
        attributedStr.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "Menlo", size: 13)!, range: NSMakeRange(0, attributedStr.length))
    
        methodsName = attributedStr
    
        return methodsArray.joined(separator: "\n")
    }

    private func getAlignmentedLine(count: Int, title: String?, function: String) -> NSMutableAttributedString {
        let indention = 12
        let countStr = "\(methodsArray.count + 1) - "
        let titleStr = title ?? ""
        let functionStr = ":  \(function)"
    
        let returnStr = countStr + String(repeating: " ", count: indention - countStr.count - titleStr.count) + titleStr + functionStr
        
        return NSMutableAttributedString(string: returnStr)
    }

}
