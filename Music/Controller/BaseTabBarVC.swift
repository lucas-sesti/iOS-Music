//
//  BaseTabBarVC.swift
//  Music
//
//  Created by Lucas Sesti on 13/06/21.
//

import UIKit

class BaseTabBarVC: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad();
        
        // Definindo as rotas
        let musicsVC = PlaylistVC()
        musicsVC.tabBarItem.title = "Músicas";
        
        viewControllers = [musicsVC]
    }
}
