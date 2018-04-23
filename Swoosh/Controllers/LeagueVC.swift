//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Steven on 4/22/18.
//  Copyright © 2018 Steven Santiago. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var user: User!

    @IBOutlet weak var nextBtn: BorderButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        user = User()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "toSkillVC", sender: self)
    }
    
    @IBAction func unwindFromLastVC(unwindSegue: UIStoryboardSegue){
        
    }
    @IBAction func onMensTapped(_ sender: Any) {
       selectLeague(leagueType: "Mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "Womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
       selectLeague(leagueType: "Co-ed")
    }
    
    func selectLeague(leagueType: String){
        user.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.user = user
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
