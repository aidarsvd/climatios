//
//  ViewController.swift
//  self-study
//
//  Created by Айдар Чакиев on 16/1/21.
//

import UIKit

class ViewController: BaseView {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func intentBtn(_ sender: Any) {

        let vc = getVC(name: "SecondaryViewController") as! SecondaryViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

