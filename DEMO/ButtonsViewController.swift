//
//  ButtonsViewController.swift
//  DEMO
//
//  Created by Henry Chavez on 1/12/19.
//  Copyright © 2019 Henry Chavez. All rights reserved.
//

import UIKit

class ButtonsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func showAlert(_ sender: UIButton) {
        let alert = UIAlertController(title: "Alert", message: "Hello World!", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
   
    @IBAction func showActionSheet(_ sender: UIButton) {
        let actionSheet = UIAlertController(title: "Alert", message: "Hello World!", preferredStyle: .actionSheet)
        let action1 = UIAlertAction(title: "Okay", style: .default, handler: {action in
            self.printToConsole(message: "Okay")
        })
        let action2 = UIAlertAction(title: "Cancel", style: .cancel, handler: {action in
            self.printToConsole(message: "Cancel")
        })
        actionSheet.addAction(action1)
        actionSheet.addAction(action2)
        present(actionSheet, animated: true, completion: nil)
    }
    
    func printToConsole(message: String) {
        print(message)
    }
}
