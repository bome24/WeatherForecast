//
//  Double+Formatter.swift
//  WeatherForecast
//
//  Created by BoMin on 2022/04/04.
//

import Foundation

fileprivate let temperatureFormatter: MeasurementFormatter = {
    let f = MeasurementFormatter()
     f.locale = Locale(identifier: "ko_kr")
     f.numberFormatter.maximumFractionDigits = 1
     f.unitOptions = .temperatureWithoutUnit
     return f
}()

extension Double {
    var temperatureString: String {
        let temp = Measurement<UnitTemperature>(value: self, unit: .celsius)
        return temperatureFormatter.string(from: temp)
    }
}
