//
//  ViewController.swift
//  thirdLabel2
//
//  Created by ha tuong do on 10/11/19.
//  Copyright © 2019 alpine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var toggleThis = true
    var myDate = Date()
    
    
    
    
    @IBOutlet weak var tickle: UILabel!
    
    @IBOutlet weak var myLabelTime: UILabel!
    

    
    @IBAction func showTime(_ sender: Any) {
        toggleThis = !toggleThis
    
        print("you just click this button!")
        if !toggleThis {
        tickle.text = "Tickle !!!"
        tickle.backgroundColor = UIColor.green
        /* myLabelTime.text = myDate.description */
        myLabelTime.text = convertDate(date: myDate)
            
        }
        else {
            tickle.text = "Let play game"
            tickle.backgroundColor = UIColor.clear
            myLabelTime.text = "Time"
        }
        print(myDate.description)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func convertDate(date: Date) -> String {
        let format = DateFormatter()
        format.dateFormat = "HH:mm:ss"
        let formattedDate = format.string(from: date)
        // print(formattedDate2)
        let dateCurrent = date - date.timeIntervalSinceNow
        let formattedDate2 = format.string(from: dateCurrent)
        print("dateCurrent = ", dateCurrent.description)
        print(" formattedDate2 = ", formattedDate2)
        // return dateCurrent.description
        return formattedDate2
    }


}

