//
//  SvetoforSectionView.swift
//  myApp
//
//  Created by Home on 04.08.2023.
//

import UIKit

class SvetoforSectionView: UIView {
    
    var colorLight: UIColor?
    
    init(colorLight: UIColor) {
        super.init(frame: .zero)
        
        self.colorLight = colorLight
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Момент создания из сториборда объекта
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupView()
    }
    
    func setupView() {
        layer.cornerRadius = frame.size.width / 2
        layer.borderWidth = 2
        layer.borderColor = UIColor.black.cgColor
        backgroundColor = .clear
    }
    
    // Включение
    func turnOn() {
        backgroundColor = colorLight
    }
    
    // Выключение
    func turnOff() {
        backgroundColor = .clear
    }
    
    // Получение состояния секции на выключение
    func isOff() -> Bool {
        if backgroundColor == .clear {
            return true
        } else {
            return false
        }
    }
        
    // Получение состояния секции на включение
    func isOn() -> Bool {
        if backgroundColor == .clear {
            return false
        } else {
            return true
        }
        
//        return backgroundColor != .clear
    }
}
