//
//  ViewController.swift
//  Magic Eight Ball
//
//  Created by John Gallaugher on 1/30/17.
//  Copyright © 2017 Gallaugher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Define the UILabel that will hold the 8 ball's answer
    @IBOutlet weak var answerLabel: UILabel!
    
    // Define and initialize (put values into) an array with all possible responses.  We could have 
    // done this in the @IBAction and it would have worked, but it would re-create the array each 
    // time the user clicked the button.
    let answersArray = ["It is certain",
                        "It is decidedly so",
                        "Without a doubt",
                        "Yes, definitely",
                        "You may rely on it",
                        "As I see it, yes",
                        "Most likely",
                        "Outlook good",
                        "Yes",
                        "Signs point to yes",
                        "Reply hazy try again",
                        "Ask again later",
                        "Better not tell you now",
                        "Cannot predict now",
                        "Concentrate and ask again",
                        "Don't count on it",
                        "My reply is no",
                        "My sources say no",
                        "Outlook not so good",
                        "Very doubtful"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    // This @IBAction function runs each time the user clicks the answer button
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        // Get a number to use as an index for the answersArray.
        // Array indicies take an Int, arc4random_uniform takes a UInt32 and returns a UInt32
        // so we have some conversions in this statement.
        // Values declared inside functions will be forgotten each time a function executes (e.g. when the button is pressed in this case). That's OK because we don't need to save the randomIndex from press to press.
        let randomIndex = Int(arc4random_uniform(UInt32(answersArray.count)))
        
        // When we demonstrated the console in Xcode we showed the statement below will
        // print the randomIndex to the Xcode debugger-area console, not inside the app.
        print("Random index = \(randomIndex)")
        
        // Set the @IBOutlet answerLabel's text attribute to the randomIndex element of answersArray
        // Remember: answersArray is an array of String values. To get a specific value, use answersArray[#], where # is the Int value for the array item you want e.g. answersArray[0] is the first String "It is certain", etc.
        answerLabel.text = answersArray[randomIndex]
    }
}

