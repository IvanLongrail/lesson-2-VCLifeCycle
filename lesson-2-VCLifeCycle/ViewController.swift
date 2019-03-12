//
//  ViewController.swift
//  lesson-2-VCLifeCycle
//
//  Created by Иван longrail on 12/03/2019.
//  Copyright © 2019 Иван longrail. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //var methodsArray = [String]()
    var methodsName: String = "" {
        didSet {
//            textView.text += methodsName
//            methodsArray.append(methodsName)
            
            for viewController in tabBarController!.viewControllers! {
                let vC = viewController as! ViewController
                print(methodsName)
                if let tV = vC.textView {
                    tV.text += methodsName + "\n"
                }
            }
            
        }
    }
    
    @IBOutlet weak var textView: UITextView!
    
    func getMessage(_ function: String = #function) {
        self.methodsName = "\(self.title ?? ""): \(function)"
//        for method in methodsArray {
//            print(method)
//        }
        //print("_____*__*__*__*__*__*__*__*_____")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getMessage()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getMessage()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        getMessage()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        getMessage()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        getMessage()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        getMessage()
    }
}

extension ViewController: UITextViewDelegate {
    
}
