//
//  CircleView.swift
//  UIViewSetNeedsDisplay
//
//  Created by Lawrence F MacFadyen on 2016-04-13.
//  Copyright © 2016 LawrenceM. All rights reserved.
//

import UIKit

class CircleView: UIView {
    
    var color:UIColor = UIColor.blue {
        didSet {
            // Color was set, so tell the system a redraw is needed.
            setNeedsDisplay()
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        color.setFill()
        path.fill()
    }
}
