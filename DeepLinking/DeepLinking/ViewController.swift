//
//  ViewController.swift
//  DeepLinking
//
//  Created by Puspank Kumar on 18/11/19.
//  Copyright © 2019 Puspank Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func goToSecondaryApp(_ sender: UIButton) {
        goToSecendaryApp()
    }
}


extension ViewController {
    
    private func goToSecendaryApp() {
        
        let message = myTextField.text?.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        
        let application = UIApplication.shared
        
        let secondaryAppPath = "second://secretPage?\(message)"
        let appUrl = URL(string: secondaryAppPath)
        let websiteURL = URL(string: "https://www.google.com")
        

        guard let secondAppURL = appUrl else { return }
        guard let websiteLink = websiteURL else { return }
        
        
        let options = [UIApplication.OpenExternalURLOptionsKey.universalLinksOnly : true]
        
        if application.canOpenURL(secondAppURL) {
            application.open(secondAppURL, options: [:], completionHandler: nil)
        } else {
            
            application.open(secondAppURL, options: [:], completionHandler: nil)

//            application.open(websiteLink, options: [:], completionHandler: nil)
        }
    }
    
}

