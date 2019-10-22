//
//  setupViewController.swift
//  osamIotApp
//
//  Created by osam on 22/10/2019.
//  Copyright © 2019 osam. All rights reserved.
//

import UIKit

class setupViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBAction func textFieldChanged(_ sender: Any) {
        if(textField.text == ""){
            adjustBtn.isEnabled = false
        }
        else{
            adjustBtn.isEnabled = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        adjustBtn.isEnabled = false
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var adjustBtn: UIButton!
    @IBAction func adjustBtn(_ sender: Any) {
        NotificationCenter.default.post(name : NSNotification.Name("labelTextRefresh"), object: nil)
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
