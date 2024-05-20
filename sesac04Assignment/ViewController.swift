//
//  ViewController.swift
//  sesac04Assignment
//
//  Created by 홍석평 on 5/18/24.
//

import UIKit

class ViewController: UIViewController {
    
    // 버튼 클릭을 위한 변수
    var labelCount = [0,0,0,0,0,0,0,0,0]
    
    var labelTitle = ["행복해","사랑해","좋아해","당황해","속상해","우울해","심심해","행복해","사랑해"]
    
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
    
    // 연결하는 순서대로 인덱스 부여 .. 자주 사용x
    // 아웃렛 컬렉션을 배열처럼 활용가능
    @IBOutlet var labelList: [UILabel]!
    
    // 배경화면
    @IBOutlet weak var backGroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.topItem?.title = "나의 감정 일기"
        // 네비게이션 옆에 버튼 만들기
        
        // 배경화면 설정 꽉차게
        backGroundImage.image = #imageLiteral(resourceName: "paperback")
        backGroundImage.contentMode = .scaleAspectFill
        
        // 리셋 버튼 설정
        resetButton.setTitle("Reset", for: .normal)
        resetButton.backgroundColor = .yellow
      
        // 버튼 이미지
        buttonSet(button1, .slime1)
        buttonSet(button2, .slime2)
        buttonSet(button3, .slime3)
        buttonSet(button4, .slime4)
        buttonSet(button5, .slime5)
        buttonSet(button6, .slime6)
        buttonSet(button7, .slime7)
        buttonSet(button8, .slime8)
        buttonSet(button9, .slime9)
        
        // 레이블 -> 텍스트 정렬, 글자 크기
        for i in 0...8{
            designLabelUI(labelList[i], labelTitle[i] )
        }
    }
    
    // 버튼클릭 -> 숫자 증가 + 볼트체로 변경
  
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        // if문으로 작성한걸 아래처럼 가능!
        //        if sender.tag == 0{
        //            labelCount[sender.tag] = labelCount[sender.tag] + 1
        //        } else if sender.tag == 1 {
        //            labelCount[sender.tag] = labelCount[sender.tag] + 1
        //        }
        
        // tag를 이용한 카운트 1씩 증가
        labelCount[sender.tag] = labelCount[sender.tag] + 1
        
        // tag를 이용해 레이블에 카운트 1씩 증가된것을 표시
        labelList[sender.tag].text = labelTitle[sender.tag]+"\(labelCount[sender.tag])"
    }
    
   
    // 리셋 버튼 클릭
    @IBAction func resetButtonPressed(_ sender: UIButton) {
      
        for i in 0...8{
            designLabelUI(labelList[i], labelTitle[i] )
        }
    }
    
    // 디자인 레이블
    func designLabelUI(_ labelNum: UILabel, _ labelText: String){
        
        labelNum.text = labelText
        labelNum.textAlignment = .center
        labelNum.font = .systemFont(ofSize: 20)

    }
    func buttonSet(_ button: UIButton , _ image: UIImage){
        
        button.setBackgroundImage(image, for: .normal)
    }
}
