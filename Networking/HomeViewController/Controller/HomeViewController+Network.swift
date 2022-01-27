//
//  HomeViewController+Network.swift
//  Networking
//
//  Created by Gugulethu Mhlanga on 2021/12/15.
//

import Foundation
import UIKit

extension HomeViewController: HomeViewProtocol {
    func fetchBitcoinData() {
        viewModel.fetchBitcoinData()
    }
    
    func handleError(error: Error) {
        print("Show Error Popup")
    }
    
    func showBitcoinPrice(withPrice price: Int) {
        bitcoinPriceLabel.text = "R\(price)"
    }
}
