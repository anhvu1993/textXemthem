//
//  ViewController.swift
//  DemotextXemthem
//
//  Created by Bui Van Tuan on 8/23/19.
//  Copyright © 2019 vinicorp. All rights reserved.
//

import UIKit
import ReadMoreTextView

class Thuvien: UIViewController {
@IBOutlet weak var topReadMoreTextView: ReadMoreTextView!
    
    @IBOutlet weak var showtext: UIButton!
    @IBOutlet weak var readMoreTextView: ReadMoreTextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        readMoreTextView.text = "👨‍👩‍👧‍👦👨‍👩‍👧‍👦👨‍👩‍👧‍👦👨‍👩‍👧‍👦 Lorem http://ipsum.com dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
        let readMoreTextAttributes: [NSAttributedString.Key: Any] = [
            NSAttributedString.Key.foregroundColor: view.tintColor,
            NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16)
        ]
        let readLessTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.red,
            NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 16)
        ]
//        readMoreTextView.attributedReadMoreText = NSAttributedString(string: "... Read more", attributes: readMoreTextAttributes)
//        readMoreTextView.attributedReadLessText = NSAttributedString(string: " Read less", attributes: readLessTextAttributes)
        readMoreTextView.maximumNumberOfLines = 4
        readMoreTextView.shouldTrim = true
    }

    @IBAction func showtext(_ sender: Any) {
        showtext.isSelected.toggle()
        readMoreTextView.shouldTrim.toggle()
    }
    
    
//    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//        coordinator.animate(alongsideTransition: {_ in
//            self.readMoreTextView.setNeedsUpdateTrim()
//            self.topReadMoreTextView.setNeedsUpdateTrim()
//        }, completion: nil)
//    }
//
}

