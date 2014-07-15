//
//  FUNViewController.swift
//  swiftime
//
//  Created by mg on 2/07/2014.
//  Copyright (c) 2014 bitcraft. All rights reserved.
//

import Foundation
import UIKit

class FUNViewController: UIViewController {
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Set up Title text
        
        let titleText = UILabel(frame: CGRectMake(20.0, 80.0, 280.0, 60.0)) as UILabel
        titleText.text = "WELCOME TO THE FUNTIMES"
        titleText.numberOfLines = 2
        titleText.font = UIFont(name: "HelveticaNeueBold", size: 24.0)
        titleText.textAlignment = NSTextAlignment.Center
        
        self.view.addSubview(titleText)
        
        // Set up Instruction Text
        
        let instructionText = UILabel(frame: CGRectMake(20.0, 160.0, 280.0, 60.0)) as UILabel
        instructionText.text = "Tap the CHECK NOW button to see if we are Jailbroken"
        instructionText.numberOfLines = 2
        instructionText.font = UIFont(name: "HelveticaNeue", size: 14.0)
        instructionText.textAlignment = NSTextAlignment.Center
        
        self.view.addSubview(instructionText)
        
        // Set up the Check button
        
        let checkButton = UIButton.buttonWithType(UIButtonType.System) as UIButton
        checkButton.frame = CGRectMake(0.0, 0.0, 100.0, 40.0)
        checkButton.center = self.view.center
        checkButton.setTitle("CHECK NOW!", forState: UIControlState.Normal)
        checkButton.addTarget(self, action: "showUserJailbreakStatus:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(checkButton)
    }
    
    func showUserJailbreakStatus(sender:UIButton!) {
        if FUNJailbreakDetector.checkIfDeviceIsJailBroken() {
            let alert = UIAlertController(  title: "Jailbreak Status",
                                            message: "JAILBROKEN - Don't you know jailbreaking is bad?",
                                            preferredStyle: UIAlertControllerStyle.Alert) as UIAlertController
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(  title: "Jailbreak Status",
                                            message: "NOT JAILBROKEN - You must be good at hacking!",
                                            preferredStyle: UIAlertControllerStyle.Alert) as UIAlertController
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
    }
    
    
}
    