//
//  ViewController.swift
//  SwiftApp
//
//  Created by zhoushuai on 2022/5/29.
//

import UIKit
import OCFramework

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let tool = ZSOCTool()

        // 使用宏定义前：
        //let weather:Weather = .rain
        //let psName:PersonName = "ZS"
        //let fineName = tool.findName(for: 0)
        

        // 使用宏定义后：
        let weather:Weather = .rain
        let psName:PersonName = PersonName(rawValue: "ZS")
        let fineName = tool.findName(forIndex: 0)
        
        print("wealth:\(weather.rawValue) psName:\(psName) finName:\(fineName)")
        

    }
}
