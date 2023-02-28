//
//  PickerViewController.swift
//  All type of view
//
//  Created by Shishir_Mac on 28/2/23.
//

import UIKit

class PickerViewController: UIViewController {
    @IBOutlet weak var todayDatePicker: UIDatePicker!
    @IBOutlet weak var todayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        
        // Do any additional setup after loading the view.
    }
    
    func configure(){
        todayLabel.text = ""
    }
    
    @IBAction func todayDatePickerAction(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        let strDate = dateFormatter.string(from: todayDatePicker.date)
        todayLabel.text = strDate
    }
    
}
