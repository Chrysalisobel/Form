//
//  HelloViewController.swift
//  Keyboard
//
//  Credits to the original source by Jason Khong on 11/6/15.
//  Edited by Ayisha Rahman on 16/07/16.
//  Copyright © 2016 ApptivityLab. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!

    @IBOutlet weak var helloButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func sayHello(sender: AnyObject) {
        if let name: String = nameTextField.text where nameTextField.text?.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) > 0 {
            if let city: String = cityTextField.text where cityTextField.text?.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) > 0 {
                self.titleLabel.text = "Thanks \(name) from \(city)!"
            } else {
                self.titleLabel.text = "Thanks \(name) from nowhere!"
            }
        } else {
            self.titleLabel.text = "Hi whoever!"
        }
    }
    
    @IBAction func nameFirst(sender: AnyObject) {
        self.nameTextField.becomeFirstResponder()
    }
    
    @IBAction func cityFirst(sender: AnyObject) {
    }
}
