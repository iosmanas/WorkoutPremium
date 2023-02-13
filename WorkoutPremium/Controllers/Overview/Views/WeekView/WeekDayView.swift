//
//  WeekDayView.swift
//  WorkoutPremium
//
//  Created by new on 10/2/23.
//

import UIKit


extension WeekView {
    
    final class WeekDayView: BaseView {
        private let nameLabel = UILabel()
        private let dateLabel = UILabel()
        private let stackView = UIStackView()
        
        
        func configure(with index: Int, and name: String) {
            
            let startOfWeek = Date().startOfWeek
            let currentDay = startOfWeek.agoForward(to: index)
            let day = Calendar.current.component(.day, from: currentDay)
            
            let isToday = currentDay.stripTime() == Date().stripTime()
            
            backgroundColor = isToday ? R.Colors.active : R.Colors.background
            
            
            nameLabel.text = name.uppercased()
            nameLabel.textColor = isToday ? .white : R.Colors.active
            
            
            dateLabel.text = "\(day)"
            dateLabel.textColor = isToday ? .white : R.Colors.inActive

        }
    }

}

extension WeekView.WeekDayView {
    override func setupViews() {
        super.setupViews()
        
        setupView(stackView)
        
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLabel)
        
    }
    
    override func constaintViews() {
        super.constaintViews()
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    
    override func configureAppearance() {
        super.configureAppearance()
        
        
        layer.cornerRadius = 5
        layer.masksToBounds = true

        nameLabel.font = R.Fonts.helveticaRegular(with: 9)
        nameLabel.textAlignment = .center
        
        dateLabel.font = R.Fonts.helveticaRegular(with: 15)
        dateLabel.textAlignment = .center
        
        stackView.spacing = 3
        stackView.axis = .vertical
    }
}
