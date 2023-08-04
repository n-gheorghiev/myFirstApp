//
//  ViewController.swift
//  myApp
//
//  Created by Home on 26.07.2023.
//

import UIKit
import SnapKit

class SvetoforController: UIViewController {

    @IBOutlet weak var firstSectionView: SvetoforSectionView!
    @IBOutlet weak var secondSectionView: SvetoforSectionView!
    @IBOutlet weak var thirdSectionView: SvetoforSectionView!
    
//    let blueView = UIView(frame: .zero)
    
    @IBOutlet weak var turnButton: UIButton!
        
    @IBOutlet weak var redViewHeightConstraint: NSLayoutConstraint!
    
    // MARK: - Системные функции

    // экран БЫЛ загружен
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let arrayView = [firstSectionView, secondSectionView, thirdSectionView]
//        
//        for view in arrayView {
//            configureView(view!)
//        }
        
//        blueView.backgroundColor = .blue
//        view.addSubview(blueView)
//
//        blueView.snp.makeConstraints { make in
//            make.width.height.equalTo(100)
//            make.centerX.equalToSuperview()
//            make.top.equalTo(greenView.snp.bottom).offset(32)
//        }
    }
    
    // MARK: - Пользовательские функции
    
//    func configureView(_ view: UIView) {
//        view.layer.cornerRadius = redViewHeightConstraint.constant / 2
//        view.layer.borderWidth = 2
//        view.layer.borderColor = UIColor.black.cgColor
//        view.backgroundColor = .clear
//    }
    
    // MARK: - Actions
    
    @IBAction func turnButtonAction(_ sender: Any) {
        if firstSectionView.backgroundColor == .clear && secondSectionView.backgroundColor == .clear && thirdSectionView.backgroundColor == .clear {
            firstSectionView.backgroundColor = .red
        } else if firstSectionView.backgroundColor == .red {
            firstSectionView.backgroundColor = .clear
            secondSectionView.backgroundColor = .orange
        } else if secondSectionView.backgroundColor == .orange {
            secondSectionView.backgroundColor = .clear
            thirdSectionView.backgroundColor = .green
        } else if thirdSectionView.backgroundColor == .green {
            thirdSectionView.backgroundColor = .clear
        }
    }
    
}
