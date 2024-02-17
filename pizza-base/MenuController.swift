//
//  ViewController.swift
//  pizza-base
//
//  Created by Artur on 17.02.2024.
//

import UIKit

final class MenuController: UIViewController {
    
    //MARK: - UI
    private var someButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .orange
        button.setTitle("Детальная информация", for: .normal)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        button.heightAnchor.constraint(equalToConstant: 45).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(nil, action: #selector(someButtonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
    }
}

//MARK: - Business Logic
private extension MenuController {
    @objc func someButtonTapped() {
        
        let detailVC = DetailController()
        present(detailVC, animated: true)
    }
}


//MARK: - Layout
private extension MenuController {
    func setupViews() {
        view.backgroundColor = .systemPink
        view.addSubview(someButton)
    }
    
    func setupConstraints() {
        someButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        someButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
