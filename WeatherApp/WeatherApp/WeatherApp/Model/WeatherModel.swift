//
//  WeatherModel.swift
//  WeatherApp
//
//  Created by 곽현우 on 9/24/24.
//

import Foundation

struct WeatherData: Codable {
    let main: Main
    let weather: [Weather]
    let name: String
}

struct Main: Codable {
    let temp: Double
    let humidity: Int
//    let wind: Double
}

struct Weather: Codable {
    let description: String
}
