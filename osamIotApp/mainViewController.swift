//
//  mainViewController.swift
//  osamIotApp
//
//  Created by osam on 22/10/2019.
//  Copyright © 2019 osam. All rights reserved.
//

import UIKit

class mainViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTextRefresh()
        NotificationCenter.default.addObserver(self, selector: #selector(labelTextRefresh), name: NSNotification.Name("labelTextRefresh"), object: nil)
        // Do any additional setup after loading the view.
        timerefresh()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func userdefaultExists(key: String) -> Bool {
        return UserDefaults.standard.object(forKey: key) != nil
    }
    
    @objc func labelTextRefresh(){
        label1.text =  userdefaultExists(key: "label1") ? UserDefaults.standard.string(forKey: "label1") : label1.text
        label2.text =  userdefaultExists(key: "label2") ? UserDefaults.standard.string(forKey: "label2") : label2.text
        label3.text =  userdefaultExists(key: "label3") ? UserDefaults.standard.string(forKey: "label3") : label3.text
        label4.text =  userdefaultExists(key: "label4") ? UserDefaults.standard.string(forKey: "label4") : label4.text
    }
    
    @IBOutlet weak var refreshBtn: UIButton!
    @IBAction func refreshBtn(_ sender: Any) {
        self.viewDidLoad()
    }
    
    @IBOutlet weak var testlabel: UILabel!
    func timerefresh(){
        let date = Date()
        let dateForm = DateFormatter()
        dateForm.dateFormat = "MM/dd HH:mm:ss"
        testlabel.text = "갱신 시간 " + dateForm.string(from: date)
        
        
        
        //if let url = URL(string: localURL){
        //   UIApplication.shared.open(url, options: [:])
        //}
        
        if let url2 = URL(string: localURL + "/Desktop/test.txt"){
            do{
                let contents = try String(contentsOf: url2)
                print(contents)
            } catch {
                print("contents err")
            }
        }
    }
    let localURL = "http://192.168.196.4:2387"
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
