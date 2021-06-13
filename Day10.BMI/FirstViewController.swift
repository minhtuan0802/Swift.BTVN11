//
//  FirstViewController.swift
//  Day10.BMI
//
//  Created by Ngô Minh Tuấn on 11/06/2021.
//

import UIKit

class FirstViewController: UIViewController {

    var weightCount = 60
    var ageCount = 30
    
    
    @IBOutlet weak var maleView: UIView!
    @IBOutlet weak var maleImage: UIImageView!
    @IBOutlet weak var femaleView: UIView!
    @IBOutlet weak var femaleImage: UIImageView!
    @IBOutlet weak var heightView: UIView!
    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightView: UIView!
    @IBOutlet weak var weightLable: UILabel!
    @IBOutlet weak var weightPlusView: UIView!
    @IBOutlet weak var weightSubtractionView: UIView!
    @IBOutlet weak var weightPlus: UIImageView!
    @IBOutlet weak var weightSubtraction: UIImageView!
    @IBOutlet weak var ageView: UIView!
    @IBOutlet weak var ageLable: UILabel!
    @IBOutlet weak var agePlusView: UIView!
    @IBOutlet weak var agePlus: UIImageView!
    @IBOutlet weak var ageSubtractionView: UIView!
    @IBOutlet weak var ageSubtraction: UIImageView!
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.view.backgroundColor = UIColor(red: 0.11, green: 0.13, blue: 0.21, alpha: 1.00)
        // male view
        maleView.backgroundColor = UIColor(red: 0.14, green: 0.15, blue: 0.22, alpha: 1.00)
        maleView.layer.cornerRadius = 10
        maleImage.image = UIImage(named: "male")?.withRenderingMode(.alwaysTemplate)
        maleImage.tintColor = UIColor(red: 0.34, green: 0.79, blue: 0.93, alpha: 1.00)
        
        // female View
        femaleView.backgroundColor = UIColor(red: 0.14, green: 0.15, blue: 0.22, alpha: 1.00)
        femaleView.layer.cornerRadius = 10
        femaleImage.image = UIImage(named: "female")?.withRenderingMode(.alwaysTemplate)
        femaleImage.tintColor = UIColor(red: 0.86, green: 0.24, blue: 0.00, alpha: 1.00)
        
        // height View
        heightView.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        heightView.layer.cornerRadius = 10
        heightSlider.minimumValue = 50
        heightSlider.maximumValue = 250
        heightSlider.value = 150
        heightLable.text = "\(Int(heightSlider.value)) cm"
        // weight view
        weightView.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        weightView.layer.cornerRadius = 10
        weightPlusView.backgroundColor = UIColor(red: 0.37, green: 0.38, blue: 0.43, alpha: 1.00)
        weightPlusView.layer.cornerRadius = 20
        weightPlus.image = UIImage(named: "plus")?.withRenderingMode(.alwaysTemplate)
        weightPlus.tintColor = UIColor.white
        
        weightSubtractionView.backgroundColor = UIColor(red: 0.37, green: 0.38, blue: 0.43, alpha: 1.00)
        weightSubtractionView.layer.cornerRadius = 20
        weightSubtraction.image = UIImage(named: "subtraction")?.withRenderingMode(.alwaysTemplate)
        weightSubtraction.tintColor = UIColor.white
        
        weightLable.text = "\(weightCount)"
        
        // age view
        ageView.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        ageView.layer.cornerRadius = 10
        agePlusView.backgroundColor = UIColor(red: 0.37, green: 0.38, blue: 0.43, alpha: 1.00)
        agePlusView.layer.cornerRadius = 20
        agePlus.image = UIImage(named: "plus")?.withRenderingMode(.alwaysTemplate)
        agePlus.tintColor = UIColor.white
        
        ageSubtractionView.backgroundColor = UIColor(red: 0.37, green: 0.38, blue: 0.43, alpha: 1.00)
        ageSubtractionView.layer.cornerRadius = 20
        ageSubtraction.image = UIImage(named: "subtraction")?.withRenderingMode(.alwaysTemplate)
        ageSubtraction.tintColor = UIColor.white
        
        ageLable.text = "\(ageCount)"
        
        // my button
        myButton.backgroundColor = UIColor(red: 0.91, green: 0.24, blue: 0.40, alpha: 1.00)
        myButton.layer.cornerRadius = 10
        myButton.setTitleColor(UIColor.white, for: .normal)
    }
    
    @IBAction func maleGesture(_ sender: UITapGestureRecognizer) {
        maleView.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        femaleView.backgroundColor = UIColor(red: 0.14, green: 0.15, blue: 0.22, alpha: 1.00)
    }
    
    @IBAction func femaleGesture(_ sender: UITapGestureRecognizer) {
        maleView.backgroundColor = UIColor(red: 0.14, green: 0.15, blue: 0.22, alpha: 1.00)
        femaleView.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
    }
    
    @IBAction func changHeight(_ sender: UISlider) {
        let heighValue = sender.value
        heightLable.text = "\(Int(heighValue)) cm"
    }
    
    @IBAction func weightSubtractionGesture(_ sender: UITapGestureRecognizer) {
        weightCount -= 1
        if weightCount < 10 {
            weightCount = 10
        }
        weightLable.text = "\(weightCount)"

    }
    
    @IBAction func weightPlusGesture(_ sender: UITapGestureRecognizer) {
        weightCount += 1
        if weightCount > 110 {
            weightCount = 110
        }
        weightLable.text = "\(weightCount)"

    }
    
    @IBAction func ageSubtractionGesture(_ sender: UITapGestureRecognizer) {
        ageCount -= 1
        if ageCount < 3 {
            ageCount = 3
        }
        ageLable.text = "\(ageCount)"

    }
    
    @IBAction func agePlusGesture(_ sender: UITapGestureRecognizer) {
        ageCount += 1
        if ageCount > 110 {
            ageCount = 110
        }
        ageLable.text = "\(ageCount)"
    }
    
    @IBAction func goToSecond(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(identifier: "SecondViewController") as SecondViewController
        secondVC.modalPresentationStyle = .fullScreen
        
        let BMI = Float(weightCount)/powf((heightSlider.value/100), 2)
        secondVC.data = BMI
        self.present(secondVC, animated: true, completion: nil)
    }

}
