//
//  MarketDataModel.swift
//  BitCoin
//
//  Created by Ambrose Mbayi on 06/08/2023.
//

import Foundation
// JSON Data:
/*
  URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 
 {
   "data": {
     "active_cryptocurrencies": 10015,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 795,
     "total_market_cap": {
       "btc": 41629980.51768179,
       "eth": 660265571.8985299,
       "ltc": 14537265236.694008,
       "bch": 5318414095.380057,
       "bnb": 4939935291.9458475,
       "eos": 1660231975740.9382,
       "xrp": 1907102708030.295,
       "xlm": 8486340091534.024,
       "link": 168449246639.6683,
       "dot": 241771051505.57382,
       "yfi": 188654581.82340994,
       "usd": 1210066089771.4739,
       "aed": 4444615100043.772,
       "ars": 337971458873173.2,
       "aud": 1837606363926.9639,
       "bdt": 130910793000625.58,
       "bhd": 456226377562.1801,
       "bmd": 1210066089771.4739,
       "brl": 5897136081892.291,
       "cad": 1619612957854.631,
       "chf": 1055912140397.2183,
       "clp": 1030855301876318,
       "cny": 8676536883488.41,
       "czk": 26647832205663.395,
       "dkk": 8189727295573.335,
       "eur": 1097473070316.5106,
       "gbp": 949220613262.0686,
       "hkd": 9451281697464.586,
       "huf": 428363395779101.6,
       "idr": 18336010451698200,
       "ils": 4420032607430.074,
       "inr": 100044210580904.67,
       "jpy": 171532916873563.78,
       "krw": 1577974583705595,
       "kwd": 372125574256.97327,
       "lkr": 385555504854962.8,
       "mmk": 2541829969800116,
       "mxn": 20666113714162.133,
       "myr": 5511246005864.205,
       "ngn": 925450385981582.2,
       "nok": 12269102097410.955,
       "nzd": 1983896093783.797,
       "php": 67205261577103.74,
       "pkr": 343093696462695.7,
       "pln": 4874285367199.829,
       "rub": 116015081516575.73,
       "sar": 4539046237557.346,
       "sek": 12806492447878.469,
       "sgd": 1620399500812.9841,
       "thb": 41914701211098.625,
       "try": 32600025084574.215,
       "twd": 38318557831748.414,
       "uah": 44705855384624.42,
       "vef": 121163917568.81798,
       "vnd": 28722201815378680,
       "zar": 22348662209345.777,
       "xdr": 894393728800.6107,
       "xag": 51201320745.26522,
       "xau": 622845217.7271731,
       "bits": 41629980517681.79,
       "sats": 4162998051768179
     },
     "total_volume": {
       "btc": 825255.2368809512,
       "eth": 13088827.190539377,
       "ltc": 288180636.1022336,
       "bch": 105430005.72026853,
       "bnb": 97927200.9940003,
       "eos": 32911740898.737125,
       "xrp": 37805602536.93546,
       "xlm": 168229639202.3682,
       "link": 3339267066.891684,
       "dot": 4792767709.714499,
       "yfi": 3739809.1393587957,
       "usd": 23987841578.062138,
       "aed": 88108181690.6776,
       "ars": 6699804152752.766,
       "aud": 36427936220.44524,
       "bdt": 2595120539201.743,
       "bhd": 9044039958.810463,
       "bmd": 23987841578.062138,
       "brl": 116902347146.52783,
       "cad": 32106526560.157307,
       "chf": 20931958475.908104,
       "clp": 20435242240351.12,
       "cny": 172000020467.17917,
       "czk": 528255425675.928,
       "dkk": 162349711800.32455,
       "eur": 21755844882.748253,
       "gbp": 18816950483.970387,
       "hkd": 187358236037.53326,
       "huf": 8491695918633.994,
       "idr": 363485364648218.44,
       "ils": 87620868689.01945,
       "inr": 1983234382404.8901,
       "jpy": 3400396449555.106,
       "krw": 31281104931456.19,
       "kwd": 7376860981.293574,
       "lkr": 7643090280926.111,
       "mmk": 50388169001125.1,
       "mxn": 409676352390.9346,
       "myr": 109252624467.28456,
       "ngn": 18345739488886.21,
       "nok": 243217523328.28815,
       "nzd": 39327922340.18349,
       "php": 1332248859422.4177,
       "pkr": 6801345237873.055,
       "pln": 96625784478.21594,
       "rub": 2299834215345.342,
       "sar": 89980144871.74615,
       "sek": 253870523773.1056,
       "sgd": 32122118657.18308,
       "thb": 830899420240.365,
       "try": 646249195626.4165,
       "twd": 759610985331.7054,
       "uah": 886230087466.2587,
       "vef": 2401902577.211368,
       "vnd": 569376856970308.1,
       "zar": 443030486591.56683,
       "xdr": 17730085369.909927,
       "xag": 1014993462.759477,
       "xau": 12347021.817060145,
       "bits": 825255236880.9512,
       "sats": 82525523688095.12
     },
     "market_cap_percentage": {
       "btc": 46.71963512387216,
       "eth": 18.19886502653107,
       "usdt": 6.9260341355554855,
       "bnb": 3.114456213763526,
       "xrp": 2.765520882287957,
       "usdc": 2.1523675613286506,
       "steth": 1.2083096236830972,
       "doge": 0.8756152412750523,
       "ada": 0.8532927486114397,
       "sol": 0.7809081602505614
     },
     "market_cap_change_percentage_24h_usd": 0.5688351569341124,
     "updated_at": 1691311298
   }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}


struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
        
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { (key, value) -> Bool in
            return key == "usd"
        }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
     
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}

