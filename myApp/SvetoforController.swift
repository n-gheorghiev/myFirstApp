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
    
    @IBOutlet weak var turnButton: UIButton!
        
    @IBOutlet weak var redViewHeightConstraint: NSLayoutConstraint!
    
    // MARK: - Системные функции

    // экран БЫЛ загружен
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstSectionView.turnOff()
        secondSectionView.turnOff()
        thirdSectionView.turnOff()
        
        firstSectionView.colorLight = .red
        secondSectionView.colorLight = .orange
        thirdSectionView.colorLight = .green
    }
    
    // MARK: - Пользовательские функции
    
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
