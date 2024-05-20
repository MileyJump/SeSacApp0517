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
    
    var emotionCount = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    @IBOutlet var countLabel: [UILabel]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray2
        setUpLayout()
        
    }
    
    func buttonImageLayout(_ button : UIButton, imageName: String){
        button.setImage(UIImage(named: imageName), for: .normal)
    }
    
    func labelLayout(_ label: UILabel, emotionText: String){
        label.textAlignment = .center
        label.text = "\(emotionText) 0"
    }
    
    
    func setUpLayout(){
        menuNaviBarItem.image = UIImage(systemName: "list.dash")
        menuNaviBarItem.tintColor = .black
        navigationItem.title = "감정 다이어리"
        
        
        
        buttonImageLayout(happyButton, imageName: "slime1")
        buttonImageLayout(loveButton, imageName: "slime2")
        buttonImageLayout(likeButton, imageName: "slime3")
        buttonImageLayout(panicButton, imageName: "slime4")
        buttonImageLayout(upsetButton, imageName: "slime5")
        buttonImageLayout(gloomyButton, imageName: "slime6")
        buttonImageLayout(boredButton, imageName: "slime7")
        buttonImageLayout(annoyingButton, imageName: "slime8")
        buttonImageLayout(sadButton, imageName: "slime9")
        
        
        labelLayout(happyLabel, emotionText: "행복해")
        labelLayout(loveLabel, emotionText: "사랑해")
        labelLayout(likeLabel, emotionText: "좋아해")
        labelLayout(panicLabel, emotionText: "당황해")
        labelLayout(upsetLabel, emotionText: "속상해")
        labelLayout(gloomyLabel, emotionText: "우울해")
        labelLayout(boredLabel, emotionText: "심심해")
        labelLayout(annoyingLabel, emotionText: "짜증나")
        labelLayout(sadLabel, emotionText: "슬퍼")
        
        
        
    }
    
    
    @IBAction func happyButtonTapped(_ sender: UIButton) {
        print(sender.tag)

        emotionCount[sender.tag] += 1
        
        countLabel[sender.tag].text = "\(emotionCount[sender.tag]) 번"
    }
}
