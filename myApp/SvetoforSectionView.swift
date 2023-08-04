//
//  SvetoforSectionView.swift
//  myApp
//
//  Created by Home on 04.08.2023.
//

import UIKit

class SvetoforSectionView: UIView {
    
    // Момент создания из сториборда объекта
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = frame.size.width / 2
        layer.borderWidth = 2
        layer.borderColor = UIColor.black.cgColor
        backgroundColor = .clear
    }
}
