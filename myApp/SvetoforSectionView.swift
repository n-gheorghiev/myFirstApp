//
//  SvetoforSectionView.swift
//  myApp
//
//  Created by Home on 04.08.2023.
//

import UIKit

enum Colors {
    case red
    case orange
    case green
    
    func color() -> UIColor {
        switch self {
            
        case .red:
            return UIColor.red
        case .orange:
            return UIColor.orange
        case .green:
            return UIColor.green
        }
    }
}

class SvetoforSectionView: UIView {
    
    private var colorLight: Colors?
    
    init(colorLight: Colors) {
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
    
    // MARK: - Public
    
    /// Здесь назначается цвет секции при создании вью через сториборд
    func setColorLight(_ colorLight: Colors) {
        self.colorLight = colorLight
    }
    
    // Включение
    func turnOn() {
        backgroundColor = colorLight?.color()
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
    
    // MARK: - Private
    
    func setupView() {
        layer.cornerRadius = frame.size.width / 2
        layer.borderWidth = 2
        layer.borderColor = UIColor.black.cgColor
        backgroundColor = .clear
    }
}
