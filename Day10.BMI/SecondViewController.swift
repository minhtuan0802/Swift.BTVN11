//
//  SecondViewController.swift
//  Day10.BMI
//
//  Created by Ngô Minh Tuấn on 11/06/2021.
//

import UIKit

class SecondViewController: UIViewController {
    var data : Float?
    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myLable1: UILabel!
    @IBOutlet weak var myLable2: UILabel!
    @IBOutlet weak var myLable3: UILabel!
    @IBOutlet weak var myButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 0.11, green: 0.13, blue: 0.21, alpha: 1.00)

        myView.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        myView.layer.cornerRadius = 10
        myLable1.textColor = UIColor(red: 0.48, green: 0.66, blue: 0.56, alpha: 1.00)
        myLable2.textColor = UIColor.white
        myLable3.textColor = UIColor.white
        myButton.backgroundColor = UIColor(red: 0.91, green: 0.24, blue: 0.40, alpha: 1.00)
        myButton.layer.cornerRadius = 10
        myButton.setTitleColor(UIColor.white, for: .normal)
        printBMI()
    }
    
    func printBMI() {
        guard let data = data else {
            return
        }
        
        if data < 18.5 {
            myLable1.text = "Thiếu cân nặng"
            myLable2.text = "\(data)"
            myLable3.text = "Ăn thoải mái đi..."
            return
        } else if data < 23 {
            myLable1.text = "Bình thường"
            myLable2.text = "\(data)"
            myLable3.text = "Ăn vừa đủ thôi sắp béo rồi."
            return
        } else if data < 25 {
            myLable1.text = "Tiền béo phì"
            myLable2.text = "\(data)"
            myLable3.text = "Ăn ít lại đi không là lăn đấy"
            return
        } else if data < 30 {
            myLable1.text = "Béo phì cấp độ 1"
            myLable2.text = "\(data)"
            myLable3.text = "ăn vừa thôi"
            return
        } else {
            myLable1.text = "Béo phì cấp độ 2"
            myLable2.text = "\(data)"
            myLable3.text = "Uống nước thay cơm"
            return
        }
        
    }
    
    @IBAction func goBackFirst(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
