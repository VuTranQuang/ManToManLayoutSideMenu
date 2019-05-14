//
//  PopUpView.swift
//  ManToManLayoutSideMenu
//
//  Created by Vu on 5/13/19.
//  Copyright © 2019 Vu. All rights reserved.
//

import Foundation
import UIKit


class PopUpView: UIView {
    
    @IBOutlet weak var coverButton: UIButton!
    @IBOutlet weak var neckView: UIView!
    
    
    var isOpen: Bool = false {
        didSet{
            coverButton.alpha = isOpen ? 0.6 : 0
            UIView.animate(withDuration: 0.35) {
                self.layoutIfNeeded()
            }
            if !isOpen {
                self.removeFromSuperview()
                selectedButton?.isSelected = false
            }
        }
        
    }
    
    weak var selectedButton: Button?
    func layoutWhenButtonClick(_ button: Button) {
        isOpen = true
        neckView.frame = CGRect(x: button.frame.minX + 4, y: 0, width: button.frame.width, height: 20)
        selectedButton = button
        
    }
    
    
    
    
    
    
    
    @IBAction func onClickCoverButton(_ sender: UIButton) {
        isOpen = false
    }
    
}
