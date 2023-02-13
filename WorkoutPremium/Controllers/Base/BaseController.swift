//
//  BaseController.swift
//  WorkoutApp
//
//  Created by new on 8/2/23.
//

import UIKit

enum NavBarPosition {
    case left
    case right
}

class BaseController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        constaintViews()
        configureAppearance()
    }
}

@objc extension BaseController {
    func setupViews() {
        
    }
    
    func constaintViews() {

    }
    
    func configureAppearance() {
        view.backgroundColor = R.Colors.background
    }
    
    func navBarLeftHandler() {
        print("NavBar  Left button tapped")
    }
    
    func navBarRightHandler() {
        print("NavBar Right button tapped")
    }
}

extension BaseController {
    func addNavBarButton(at position: NavBarPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(R.Colors.active, for: .normal)
        button.setTitleColor(R.Colors.inActive, for: .disabled)
        button.titleLabel?.font = R.Fonts.helveticaRegular(with: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
