//
//  ViewController.swift
//  Swift01
//
//  Created by Theodora-Augustina DRAGAN on 12/03/2019.
//  Copyright © 2019 Theodora-Augustina DRAGAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var buttonItem: UIButton!
    @IBOutlet weak var saisirTitle: UITextField!
    @IBAction func confirmerNom(_ sender: Any) {
        if let nom = self.saisirTitle.text {
            if nom == "" {
                self.titleLabel.text = "TextVide"
            }
            else{
                
                if nom == self.titleLabel.text {
                    self.buttonItem.setTitleColor(.blue, for: .normal)
                }
                else {
                    self.buttonItem.setTitleColor(.red, for: .normal)
                    
                }
                self.titleLabel.text = nom
            }
        }
        else {
            self.titleLabel.text = "Swift01 Application"
        }
    }

}

