//
//  ViewController.swift
//  RecordCalculator
//
//  Created by licong on 2017/12/18.
//  Copyright © 2017年 licong. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
   
    @IBOutlet weak var lbInput: UILabel!
    var isFinishOperate = false
    
    //MARK: - 视图生命周期
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - 用户操作
    @IBAction func onNumberClick(_ sender: UIButton) {
        
        let tag = sender.tag
        let newInput_str = self.changeNumberInputWithTap(tag: tag)
        var newOutPut_str : String
        if isFinishOperate==true {
            newOutPut_str = self.inputingNumber(orginString: "0", inputString: newInput_str)
        }else {
            newOutPut_str = self.inputingNumber(orginString: lbInput.text!, inputString: newInput_str)
        }
        lbInput.text = newOutPut_str
        print(newInput_str)
    }
    
    func inputingNumber(orginString:String,inputString:String) -> String {
        var newOutString:String
        if orginString == "0" {
            newOutString = inputString
        }else {
            newOutString = orginString.appending(inputString)
        }
        if newOutString == "." {
            newOutString = "0."
        }
        return newOutString
    }
    
    @IBAction func onBasicsOperatorClick(_ sender: UIButton) {
        
        let tag = sender.tag
        print(tag)
    }
    @IBAction func onSeniorOperatorClick(_ sender: UIButton) {
        let tag = sender.tag
        print(tag)
    }
    
    //MARK: - 工具
    func changeNumberInputWithTap(tag:Int) -> String {
        //100-110 0~.
        var tap_str : String
        switch tag {
        case 100:
            tap_str = "0"
        case 101:
            tap_str = "1"
        case 102:
            tap_str = "2"
        case 103:
            tap_str = "3"
        case 104:
            tap_str = "4"
        case 105:
            tap_str = "5"
        case 106:
            tap_str = "6"
        case 107:
            tap_str = "7"
        case 108:
            tap_str = "8"
        case 109:
            tap_str = "9"
        case 110:
            tap_str = "."
        default:
            tap_str = ""
        }
        return tap_str
    }

    func changeBasicsOperatorInputWithTap(tag:Int) -> String {
        //201-209
        var tap_str : String
        switch tag {
        case 100:
            tap_str = "0"
        case 101:
            tap_str = "1"
        case 102:
            tap_str = "2"
        case 103:
            tap_str = "3"
        case 104:
            tap_str = "4"
        case 105:
            tap_str = "5"
        case 106:
            tap_str = "6"
        case 107:
            tap_str = "7"
        case 108:
            tap_str = "8"
        case 109:
            tap_str = "9"
        case 110:
            tap_str = "."
        default:
            tap_str = ""
        }
        return tap_str
    }

}

