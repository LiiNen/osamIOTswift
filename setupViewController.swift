//
//  setupViewController.swift
//  osamIotApp
//
//  Created by osam on 22/10/2019.
//  Copyright © 2019 osam. All rights reserved.
//

import UIKit

class setupViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBAction func textFieldChanged(_ sender: Any) {
        if(textField1.text! == ""){
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
        UserDefaults.standard.setValue(textField.text!, forKey: "label1")
        UserDefaults.standard.synchronize()
        NotificationCenter.default.post(name : NSNotification.Name("labelTextRefresh"), object: nil)
        adjustBtn.isEnabled = false
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
