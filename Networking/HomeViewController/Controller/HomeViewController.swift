//
//  ViewController.swift
//  Networking
//
//  Created by Gugulethu Mhlanga on 2021/11/22.
//

import UIKit


class HomeViewController: BaseViewController {
    
    lazy var viewModel = HomeViewModel()
    
    lazy var bitcoinPriceLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.red
        label.text = "fetching data..."
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var showSuccessButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show Success", for: .normal)
        button.setTitleColor(.systemGreen, for: .normal)
        button.addTarget(self, action: #selector(handleNavigateToSuccessScreen), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        fetchBitcoinData()
        layoutView()
    }
    
    func layoutView() {
        view.addSubview(bitcoinPriceLabel)
        view.addSubview(showSuccessButton)
        
        bitcoinPriceLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bitcoinPriceLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        showSuccessButton.topAnchor.constraint(equalTo: bitcoinPriceLabel.bottomAnchor, constant: 20.0).isActive = true
        showSuccessButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

struct Vehicle {
    var name: String
    var type: String
}
