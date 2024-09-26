//
//  WeatherViewModel.swift
//  WeatherApp
//
//  Created by 곽현우 on 9/24/24.
//

import Foundation
import SwiftUI

class WeatherViewModel: ObservableObject {
    @Published var weather: WeatherData?
    @Published var isLoading = false
    @Published var errorMessage: String?

    private let apiKey = "1c7910489fbfcec171ec96b10d5c1eaa" // Get this from OpenWeatherMap
    
    func fetchWeather(for city: String) {
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(apiKey)&units=metric") else {
            errorMessage = "Invalid URL"
            return
        }
        
        isLoading = true
        errorMessage = nil
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                self.isLoading = false
                if let error = error {
                    self.errorMessage = "Error: \(error.localizedDescription)"
                    return
                }
                guard let data = data else {
                    self.errorMessage = "No data found"
                    return
                }
                do {
                    let decodedData = try JSONDecoder().decode(WeatherData.self, from: data)
                    self.weather = decodedData
                } catch {
                    self.errorMessage = "Failed to decode data: \(error.localizedDescription)"
                }
            }
        }.resume()
    }
    
    private let ImageFill = [
        "Sun" : "sun.max",
        "Cloud" : "cloud.fill",
        "Rain" : "cloud.rain"
    ]
    
    private let background = [
        "Sun" : Gradient(colors:[.blue, Color("Blue")])
    ]
}
