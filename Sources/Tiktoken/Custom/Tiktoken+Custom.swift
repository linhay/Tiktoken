//
//  File.swift
//  
//
//  Created by linhey on 2024/4/4.
//

import Foundation

public extension Tiktoken {

    enum EncodeName: String {
        case gpt2 = "gpt2"
        case gpt3 = "gpt3"
        case gpt35Turbo = "gpt-3.5-turbo"
        case gpt4 = "gpt-4"
    }
    
    func getEncoding(_ name: EncodeName) async throws -> Encoding? {
       try await self.getEncoding(name.rawValue)
    }
    
}

