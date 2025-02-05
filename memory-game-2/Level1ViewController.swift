//
//  Level1ViewController.swift
//  memory-game-2
//
//  Created by ard on 2025/02/03.

import UIKit

class Level1ViewController: UIViewController {
    
    
    @IBOutlet weak var Player1Label: UILabel!
    @IBOutlet weak var Player2Label: UILabel!
    
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    
    @IBOutlet weak var Button7: UIButton!
    @IBOutlet weak var Button8: UIButton!
    @IBOutlet weak var Button9: UIButton!
    
    @IBOutlet weak var Button10: UIButton!
    @IBOutlet weak var Button11: UIButton!
    @IBOutlet weak var Button12: UIButton!
    
    @IBOutlet weak var playWithAISwitch: UISwitch!
    var isPlayingWithAI = false
    
    @IBAction func toggleAIMode(_ sender: UISwitch) {
        isPlayingWithAI = sender.isOn
    }
//    
//    func startGame() {
//        if let gameVC = storyboard?.instantiateViewController(withIdentifier: "GameViewController") as? ViewController {
//            gameVC.isPlayingWithAI = playWithAISwitch.isOn // ✅ Pass switch state
//            gameVC.modalPresentationStyle = .fullScreen
//            present(gameVC, animated: true, completion: nil)
//        }
//    }
//    
//    func compare() {
//        if images[click1 - 1] == images[click2 - 1] {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                self.buttons[self.click1 - 1].alpha = 0
//                self.buttons[self.click2 - 1].alpha = 0
//                
//                if self.player == 1 {
//                    self.points1 += 1
//                    self.Player1Label.text = "Player 1: \(self.points1)"
//                } else {
//                    self.points2 += 1
//                    self.Player2Label.text = "Player 2: \(self.points2)"
//                }
//            }
//        } else {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                self.buttons[self.click1 - 1].setImage(UIImage(named: "image"), for: .normal)
//                self.buttons[self.click2 - 1].setImage(UIImage(named: "image"), for: .normal)
//            }
//        }
//        
//        switchPlayer()
//        
//        var isPlayingWithAI = false // ✅ Declare it at the top!
//        
//        override func viewDidLoad() {
//            super.viewDidLoad()
//            
//            print("AI Mode: \(isPlayingWithAI ? "ON" : "OFF")") // Debugging
//        }
//        
//        func compare() {
//            if isPlayingWithAI && player == 2 {
//                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//                    self.aiTurn()
//                }
//            }
//        }
//        
//        func aiTurn() {
//            var availableCards = [Int]()
//            
//            // Find all available cards (buttons that are still visible)
//            for i in 0..<buttons.count {
//                if buttons[i].alpha != 0 {
//                    availableCards.append(i)
//                }
//            }
//            
//            // AI picks two different cards
//            if availableCards.count >= 2 {
//                availableCards.shuffle()
//                let firstPick = availableCards.removeFirst() // Pick first card
//                let secondPick = availableCards.removeFirst() // Pick second card
//                
//                // Show AI's picks
//                buttons[firstPick].setImage(UIImage(named: images[firstPick]), for: .normal)
//                buttons[secondPick].setImage(UIImage(named: images[secondPick]), for: .normal)
//                
//                click1 = firstPick + 1
//                click2 = secondPick + 1
//                
//                // Compare after a delay (simulate AI "thinking")
//                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                    self.compare()
//                }
//            }
//        }
        
        
       
        
        var images = [
            "image1",
            "image2",
            "image3",
            "image4",
            "image5",
            "image6",
            "image1",
            "image2",
            "image3",
            "image4",
            "image5",
            "image6",
        ]
        
        // 全ボタンを格納する配列
        var buttons = [UIButton]()
        
        // クリック状態を保持する変数
        var click = 1
        
        // クリックしたボタンのインデックスを保持する変数
        var click1 = 0
        var click2 = 0
        
        var points1 = 0
        var points2 = 0
        
        var player = 1
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // 画像をシャッフルしてランダム配置にする
            images.shuffle()
            
            // ボタンを配列に追加
            buttons.append(Button1)
            buttons.append(Button2)
            buttons.append(Button3)
            buttons.append(Button4)
            buttons.append(Button5)
            buttons.append(Button6)
            buttons.append(Button7)
            buttons.append(Button8)
            buttons.append(Button9)
            buttons.append(Button10)
            buttons.append(Button11)
            buttons.append(Button12)
            
            // *ポイント1*: 全ボタンの初期画像を「image」にする（裏面として表示）
            for button in buttons {
                button.setImage(UIImage(named: "image"), for: .normal)
            }
        }
        
        @IBAction func Button1Action(_ sender: Any) {
            if click == 1 {
                Button1.setImage(UIImage(named: images[0]), for: .normal)
                click = 2
                click1 = 1
            } else if click == 2 {
                Button1.setImage(UIImage(named: images[0]), for: .normal)
                click = 1
                click2 = 1
                
                compare()
            }
        }
        
        @IBAction func Button2Action(_ sender: Any) {
            if click == 1 {
                Button2.setImage(UIImage(named: images[1]), for: .normal)
                click = 2
                click1 = 2
            } else if click == 2 {
                Button2.setImage(UIImage(named: images[1]), for: .normal)
                click = 1
                click2 = 2
                
                compare()
            }
        }
        
        @IBAction func Button3Action(_ sender: Any) {
            if click == 1 {
                Button3.setImage(UIImage(named: images[2]), for: .normal)
                click = 2
                click1 = 3
            } else if click == 2 {
                Button3.setImage(UIImage(named: images[2]), for: .normal)
                click = 1
                click2 = 3
                
                compare()
            }
        }
        
        @IBAction func Button4Action(_ sender: Any) {
            if click == 1 {
                Button4.setImage(UIImage(named: images[3]), for: .normal)
                click = 2
                click1 = 4
            } else if click == 2 {
                Button4.setImage(UIImage(named: images[3]), for: .normal)
                click = 1
                click2 = 4
                
                compare()
            }
        }
        
        @IBAction func Button5Action(_ sender: Any) {
            if click == 1 {
                Button5.setImage(UIImage(named: images[4]), for: .normal)
                click = 2
                click1 = 5
            } else if click == 2 {
                Button5.setImage(UIImage(named: images[4]), for: .normal)
                click = 1
                click2 = 5
                
                compare()
            }
        }
        
        @IBAction func Button6Action(_ sender: Any) {
            if click == 1 {
                Button6.setImage(UIImage(named: images[5]), for: .normal)
                click = 2
                click1 = 6
            } else if click == 2 {
                Button6.setImage(UIImage(named: images[5]), for: .normal)
                click = 1
                click2 = 6
                
                compare()
            }
        }
        
        @IBAction func Button7Action(_ sender: Any) {
            if click == 1 {
                Button7.setImage(UIImage(named: images[6]), for: .normal)
                click = 2
                click1 = 7
            } else if click == 2 {
                Button7.setImage(UIImage(named: images[6]), for: .normal)
                click = 1
                click2 = 7
                
                compare()
            }
        }
        
        @IBAction func Button8Action(_ sender: Any) {
            if click == 1 {
                Button8.setImage(UIImage(named: images[7]), for: .normal)
                click = 2
                click1 = 8
            } else if click == 2 {
                Button8.setImage(UIImage(named: images[7]), for: .normal)
                click = 1
                click2 = 8
                
                compare()
            }
        }
        
        @IBAction func Button9Action(_ sender: Any) {
            if click == 1 {
                Button9.setImage(UIImage(named: images[8]), for: .normal)
                click = 2
                click1 = 9
            } else if click == 2 {
                Button9.setImage(UIImage(named: images[8]), for: .normal)
                click = 1
                click2 = 9
                
                compare()
            }
        }
        
        @IBAction func Button10Action(_ sender: Any) {
            if click == 1 {
                Button10.setImage(UIImage(named: images[9]), for: .normal)
                click = 2
                click1 = 10
            } else if click == 2 {
                Button10.setImage(UIImage(named: images[9]), for: .normal)
                click = 1
                click2 = 10
                
                compare()
            }
        }
        
        @IBAction func Button11Action(_ sender: Any) {
            if click == 1 {
                Button11.setImage(UIImage(named: images[10]), for: .normal)
                click = 2
                click1 = 11
            } else if click == 2 {
                Button11.setImage(UIImage(named: images[10]), for: .normal)
                click = 1
                click2 = 11
                
                compare()
            }
        }
        
        @IBAction func Button12Action(_ sender: Any) {
            if click == 1 {
                Button12.setImage(UIImage(named: images[11]), for: .normal)
                click = 2
                click1 = 12
            } else if click == 2 {
                // *ポイント2*: ここを Button1 ではなく Button12 に修正
                Button12.setImage(UIImage(named: images[11]), for: .normal)
                click = 1
                click2 = 12
                
                compare()
            }
        }
        
        @IBAction func sendNextVC(_sender: Any) {
            print("segue")
            performSegue(withIdentifier: "goToLevel2", sender: (Any).self)
        }
        
    func compare() {
            // 同じ画像なら1秒後に消す(ボタンの透明度を0にする)
            if images[click1 - 1] == images[click2 - 1] {
                DispatchQueue.main.asyncAfter(deadline:.now() + 1) {
                    self.buttons[self.click1 - 1].alpha = 0
                    self.buttons[self.click2 - 1].alpha = 0
                    
                    if self.player == 1 {
                        self.points1 = self.points1 + 1
                        
                        self.Player1Label.text = "Player 1: \(self.points1)"
                        
                    } else if self.player == 2 {
                        self.points2 = self.points2 + 1
                        self.Player2Label.text = "Player 2: \(self.points2)"
                    }
                }
                
            } else {
                // 違う画像なら1秒後に裏面(「image」)に戻す
                DispatchQueue.main.asyncAfter(deadline:.now() + 1) {
                    self.buttons[self.click1 - 1].setImage(UIImage(named: "image"), for: .normal)
                    self.buttons[self.click2 - 1].setImage(UIImage(named: "image"), for: .normal)
                }
            }
            switchPlayer()
            
            func switchPlayer() {
                if player == 1 {
                    player = 2
                    
                    Player1Label.textColor = .blue
                    Player2Label.textColor = .black
                }else{
                    player = 1
                    
                    Player1Label.textColor = .black
                    Player2Label.textColor = .blue
                }
            }
        }
        
    }
