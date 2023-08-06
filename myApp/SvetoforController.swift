//
//  ViewController.swift
//  myApp
//
//  Created by Home on 26.07.2023.
//

import UIKit
import SnapKit

class SvetoforController: UIViewController {

    var firstSectionView = SvetoforSectionView(colorLight: .red)
    var secondSectionView = SvetoforSectionView(colorLight: .orange)
    var thirdSectionView = SvetoforSectionView(colorLight: .green)
    
    let stackView = UIStackView(frame: .zero)
    
    @IBOutlet weak var turnButton: UIButton!
    
    // MARK: - Системные функции

    // экран БЫЛ загружен
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(stackView)
        
        stackView.spacing = 12
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        
        stackView.addArrangedSubview(firstSectionView)
        stackView.addArrangedSubview(secondSectionView)
        stackView.addArrangedSubview(thirdSectionView)
        
        stackView.snp.makeConstraints { make in
            make.width.equalTo(300)
            make.height.greaterThanOrEqualTo(300)
            make.top.equalTo(64)
            make.centerX.equalToSuperview()
        }
        
        firstSectionView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
        }
        
        secondSectionView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
        }
        
        thirdSectionView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
        }
        
        firstSectionView.turnOff()
        secondSectionView.turnOff()
        thirdSectionView.turnOff()
    }
    
    // MARK: - Actions
    
    @IBAction func turnButtonAction(_ sender: Any) {
        // Если ВСЕ секции выключены, то включи первую
        // если ПЕРВАЯ секция включена, то выключи первую, включи вторую
        // если ВТОРАЯ секция включена, то выключи вторую, включи третью
        // если ТРЕТЬЯ секция включена, то выключи третью, включи первую
        
        if firstSectionView.isOff() && secondSectionView.isOff() && thirdSectionView.isOff() {
            firstSectionView.turnOn()
        } else if firstSectionView.isOn() {
            firstSectionView.turnOff()
            secondSectionView.turnOn()
        } else if secondSectionView.isOn() {
            secondSectionView.turnOff()
            thirdSectionView.turnOn()
        } else if thirdSectionView.isOn() {
            thirdSectionView.turnOff()
            firstSectionView.turnOn()
        }
    }
    
}
