//
//  ViewController.swift
//  myApp
//
//  Created by Home on 26.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var turnButton: UIButton!
        
    // MARK: - Системные функции

    // экран БЫЛ загружен
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let arrayView = [redView, orangeView, greenView]
        
        for view in arrayView {
            configureView(view!)
        }
        
//        configureView(redView)
//        configureView(orangeView)
//        configureView(greenView)
    }
    
    // MARK: - Пользовательские функции
    
    func configureView(_ view: UIView) {
        view.layer.cornerRadius = 100
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.black.cgColor
        view.backgroundColor = .clear
    }
    
    // MARK: - Actions
    
    @IBAction func turnButtonAction(_ sender: Any) {
        if redView.backgroundColor == .clear && orangeView.backgroundColor == .clear && greenView.backgroundColor == .clear {
            redView.backgroundColor = .red
        } else if redView.backgroundColor == .red {
            redView.backgroundColor = .clear
            orangeView.backgroundColor = .orange
        } else if orangeView.backgroundColor == .orange {
            orangeView.backgroundColor = .clear
            greenView.backgroundColor = .green
        } else if greenView.backgroundColor == .green {
            greenView.backgroundColor = .clear
        }
    }
    
}
