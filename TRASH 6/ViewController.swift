//
//  ViewController.swift
//  TRASH 6
//
//  Created by Manolescu Mihai Alexandru on 14/05/2017.
//  Copyright © 2017 Manolescu Mihai Alexandru. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var areSettingsButtonsDisplayed = false
    
    @IBOutlet weak var H: UIButton!
    @IBAction func H(_ sender: Any)
    {
        
    }
    
    @IBAction func BTsettings(_ sender: Any)
    {
        if(areSettingsButtonsDisplayed)
        {
            constraintDisplay.constant = -300
            areSettingsButtonsDisplayed = false
            H.alpha = 0
        }
        else
        {
            areSettingsButtonsDisplayed = true
            constraintDisplay.constant = 1

        }
        
    }
    

    @IBOutlet weak var constraintDisplay: NSLayoutConstraint!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        areSettingsButtonsDisplayed = false
        H.alpha = 0
        

        
        //print(constraintDisplay.multiplier)  //TU
    }

    

    
}








