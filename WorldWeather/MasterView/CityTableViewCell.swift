//
//  CityTableViewCell.swift
//  WorldWeather
//
//  Created by RoBeRt on 14-10-21.
//  Copyright (c) 2014年 RayWenderlich. All rights reserved.
//

import UIKit

class CityTableViewCell: UITableViewCell {
    // Makr: - IBOutlets
    @IBOutlet weak var cityImageView: UIImageView!
    @IBOutlet weak var cityNameLabel: UILabel!
    
    var cityWeather: CityWeather? {
        didSet {
            configureCell()
        }
    }
    
    private func configureCell() {
        cityImageView.image = cityWeather?.cityImage
        cityNameLabel.text = cityWeather?.name
    }
}
