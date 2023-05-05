//
//  ViewController.swift
//  maraphon#2
//
//  Created by Даниил Ермоленко on 05.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let firstButton = MainButton(textButton: "First Button")
    let secondButton = MainButton(textButton: "Second Medium Button")
    let thirdButton = MainButton(textButton: "Third")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupFirstButton()
        setupSecondButton()
        setupThirdButton()
    }
    
    
    @objc func firsButtonTapped() {
        
        buttonAnimate(button: firstButton)
    }
    
    @objc func secondButtonTapped() {
        
        buttonAnimate(button: secondButton)
    }
    
    @objc func thirdButtonTapped() {
        
        UIView.animate(withDuration: 0.18,
                       delay: 0,
                       options: [.allowUserInteraction, .curveLinear],
                       animations: {
            self.thirdButton.transform = CGAffineTransform(scaleX: 0.85, y: 0.85)
        },
                       completion: {
            (finish: Bool) in UIView.animate(withDuration: 0.18, animations: { self.thirdButton.transform = CGAffineTransform.identity
                let viewController = ViewController2()
                viewController.modalPresentationStyle = .formSheet
                self.present(viewController, animated: true)
            })
        })
    }
    
    func setupFirstButton() {
        view.addSubview(firstButton)
        
        firstButton.addTarget(self, action: #selector(firsButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            firstButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            firstButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstButton.heightAnchor.constraint(equalToConstant: 40),
            
        ])
    }
    
    func setupSecondButton() {
        view.addSubview(secondButton)
        
        secondButton.addTarget(self, action: #selector(secondButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            secondButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            secondButton.topAnchor.constraint(equalTo: firstButton.bottomAnchor, constant: 8),
            secondButton.heightAnchor.constraint(equalToConstant: 40),
            
        ])
    }
    
    func setupThirdButton() {
        view.addSubview(thirdButton)
        
        thirdButton.addTarget(self, action: #selector(thirdButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            thirdButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            thirdButton.topAnchor.constraint(equalTo: secondButton.bottomAnchor, constant: 8),
            thirdButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
}

extension ViewController {
    
    func buttonAnimate(button: UIButton) {
        UIView.animate(withDuration: 0.18,
                       delay: 0,
                       options: [.allowUserInteraction, .curveLinear],
                       animations: {
            button.transform = CGAffineTransform(scaleX: 0.85, y: 0.85)
        },
                       completion: {
            (finish: Bool) in UIView.animate(withDuration: 0.18, animations: { button.transform = CGAffineTransform.identity
            })
        })
    }
}
