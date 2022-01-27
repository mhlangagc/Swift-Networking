//
//  HomeViewProtocol.swift
//  Networking
//
//  Created by Gugulethu Mhlanga on 2021/12/15.
//

import Foundation

protocol HomeViewProtocol: AnyObject {
    func fetchBitcoinData()
    func handleError(error: Error)
    func showBitcoinPrice(withPrice price: Int)
}
