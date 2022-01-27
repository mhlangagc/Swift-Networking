//
//  HomeViewController+Navigation.swift
//  Networking
//
//  Created by Gugulethu Mhlanga on 2021/12/15.
//

import Foundation
import UIKit

extension HomeViewController {
    @objc func handleNavigateToSuccessScreen() {
        let successViewController = SuccessViewController(viewColour: UIColor.systemBackground)
        
        let navigationController = UINavigationController(rootViewController: successViewController)
        navigationController.modalPresentationStyle = .fullScreen
        self.present(navigationController, animated: true) {
            print("Firebase Event Fired")
        }
    }
}
