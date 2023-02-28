//
//  AllInOnewViewController.swift
//  All type of view
//
//  Created by Shishir_Mac on 28/2/23.
//

import UIKit

class AllInOnewViewController: UIViewController {
    
    var firstName: String = ""
    var lastName: String = ""
    
    @IBOutlet weak var topWithTitleView: UIView!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var fullNameUIButton: UIButton!
    
    @IBOutlet weak var basicImageView: UIImageView!
    @IBOutlet weak var genderLabel: UILabel!
    
    @IBOutlet weak var onAndOffLabel: UILabel!
    @IBOutlet weak var onAndOffSwitch: UISwitch!
    
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        UIViewModify()
        
        // Add Target for onAndOffSwitch
        onAndOffSwitch.addTarget(self, action: #selector(stateChanged), for: .valueChanged)
    }
    
    func configure(){
        fullNameLabel.text = ""
        genderLabel.text = ""
        onAndOffLabel.text = ""
        
        
    }
    
    // MARK: - function of Modify
    
    func UIViewModify() {
        
        // topWithTitleView modify
        topWithTitleView.layer.cornerRadius = 10
        topWithTitleView.dropShadow()
        
        // fullNameUIButton modify
        fullNameUIButton.dropShadow()
        
        basicImageView.dropShadow()
        
    }
    
    // onAndOffSwitch Output Function
    @objc func stateChanged(switchState: UISwitch) {
        if switchState.isOn {
            onAndOffLabel.text = "On"
        } else {
            onAndOffLabel.text = "Off"
        }
    }
    
    // MARK: - IBAction
    
    @IBAction func fullNameButtonAction(_ sender: UIButton) {
        firstName = firstNameTextField.text ?? ""
        lastName = lastNameTextField.text ?? ""
        
        fullNameLabel.text = "\(firstName) \(lastName)"
        
    }
    
    @IBAction func genderSegmentedAction(_ sender: UISegmentedControl) {
        switch genderSegmentedControl.selectedSegmentIndex
        {
        case 0:
            genderLabel.text = "Male"
        case 1:
            genderLabel.text = "Female"
        default:
            break
        }
    }
    
 
}

extension UIView {
    // UIView Shadow function
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize(width: -1, height: 1)
        layer.shadowRadius = 1.5
        
    }
}
