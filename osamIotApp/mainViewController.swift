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
        
        checkHeight()
    }
    
    
    
    @IBOutlet weak var CImage1: UIImageView!
    @IBOutlet weak var CImage1Height: NSLayoutConstraint!
    @IBOutlet weak var CImage2: UIImageView!
    @IBOutlet weak var CImage2Height: NSLayoutConstraint!
    @IBOutlet weak var CImage3: UIImageView!
    @IBOutlet weak var CImage3Height: NSLayoutConstraint!
    @IBOutlet weak var CImage4: UIImageView!
    @IBOutlet weak var CImage4Height: NSLayoutConstraint!
    /*test.txt file format
    ** x.y.z.w.
    */
    func checkHeight(){
        let constraints : [NSLayoutConstraint] = [CImage1Height, CImage3Height, CImage2Height, CImage4Height]
        let cImages : [UIImageView] = [CImage1, CImage3, CImage2, CImage4]
        if let url2 = URL(string: serverURL + "/Desktop/data.txt"){
            do{
                let contents = try String(contentsOf: url2)
                print(contents)
                
                let arr = contents.components(separatedBy: ".")
                var index = 0
                for tok in arr {
                    if(index == 4){
                        break
                    }
                    else{
                        cImages[index].isHidden = false
                        let tempTok : Int
                        if(Int(tok)! >= 7) {tempTok = 7}
                        else if(Int(tok)! <= 1 ) {tempTok = 1}
                        else {tempTok = Int(tok)!}
                        constraints[index].constant = CGFloat((7-tempTok) * 20)
                        index = index+1
                        print("\(index) number .. before:  \(Int(tok)!) / after: \(tempTok)")
                    }
                }
            } catch {
                print("contents err")
            }
        }
    }
    
    let serverURL = "http://25f4ce50.ngrok.io"
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
