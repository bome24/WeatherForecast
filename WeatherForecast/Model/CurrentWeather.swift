//
//  CurrentWeather.swift
//  WeatherForecast
//
//  Created by BoMin on 2022/04/04.
//

import Foundation

struct CurrentWeather: Codable {
    let dt: Int
    
    struct Weather: Codable {
        let id: Int
        let main: String
        let description: String
        let icon: String
    }
    
    let weather: [Weather] //배열로 선언해야 함.
    
    struct Main: Codable {
        let temp: Double
        let temp_min: Double
        let temp_max: Double
    }
    
    let main: Main
}
