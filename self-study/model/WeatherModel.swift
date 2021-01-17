//
//  WeatherModel.swift
//  self-study
//
//  Created by Айдар Чакиев on 17/1/21.
//

import Foundation

struct WeatherModel{
    let region : String
    let temp: Int
    let decription: String
    let pressure: Int
    let humidity: Int
    let visibility: Int
    let id: Int
    
    var weatherIcon:String {
        
        switch id {
        case 200...232:
            return "cloud.bolt"
            
        case 300...321:
            return "cloud.drizzle"
            
        case 500...531:
            return "cloud.rain"
            
        case 600...622:
            return "cloud.snow"
            
        case 701...781:
            return "cloud.fog"
            
        case 800:
            return "sun.max"
            
        case 801...804:
            return "cloud.bolt"
            
        default:
            return "cloud"
        }
        
    }
    
}
