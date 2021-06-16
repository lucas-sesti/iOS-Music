//
//  PlaylistVC.swift
//  Music
//
//  Created by Lucas Sesti on 15/06/21.
//

import UIKit

class PlaylistVC: UIViewController {
    private func loadSafeArea(stackView: UIStackView) {
        let margins = view.layoutMarginsGuide
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        ])
        
        if #available(iOS 11, *) {
            let guide = view.safeAreaLayoutGuide
            
            NSLayoutConstraint.activate([
                stackView.topAnchor.constraint(equalToSystemSpacingBelow: guide.topAnchor, multiplier: 1.0),
                guide.bottomAnchor.constraint(equalToSystemSpacingBelow: stackView.bottomAnchor, multiplier: 1.0)
            ])
        } else {
            let standardSpacing: CGFloat = 8.0
            NSLayoutConstraint.activate([
                stackView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: standardSpacing),
                bottomLayoutGuide.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: standardSpacing)
            ])
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        let text: UILabel = .textLabel(text: "aaa", fontSize: 16, color: .systemGray)
        let stackView = UIStackView(arrangedSubviews: [text]);
        stackView.alignment = .top
        
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 90))
        
        view.addSubview(navBar);
        navBar.backgroundColor = .blue;
        
        view.addSubview(stackView);
        
        stackView.translatesAutoresizingMaskIntoConstraints = false;
        
        self.loadSafeArea(stackView: stackView)
        
        
    }
}
