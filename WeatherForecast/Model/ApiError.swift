//
//  ApiError.swift
//  WeatherForecast
//
//  Created by BoMin on 2022/04/04.
//

import Foundation

enum ApiError: Error {
    case unknown
    case invalidUrl(String)
    case invalidResponse
    case failed(Int)
    case emptyData
}
