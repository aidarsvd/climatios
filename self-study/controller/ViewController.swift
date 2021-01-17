//
//  ViewController.swift
//  self-study
//
//  Created by Айдар Чакиев on 16/1/21.
//

import UIKit

class ViewController: BaseView, UITextFieldDelegate {
    
    var region = ""
    @IBOutlet weak var cityInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        cityInput.delegate = self
    }

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        cityInput.endEditing(true)
        region = cityInput.text!
        let vc = getVC(name: "SecondaryViewController") as! SecondaryViewController
        
        vc.region = region
        print(region)
        self.navigationController?.pushViewController(vc, animated:true)
        return true
        
    }


}

