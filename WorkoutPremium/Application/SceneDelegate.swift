//
//  SceneDelegate.swift
//  WorkoutPremium
//
//  Created by new on 9/2/23.
//
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    
    /// Scene
    /// - Parameters:
    ///   - scene: UIScene
    ///   - session: It's give us some session
    ///   - connectionOptions: connectionOptions
    ///
    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        
        let tabBarController = TabBarController()
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        
        
    }

}


