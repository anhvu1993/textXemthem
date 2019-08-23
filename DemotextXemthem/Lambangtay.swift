//
//  ViewController2.swift
//  DemotextXemthem
//
//  Created by Bui Van Tuan on 8/23/19.
//  Copyright © 2019 vinicorp. All rights reserved.
//

import UIKit

class Lambangtay: UIViewController {
    
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var textlabel: UILabel!
    @IBOutlet weak var lblHeight: NSLayoutConstraint!
    
    var isLabelAtMaxHeight = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn.setTitle("Read more", for: .normal)
    }
    
    @IBAction func btnAction(_ sender: Any) {
        if isLabelAtMaxHeight {
            btn.setTitle("Read more", for: .normal)
            isLabelAtMaxHeight = false
            lblHeight.constant = 70
        }
        else {
            btn.setTitle("Read less", for: .normal)
            isLabelAtMaxHeight = true
            lblHeight.constant = getLabelHeight(text: " Lorem http://ipsum.com dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.", width: textlabel.bounds.height, font: UIFont.systemFont(ofSize: 16))
        }
    }
    
    func getLabelHeight(text: String, width: CGFloat, font: UIFont) -> CGFloat {
        textlabel.frame.size.height = width
        textlabel.font = font
        textlabel.numberOfLines = 0
        textlabel.text = text
        textlabel.sizeToFit()
        
        return textlabel.frame.size.height
    }
    
}
