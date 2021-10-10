//
//  ViewController.swift
//  TestProject
//
//  Created by zhoushuai on 2021/9/19.
//

import UIKit

class HomeVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        #if DEV
        print("Project DEV")
        #else
        print("Project Normal")
        #endif
    }

    @IBAction func onButtonAction(_ sender: UIButton) {
        navigationController?.pushViewController(NextVC(), animated: true)
    }
}
