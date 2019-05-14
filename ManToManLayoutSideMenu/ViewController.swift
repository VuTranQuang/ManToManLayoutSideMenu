//
//  ViewController.swift
//  ManToManLayoutSideMenu
//
//  Created by Vu on 5/13/19.
//  Copyright © 2019 Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headerView: UIView!
    @IBOutlet var popUpView: PopUpView!
    @IBOutlet var buttonColection: [Button]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onClickButton(_ sender: Button) {
        buttonColection.forEach {$0.isSelected = false}
        sender.isSelected = !sender.isSelected
        addPopUpView()
        popUpView.layoutWhenButtonClick(sender)
    }
    
  private func addPopUpView() {
    view.addSubview(popUpView)
    popUpView.fill(left: 0, top: nil, right: 0, bottom: -100)
    popUpView.topAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
    }
}

