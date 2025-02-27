//
//  FeedViewController.swift
//  NavigationUIKit
//
//  Created by Айгерим on 09.04.2024.
//

import UIKit

final class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemTeal
        
        createSubView()
    }
    
    private func createSubView() {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 200),
            stackView.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor, constant: -32)
        ])
        addPostButton(title: "Post number One", color: .systemPurple, to: stackView, selector: #selector(tapPostButton))
        addPostButton(title: "Post number Two", color: .systemIndigo, to: stackView, selector: #selector(tapPostButton))
    }
    
    private func addPostButton(title: String, color: UIColor, to view: UIStackView, selector: Selector) {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(title, for: .normal)
        button.backgroundColor = color
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: selector, for: .touchUpInside)
        view.addArrangedSubview(button)
    }
    
    @objc func tapPostButton() {
        
        
        let postVC = PostViewController()

        navigationController?.pushViewController(postVC, animated: true)
    }
}
