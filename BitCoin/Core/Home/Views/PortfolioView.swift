//
//  PortfolioView.swift
//  BitCoin
//
//  Created by Ambrose Mbayi on 06/08/2023.
//

import SwiftUI

struct PortfolioView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @EnvironmentObject private var vm: HomeViewModel
    @State private var selectedCoin: CoinModel? = nil
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 0)
                {
                    SearchBarView(searchText: $vm.searchText)
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 10){
                            ForEach(vm.allCoins) { coin in
                               CoinLogoView(coin: coin)
                                  .frame(width: 75)
                                  .padding(4)
                                  .onTapGesture {
                                      withAnimation(.easeIn) {
                                          selectedCoin = coin
                                      }
                                  }
                                  .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(selectedCoin?.id == coin.id ? Color.theme.green: Color.clear, lineWidth: 1)
                                  )
                                
                            }
                        }
                        .padding(.vertical, 4)
                        .padding(.leading)
                    }
                }
            }
            .navigationTitle("Edit Portfolio")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                    })
                }
            }
        }
        
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .environmentObject(dev.homeVM)
    }
}
