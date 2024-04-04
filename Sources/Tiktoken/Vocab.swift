//
//  Vocab.swift
//  
//
//  Created by Alberto Espinilla Garrido on 17/5/23.
//

import Foundation

public struct Vocab {
    public let name: String
    public let url: String
    public let explicitNVocab: Int?
    public let pattern: String
    public let specialTokens: [String: Int]
    
    public init(name: String,
                url: String,
                explicitNVocab: Int? = nil,
                pattern: String,
                specialTokens: [String : Int] = [:]) {
        self.name = name
        self.url = url
        self.explicitNVocab = explicitNVocab
        self.pattern = pattern
        self.specialTokens = specialTokens
    }
}
