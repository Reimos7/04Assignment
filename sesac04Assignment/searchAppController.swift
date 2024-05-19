//
//  searchAppController.swift
//  sesac04Assignment
//
//  Created by 홍석평 on 5/19/24.
//

import UIKit

class searchAppController: UIViewController{
    
    // 텍스트필드, 검색버튼
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var searchButton: UIButton!
    
    // 결과 이미지, 결과 내용 텍스트
    @IBOutlet var resultImage: UIImageView!
    @IBOutlet var resultLabel: UILabel!
    
    // 레이블
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    @IBOutlet var label5: UILabel!
    @IBOutlet var label6: UILabel!
    @IBOutlet var label7: UILabel!
    @IBOutlet var label8: UILabel!
    @IBOutlet var label9: UILabel!
    @IBOutlet var label10: UILabel!
    
    // 신조어 배열
    var newCoinage = ["보배","디토","제곧내","당모치","내또출","구취","박박","마해자","중꺽마","스불재"]
    
    // 신조어 내용
    var newConinageResult = ["보조배터리!","어떤 상황을 동의할때 사용!","제목이 곧 내용!","당연히 모든 치킨은 옳다!","내일 또 출근함!","구독취소!","대박+대박이 합쳐진 최고라는 의미!","마스크에 미모가 가려진 사람!","중요한건 꺽이지 않는 마음!","스스로 불러온 재앙!"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 텍스트 필드 초기 화면 텍스트 및 스타일
        searchTextField.borderStyle = .bezel
        searchTextField.placeholder = "신조어를 검색해 주세요!"
        
        // 검색 결과 배경 이미지
        resultImage.image = UIImage(named: "myback")
        
        
        // 검색 결과 초기 화면 텍스트
        resultLabel.text = "신조어를 검색해 주세요!"
        labelTextSet()
        
        // 버튼 이미지
        searchButton.setImage(.searchButton, for: .normal)
        
        // 레이블 초기 설정 및 테두리 효과
        label1.text = newCoinage[0]
        label1.textAlignment = .center
        label1.layer.cornerRadius = 10
        label1.layer.borderWidth = 2
        label1.layer.borderColor = UIColor.black.cgColor
        
        label2.text = newCoinage[1]
        label2.textAlignment = .center
        label2.layer.cornerRadius = 10
        label2.layer.borderWidth = 2
        label2.layer.borderColor = UIColor.black.cgColor
        
        label3.text = newCoinage[2]
        label3.textAlignment = .center
        label3.layer.cornerRadius = 10
        label3.layer.borderWidth = 2
        label3.layer.borderColor = UIColor.black.cgColor
        
        label4.text = newCoinage[3]
        label4.textAlignment = .center
        label4.layer.cornerRadius = 10
        label4.layer.borderWidth = 2
        label4.layer.borderColor = UIColor.black.cgColor
        
        label5.text = newCoinage[4]
        label5.textAlignment = .center
        label5.layer.cornerRadius = 10
        label5.layer.borderWidth = 2
        label5.layer.borderColor = UIColor.black.cgColor
        
        label6.text = newCoinage[5]
        label6.textAlignment = .center
        label6.layer.cornerRadius = 10
        label6.layer.borderWidth = 2
        label6.layer.borderColor = UIColor.black.cgColor
        
        label7.text = newCoinage[6]
        label7.textAlignment = .center
        label7.layer.cornerRadius = 10
        label7.layer.borderWidth = 2
        label7.layer.borderColor = UIColor.black.cgColor
        
        label8.text = newCoinage[7]
        label8.textAlignment = .center
        label8.layer.cornerRadius = 10
        label8.layer.borderWidth = 2
        label8.layer.borderColor = UIColor.black.cgColor
        
        label9.text = newCoinage[8]
        label9.textAlignment = .center
        label9.layer.cornerRadius = 10
        label9.layer.borderWidth = 2
        label9.layer.borderColor = UIColor.black.cgColor
        
        label10.text = newCoinage[9]
        label10.textAlignment = .center
        label10.layer.cornerRadius = 10
        label10.layer.borderWidth = 2
        label10.layer.borderColor = UIColor.black.cgColor
        
        // 키보드 return키를 통해 동작 처리 -> ui버튼 돋보기랑 같은 기능
        searchTextField.addTarget(self, action: #selector (searchTextFielAction)
                                  , for: UIControl.Event.primaryActionTriggered)
        
        // 탭을 통해 키보드 숨기기
        hideKeyboard()
        
    }
    
    // 검색 버튼 클릭시 (돋보기 버튼)
    @IBAction func searchButtonPressed(_ sender: UIButton) {
        
        resultScreen()
      
    }
    

    // 키보드 return키를 통해 동작 처리 -> ui버튼 돋보기 랑 같은 기능
    @objc func searchTextFielAction(textField: UITextField) {
        
        resultScreen()
    }
    
    
    // 검색한 내용을 배열과 비교 후 결과 화면에 출력
    func resultScreen(){
        
        // 결과 화면
        if searchTextField.text == newCoinage[0]{
            resultLabel.text = newConinageResult[0]
            labelTextSet()
            
        } else if searchTextField.text == newCoinage[1]{
            resultLabel.text = newConinageResult[1]
            labelTextSet()
            
        } else if searchTextField.text == newCoinage[2]{
            resultLabel.text = newConinageResult[2]
            labelTextSet()
            
        } else if searchTextField.text == newCoinage[3]{
            resultLabel.text = newConinageResult[3]
            labelTextSet()
            
        } else if searchTextField.text == newCoinage[4]{
            resultLabel.text = newConinageResult[4]
            labelTextSet()
            
        } else if searchTextField.text == newCoinage[5]{
            resultLabel.text = newConinageResult[5]
            labelTextSet()
            
        } else if searchTextField.text == newCoinage[6]{
            resultLabel.text = newConinageResult[6]
            resultLabel.textAlignment = .center
            resultLabel.font = .boldSystemFont(ofSize: 25)
            
        } else if searchTextField.text == newCoinage[7]{
            resultLabel.text = newConinageResult[7]
            labelTextSet()
            
        } else if searchTextField.text == newCoinage[8]{
            resultLabel.text = newConinageResult[8]
            labelTextSet()
            
        } else if searchTextField.text == newCoinage[9]{
            resultLabel.text = newConinageResult[9]
            labelTextSet()
            
        } else {
            resultLabel.text = "검색 결과가 없습니다😭"
            labelTextSet()
        }
    
    }
    
    // 레이블 글자 세팅 -> 가운데 정렬, 볼트체 폰트 30
    func labelTextSet(){
        resultLabel.textAlignment = .center
        resultLabel.font = .boldSystemFont(ofSize: 30)
    }
  
    // 화면 터치시 키보드 숨기기
    func hideKeyboard(){
        view.addGestureRecognizer(UITapGestureRecognizer(target: self,action: #selector (dismissKeyboard)))
    }
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    
    
}
