//
//  ViewController.swift
//  SeSacApp0517
//
//  Created by 최민경 on 5/18/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var menuNaviBarItem: UIBarButtonItem!
    
    @IBOutlet var happyButton: UIButton!
    @IBOutlet var happyLabel: UILabel!
    
    @IBOutlet var loveButton: UIButton!
    @IBOutlet var loveLabel: UILabel!
    
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var likeLabel: UILabel!
    
    @IBOutlet var panicButton: UIButton!
    @IBOutlet var panicLabel: UILabel!
    
    @IBOutlet var upsetButton: UIButton!
    @IBOutlet var upsetLabel: UILabel!
    
    @IBOutlet var gloomyButton: UIButton!
    @IBOutlet var gloomyLabel: UILabel!
    
    @IBOutlet var boredButton: UIButton!
    @IBOutlet var boredLabel: UILabel!
    
    @IBOutlet var annoyingButton: UIButton!
    @IBOutlet var annoyingLabel: UILabel!

    
    @IBOutlet var sadButton: UIButton!
    @IBOutlet var sadLabel: UILabel!

    
    var happyCount = 0
    var loveCount = 0
    var likeCount = 0
    var panicCount = 0
    var upsetCount = 0
    var gloomyCount = 0
    var boredCount = 0
    var annoyingCount = 0
    var sadCount = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray2
        setUpLayout()
    
    }
    
    func setUpLayout(){
//        tabBarItem.image = UIImage(named: "slime1")
//        tabBarItem.title = "감정 다이어리"
        
        menuNaviBarItem.image = UIImage(systemName: "list.dash")
        menuNaviBarItem.tintColor = .black
        navigationItem.title = "감정 다이어리"
        
        
        let happyimage = UIImage(named: "slime1")?.withRenderingMode(.alwaysOriginal)
        happyButton.setImage(happyimage, for: .normal)
        happyLabel.text = "행복해 \(happyCount)"
        happyLabel.textAlignment = .center
        

        let loveimage = UIImage(named: "slime2")?.withRenderingMode(.alwaysOriginal)
        loveButton.setImage(loveimage, for: .normal)
        loveLabel.text = "사랑해 \(likeCount)"
        loveLabel.textAlignment = .center
        
        let likeimage = UIImage(named: "slime3")?.withRenderingMode(.alwaysOriginal)
        likeButton.setImage(likeimage, for: .normal)
        likeLabel.text = "좋아해 \(likeCount)"
        likeLabel.textAlignment = .center

        let panicimage = UIImage(named: "slime4")?.withRenderingMode(.alwaysOriginal)
        panicButton.setImage(panicimage, for: .normal)
        panicLabel.text = "당황해 \(panicCount)"
        panicLabel.textAlignment = .center
        
        let upsetimage = UIImage(named: "slime5")?.withRenderingMode(.alwaysOriginal)
        upsetButton.setImage(upsetimage, for: .normal)
        upsetLabel.text = "속상해 \(upsetCount)"
        upsetLabel.textAlignment = .center
        
        let gloomyimage = UIImage(named: "slime6")?.withRenderingMode(.alwaysOriginal)
        gloomyButton.setImage(gloomyimage, for: .normal)
        gloomyLabel.text = "우울해 \(gloomyCount)"
        gloomyLabel.textAlignment = .center
        
        let boredimage = UIImage(named: "slime7")?.withRenderingMode(.alwaysOriginal)
        boredButton.setImage(boredimage, for: .normal)
        boredLabel.textAlignment = .center
        boredLabel.text = "심심해 \(boredCount)"
        
        let annoyingImage = UIImage(named: "slime8")?.withRenderingMode(.alwaysOriginal)
        annoyingButton.setImage(annoyingImage, for: .normal)
        annoyingLabel.text = "짜증나 \(annoyingCount)"
        annoyingLabel.textAlignment = .center
        
        let sadImage = UIImage(named: "slime9")?.withRenderingMode(.alwaysOriginal)
        sadButton.setImage(sadImage, for: .normal)
        sadLabel.text = "슬퍼 \(sadCount)"
        sadLabel.textAlignment = .center
    }
    
    
    @IBAction func happyButtonTapped(_ sender: UIButton) {
        happyCount += 1
        happyLabel.text = "행복해 \(happyCount)"
    }
    
    @IBAction func loveButtonTapped(_ sender: UIButton) {
        loveCount += 1
        loveLabel.text = "사랑해 \(loveCount)"
    }
    
    @IBAction func likeButtonTapped(_ sender: UIButton) {
        likeCount += 1
        likeLabel.text = "좋아해 \(likeCount)"
    }
    
    @IBAction func panicButtonTapped(_ sender: UIButton) {
        panicCount += 1
        panicLabel.text = "당황해 \(panicCount)"
    }
    
    @IBAction func upsetButtonTapped(_ sender: UIButton) {
        upsetCount += 1
        upsetLabel.text = "속상해 \(upsetCount)"
    }
    
    @IBAction func gloomyButtonTapped(_ sender: UIButton) {
        gloomyCount += 1
        gloomyLabel.text = "우울해 \(gloomyCount)"
    }
    
    @IBAction func boredButtonTapped(_ sender: UIButton) {
        boredCount += 1
        boredLabel.text = "심심해 \(boredCount)"
    }
    
    @IBAction func annoyingButtonTapped(_ sender: UIButton) {
        annoyingCount += 1
        annoyingLabel.text = "짜증나 \(annoyingCount)"
    }
    
    @IBAction func sadButtonTapped(_ sender: UIButton) {
        sadCount += 1
        sadLabel.text = "슬퍼 \(sadCount)"
    }
    
    
    
    
    
    
    
}
