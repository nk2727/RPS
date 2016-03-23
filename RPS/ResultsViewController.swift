//
//  ResultsViewController.swift
//  RPS
//
//  Created by Nicole on 3/22/16.
//  Copyright © 2016 Nicole. All rights reserved.
//

import Foundation
import UIKit

class ResultsViewController: UIViewController {
    

    @IBOutlet weak var resultsImage: UIImageView!
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var playAgain: UIButton!
    
    var userShape: String!
    var appShape: String!
    
    override func viewDidAppear(animated: Bool) {
        
        switch userShape {
        case "Rock" :

            if appShape == "Rock" {
                resultsLabel.text = "App picked Rock - It's a tie"
                //resultsImage.image=UIImage(named: "          }
                
            } else if appShape == "Paper" {
                resultsLabel.text = "App picked Paper - you lose"
                
            } else {
                resultsLabel.text = "App picked Scissor - you win"
                
            }
            
        case "Paper" :
            if appShape == "Rock" {
                resultsLabel.text = "App picked \"(appShape - you lose"
                //resultsImage.image=UIImage(named: "          }
                
            } else if appShape == "Paper" {
                resultsLabel.text = "App picked \"(appShape - It's tie"
                
            } else {
                resultsLabel.text = "App picked \"(appShape - you win"
            }
        default:
            //
            // useshape is Scissors
            //
    
            if appShape == "Rock" {
                resultsLabel.text = "App picked \"(appShape) - you lose"
                //resultsImage.image=UIImage(named: "          }
                
            } else if appShape == "Paper" {
                resultsLabel.text = "App picked \"(appShape) - you win"
                
            } else {
                resultsLabel.text = "App picked \"(appShape) - it's tie"
            }
    
        }
        
    }
    
    @IBAction func playAgain(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}