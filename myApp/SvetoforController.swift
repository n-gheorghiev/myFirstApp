//
//  ViewController.swift
//  myApp
//
//  Created by Home on 26.07.2023.
//

import UIKit
import SnapKit

class SvetoforController: UIViewController {
    
    private let svetoforView = SvetoforView()
    
    @IBOutlet weak var turnButton: UIButton!
    
    // MARK: - Системные функции

    // экран БЫЛ загружен
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSvetoforView()
    }
    
    // MARK: - Actions
    
    @IBAction func turnButtonAction(_ sender: Any) {
        svetoforView.switchMode()
    }
    
    // MARK: - Private
    
    private func configureSvetoforView() {
        view.addSubview(svetoforView)
        
        svetoforView.snp.makeConstraints { make in
            make.width.equalTo(300)
            make.height.greaterThanOrEqualTo(300)
            make.top.equalTo(64)
            make.centerX.equalToSuperview()
        }
    }
    
}
