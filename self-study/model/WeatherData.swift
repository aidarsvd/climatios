//
//  WeatherData.swift
//  self-study
//
//  Created by Айдар Чакиев on 17/1/21.
//

import Foundation

struct MainData: Decodable {
    let name: String
    let weather: Array<WeatherRaw>
    let visibility: Int
    let main: MainRawData
    
}

struct WeatherRaw: Decodable {
    let main: String
    let id: Int
}

struct MainRawData: Decodable {
    let temp: Double
    let pressure: Int
    let humidity: Int
}

