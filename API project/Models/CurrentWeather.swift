//
//  CurrentWeather.swift
//  API project
//
//  Created by Egor Syrtcov on 3/9/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

struct CurrentWeather {
    let temperature: Double
    let appearentTemperature: Double
    let humidity: Double
    let pressure: Double
    let icon: UIImage
}

extension CurrentWeather {
    var pressureString: String {
        return "\(Int(pressure)) mm"
    }
    var humidityString: String {
        return "\(Int(humidity)) %"
    }
    var temperatureString: String {
        return "\(Int(temperature))˚C"
    }
    var appearentTemperatureString: String {
        return "\(Int(appearentTemperature))˚C"
    }
}
