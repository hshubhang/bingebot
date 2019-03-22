//
//  ViewController.swift
//  BingeBot
//
//  Created by Shubhang Hasabnis on 21/03/19.
//  Copyright © 2019 Shubhang Hasabnis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showsLabel: UILabel!
    @IBOutlet weak var randomShowLabel: UILabel!
    @IBOutlet weak var showWatchLabel: UILabel!
    @IBOutlet weak var bingeTextField: UITextField!
    @IBOutlet weak var addbutton: UIButton!
    @IBOutlet weak var randomShowStackView: UIStackView!
    @IBOutlet weak var showsStackView: UIStackView!
   
    @IBOutlet weak var addShowStackView: UIStackView!
    
    @IBOutlet weak var randomShowsStackView: UIStackView!
    var shows: [String] = []
    
    func updateShowsLabel(){
        showsLabel.text = shows.joined(separator: ", ")
    }
    
    
      override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
        randomShowStackView.isHidden = true
 
        showsStackView.isHidden = true
        showWatchLabel.isHidden = true
        
    }
    
    @IBAction func WhtBngebtnwasPressed(_ sender: Any) {
        
       randomShowLabel.text = shows.randomElement()
        randomShowLabel.isHidden = false
        
        showWatchLabel.isHidden
            = false
        
    }
    @IBAction func buttonWasPressed(_ sender: Any) {
      
        
        
        guard let showName = bingeTextField.text
            
    else { return }
        shows.append(showName)
        updateShowsLabel()
        bingeTextField.text = ""
       
        showsStackView.isHidden = false
        randomShowLabel.isHidden = true
        if shows.count > 1 {
            randomShowStackView.isHidden = false
            
        }
        
    }

  
    
}
