//
//  SvetoforView.swift
//  myApp
//
//  Created by Home on 06.08.2023.
//

import UIKit
import SnapKit

class SvetoforView: UIView {
    
    private let sections: [SvetoforSectionView] = [SvetoforSectionView(colorLight: .red),
                                                   SvetoforSectionView(colorLight: .red),
                                                   SvetoforSectionView(colorLight: .green),
                                                   SvetoforSectionView(colorLight: .red),
                                                   SvetoforSectionView(colorLight: .green),
                                                   SvetoforSectionView(colorLight: .orange)]
    
    private let stackView = UIStackView(frame: .zero)
    
    init() {
        super.init(frame: .zero)
        
        configureStackView()
        setStartState()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public
    
    func switchMode() {
        // Если все секции не горят, то зажигаем первую
        // если секция горит, то мы её выключаем и зажигаем следующую
        
        if let indexOfFirstOnSection = sections.firstIndex(where: { $0.isOn() }), indexOfFirstOnSection < sections.count - 1 {
            // Секция горит
            sections[indexOfFirstOnSection].turnOff()
            sections[indexOfFirstOnSection + 1 ].turnOn()
        } else {
            // все секции не горят
//            sections[0].turnOn()
            sections.forEach({ $0.turnOff() })
            sections.first?.turnOn()
        }
    }
    
    // MARK: - Private
    
    private func configureStackView() {
        addSubview(stackView)
        
        stackView.spacing = 12
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        
        sections.forEach { section in
            stackView.addArrangedSubview(section)
            
            section.snp.makeConstraints { make in
                make.width.height.equalTo(100)
            }
        }
        
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    private func setStartState() {
//        firstSectionView.turnOff()
//        secondSectionView.turnOff()
//        thirdSectionView.turnOff()

//        for section in sections {
//            section.turnOff()
//        }
//
//        sections.forEach { section in
//            section.turnOff()
//        }
        
        sections.forEach({ $0.turnOff() })
    }
}
