//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by hyun woo cho on 2022/11/30.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    let quotes = [
        Quote(contents: "죽음을 두려워하는 나머지 삶을 시작조차 못하는 사람이 많다.", name: "벤 다이크"),
        Quote(contents: "나는 니 자신을 빼 놓고는 모두 안다.", name: "이용"),
        Quote(contents: "편견이란 실효성이 없는 의견이다.", name: "암브로스 빌"),
        Quote(contents: "분노는 바보들의 가슴 속에서만 살아간다.", name: "아인슈타인"),
        Quote(contents: "몇 번이라도 좋다! 이 끔찍한 생이여... 다시!", name: "니체")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGenerator(_ sender: Any) {
        let random = Int(arc4random_uniform(5))
        self.quoteLabel.text = quotes[random].contents
        self.nameLabel.text = quotes[random].name
    }
    
}

