//
//  WeatherCell.swift
//  SOPT_iOS_3ndSeminar
//
//  Created by SeongEun on 2020/05/09.
//  Copyright © 2020 SeongEun. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    static let identifier: String = "WeatherCell"
    
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setDateInformation(weatherImageName: String, date: String, subTitle: String) {
        weatherImageView.image = UIImage(named: weatherImageName)
        dateLabel.text = date
        subTitleLabel.text = subTitle
    }
}
