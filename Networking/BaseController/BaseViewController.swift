//
//  BaseViewController.swift
//  Networking
//
//  Created by Gugulethu Mhlanga on 2021/12/15.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    
    init(viewColour: UIColor = UIColor.white) {
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = viewColour
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc func handleDismiss() {
        self.dismiss(animated: true, completion: nil)
    }
}
