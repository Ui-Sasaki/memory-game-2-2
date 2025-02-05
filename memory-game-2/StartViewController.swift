//
//  StartViewController.swift
//  memory-game-2
//
//  Created by ard on 2025/02/03.
import UIKit

class StartViewController: UIViewController {

    @IBAction func playWithAIButtonTapped(_ sender: UIButton) {
        startGame(isAI: true) // Start game in AI mode
    }

    @IBAction func playWithPlayerButtonTapped(_ sender: UIButton) {
        startGame(isAI: false) // Start game in 2-player mode
    }
    
    func startGame(isAI: Bool) {
//        if let gameVC = storyboard?.instantiateViewController(withIdentifier: "GameViewController") as? ViewController {
//            gameVC.isPlayingWithAI = isAI // ✅ Correctly passing AI mode
//            gameVC.modalPresentationStyle = .fullScreen
//            present(gameVC, animated: true, completion: nil)
//        }
//        
//        isPlayingWithAI
        
    }
}
