//
//  HomeViewModel.swift
//  BitCoin
//
//  Created by Ambrose Mbayi on 30/07/2023.
//

import Foundation
import Combine


class HomeViewModel: ObservableObject {
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    @Published var searchText: String = ""
    
    private let dataService = CoinDataService()
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addScubscriber()
    }
    
    func addScubscriber() {
        // updates all Coins
        $searchText
            .combineLatest(dataService.$allCoins)
            .map(filterCoins)
           
            .sink {[weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
                
            }
            .store(in: &cancellables)
    }
    
    private func filterCoins(text: String, coins: [CoinModel]) -> [CoinModel] {
        guard !text.isEmpty else {
            return coins
        }
        
        let lowercasedText = text.lowercased()
      
        return coins.filter { (coin) -> Bool in
            return coin.name.lowercased().contains(lowercasedText) ||
            coin.symbol.lowercased().contains(lowercasedText) ||
            coin.id.lowercased().contains(lowercasedText)
        }
    }
}
