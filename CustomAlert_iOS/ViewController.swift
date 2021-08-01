//
//  ViewController.swift
//  CustomAlert_iOS
//
//  Created by Noor Mohammed Anik on 1/8/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickSuccess(_ sender: Any) {
        
        AlertView.instance.showAlert(title: "Success", message: "You are successfully logged into the system", alertType: .success)
    }
    
    
    @IBAction func onClickFailure(_ sender: Any) {
        
        AlertView.instance.showAlert(title: "Failure", message: "You are not logged into the system", alertType: .failure)
        
    }
    
}

