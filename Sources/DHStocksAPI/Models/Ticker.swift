//
//  File.swift
//  
//
//  Created by Darren Huang on 2023/8/30.
//

import Foundation

public struct SearchTickersResponse: Decodable {
    public let data: [Ticker]?
    public let code: Int
    public let msg: String
    public let error: ErrorResponse?
}

public struct Ticker: Codable, Identifiable, Hashable, Equatable {
    public let id: Int
    public let no: String
    public let name: String
    public let marketCategory: String
    public let industryCategory: String

    public init(id: Int, no: String, name: String, marketCategory: String, industryCategory: String) {
        self.id = id
        self.no = no
        self.name = name
        self.marketCategory = marketCategory
        self.industryCategory = industryCategory
    }
}
