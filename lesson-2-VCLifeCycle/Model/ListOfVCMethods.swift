//
//  textModel.swift
//  lesson-2-VCLifeCycle
//
//  Created by Иван longrail on 12/03/2019.
//  Copyright © 2019 Иван longrail. All rights reserved.
//

import UIKit // Isn`t Foundation only because of UIColor

class ListOfVCMethods {
    
    private init() {}
    static var shared = ListOfVCMethods()
    
    var methodsArray = [methodsArrayType]() // List of ViewControllers methods performed
    
    private var attrStrMethodsArray = [NSMutableAttributedString]() // List of attributed strings for textView

    
    func getAttributedText(title titleNonUnwraped: String?, function: String, backgroundColor textColor: UIColor?) -> NSMutableAttributedString? {
    
        guard let title = titleNonUnwraped else { return nil }
        guard textColor != nil else { return nil }
        guard let vcMethodsCase: VCMethods = getVCMethods(from: function) else { return nil }
        
        
        let newValueOfMethodsArray: methodsArrayType = (vcTitle: title, vcMethod: vcMethodsCase)
        methodsArray.append(newValueOfMethodsArray)
        
        let attributedStr = getAlignmentedLine(count: methodsArray.count, newLine: newValueOfMethodsArray)
    
        // Add a two attribute:
        attributedStr.addAttribute(NSAttributedString.Key.foregroundColor, value:  textColor!, range: NSMakeRange(0, attributedStr.length))
        attributedStr.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "Menlo", size: 13)!, range: NSMakeRange(0, attributedStr.length))
    
        attrStrMethodsArray.append(attributedStr)
    
        return attrStrMethodsArray.joined(separator: "\n")
    }

    private func getAlignmentedLine(count: Int, newLine: methodsArrayType) -> NSMutableAttributedString {
        let indention = 12
        let countStr = "\(count) - "
        let titleStr = "\(newLine.vcTitle)"
        let functionStr = ":  \(newLine.vcMethod.rawValue)"
    
        let returnStr = countStr + String(repeating: " ", count: indention - countStr.count - titleStr.count) + titleStr + functionStr
        
        return NSMutableAttributedString(string: returnStr)
    }

}
