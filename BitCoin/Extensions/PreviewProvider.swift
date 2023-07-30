//
//  PreviewProvider.swift
//  BitCoin
//
//  Created by Ambrose Mbayi on 30/07/2023.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}


class DeveloperPreview {
    static let instance = DeveloperPreview()
    
    private init() { }
    
    let coin = CoinModel(
        id: "bitcoin",
        symbol: "btc",
        name: "Bitcoin",
        image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
        currentPrice: 29258,
        marketCap: 568794987481,
        marketCapRank: 1,
        fullyDilutedValuation: 614342264460,
        totalVolume: 4172437767,
        high24H: 29368,
        low24H: 29247,
        priceChange24H: -21.9732411243931,
        priceChangePercentage24H: -0.07504,
        marketCapChange24H: -484899914.6600342,
        marketCapChangePercentage24H: -0.08518,
        circulatingSupply: 19443062,
        totalSupply: 21000000,
        maxSupply: 21000000,
        ath: 69045,
        athChangePercentage: -57.64248,
        athDate: "2021-11-10T14:24:11.849Z",
        atl: 67.81,
        atlChangePercentage: 43029.45088,
        atlDate: "2013-07-06T00:00:00.000Z",
        lastUpdated: "2023-07-30T11:06:27.635Z",
        sparklineIn7D: SparklineIn7D(price: [
              29956.00905000106,
              29919.262651279776,
              29897.83420055101
        ]),
        priceChangePercentage24HInCurrency: -0.07504458063602008,
        currentHoldings: 1.5)
}
