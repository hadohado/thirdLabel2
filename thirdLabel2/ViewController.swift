//
//  ViewController.swift
//  thirdLabel2
//
//  Created by ha tuong do on 10/11/19.
//  Copyright © 2019 alpine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabelTime: UILabel!
    
    @IBAction func showTime(_ sender: Any) {
        print("you just click this button!")
        myLabelTime.text = "Tickle !!!"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

