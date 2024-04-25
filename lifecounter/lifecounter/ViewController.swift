//
//  ViewController.swift
//  lifecounter
//
//  Created by Eric Kuo on 4/17/24.
//

import UIKit

class ViewController: UIViewController {
    
    var player1Life = 20
    var player2Life = 20
    
    let player1NameLabel = UILabel()
    let player1LifeLabel = UILabel()
    let player1PlusButton = UIButton()
    let player1MinusButton = UIButton()
    let player1Plus5Button = UIButton()
    let player1Minus5Button = UIButton()
    
    let player2NameLabel = UILabel()
    let player2LifeLabel = UILabel()
    let player2PlusButton = UIButton()
    let player2MinusButton = UIButton()
    let player2Plus5Button = UIButton()
    let player2Minus5Button = UIButton()
    
    let gameOverLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() {
        // Player 1 UI
        let buttonColor = UIColor.gray // Choose your desired color here

        // Player 1 Name Label
        player1NameLabel.text = "Player 1"
        player1NameLabel.translatesAutoresizingMaskIntoConstraints = false
        player1NameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        view.addSubview(player1NameLabel)

        // Player 1 Life Label
        player1LifeLabel.text = "\(player1Life)"
        player1LifeLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(player1LifeLabel)

        // Player 1 Plus Button
        player1PlusButton.setTitle("+", for: .normal)
        player1PlusButton.translatesAutoresizingMaskIntoConstraints = false
        player1PlusButton.backgroundColor = buttonColor
        player1PlusButton.layer.cornerRadius = 10
        player1PlusButton.addTarget(self, action: #selector(player1PlusTapped), for: .touchUpInside)
        view.addSubview(player1PlusButton)

        // Player 1 Minus Button
        player1MinusButton.setTitle("-", for: .normal)
        player1MinusButton.translatesAutoresizingMaskIntoConstraints = false
        player1MinusButton.backgroundColor = buttonColor
        player1MinusButton.layer.cornerRadius = 10
        player1MinusButton.addTarget(self, action: #selector(player1MinusTapped), for: .touchUpInside)
        view.addSubview(player1MinusButton)

        // Player 1 Plus5 Button
        player1Plus5Button.setTitle("+5", for: .normal)
        player1Plus5Button.translatesAutoresizingMaskIntoConstraints = false
        player1Plus5Button.backgroundColor = buttonColor
        player1Plus5Button.layer.cornerRadius = 10
        player1Plus5Button.addTarget(self, action: #selector(player1Plus5Tapped), for: .touchUpInside)
        view.addSubview(player1Plus5Button)

        // Player 1 Minus5 Button
        player1Minus5Button.setTitle("-5", for: .normal)
        player1Minus5Button.translatesAutoresizingMaskIntoConstraints = false
        player1Minus5Button.backgroundColor = buttonColor
        player1Minus5Button.layer.cornerRadius = 10
        player1Minus5Button.addTarget(self, action: #selector(player1Minus5Tapped), for: .touchUpInside)
        view.addSubview(player1Minus5Button)

        // Player 2 Buttons
        player2NameLabel.translatesAutoresizingMaskIntoConstraints = false
        player2NameLabel.text = "Player 2"
        player2NameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        view.addSubview(player2NameLabel)

        // Player 2 Life Label
        player2LifeLabel.translatesAutoresizingMaskIntoConstraints = false
        player2LifeLabel.text = "\(player2Life)"
        view.addSubview(player2LifeLabel)

        player2PlusButton.translatesAutoresizingMaskIntoConstraints = false
        player2PlusButton.setTitle("+", for: .normal)
        player2PlusButton.backgroundColor = buttonColor
        player2PlusButton.layer.cornerRadius = 10
        player2PlusButton.addTarget(self, action: #selector(player2PlusTapped), for: .touchUpInside)
        view.addSubview(player2PlusButton)

//        // Player 2 Minus Button
        player2MinusButton.translatesAutoresizingMaskIntoConstraints = false
        player2MinusButton.setTitle("-", for: .normal)
        player2MinusButton.backgroundColor = buttonColor
        player2MinusButton.layer.cornerRadius = 10
        player2MinusButton.addTarget(self, action: #selector(player2MinusTapped), for: .touchUpInside)
        view.addSubview(player2MinusButton)

        // Player 2 Plus5 Button
        player2Plus5Button.translatesAutoresizingMaskIntoConstraints = false
        player2Plus5Button.setTitle("+5", for: .normal)
        player2Plus5Button.backgroundColor = buttonColor
        player2Plus5Button.layer.cornerRadius = 10
        player2Plus5Button.addTarget(self, action: #selector(player2Plus5Tapped), for: .touchUpInside)
        view.addSubview(player2Plus5Button)

//        // Player 2 Minus5 Button
        player2Minus5Button.translatesAutoresizingMaskIntoConstraints = false
        player2Minus5Button.setTitle("-5", for: .normal)
        player2Minus5Button.backgroundColor = buttonColor
        player2Minus5Button.layer.cornerRadius = 10
        player2Minus5Button.addTarget(self, action: #selector(player2Minus5Tapped), for: .touchUpInside)
        view.addSubview(player2Minus5Button)
        
        // Game Over Label
        gameOverLabel.text = ""
        gameOverLabel.frame = CGRect(x: 20, y: 320, width: view.frame.width - 40, height: 30)
        view.addSubview(gameOverLabel)
        
        NSLayoutConstraint.activate([
                // Player 1 Name Label
                player1NameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
                player1NameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                player1NameLabel.widthAnchor.constraint(equalToConstant: 100),
                player1NameLabel.heightAnchor.constraint(equalToConstant: 30),
                
                player1LifeLabel.topAnchor.constraint(equalTo: player1NameLabel.bottomAnchor, constant: 10),
                player1LifeLabel.leadingAnchor.constraint(equalTo: player1NameLabel.leadingAnchor),
                player1LifeLabel.widthAnchor.constraint(equalTo: player1NameLabel.widthAnchor),
                player1LifeLabel.heightAnchor.constraint(equalTo: player1NameLabel.heightAnchor),
                
                player1PlusButton.topAnchor.constraint(equalTo: player1LifeLabel.bottomAnchor, constant: 20),
                player1PlusButton.leadingAnchor.constraint(equalTo: player1LifeLabel.leadingAnchor),
                player1PlusButton.widthAnchor.constraint(equalToConstant: 50),
                player1PlusButton.heightAnchor.constraint(equalToConstant: 50),
                
                player1MinusButton.topAnchor.constraint(equalTo: player1PlusButton.topAnchor),
                player1MinusButton.leadingAnchor.constraint(equalTo: player1PlusButton.trailingAnchor, constant: 10),
                player1MinusButton.widthAnchor.constraint(equalToConstant: 50),
                player1MinusButton.heightAnchor.constraint(equalToConstant: 50),
                
                player1Plus5Button.topAnchor.constraint(equalTo: player1PlusButton.bottomAnchor, constant: 10),
                player1Plus5Button.leadingAnchor.constraint(equalTo: player1PlusButton.leadingAnchor),
                player1Plus5Button.widthAnchor.constraint(equalToConstant: 50),
                player1Plus5Button.heightAnchor.constraint(equalToConstant: 50),
                
                player1Minus5Button.topAnchor.constraint(equalTo: player1Plus5Button.topAnchor),
                player1Minus5Button.leadingAnchor.constraint(equalTo: player1Plus5Button.trailingAnchor, constant: 10),
                player1Minus5Button.widthAnchor.constraint(equalToConstant: 50),
                player1Minus5Button.heightAnchor.constraint(equalToConstant: 50),
                
                // Player 2
                player2NameLabel.topAnchor.constraint(equalTo: player1NameLabel.topAnchor),
                player2NameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                player2NameLabel.widthAnchor.constraint(equalTo: player1NameLabel.widthAnchor),
                player2NameLabel.heightAnchor.constraint(equalTo: player1NameLabel.heightAnchor),
                
                player2LifeLabel.topAnchor.constraint(equalTo: player1LifeLabel.topAnchor),
                player2LifeLabel.trailingAnchor.constraint(equalTo: player2NameLabel.trailingAnchor),
                player2LifeLabel.widthAnchor.constraint(equalTo: player1LifeLabel.widthAnchor),
                player2LifeLabel.heightAnchor.constraint(equalTo: player1LifeLabel.heightAnchor),
                
                player2PlusButton.topAnchor.constraint(equalTo: player1PlusButton.topAnchor),
                player2PlusButton.trailingAnchor.constraint(equalTo: player2LifeLabel.trailingAnchor, constant: -60),
                player2PlusButton.widthAnchor.constraint(equalTo: player1PlusButton.widthAnchor),
                player2PlusButton.heightAnchor.constraint(equalTo: player1PlusButton.heightAnchor),
                
                player2MinusButton.topAnchor.constraint(equalTo: player1MinusButton.topAnchor),
                player2MinusButton.trailingAnchor.constraint(equalTo: player2LifeLabel.trailingAnchor),
                player2MinusButton.widthAnchor.constraint(equalTo: player1MinusButton.widthAnchor),
                player2MinusButton.heightAnchor.constraint(equalTo: player1MinusButton.heightAnchor),
                
                player2Plus5Button.topAnchor.constraint(equalTo: player1Plus5Button.topAnchor),
                player2Plus5Button.trailingAnchor.constraint(equalTo: player2LifeLabel.trailingAnchor, constant: -60),
                player2Plus5Button.widthAnchor.constraint(equalTo: player1Plus5Button.widthAnchor),
                player2Plus5Button.heightAnchor.constraint(equalTo: player1Plus5Button.heightAnchor),

                player2Minus5Button.topAnchor.constraint(equalTo: player1Minus5Button.topAnchor),
                player2Minus5Button.trailingAnchor.constraint(equalTo: player2LifeLabel.trailingAnchor),
                player2Minus5Button.widthAnchor.constraint(equalTo: player1Minus5Button.widthAnchor),
                player2Minus5Button.heightAnchor.constraint(equalTo: player1Minus5Button.heightAnchor)
                ])
    }
    
    @objc func player1PlusTapped() {
        player1Life += 1
        updateLifeLabels()
        checkGameOver()
    }
    
    @objc func player1MinusTapped() {
        player1Life -= 1
        updateLifeLabels()
        checkGameOver()
    }
    
    @objc func player1Plus5Tapped() {
        player1Life += 5
        updateLifeLabels()
        checkGameOver()
    }
    
    @objc func player1Minus5Tapped() {
        player1Life -= 5
        updateLifeLabels()
        checkGameOver()
    }
    
    @objc func player2PlusTapped() {
        player2Life += 1
        updateLifeLabels()
        checkGameOver()
    }
    
    @objc func player2MinusTapped() {
        player2Life -= 1
        updateLifeLabels()
        checkGameOver()
    }
    
    @objc func player2Plus5Tapped() {
        player2Life += 5
        updateLifeLabels()
        checkGameOver()
    }
    
    @objc func player2Minus5Tapped() {
        player2Life -= 5
        updateLifeLabels()
        checkGameOver()
    }
    
    func updateLifeLabels() {
        player1LifeLabel.text = "\(player1Life)"
        player2LifeLabel.text = "\(player2Life)"
    }
    
    func checkGameOver() {
        if player1Life <= 0 {
            gameOverLabel.text = "Player 1 LOSES!"
        } else if player2Life <= 0 {
            gameOverLabel.text = "Player 2 LOSES!"
        }
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        view.subviews.forEach { $0.removeFromSuperview() }
        setupUI()
    }
}

