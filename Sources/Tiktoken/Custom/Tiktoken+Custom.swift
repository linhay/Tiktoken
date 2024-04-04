//
//  File.swift
//  
//
//  Created by linhey on 2024/4/4.
//

import Foundation

public extension Tiktoken {
    
    func getEncoding(for vocab: Vocab, name: String, data: Data) -> Encoding? {
        guard let regex = try? NSRegularExpression(pattern: vocab.pattern) else { return nil }
        let encoder = Load.loadTiktokenBpe(data: data)
        let encoding = Encoding(name: name, regex: regex, mergeableRanks: encoder, specialTokens: vocab.specialTokens)
        return encoding
    }
    
    func useLocalVocabs() {
        Vocab.all = Vocab.allLocal
    }
    
}

