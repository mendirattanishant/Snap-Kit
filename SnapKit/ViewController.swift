//
//  ViewController.swift
//  SnapKit
//
//  Created by Nishant Mendiratta on 4/5/18.
//  Copyright © 2018 Wizard. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let superview = self.view
        let button = UIButton()
        button.layer.cornerRadius = 33
        button.setTitle("+", for: .normal)
        button.backgroundColor = UIColor.black
        superview?.addSubview(button)
        button.snp.makeConstraints { (make) -> Void in
            make.width.equalTo(66)
            make.height.equalTo(66)
            if let bottom = superview?.snp.bottom {
                make.bottom.equalTo(bottom).offset(-20)
            }
            if let right = superview?.snp.right {
                make.right.equalTo(right).offset(-20)
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

