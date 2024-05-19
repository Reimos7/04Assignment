//
//  ViewController.swift
//  sesac04Assignment
//
//  Created by 홍석평 on 5/18/24.
//

import UIKit

class ViewController: UIViewController {
    
    // 버튼 클릭을 위한 변수
    var labelCount1 = 0
    var labelCount2 = 0
    var labelCount3 = 0
    var labelCount4 = 0
    var labelCount5 = 0
    var labelCount6 = 0
    var labelCount7 = 0
    var labelCount8 = 0
    var labelCount9 = 0
    
    // 버튼
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    
    // 레이블
    @IBOutlet weak var labelNum1: UILabel!
    @IBOutlet weak var labelNum2: UILabel!
    @IBOutlet weak var labelNum3: UILabel!
    @IBOutlet weak var labelNum4: UILabel!
    @IBOutlet weak var labelNum5: UILabel!
    @IBOutlet weak var labelNum6: UILabel!
    @IBOutlet weak var labelNum7: UILabel!
    @IBOutlet weak var labelNum8: UILabel!
    @IBOutlet weak var labelNum9: UILabel!
    
    // 배경화면
    @IBOutlet weak var backGroundImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarItem.title = "나의 감정 일기"
        
        // 배경화면 설정 꽉차게
        backGroundImage.image = #imageLiteral(resourceName: "paperback")
        backGroundImage.contentMode = .scaleAspectFill
        
        // 리셋 버튼 설정
        resetButton.setTitle("Reset", for: .normal)
        resetButton.backgroundColor = .yellow
      
        // 버튼 이미지
        button1.setBackgroundImage(.slime1, for: .normal)
        button2.setBackgroundImage(.slime2, for: .normal)
        button3.setBackgroundImage(.slime3, for: .normal)
        button4.setBackgroundImage(.slime4, for: .normal)
        button5.setBackgroundImage(.slime5, for: .normal)
        button6.setBackgroundImage(.slime6, for: .normal)
        button7.setBackgroundImage(.slime7, for: .normal)
        button8.setBackgroundImage(.slime8, for: .normal)
        button9.setBackgroundImage(.slime9, for: .normal)
        
        
        // 레이블 -> 텍스트 정렬, 글자 크기
        labelNum1.text = "행복해"
        labelNum1.textAlignment = .center
        labelNum1.font = .systemFont(ofSize: 20)
        
        labelNum2.text = "사랑해"
        labelNum2.textAlignment = .center
        labelNum2.font = .systemFont(ofSize: 20)
        
        labelNum3.text = "좋아해"
        labelNum3.textAlignment = .center
        labelNum3.font = .systemFont(ofSize: 20)
        
        labelNum4.text = "당황해"
        labelNum4.textAlignment = .center
        labelNum4.font = .systemFont(ofSize: 20)
        
        labelNum5.text = "속상해"
        labelNum5.textAlignment = .center
        labelNum5.font = .systemFont(ofSize: 20)
        
        labelNum6.text = "우울해"
        labelNum6.textAlignment = .center
        labelNum6.font = .systemFont(ofSize: 20)
        
        labelNum7.text = "심심해"
        labelNum7.textAlignment = .center
        labelNum7.font = .systemFont(ofSize: 20)
        
        labelNum8.text = "행복해"
        labelNum8.textAlignment = .center
        labelNum8.font = .systemFont(ofSize: 20)
        
        labelNum9.text = "행복해"
        labelNum9.textAlignment = .center
        labelNum9.font = .systemFont(ofSize: 20)
        
        // 네비게이션 바

        
        
    }
    
    
    // 버튼클릭 -> 숫자 증가 + 볼트체로 변경
    @IBAction func button1Pressed(_ sender: UIButton) {
        labelCount1 += 1
        labelNum1.text = "행복해 \(labelCount1)"
        labelNum1.font = .boldSystemFont(ofSize: 20)
    }
    @IBAction func button2Pressed(_ sender: UIButton) {
        labelCount2 += 1
        labelNum2.text = "사랑해 \(labelCount2)"
        labelNum2.font = .boldSystemFont(ofSize: 20)
    }
    @IBAction func button3Pressed(_ sender: UIButton) {
        labelCount3 += 1
        labelNum3.text = "좋아해 \(labelCount3)"
        labelNum3.font = .boldSystemFont(ofSize: 20)
    }
    @IBAction func button4Pressed(_ sender: UIButton) {
        labelCount4 += 1
        labelNum4.text = "당황해 \(labelCount4)"
        labelNum4.font = .boldSystemFont(ofSize: 20)
    }
    @IBAction func button5Pressed(_ sender: UIButton) {
        labelCount5 += 1
        labelNum5.text = "속상해 \(labelCount5)"
        labelNum5.font = .boldSystemFont(ofSize: 20)
    }
    @IBAction func button6Pressed(_ sender: UIButton) {
        labelCount6 += 1
        labelNum6.text = "우울해 \(labelCount6)"
        labelNum6.font = .boldSystemFont(ofSize: 20)
    }
    @IBAction func button7Pressed(_ sender: UIButton) {
        labelCount7 += 1
        labelNum7.text = "심심해 \(labelCount7)"
        labelNum7.font = .boldSystemFont(ofSize: 20)
    }
    @IBAction func button8Pressed(_ sender: UIButton) {
        labelCount8 += 1
        labelNum8.text = "행복해 \(labelCount8)"
        labelNum8.font = .boldSystemFont(ofSize: 20)
    }
    @IBAction func button9Pressed(_ sender: UIButton) {
        labelCount9 += 1
        labelNum9.text = "행복해 \(labelCount9)"
        labelNum9.font = .boldSystemFont(ofSize: 20)
    }
    
    
    
    
    // 리셋 버튼 클릭
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        labelNum1.text = "행복해"
        labelNum1.textAlignment = .center
        labelNum1.font = .systemFont(ofSize: 20)
        
        labelNum2.text = "사랑해"
        labelNum2.textAlignment = .center
        labelNum2.font = .systemFont(ofSize: 20)
        
        labelNum3.text = "좋아해"
        labelNum3.textAlignment = .center
        labelNum3.font = .systemFont(ofSize: 20)
        
        labelNum4.text = "당황해"
        labelNum4.textAlignment = .center
        labelNum4.font = .systemFont(ofSize: 20)
        
        labelNum5.text = "속상해"
        labelNum5.textAlignment = .center
        labelNum5.font = .systemFont(ofSize: 20)
        
        labelNum6.text = "우울해"
        labelNum6.textAlignment = .center
        labelNum6.font = .systemFont(ofSize: 20)
        
        labelNum7.text = "심심해"
        labelNum7.textAlignment = .center
        labelNum7.font = .systemFont(ofSize: 20)
        
        labelNum8.text = "행복해"
        labelNum8.textAlignment = .center
        labelNum8.font = .systemFont(ofSize: 20)
        
        labelNum9.text = "행복해"
        labelNum9.textAlignment = .center
        labelNum9.font = .systemFont(ofSize: 20)
        
        
    }
    
}
