//
//  DetailController.swift
//  pizza-base
//
//  Created by latush on 17.02.2024.
//

import UIKit

class DetailController: UIViewController {

    //MARK: - UI
    private var someButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .orange
        button.setTitle("Корзина", for: .normal)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        button.heightAnchor.constraint(equalToConstant: 45).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
    }
}


//MARK: - Layout
private extension DetailController {
    func setupViews() {
        view.backgroundColor = .systemPink
        view.addSubview(someButton)
    }
    
    func setupConstraints() {
        someButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        someButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
