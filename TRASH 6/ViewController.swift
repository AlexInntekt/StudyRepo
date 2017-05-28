//
//  ViewController.swift
//  TRASH 6
//
//  Created by Manolescu Mihai Alexandru on 14/05/2017.
//  Copyright © 2017 Manolescu Mihai Alexandru. All rights reserved.
// lets make a commit,pushed through terminal

import UIKit

class ViewController: UIViewController
{
    var branch1 = String()
    
    
    var areSettingsButtonsDisplayed = false
    
    var branch2 = String()
    
    @IBOutlet weak var H: UIButton!
    @IBAction func H(_ sender: Any)
    {
        
    }
    
    @IBAction func BTsettings(_ sender: Any)
    {
       showOffButtons()
    }
    

    @IBOutlet weak var constraintDisplay: NSLayoutConstraint!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        areSettingsButtonsDisplayed = false
        H.alpha = 0
        
   

        
        
        //these 3 lines of codes keep track of the right gesture, calling the function respondToSwipeGesture():
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
    }

    
    func showOffButtons()
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
            H.alpha = 1
        }
    }
    
    
    
    func respondToSwipeGesture(gesture: UIGestureRecognizer)
    {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer
        {
            switch swipeGesture.direction
            {
            case UISwipeGestureRecognizerDirection.left:
                print("Swiped left")
                performSegue(withIdentifier: "SegueBackHome", sender: nil)
                
            default:
                break
            }
        }
    }

    
}








