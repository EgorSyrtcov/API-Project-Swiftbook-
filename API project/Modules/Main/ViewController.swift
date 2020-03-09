//
//  ViewController.swift
//  API project
//
//  Created by Egor Syrtcov on 3/9/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var appearentTemperatureLabel: UILabel!
    @IBOutlet weak var refreshLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let icon = WeatherIconManager.rain.image
        let currentWeather = CurrentWeather(temperature: 10.0, appearentTemperature: 5.0, humidity: 30, pressure: 750, icon: icon)
        updateUIWith(currentWeather: currentWeather)
       
    }
    
    @IBAction func refreshButtonTapped(_ sender: UIButton) {
        
    }
    
    func updateUIWith(currentWeather: CurrentWeather) {
        self.imageView.image = currentWeather.icon
        self.pressureLabel.text = currentWeather.pressureString
        self.temperatureLabel.text = "Feels like: \(currentWeather.temperatureString)"
        self.appearentTemperatureLabel.text = currentWeather.appearentTemperatureString
        self.humidityLabel.text = currentWeather.humidityString
    }
}
