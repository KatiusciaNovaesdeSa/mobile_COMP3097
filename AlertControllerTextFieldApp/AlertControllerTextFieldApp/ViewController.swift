//
//  ViewController.swift
//  AlertControllerTextFieldApp
//
//  Created by Owner on 2020-03-23.
//  Copyright © 2020 Owner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        labelResult.numberOfLines = 0
// Do any additional setup after loading the view,typically from a nib.
    }

    
    @IBOutlet weak var labelResult: UILabel!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Log In", message:
            "Enter Password", preferredStyle: .alert)
        alert.addTextField(configurationHandler: {(textField) in
            textField.placeholder = "Password here"
            textField.isSecureTextEntry = true
            
        })
            
        let okAction = UIAlertAction(title: "OK", style: .default,
            handler: { action -> Void in
        let savedText = alert.textFields![0] as UITextField
                self.labelResult.text = savedText.text
        })
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
       

    }
    
}

