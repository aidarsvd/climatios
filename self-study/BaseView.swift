//
//  BaseView.swift
//  self-study
//
//  Created by Айдар Чакиев on 16/1/21.
//

import UIKit

class BaseView: UIViewController {

//    let baseUrl = "https://api.openweathermap.org/data/2.5/weather?q=Bishkek&appid=e174a606afeb32e8177dfa2ec35cc85d&units=metric"
//    
    func changeCity(city: String) -> String{
        let freshCityUrl = "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=e174a606afeb32e8177dfa2ec35cc85d&units=metric"
        
        return freshCityUrl
    }

    func getVC(name:String) -> UIViewController
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: name)
        return vc
    }

}
