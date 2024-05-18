//
//  searchAppController.swift
//  sesac04Assignment
//
//  Created by 홍석평 on 5/19/24.
//

import UIKit

class searchAppController: UIViewController {

    
    
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var searchButton: UIButton!
    
    @IBOutlet var resultImage: UIImageView!
    @IBOutlet var resultLabel: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 검색 결과 배경 이미지
        resultImage.image = UIImage(named: "myback")
        
        // 버튼 이미지
        searchButton.setImage(.search, for: .normal)
        
        // 검색 결과
        resultLabel.textAlignment = .center
        resultLabel.font = .systemFont(ofSize: 30)
        
        // 탭을 통해 키보드 숨기기
        hideKeyboard()
        
        
    }
    
    func hideKeyboard(){
        view.addGestureRecognizer(UITapGestureRecognizer(target: self,action: #selector (dismissKeyboard)))
            }
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }

    
    
    
    
    
    
    
   
}
