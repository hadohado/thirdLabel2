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
    
    var myString = ""
    var myStringArray: [String] = []
    
    
    @IBOutlet weak var tickle: UILabel!
    
    @IBOutlet weak var myLabelTime: UILabel!
    

    
    @IBAction func showTime(_ sender: Any) {
        toggleThis = !toggleThis
        var minute: Int
        
        print("you just click this button!")
        if !toggleThis {
        tickle.text = "Tickle !!!"
        tickle.backgroundColor = UIColor.green
        /* myLabelTime.text = myDate.description */
        myLabelTime.text = convertDate(date: myDate)
            myString = myLabelTime.text!
            // myStringArray = myString.split(separator: ":")
            myStringArray = myString.components(separatedBy: ":")
            print("my string is now = ", myStringArray)
            print("int = ", Int(myStringArray[1]) )
            
            minute = Int(myStringArray[1])!
            if      (minute >=  0 && minute  < 15) {
                print("one")
                myLabelTime.backgroundColor = UIColor.yellow
            }
            else if (minute >= 15 && minute  < 30) {
                print("two")
            }
            else if (minute >= 30 && minute  < 45) {
                print("three")
            }
            else if (minute >= 45 && minute <= 59) {
                print("four")
            }
            
        } else {
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

