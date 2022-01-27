//
//  BitcoinModel.swift
//  Networking
//
//  Created by Gugulethu Mhlanga on 2021/11/22.
//

import Foundation

// MARK: - CryptoCurrency
struct CryptoCurrency: Codable {
    var bitcoin: Bitcoin?
}

// MARK: - Bitcoin
struct Bitcoin: Codable {
    var zar: Int?
    var zarMarketCap: Double?
    var zar24HVol: Double?
    var zar24HChange: Double?
    var lastUpdatedAt: Int?

    enum CodingKeys: String, CodingKey {
        case zar
        case zarMarketCap = "zar_market_cap"
        case zar24HVol = "zar_24h_vol"
        case zar24HChange = "zar_24h_change"
        case lastUpdatedAt = "last_updated_at"
    }
}

/*
@propertyWrapper
struct RoundedDouble: Codable {
    private(set) var value: Double? = 0.0

    var wrappedValue: Double {
        get { value }
        set { value = Double(String(format: "%.2f", newValue)) ?? 0.0 }
        // if the value I get is a nil, then show me 0.0
    }

    init(wrappedValue initialValue: Double?) {
        self.wrappedValue = initialValue
    }
}
*/
