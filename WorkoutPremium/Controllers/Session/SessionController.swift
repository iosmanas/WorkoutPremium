//
//  SessionController.swift
//  WorkoutApp
//
//  Created by new on 8/2/23.
//


import UIKit

class SessionController: BaseController {

    private let timerView: BaseInfoView = {
        let view = BaseInfoView(with: "Test", alignment: .center)
        
        
        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .session)

        addNavBarButton(at: .left, with: "Pause")
        addNavBarButton(at: .right, with: "Finish")
    }
    
    


}
 
extension SessionController {
    override func setupViews() {
        super.setupViews()
        
        view.setupView(timerView)
    }
    
    
    override func constaintViews() {
        super.constaintViews()
        
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    }
}

