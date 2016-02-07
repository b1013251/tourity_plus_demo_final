/*

    マイページ画面のコントローラ

*/

import UIKit
import Photos

class MyPageController: UIViewController {
    
    
    @IBOutlet weak var latField: UITextField!
    @IBOutlet weak var lonField: UITextField!
    
    @IBAction func closeKeyboard(sender: AnyObject) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        latField.keyboardType = .DecimalPad
        lonField.keyboardType = .DecimalPad
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        
    }
    
    @IBAction func pushApplyButton(sender: AnyObject) {
        println(latField.text)
        println(lonField.text)
        
        let userDefaults : NSUserDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setDouble(latField.text.toDouble(), forKey: "setLat")
        userDefaults.setDouble(lonField.text.toDouble(), forKey: "setLon")
        
        let sensor = Sensor.sharedInstance
        sensor.latitude  = latField.text.toDouble()
        sensor.longitude = lonField.text.toDouble()
    }
    
    @IBAction func pushBackButton(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension String {
    func toDouble() -> Double {
        return NSNumberFormatter().numberFromString(self)!.doubleValue
    }
}

