//
//  SuccessViewController.swift
//  Networking
//
//  Created by Gugulethu Mhlanga on 2021/12/15.
//

import Foundation
import UIKit

final class SuccessViewController: BaseViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera,
                                                                 target: self,
                                                                 action: #selector(handleDismiss))
        
    }
}
