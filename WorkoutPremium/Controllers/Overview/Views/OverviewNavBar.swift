//
//  OverviewNavBar.swift
//  WorkoutPremium
//
//  Created by new on 9/2/23.
//

import UIKit

final class OverviewNavBar: BaseView {
    private let allWorkoutsButton = SecondaryButton()
    private let titleLabel = UILabel()
    private let addButton = UIButton()
    
    private let weekView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue.withAlphaComponent(0.2)
        
        return view
    }()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addBottomBorder(with: Resources.Colors.seperator, height: 1)
    }
    
    
    func addAllWorkoutsAction(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func addAdditingAction(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }
}


extension OverviewNavBar {
    override func addViews() {
        super.addViews()
        
        addView(allWorkoutsButton)
        addView(titleLabel)
        addView(addButton)
        addView(weekView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28),
            
            allWorkoutsButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130),
            
            
            titleLabel.centerYAnchor.constraint(equalTo: allWorkoutsButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
             
            weekView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 15),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weekView.heightAnchor.constraint(equalToConstant: 47)
            
        ])
    }
    
    override func configure() {
        super.configure()
        
        
        backgroundColor = .white
        
//        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = Resources.Strings.NavBar.overview
        titleLabel.textColor = Resources.Colors.titleGray
        titleLabel.font = Resources.Fonts.helveticaRegular(with: 22)
        
        
//        allWorkoutsButton.translatesAutoresizingMaskIntoConstraints = false
        allWorkoutsButton.setTitle(Resources.Strings.Overview.allWorkoutsButton)
//        allWorkoutsButton.addTarget(self,
//                                    action: #selector(allWorkoutsButtonAction),
//                                    for: .touchUpInside)
        
//        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.setImage(Resources.Images.Common.add, for: .normal)
//        addButton.addTarget(self,
//                            action: #selector(addButtonAction),
//                            for: .touchUpInside)
        
//        weekView.translatesAutoresizingMaskIntoConstraints = false
    }
}

//@objc extension OverviewNavBar {
//    func allWorkoutsButtonAction() {
//        print("All Workouts Button Tapped!!!")
//    }
//    
//    func addButtonAction() {
//        print("All Workouts Button Tapped!!!")
//    }
//}
