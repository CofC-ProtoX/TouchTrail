//
//  Circle.swift
//  TouchTrail
//
//  Created by Michael Edenzon on 4/2/17.
//  Copyright © 2017 Michael Edenzon. All rights reserved.
//

import Foundation
import UIKit

class Circle: UIView {
    
    static var diameter: CGFloat {
        get {
            return 40
        }
    }
    
    private static var radius: CGFloat {
        get {
            return Circle.diameter / 2
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init(center: CGPoint) {
        let radius = Circle.radius
        self.init(frame: CGRect(x: center.x - radius, y: center.y - radius, width: radius * 2, height: radius * 2))
        self.backgroundColor = UIColor.yellow
        self.layer.cornerRadius = self.frame.height / 8
        animate()
    }
    
    private func animate() {
        UIView.animate(withDuration: 3.0, animations: {
            self.transform = CGAffineTransform(scaleX: 5, y: 0.5)
            self.backgroundColor = UIColor.red
        }) { (true) in
            self.removeFromSuperview()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
