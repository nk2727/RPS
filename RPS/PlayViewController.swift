//
//  ViewController.swift
//  RPS
//
//  Created by Nicole on 3/22/16.
//  Copyright © 2016 Nicole. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var playRock: UIButton!
    @IBOutlet weak var letsplay: UILabel!
    
    
    func randomShape() -> String {
        
        let randomNum = 1 + arc4random() % 3
        var randomShape: String!
        
        switch randomNum {
        case 1 :
            randomShape="Rock"
        case 2:
            randomShape="Paper"
        default:
            randomShape="Scissors"
        }
        return(randomShape)
    }

    @IBAction func pickRock(sender: UIButton) {
       
        // 
        // implement code only
        //
        // get a ResultsViewController
        // UserShape, appShape are properties
        //
        var controller: ResultsViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultsViewController") as! ResultsViewController
        controller.userShape = "Rock"
        controller.appShape = randomShape()

       self.presentViewController(controller, animated: true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Scissors" {
            if let destinationVC = segue.destinationViewController as? ResultsViewController{
                //
                // destinationVC.userShape = "Paper"
                destinationVC.userShape = "Scissors"
                destinationVC.appShape=randomShape()
            }
        }
        
    }
    
    @IBAction func pickPaper(sender: UIButton) {
        
        //
        // implement code and segue
        // a modal seque was created between PlayViewController and ResultsViewController on the StoryBoard
        // its identity is set to "ResultsView"
        //
        // prepareForSegue is called to send values in the upcoming view
        //
        
        performSegueWithIdentifier("ResultsView", sender: self)
    }
    
    //
    // the Scissors choice will be impelemented directly with segue
    // 1. the segue "ResultsView" between to "Play View Controller" and "Results View Controller" on the main Storyboard
    //    will be removed
    // 2. a new segue "Scissors" is created from UIButton Scissors directly to the ResultsViewController
    
    
}