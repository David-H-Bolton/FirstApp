//
//  ViewController.swift
//  FirstApp
//
//  Created by David H Bolton on 09/02/2015.
//  Copyright (c) 2015 TheNewStack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

@IBOutlet var aTextField : UITextField!
@IBOutlet var bTextField : UITextField!
@IBOutlet var cTextField : UITextField!
@IBOutlet var resultTextField : UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
   
    func quadraticSolver(a: Double, b: Double, c: Double) -> String {
        if abs(a) < 0.00001 {
            return "Please enter a non zero value for A"
        }
        let b2_4ac = b*b - (4*a*c)
        if b2_4ac == 0 {
            let result = -b/(2*a)
            return "There is one answer \(result)"
        }
        if b2_4ac < 0 {
            return "The answer has complex number roots"
        }
        let sq = sqrt(b2_4ac)
        let root1 = (-b + sq) / (2 * a)
        let root2 = (-b - sq) / (2 * a)
        return "Root 1 = \(root1)\nRoot 2 = \(root2)"
    }

    @IBAction func solveQuadratic(sender : AnyObject){
    
        view.endEditing(true)
        let a = strtod(aTextField.text,nil)
        let b = strtod(bTextField.text,nil)
        let c = strtod(cTextField.text,nil)
        let result = quadraticSolver(a, b: b, c: c)
        resultTextField.text = result
    
    }
    


}

