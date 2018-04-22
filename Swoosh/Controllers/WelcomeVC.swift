//
//  ViewController.swift
//  Swoosh
//
//  Created by Steven on 4/19/18.
//  Copyright © 2018 Steven Santiago. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue){
        
    }


}

