//
//  arrayAttrStrExtension.swift
//  lesson-2-VCLifeCycle
//
//  Created by Иван longrail on 13/03/2019.
//  Copyright © 2019 Иван longrail. All rights reserved.
//

import Foundation


// There are no analog of methods "func joined(separator: String = default) -> String"
// for [NSAttributedString]
extension Array {
    
    func joined (separator: String) -> NSMutableAttributedString {
        let returnAttrStr = NSMutableAttributedString()
        for item in self {
            returnAttrStr.append(item as! NSAttributedString)
            returnAttrStr.append(NSAttributedString(string: separator))
        }
        return returnAttrStr
    }
}
