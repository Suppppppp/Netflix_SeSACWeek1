//
//  SinUpViewController.swift
//  Netflix_SeSACWeek1
//
//  Created by KYUNGSUP GO on 2022/07/08.
//

import UIKit

class SinUpViewController: UIViewController {

    @IBOutlet weak var emailAndPhonenumber_TextField: UITextField!
    @IBOutlet weak var password_TextField: UITextField!
    @IBOutlet weak var nickName_TextField: UITextField!
    @IBOutlet weak var location_TextField: UITextField!
    @IBOutlet weak var recommend_TextField: UITextField!
    
    @IBOutlet weak var switchOutlet: UISwitch!
    @IBOutlet weak var signUpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        basicSettingTo_TextField()
        signUpButtonCustom()
        switchSetting()
        
        emailAndPhonenumber_TextField.keyboardType = .numberPad
  
        

    }
    
    func basicSettingTo_TextField(){
        

        
        let textField_OutletGroup : [UITextField :String] =
        [
            emailAndPhonenumber_TextField:"이메일주소 또는 전화번호",
            password_TextField:"비밀번호",
            nickName_TextField:"닉네임",
            location_TextField:"위치",
            recommend_TextField:"추천 코드 입력"
        ]
        
        for (outlet,placeholder_message) in textField_OutletGroup {
            
            outlet.backgroundColor = .lightGray
            outlet.textColor = .white
            outlet.textAlignment = .center
            outlet.borderStyle = .roundedRect

            outlet.attributedPlaceholder =
            NSAttributedString (
                string: placeholder_message,
                attributes:[NSAttributedString.Key.foregroundColor: UIColor.white]
            )
            
            
            
    //        placeholder, keyboardType, isSecureTextEntry,
        }
        

        
    }
    

    func switchSetting() {
        
        switchOutlet.onTintColor = .red
        switchOutlet.tintColor = .yellow

        
        
    }
    func signUpButtonCustom(){
        
        signUpButton.setTitleColor(.black, for: .normal)
        signUpButton.setTitle("회원가입", for: .normal)
        signUpButton.layer.cornerRadius = 4
    }
    

    
 
    @IBAction func touchGesture(_ sender: UITapGestureRecognizer) {
        
        view.endEditing(true)
    }
    
    @IBAction func signUpButton_Action(_ sender: UIButton) {
        view.endEditing(true)
    }
    
}
