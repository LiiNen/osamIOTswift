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
    @IBAction func textFieldChanged1(_ sender: Any) {
        if(textField1.text! == ""){
            adjustBtn1.isEnabled = false
        }
        else{
            adjustBtn1.isEnabled = true
        }
    }
    
    @IBAction func textFieldChanged2(_ sender: Any) {
        if(textField2.text! == ""){
            adjustBtn2.isEnabled = false
        }
        else{
            adjustBtn2.isEnabled = true
        }
    }
    @IBAction func textFieldChanged3(_ sender: Any) {
        if(textField3.text! == ""){
            adjustBtn3.isEnabled = false
        }
        else{
            adjustBtn3.isEnabled = true
        }
    }
    @IBAction func textFieldChanged4(_ sender: Any) {
        if(textField4.text! == ""){
            adjustBtn4.isEnabled = false
        }
        else{
            adjustBtn4.isEnabled = true
        }
    }
    
    
    
    @IBOutlet weak var adjustBtn1: UIButton!
    @IBAction func adjustBtn1(_ sender: Any) {
        UserDefaults.standard.setValue(textField1.text!, forKey: "label1")
        UserDefaults.standard.synchronize()
        NotificationCenter.default.post(name : NSNotification.Name("labelTextRefresh"), object: nil)
        adjustBtn1.isEnabled = false
        textFieldInit()
    }
    @IBOutlet weak var adjustBtn2: UIButton!
    @IBAction func adjustBtn2(_ sender: Any) {
        UserDefaults.standard.setValue(textField2.text!, forKey: "label2")
        UserDefaults.standard.synchronize()
        NotificationCenter.default.post(name : NSNotification.Name("labelTextRefresh"), object: nil)
        adjustBtn2.isEnabled = false
        textFieldInit()
    }
    @IBOutlet weak var adjustBtn3: UIButton!
    @IBAction func adjustBtn3(_ sender: Any) {
        UserDefaults.standard.setValue(textField3.text!, forKey: "label3")
        UserDefaults.standard.synchronize()
        NotificationCenter.default.post(name : NSNotification.Name("labelTextRefresh"), object: nil)
        adjustBtn3.isEnabled = false
        textFieldInit()
    }
    @IBOutlet weak var adjustBtn4: UIButton!
    @IBAction func adjustBtn4(_ sender: Any) {
        UserDefaults.standard.setValue(textField4.text!, forKey: "label4")
        UserDefaults.standard.synchronize()
        NotificationCenter.default.post(name : NSNotification.Name("labelTextRefresh"), object: nil)
        adjustBtn4.isEnabled = false
        textFieldInit()
    }
    @IBOutlet weak var totalBtn: UIButton!
    @IBAction func totalBtn(_ sender: Any) {
        if(adjustBtn1.isEnabled){
            adjustBtn1.sendActions(for: .touchUpInside)
        }
        if(adjustBtn2.isEnabled){
            adjustBtn2.sendActions(for: .touchUpInside)
        }
        if(adjustBtn3.isEnabled){
            adjustBtn3.sendActions(for: .touchUpInside)
        }
        if(adjustBtn4.isEnabled){
            adjustBtn4.sendActions(for: .touchUpInside)
        }
    }
    
    func textFieldInit(){
        adjustBtn1.isEnabled = false
        adjustBtn2.isEnabled = false
        adjustBtn3.isEnabled = false
        adjustBtn4.isEnabled = false
        
        textField1.placeholder =  userdefaultExists(key: "label1") ? UserDefaults.standard.string(forKey: "label1") : "1번 수납함"
        textField2.placeholder =  userdefaultExists(key: "label2") ? UserDefaults.standard.string(forKey: "label2") : "2번 수납함"
        textField3.placeholder =  userdefaultExists(key: "label3") ? UserDefaults.standard.string(forKey: "label3") : "3번 수납함"
        textField4.placeholder =  userdefaultExists(key: "label4") ? UserDefaults.standard.string(forKey: "label4") : "4번 수납함"
        
    }
    func userdefaultExists(key: String) -> Bool {
        return UserDefaults.standard.object(forKey: key) != nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldInit()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //behind : view name
    @IBOutlet weak var oneView: UIView!
    @IBOutlet weak var upperView: UIView!
    @IBOutlet weak var lowerView: UIView!
    @IBOutlet weak var betweenView: UIView!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var fourthView: UIView!

}
