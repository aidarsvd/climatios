//
//  SecondaryViewController.swift
//  self-study
//
//  Created by Айдар Чакиев on 16/1/21.
//

import UIKit

class SecondaryViewController: BaseView {

    
    let apiFactory = ApiManager()
    
    @IBOutlet weak var testLb: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        print(apiFactory.baseUrl)

        apiFactory.doRequest()
        // Do any additional setup after loading the view.
    }
    

    

}
