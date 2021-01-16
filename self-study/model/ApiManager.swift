//
//  ApiManager.swift
//  self-study
//
//  Created by Айдар Чакиев on 17/1/21.
//

import Foundation

struct ApiManager {
    
    
    let baseUrl = "https://api.openweathermap.org/data/2.5/weather?q=Bishkek&appid=e174a606afeb32e8177dfa2ec35cc85d&units=metric"

//    func changeCity(city: String) {
//        let freshCityUrl = "http://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=e174a606afeb32e8177dfa2ec35cc85d&units=metric"
//    }
    
    func doRequest() -> Void {
        performRequest(urlString: baseUrl)
    }
    
    func performRequest(urlString: String){
        
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            
            task.resume()
            
        }
        
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?) -> Void{
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data{
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString!)
        }
        
    }
    
}
