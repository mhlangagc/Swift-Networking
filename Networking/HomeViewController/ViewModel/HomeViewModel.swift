//
//  HomeViewModel.swift
//  Networking
//
//  Created by Gugulethu Mhlanga on 2021/12/15.
//

import Foundation

class HomeViewModel {
    
    private let networkController = NetworkController()
    weak var delegate: HomeViewProtocol?
    
    func fetchBitcoinData() {
        let urlPath = "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=zar&include_market_cap=true&include_24hr_vol=true&include_24hr_change=true&include_last_updated_at=true"
        let method = "GET"
        
        networkController.fetchNetwork(from: urlPath,
                                       with: method) { cryptoCurrency, error in
        
            DispatchQueue.main.async {
                guard let bitcoinPrice = cryptoCurrency?.bitcoin?.zar else {
                    return
                }

                self.delegate?.showBitcoinPrice(withPrice: bitcoinPrice)
            }
        
        }
    }
}
