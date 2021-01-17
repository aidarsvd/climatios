//
//  SecondaryViewController.swift
//  self-study
//
//  Created by Айдар Чакиев on 16/1/21.
//

import UIKit

class SecondaryViewController: BaseView , WeatherManagerDelegate{

    @IBOutlet weak var progressBar: UIActivityIndicatorView!
    
    var apiFactory = ApiManager()
    
    @IBOutlet weak var regionLb: UILabel!
    @IBOutlet weak var degreesLb: UILabel!
    @IBOutlet weak var descriptionLb: UILabel!
    @IBOutlet weak var pressureLb: UILabel!
    @IBOutlet weak var humidityLb: UILabel!
    @IBOutlet weak var visibilityLb: UILabel!
    @IBOutlet weak var weatherIcon: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
            
        progressBar.startAnimating()
        apiFactory.delegate = self
        apiFactory.doRequest()
        
    }
    func didUpdate(weather: WeatherModel) {
        DispatchQueue.main.async {
            self.regionLb.text = weather.region
            self.degreesLb.text = "\(weather.temp) Cº"
            self.descriptionLb.text = weather.decription
            self.pressureLb.text = "Pressure: \(weather.pressure)"
            self.humidityLb.text = "Humidity: \(weather.humidity)"
            self.visibilityLb.text = "Visibility: \(weather.visibility)"
            self.weatherIcon.image = UIImage(systemName: weather.weatherIcon)
            self.progressBar.isHidden = true
    

        }
    }
    
    

}
