//
//  textModel.swift
//  lesson-2-VCLifeCycle
//
//  Created by Иван longrail on 12/03/2019.
//  Copyright © 2019 Иван longrail. All rights reserved.
//

import Foundation

var methodsName: String = "" {
    didSet {
        methodsArray.append(methodsName)
    }
}
var methodsArray = [String]()


func getText(title: String?, function: String) -> String {
    methodsName = getAlignmentedLine(count: methodsArray.count, title: title, function: function)
    return methodsArray.joined(separator: "\n")
}

func getAlignmentedLine(count: Int, title: String?, function: String) -> String {
    let indention = 12
    let countStr = "\(methodsArray.count + 1) - "
    let titleStr = title ?? ""
    let functionStr = ":  \(function)"
    
    let returnStr = countStr + String(repeating: " ", count: indention - countStr.count - titleStr.count) + titleStr + functionStr
    return returnStr
}

