//
//  GradientView.swift
//  Flight Search
//
//  Created by Ronald Situmorang on 21/12/19.
//  Copyright © 2019 Ronald Situmorang. All rights reserved.
//

import UIKit

class GradientView: UIView {

    override func awakeFromNib() {
        setupGradientView()
    }
    
    override public class var layerClass: Swift.AnyClass {
        return CAGradientLayer.self
    }
    
    
    func setupGradientView(){
        guard let gradient = self.layer as? CAGradientLayer else { return }
        gradient.frame = self.bounds
        gradient.colors = [UIColor.red.cgColor, UIColor.init (red: 230/255, green: 76/255, blue: 133/255, alpha:1.0).cgColor]
        gradient.startPoint = CGPoint(x: 0.5, y: 0)
        gradient.endPoint = CGPoint(x: 0.5, y: 1)
        gradient.locations = [0.0, 1.0]
    }
    
}
