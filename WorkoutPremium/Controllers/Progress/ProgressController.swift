//
//  ProgressController.swift
//  WorkoutApp
//
//  Created by new on 8/2/23.
//

import UIKit

class ProgressController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        title = "Workout Progress"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.progress
        
        addNavBarButton(at: .left, with: "Export")
        addNavBarButton(at: .right, with: "Details")
//        
     }


}
