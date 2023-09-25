//
//  File.swift
//  
//
//  Created by Darren Huang on 2023/8/30.
//

import Foundation

public struct QuoteResponse: Decodable {
    
    public let msgArray: [Quote]?
    public let error: ErrorResponse?
}

public struct Quote: Decodable, Identifiable, Hashable {
    
    public let id = UUID()      // UUID
    public let z: String        // 當前盤中成交價
    public let tv: String       // 當前盤中成交量
    public let v: String        // 累積成交量
    public let o: String        // 開盤價
    public let h: String        // 最高價
    public let l: String        // 最低價
    public let y: String        // 昨日收盤價
    public let u: String        // 漲停價
    public let w: String        // 跌停價
    public let tlong: String       // 資料更新時間(毫秒)
    public let d: String        // 最近交易日期
    public let t: String        // 最近成交時刻
    public let c: String        // 股票代號
    public let n: String        // 公司簡稱
    public let nf: String       // 公司全名
    
    public init(z: String, tv: String, v: String, o: String, h: String, l: String, y: String, u: String, w: String, tlong: String, d: String, t: String, c: String, n: String, nf: String) {
        self.z = z
        self.tv = tv
        self.v = v
        self.o = o
        self.h = h
        self.l = l
        self.y = y
        self.u = u
        self.w = w
        self.tlong = tlong
        self.d = d
        self.t = t
        self.c = c
        self.n = n
        self.nf = nf
    }
    
//    public let symbol: String
//
//    public let currency: String?
//    public let marketState: String?
//
//    public let fullExchangeName: String?
//    public let displayName: String?
//
//    public let regularMarketPrice: Double?
//    public let regularMarketChange: Double?
//    public let regularMarketChangePercent: Double?
//    public let regularMarketChangePreviousClose: Double?
//    public let regularMarketTime: Date?
//
//    public let postMarketPrice: Double?
//    public let postMarketChange: Double?
//
//    public let regularMarketOpen: Double?
//    public let regularMarketDayHigh: Double?
//    public let regularMarketDayLow: Double?
//
//    public let regularMarketVolume: Double?
//    public let trailingPE: Double?
//    public let marketCap: Double?
//
//    public let fiftyTwoWeekLow: Double?
//    public let fiftyTwoWeekHigh: Double?
//    public let averageDailyVolume3Month: Double?
//
//    public let trailingAnnualDividendYield: Double?
//    public let epsTrailingTwelveMonths: Double?
//
//    public init(symbol: String, currency: String? = nil, marketState: String? = nil, fullExchangeName: String? = nil, displayName: String? = nil, regularMarketPrice: Double? = nil, regularMarketChange: Double? = nil, regularMarketChangePercent: Double? = nil, regularMarketChangePreviousClose: Double? = nil, regularMarketTime: Date? = nil, postMarketPrice: Double? = nil, postMarketChange: Double? = nil, regularMarketOpen: Double? = nil, regularMarketDayHigh: Double? = nil, regularMarketDayLow: Double? = nil, regularMarketVolume: Double? = nil, trailingPE: Double? = nil, marketCap: Double? = nil, fiftyTwoWeekLow: Double? = nil, fiftyTwoWeekHigh: Double? = nil, averageDailyVolume3Month: Double? = nil, trailingAnnualDividendYield: Double? = nil, epsTrailingTwelveMonths: Double? = nil) {
//        self.symbol = symbol
//        self.currency = currency
//        self.marketState = marketState
//        self.fullExchangeName = fullExchangeName
//        self.displayName = displayName
//        self.regularMarketPrice = regularMarketPrice
//        self.regularMarketChange = regularMarketChange
//        self.regularMarketChangePercent = regularMarketChangePercent
//        self.regularMarketChangePreviousClose = regularMarketChangePreviousClose
//        self.regularMarketTime = regularMarketTime
//        self.postMarketPrice = postMarketPrice
//        self.postMarketChange = postMarketChange
//        self.regularMarketOpen = regularMarketOpen
//        self.regularMarketDayHigh = regularMarketDayHigh
//        self.regularMarketDayLow = regularMarketDayLow
//        self.regularMarketVolume = regularMarketVolume
//        self.trailingPE = trailingPE
//        self.marketCap = marketCap
//        self.fiftyTwoWeekLow = fiftyTwoWeekLow
//        self.fiftyTwoWeekHigh = fiftyTwoWeekHigh
//        self.averageDailyVolume3Month = averageDailyVolume3Month
//        self.trailingAnnualDividendYield = trailingAnnualDividendYield
//        self.epsTrailingTwelveMonths = epsTrailingTwelveMonths
//    }
    
}
