//
//  RoundedButton.swift
//  Flight Search
//
//  Created by Ronald Situmorang on 21/12/19.
//  Copyright © 2019 Ronald Situmorang. All rights reserved.
//

import UIKit


class RoundedButton : UIButton {
    let spacing: CGFloat = 8
    
    @IBInspectable var isChosen: Bool = false {
        didSet {
            setupView()
        }
    }
    
    func setupView(){
        let textColor:UIColor = isChosen ? UIColor.red : UIColor.white
        self.backgroundColor = isChosen ? UIColor.white : UIColor.clear
        
        self.setTitleColor(textColor, for: .normal)
        self.layer.cornerRadius = self.frame.height/2
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.white.cgColor
        self.contentEdgeInsets = UIEdgeInsets(top: 0, left: spacing, bottom: 0, right: spacing)
    }
    
    override func awakeFromNib() {
        setupView()
    }
}
