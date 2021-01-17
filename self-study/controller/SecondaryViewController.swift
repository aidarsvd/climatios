//
//  SecondaryViewController.swift
//  self-study
//
//  Created by Айдар Чакиев on 16/1/21.
//

import UIKit

class SecondaryViewController: BaseView , WeatherManagerDelegate{


    var apiFactory = ApiManager()
    
    @IBOutlet weak var testLb: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        apiFactory.delegate = self
        apiFactory.doRequest()
        
    }
    
    func didUpdate(weather: WeatherModel) {
        print(weather.decription)
    }
    
    

}
