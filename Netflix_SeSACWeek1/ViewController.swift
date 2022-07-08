//
//  ViewController.swift
//  Netflix_SeSACWeek1
//
//  Created by KYUNGSUP GO on 2022/07/07.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet var previewMovieButton_Outlet: [UIButton]!
    @IBOutlet weak var mainMovie_outlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addPreviewMovieButtonAttribute()
        

    }

    
    @IBAction func chageImage_palybutton(_ sender: UIButton) {
        
        // imageview 의 image삽입과
        mainMovie_outlet.image = UIImage(named: "movie-\(Int.random(in: 1...21))")
        // UIButton의 iamge 삽입은 다르다 setImage() 사용
        for item in previewMovieButton_Outlet {
            item.setImage(UIImage(named: "movie-\(Int.random(in: 1...21))"), for: .normal)
        }
        
    }
    
    func addPreviewMovieButtonAttribute() {
        for item in previewMovieButton_Outlet {
            item.layer.cornerRadius = item.frame.size.width/2
            item.layer.borderColor = UIColor.darkGray.cgColor
            item.layer.borderWidth = 2
        }
    }
    
    
    

}

