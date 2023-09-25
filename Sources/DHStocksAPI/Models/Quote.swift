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
    
    public init(z: String = "", tv: String = "", v: String = "", o: String = "", h: String = "", l: String = "", y: String = "", u: String = "", w: String = "", tlong: String = "", d: String = "", t: String = "", c: String = "", n: String = "", nf: String = "") {
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
}
