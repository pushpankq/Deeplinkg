//
//  SecretViewController.swift
//  SecondApp
//
//  Created by Puspank Kumar on 18/11/19.
//  Copyright © 2019 Puspank Kumar. All rights reserved.
//

import UIKit

class SecretViewController: UIViewController {

    @IBOutlet weak var lblText: UILabel!
    var secretMessage = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblText.text = secretMessage

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
