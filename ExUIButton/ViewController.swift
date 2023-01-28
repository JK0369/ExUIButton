//
//  ViewController.swift
//  ExUIButton
//
//  Created by 김종권 on 2023/01/28.
//

import UIKit

class ViewController: UIViewController {
    private let button: UIButton = {
        let button = UIButton()
        
        // text
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.setTitle("타이틀", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.setTitleColor(.blue, for: .highlighted)
        
        // image
        button.setImage(UIImage(systemName: "person.crop.circle"), for: .normal)
        button.setImage(UIImage(systemName: "person.crop.circle.fill"), for: .highlighted)
        
        // inset
        let intervalSpacing = 6.0
        let halfIntervalSpacing = intervalSpacing / 2
        button.contentEdgeInsets = .init(top: 0, left: halfIntervalSpacing, bottom: 0, right: halfIntervalSpacing)
        button.imageEdgeInsets = .init(top: 0, left: -halfIntervalSpacing, bottom: 0, right: halfIntervalSpacing)
        button.titleEdgeInsets = .init(top: 0, left: halfIntervalSpacing, bottom: 0, right: -halfIntervalSpacing)
        
        button.backgroundColor = .lightGray.withAlphaComponent(0.3)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}
