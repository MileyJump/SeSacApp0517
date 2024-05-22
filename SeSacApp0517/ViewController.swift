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
        saveData()
//        let happy = UserDefaults.standard.string(forKey: "happy")
//        happyLabel.text = happy
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
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        
        UserDefaults.standard.set(happyLabel.text, forKey: "happy")
        
        UserDefaults.standard.set(loveLabel.text, forKey: "love")
        
        UserDefaults.standard.set(likeLabel.text, forKey: "like")
        
        UserDefaults.standard.set(panicLabel.text, forKey: "panic")
        
        UserDefaults.standard.set(upsetLabel.text, forKey: "upset")
        
        UserDefaults.standard.set(gloomyLabel.text, forKey: "gloomy")
        
        UserDefaults.standard.set(boredLabel.text, forKey: "bored")
        
        UserDefaults.standard.set(annoyingLabel.text, forKey: "annoying")
        
        UserDefaults.standard.set(sadLabel.text, forKey: "sad")
        
        print("터치")
    }
    
    func saveData(){
       
        let happy = UserDefaults.standard.string(forKey: "happy")
        happyLabel.text = happy
        
//        UserDefaults.standard.set(happyLabel.text, forKey: "happy")
        
        
        let love = UserDefaults.standard.string(forKey: "love")
        loveLabel.text = love
//        UserDefaults.standard.set(loveLabel.text, forKey: "love")
        
        let like = UserDefaults.standard.string(forKey: "like")
        likeLabel.text = like
//        UserDefaults.standard.set(likeLabel.text, forKey: "like")
        
        let panic = UserDefaults.standard.string(forKey: "panic")
        panicLabel.text = panic
//        UserDefaults.standard.set(panicLabel.text, forKey: "panic")
        
        let upset = UserDefaults.standard.string(forKey: "upset")
        upsetLabel.text = upset
//        UserDefaults.standard.set(upsetLabel.text, forKey: "upset")
        
        let gloomy = UserDefaults.standard.string(forKey: "gloomy")
        gloomyLabel.text = gloomy
//        UserDefaults.standard.set(gloomyLabel.text, forKey: "gloomy")
        
        let bored = UserDefaults.standard.string(forKey: "bored")
        boredLabel.text = bored
//        UserDefaults.standard.set(boredLabel.text, forKey: "bored")
        
        let annoying = UserDefaults.standard.string(forKey: "annoying")
        annoyingLabel.text = annoying
//        UserDefaults.standard.set(annoyingLabel.text, forKey: "annoying")
        
        let sad = UserDefaults.standard.string(forKey: "sad")
        sadLabel.text = sad
//        UserDefaults.standard.set(sadLabel.text, forKey: "sad")
        
        
    }
}
