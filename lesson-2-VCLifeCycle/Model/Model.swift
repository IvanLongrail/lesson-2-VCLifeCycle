//
//  Model.swift
//  lesson-2-VCLifeCycle
//
//  Created by Иван longrail on 13/03/2019.
//  Copyright © 2019 Иван longrail. All rights reserved.
//

import Foundation

typealias methodsArrayType = (vcTitle: String, vcMethod: VCMethods)

enum VCMethods: String  {
    case viewDidLoad = "viewDidLoad()"
    case viewWillAppear = "viewWillAppear"
    case viewDidAppear = "viewDidAppear"
    case viewWillDisappear = "viewWillDisappear"
    case viewDidDisappear = "viewDidDisappear"
    case viewWillTransition = "viewWillTransition(to:with:)"
    case viewWillLayoutSubviews = "viewWillLayoutSubviews()"
    case viewDidLayoutSubviews = "viewDidLayoutSubviews()"
    case unwindSegue = "unwind(segue:)"
}

func getVCMethods(from nameOfMethods: String) -> VCMethods? {
    return VCMethods(rawValue: nameOfMethods) ?? nil
}


