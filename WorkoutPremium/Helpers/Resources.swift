//
//  Resources.swift
//  WorkoutApp
//
//  Created by new on 8/2/23.
//

import UIKit

enum Resources {
    enum Colors{
        static var active = UIColor(hexString: "#437BFE")
        static var inActive = UIColor(hexString: "#929DA5")
        
        static var background = UIColor(hexString: "#F8F9F9")
        static var seperator = UIColor(hexString: "#E8ECEF")
        static var titleGray = UIColor(hexString: "#545C77")
        
        static var secondary = UIColor(hexString: "#F0F3FF")
//        
    }
    
    enum Strings{
        
        enum TabBar{
            static var overview = "Overview"
            static var session = "Session"
            static var progress = "Progress"
            static var settings = "Settings"
        }
        
        enum NavBar{
            static var overview = "Taday"
            static var session = "High Intensity Cardio"
            static var progress = "Workout Progress"
            static var settings = "Settings"
        }
        
        enum Overview{
            static var allWorkoutsButton = "All Workouts"
        }
        
        enum Session{
            static var navBarLeft = "Pause"
            static var navBarRight = "Finish"
        }
        
        enum Progress{
            static var navBarLeft = "Export"
            static var navBarRight = "Details"
        }
        
        enum Settings{
            
        }
    }
    
    enum Images{
        enum TabBar{
            static var overview = UIImage(named: "overview_tab")
            static var session = UIImage(named: "session_tab")
            static var progress = UIImage(named: "progress_tab")
            static var settings = UIImage(named: "settings_tab")
        }
        
        enum Common {
            static var downArrow = UIImage(named: "down_arrow")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
    
}