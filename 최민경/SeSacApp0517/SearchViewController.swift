//
//  SearchViewController.swift
//  SeSacApp0517
//
//  Created by 최민경 on 5/18/24.
//

import UIKit

class SearchViewController: UIViewController {
    
    var newWordDictionray = ["만반잘부": "만나서 반가워 잘 부탁해", "꾸웨엑": "후회해", "내또출": "내일 또 출근", "별다줄": "별 걸 다 줄인다" ,"애빼시": "애교 빼면 시체", "무야호": "무한도전"]
    
    var newWordArray = [
        ["만반잘부","만나서 반가워 잘 부탁해"], ["꾸웨엑","후회해"], ["내또출","내일 또 출근"], ["별다줄","별 걸 다 줄인다"],["애빼시","애교 빼면 시체"],["무야호", "무한도전"]
        ]
    
    
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var searchButton: UIButton!
    @IBOutlet var sentenceBackground: UIImageView!
    @IBOutlet var sentenceLabel: UILabel!
    
    @IBOutlet var newWordbutton1: UIButton!
    @IBOutlet var newWordButton2: UIButton!
    @IBOutlet var newWordButton3: UIButton!
    @IBOutlet var newWordButton4: UIButton!
    @IBOutlet var newWordButton5: UIButton!
    @IBOutlet var newWordButton6: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    func configureButton(_ button: UIButton, withTitle title: String) {
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle(title, for: .normal)
    }
    
    
    func setUpUI(){
        searchTextField.layer.borderColor = UIColor.black.cgColor
        searchTextField.layer.cornerRadius = 0
        searchTextField.layer.borderWidth = 1
        
        configureButton(newWordbutton1, withTitle: newWordArray[0][0])
        configureButton(newWordButton2, withTitle: newWordArray[1][0])
        configureButton(newWordButton3, withTitle: newWordArray[2][0])
        configureButton(newWordButton4, withTitle: newWordArray[3][0])
        configureButton(newWordButton5, withTitle: newWordArray[4][0])
        configureButton(newWordButton6, withTitle: newWordArray[5][0])
        
  
        let image = UIImage(systemName: "magnifyingglass")?.withRenderingMode(.alwaysOriginal)
        
        searchButton.setImage(image, for: .normal)
        searchButton.setTitle("", for: .normal)
        searchButton.backgroundColor = .black
        searchButton.tintColor = .white
        
        
        sentenceBackground.image = UIImage(named: "background")
        sentenceBackground.contentMode = .scaleAspectFill
        
        sentenceLabel.textAlignment = .center
    }
    
    
    
    @IBAction func wordButtonTapped(_ sender: UIButton) {
        searchTextField.text = newWordArray[0][0]
    }
    @IBAction func wordButtonTapped2(_ sender: UIButton) {
        searchTextField.text = newWordArray[1][0]
    }
    @IBAction func wordButtonTapped3(_ sender: UIButton) {
        searchTextField.text = newWordArray[2][0]
    }
    @IBAction func wordButtonTapped4(_ sender: UIButton) {
        searchTextField.text = newWordArray[3][0]
    }
    @IBAction func wordButtonTapped5(_ sender: UIButton) {
        searchTextField.text = newWordArray[4][0]
    }
    @IBAction func wordButtonTapped6(_ sender: UIButton) {
        searchTextField.text = newWordArray[5][0]
    }
    
    // 배열 활용
    @IBAction func searchButtonTapped(_ sender: UIButton) {
        
        let searchText = searchTextField.text!
        
        for wordSet in newWordArray {
            if let word = wordSet.first, searchText == word {
                sentenceLabel.text = wordSet[1]
                break
            } else {
                print("==\(wordSet)")
                sentenceLabel.text = "검색결과가 없습니다."
            }
        }
    }
    
    // 딕셔너리 활용
    @IBAction func searchTextFieldTapped(_ sender: UITextField) {
        let searchText = searchTextField.text
        
        for (word, sentence) in newWordDictionray {
            if searchText == word {
                sentenceLabel.text = sentence
                break
            } else {
                sentenceLabel.text = "검색 결과가 없습니다"
            }
        }
    }
}
