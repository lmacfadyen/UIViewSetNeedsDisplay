//
//  ViewController.swift
//  UIViewSetNeedsDisplay
//
//  Created by Lawrence F MacFadyen on 2016-04-13.
//  Copyright © 2016 LawrenceM. All rights reserved.
//

import UIKit

extension CGFloat {
    init?(_ str: String) {
        guard let float = Float(str) else { return nil }
        self = CGFloat(float)
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var circleView: CircleView!
    
    @IBOutlet weak var rStep: UIStepper!
    @IBOutlet weak var gStep: UIStepper!
    @IBOutlet weak var bStep: UIStepper!
    
    @IBOutlet weak var rLabel: UILabel!
    @IBOutlet weak var gLabel: UILabel!
    @IBOutlet weak var bLabel: UILabel!
    
    // Update Label Values
    @IBAction func rChanged(sender: AnyObject) {
        rLabel.text = Int(rStep.value).description
    }
    @IBAction func gChanged(sender: AnyObject) {
        gLabel.text = Int(gStep.value).description
    }
    @IBAction func bChanged(sender: AnyObject) {
        bLabel.text = Int(bStep.value).description
    }
    
    // Button pressed to set CircleView color
    @IBAction func buttonPressed(sender: AnyObject) {
        setColorFromSteppers()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set CircleView color from initial UIStepper values
        setColorFromSteppers()
    }
    
    // Set CircleView color from stepper values
    func setColorFromSteppers(){
        
        let rFloat = CGFloat(rStep.value)
        let gFloat = CGFloat(gStep.value)
        let bFloat = CGFloat(bStep.value)
        
        let color = UIColor(red:rFloat/255.0, green:gFloat/255.0, blue:bFloat/255.0, alpha:1.0)
        circleView.color = color
        // setNeedsDisplay not need here anymore due to property observer in CircleView
        //circleView.setNeedsDisplay()
    }
}

