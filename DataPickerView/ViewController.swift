//
//  ViewController.swift
//  DataPickerView
//
//  Created by Alivelu Ravula on 4/14/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
   
    
    var pickerView=UIPickerView()
    
var arry=["gshdgshds","thth","fgfg","fgfgbcvbv","cvcvccv"]
   
//   var
    
    @IBOutlet weak var dateTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerView.delegate=self
        self.dateTF.inputView=self.pickerView
        
        
        
//        self.pickerView.addSubview(pickerView)
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.arry.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    
        self.dateTF.text=self.arry[row]
        
        self.dateTF.resignFirstResponder()
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    
        return arry[row]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

