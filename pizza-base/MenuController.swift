//
//  ViewController.swift
//  pizza-base
//
//  Created by Artur on 17.02.2024.
//

import UIKit

class MenuController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPink
        
        let someButton = UIButton(type: .custom)
        
        someButton.backgroundColor = .orange
        
        someButton.setTitle("Детальная информация", for: .normal)
        someButton.layer.cornerRadius = 8
        someButton.clipsToBounds = true
        someButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        
        someButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
        someButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(someButton)
        
        someButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        someButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }


}

