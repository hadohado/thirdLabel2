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
    
    @IBOutlet weak var L1: UILabel!
  
    @IBOutlet weak var L2: UILabel!
    
    @IBOutlet weak var L3: UILabel!
        
    @IBOutlet weak var L4: UILabel!
    
    @IBAction func showTime(_ sender: Any) {
        toggleThis = !toggleThis
        
        var minuteString : String
        var minute: Int
        
        var second: Int
        
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
            
            minuteString = myStringArray[1]
            
            //---------------------------------------------------------
            
            if let minute = Int(myStringArray[1]) { // this is correct
            // if let minute = Int(myStringArray[2]) {     // use second for quick debug
            
                if      (minute >=  0 && minute  < 15) {
                    print("one")
                        // myLabelTime.backgroundColor = UIColor.yellow
                    // myLabelTime.textColor = UIColor.green
                    L1.backgroundColor = UIColor.yellow
                    L2.backgroundColor = UIColor.clear
                    L3.backgroundColor = UIColor.clear
                    L4.backgroundColor = UIColor.clear
                }
                else if (minute >= 15 && minute  < 30) {
                    print("two")
                        // myLabelTime.backgroundColor = UIColor.red
                    // myLabelTime.textColor = UIColor.red
                    L1.backgroundColor = UIColor.clear
                    L2.backgroundColor = UIColor.yellow
                    L3.backgroundColor = UIColor.clear
                    L4.backgroundColor = UIColor.clear
                }
                else if (minute >= 30 && minute  < 45) {
                    print("three")
                        // myLabelTime.backgroundColor = UIColor.blue
                    // myLabelTime.textColor = UIColor.blue
                    L1.backgroundColor = UIColor.clear
                    L2.backgroundColor = UIColor.clear
                    L3.backgroundColor = UIColor.yellow
                    L4.backgroundColor = UIColor.clear
                }
                else if (minute >= 45 && minute <= 59) {
                    print("four")
                        // myLabelTime.backgroundColor = UIColor.magenta
                    // myLabelTime.textColor = UIColor.magenta
                    L1.backgroundColor = UIColor.clear
                    L2.backgroundColor = UIColor.clear
                    L3.backgroundColor = UIColor.clear
                    L4.backgroundColor = UIColor.yellow
                } else {
                    print("not 1 to 4 !!!")
                }
                
            } else {
                print("wrong !")
            }
 
            
            
            //---------------------------------------------------------
            
            if let second = Int(myStringArray[2]) { // this is correct for second
                
                if      (second >=  0 && second  < 15) {
                    print("one")
                    // myLabelTime.backgroundColor = UIColor.yellow
                    myLabelTime.textColor = UIColor.green
//                    L1.backgroundColor = UIColor.yellow
//                    L2.backgroundColor = UIColor.clear
//                    L3.backgroundColor = UIColor.clear
//                    L4.backgroundColor = UIColor.clear
                }
                else if (second >= 15 && second  < 30) {
                    print("two")
                    // myLabelTime.backgroundColor = UIColor.red
                    myLabelTime.textColor = UIColor.red
//                    L1.backgroundColor = UIColor.clear
//                    L2.backgroundColor = UIColor.yellow
//                    L3.backgroundColor = UIColor.clear
//                    L4.backgroundColor = UIColor.clear
                }
                else if (second >= 30 && second  < 45) {
                    print("three")
                    // myLabelTime.backgroundColor = UIColor.blue
                    myLabelTime.textColor = UIColor.blue
//                    L1.backgroundColor = UIColor.clear
//                    L2.backgroundColor = UIColor.clear
//                    L3.backgroundColor = UIColor.yellow
//                    L4.backgroundColor = UIColor.clear
                }
                else if (second >= 45 && second <= 59) {
                    print("four")
                    // myLabelTime.backgroundColor = UIColor.magenta
                    myLabelTime.textColor = UIColor.magenta
//                    L1.backgroundColor = UIColor.clear
//                    L2.backgroundColor = UIColor.clear
//                    L3.backgroundColor = UIColor.clear
//                    L4.backgroundColor = UIColor.yellow
                } else {
                    print("not 1 to 4 second !!!")
                }
                
            } else {
                print("wrong second  oh yeh!")
            }
            
            
            
            // if let constantName = someOptional {
            //statements using 'constantName'
            //}  else {
            // the value of someOptional is not set (or nil).
            // }
            
            
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

