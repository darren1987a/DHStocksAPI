//
//  File.swift
//  
//
//  Created by Darren Huang on 2023/8/30.
//

import Foundation
import DHStocksAPI

@main
struct DHStocksExec {
    
    private static let api = DHStocksAPI()
    static func main() async {
        do {
            // Fetch AAPL stocks last 1 day
            let apple1dChart = try await api
                .fetchChartData(tickerSymbol: "AAPL", range: .oneDay)

            //print(apple1dChart ?? "Not Found")
            
            // Search Ticker using "TESLA" as Query
            let tickers = try await api
                .searchTickers(query: "TESLA")
            //print(tickers)
            
            // Fetch Quote Detail for multiple symbols
            // AAPL, TSLA, GOOG, MSFT
            let quotes = try await api
                .fetchQuotes(symbols: "tse_2330.tw")
            print(quotes)
            
        } catch {
            print(error.localizedDescription)
        }
    }
}
