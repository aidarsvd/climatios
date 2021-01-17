//
//  ApiManager.swift
//  self-study
//
//  Created by Айдар Чакиев on 17/1/21.
//

import Foundation

protocol WeatherManagerDelegate {
    func didUpdate(weather: WeatherModel?)
}

struct ApiManager {
    
//    let baseUrl = "https://api.openweathermap.org/data/2.5/weather?q=Bishkek&appid=e174a606afeb32e8177dfa2ec35cc85d&units=metric"
//

    
    func doRequest(baseUrl: String) -> Void {
        performRequest(urlString: baseUrl)
    }
    
    var delegate: WeatherManagerDelegate?
    
    func performRequest(urlString: String){
        
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data{
                    if let doneWeather = self.parseJSON(weatherData: safeData){
                        delegate?.didUpdate(weather: doneWeather)
                    }else{
                        delegate?.didUpdate(weather: nil)
                    }
                    
                }
            }
            
            task.resume()
        }
    }
    
    func parseJSON(weatherData: Data) -> WeatherModel?{
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(MainData.self, from: weatherData)
            let weather = WeatherModel(region: decodedData.name, temp: decodedData.main.temp,
                                       decription:decodedData.weather[0].main,
                                       pressure: decodedData.main.pressure, humidity: decodedData.main.humidity,
                                       visibility: decodedData.visibility, id: decodedData.weather[0].id)
            print()
            return weather
            
            
        }catch{
            print(error)
            return nil
        }
    }
    
    
}
