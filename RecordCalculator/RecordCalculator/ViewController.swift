//
//  ViewController.swift
//  RecordCalculator
//
//  Created by licong on 2017/12/18.
//  Copyright © 2017年 licong. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    enum EnumBtnType:Int {
        case enumBtnTypeC = 100
        case enumBtnTypeR = 101
        case enumBtnTypeAOrS = 102
        case enumBtnTypeDiv = 103
        case enumBtnType7 = 104
        case enumBtnType8 = 105
        case enumBtnType9 = 106
        case enumBtnTypeMul = 107
        case enumBtnType4 = 108
        case enumBtnType5 = 109
        case enumBtnType6 = 110
        case enumBtnTypeSub = 111
        case enumBtnType1 = 112
        case enumBtnType2 = 113
        case enumBtnType3 = 114
        case enumBtnTypeAdd = 115
        case enumBtnType0 = 116
        case enumBtnTypePoint = 117
        case enumBtnTypePercent = 118
        case enumBtnTypeEqu = 119
    }
    @IBAction func onBtnClick(_ sender: UIButton) {
        let tag = sender.tag
        print(tag)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

