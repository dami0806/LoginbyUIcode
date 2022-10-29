//
//  ViewController.swift
//  Login
//
//  Created by 박다미 on 2022/10/29.
//

import UIKit

class ViewController: UIViewController {
    
    
    //
    //  ViewController.swift
    //  LoginProject
    //
    //  Created by 박다미 on 2022/10/28.
    //

  
        
        //closer을 이용해서 emailTextFieldView... 에 다음 속성들 넣기
        
        //email,전화번호 입력 텍스트 뷰
        //UIView
        private lazy var emailTextFieldView:UIView={
            let view = UIView() //closer 형태 -->emailTextFieldView실행문을 바로 볼수 있ㄷ
            
            view.translatesAutoresizingMaskIntoConstraints = false //필수 수동으로 하나하나 해야하기 때문에 auto를 false로 바꾼다.
            view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            view.layer.cornerRadius = 5;
            view.layer.masksToBounds = true;
            
            return view
        }()
        //UILabel
        private var emailInfoLable: UILabel = {
            let label = UILabel()
            label.text = "이메일주소 또는 전화번호"
            label.font = UIFont.systemFont(ofSize: 18)
            label.textColor = UIColor.lightGray
            return label
        
        }()
        
        
    //UITextField
        private lazy var emailTextField: UITextField = {
            var tf = UITextField()
            tf.frame.size.height = 48
            tf.backgroundColor = .clear
            tf.textColor = .white
            tf.tintColor = .white
            tf.autocapitalizationType = .none
            tf.autocorrectionType = .no //자동으로 고침
            tf.spellCheckingType = .no
            tf.keyboardType = .emailAddress
            
        
            return tf
        }()
        
        
        //비밀번호 입력하는 텍스트 뷰
        private lazy var passwordTextFieldview: UIView = {
            let view = UIView()
            view.layer.cornerRadius = 5
            view.clipsToBounds = true
            return view
            
        }()
      
        
        
        override func viewDidLoad() {
            
            super.viewDidLoad()
            
            makeUI()
            // Do any additional setup after loading the view.
        }
        func makeUI(){
            view.addSubview(emailTextFieldView)
         
        }


    }



