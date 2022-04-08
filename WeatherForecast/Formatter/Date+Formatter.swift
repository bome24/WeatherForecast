//
//  Date+Formatter.swift
//  WeatherForecast
//
//  Created by BoMin on 2022/04/05.
//

import Foundation

fileprivate let dateFormatter: DateFormatter = {
    let f = DateFormatter()
     f.locale = Locale(identifier: "ko_kr")
     return f
}()

extension Date {
    var dateString: String {
        dateFormatter.dateFormat = "M월 d일 (E)"
        return dateFormatter.string(from: self)
    }
    
    var timeString: String {
        dateFormatter.dateFormat = "HH:00"
        return dateFormatter.string(from: self)
    }
}
