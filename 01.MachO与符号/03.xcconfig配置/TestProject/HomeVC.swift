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
        
        guard let path = Bundle.main.path(forResource: "Info", ofType: "plist") else {
            return
        }
        
        guard let infoDic = NSDictionary(contentsOfFile: path) else {
            return
        }
        
        if let host_url = infoDic["HOST_URL"] {
            print("HOST_URL:\(host_url)")
        }
    }


    @IBAction func onButtonAction(_ sender: UIButton) {
        navigationController?.pushViewController(NextVC(), animated: true)
    }
}
