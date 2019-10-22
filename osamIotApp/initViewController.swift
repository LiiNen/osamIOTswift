//
//  initViewController.swift
//  osamIotApp
//
//  Created by osam on 22/10/2019.
//  Copyright © 2019 osam. All rights reserved.
//

import UIKit

class initViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        viewMove();
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewMove(){
        let time = DispatchTime.now() + .seconds(2)
        DispatchQueue.main.asyncAfter(deadline: time){
            self.performSegue(withIdentifier: "mainSegue", sender: nil)
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
