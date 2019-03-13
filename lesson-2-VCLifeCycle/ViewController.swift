//
//  ViewController.swift
//  lesson-2-VCLifeCycle
//
//  Created by Иван longrail on 12/03/2019.
//  Copyright © 2019 Иван longrail. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textView: UITextView!
    
    func updateTV(_ function: String = #function) {
        let currentText = ListOfMethods.shared.getText(title: self.title,
                                                   function: function,
                                                   backgroundColor: self.view.backgroundColor)
        
        textView.attributedText = currentText

        // Scroll to the bottom of list of called methods:
        
        textView.scrollRangeToVisible(NSMakeRange(currentText.length, 0))
        // I don't fully understand how it works, but these two bottom lines are necessary for correct scrolling
        // Maybe it`s happens because of this information from Apple documentation: "When scrolling is disabled, the scroll view does not accept touch events; it forwards them up the responder chain."
        textView.isScrollEnabled = false
        textView.isScrollEnabled = true
        //
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textView.backgroundColor = self.view.backgroundColor?.getDarkColor()
        self.textView.layer.cornerRadius = 5
        
        updateTV()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateTV()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        updateTV()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        updateTV()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        updateTV()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        updateTV()
    }
}
