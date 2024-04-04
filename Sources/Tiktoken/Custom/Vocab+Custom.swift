//
//  File.swift
//  
//
//  Created by linhey on 2024/4/4.
//

import Foundation

public extension Vocab {
    
    static var allLocal: [Vocab] = [.gpt2Local, .r50kBaseLocal, .p50kBaseLocal, .p50kEditLocal, .cl100kBaseLocal]

    
    
    static var gpt2Local: Vocab {
        .init(name: "gpt2",
              url: Bundle.module.url(forResource: "vocab", withExtension: "bpe")!.absoluteString,
              explicitNVocab: 50257,
              pattern: "/'s|'t|'re|'ve|'m|'ll|'d| ?\\p{L}+| ?\\p{N}+| ?[^\\s\\p{L}\\p{N}]+|\\s+(?!\\S)|\\s+/gu",
              specialTokens: ["<|endoftext|>": 50256])
    }
    
    static var r50kBaseLocal: Vocab {
        .init(name: "r50k_base",
              url: Bundle.module.url(forResource: "r50k_base", withExtension: "tiktoken")!.absoluteString,
              explicitNVocab: 50257,
              pattern: "/'s|'t|'re|'ve|'m|'ll|'d| ?\\p{L}+| ?\\p{N}+| ?[^\\s\\p{L}\\p{N}]+|\\s+(?!\\S)|\\s+/gu",
              specialTokens: ["<|endoftext|>": 50256])
    }
    
    static var p50kBaseLocal: Vocab {
        .init(name: "p50k_base",
              url: Bundle.module.url(forResource: "p50k_base", withExtension: "tiktoken")!.absoluteString,
              explicitNVocab: 50281,
              pattern: "/'s|'t|'re|'ve|'m|'ll|'d| ?\\p{L}+| ?\\p{N}+| ?[^\\s\\p{L}\\p{N}]+|\\s+(?!\\S)|\\s+/gu",
              specialTokens: ["<|endoftext|>": 50256])
    }
    
    static var p50kEditLocal: Vocab {
        .init(name: "p50k_edit",
              url: Bundle.module.url(forResource: "p50k_base", withExtension: "tiktoken")!.absoluteString,
              pattern: "/'s|'t|'re|'ve|'m|'ll|'d| ?\\p{L}+| ?\\p{N}+| ?[^\\s\\p{L}\\p{N}]+|\\s+(?!\\S)|\\s+/gu",
              specialTokens: [
                "<|endoftext|>": 50256,
                "<|fim_prefix|>": 50281,
                "<|fim_middle|>": 50282,
                "<|fim_suffix|>": 50283
              ])
    }
    
    static var cl100kBaseLocal: Vocab {
        .init(name: "cl100k_base",
              url: Bundle.module.url(forResource: "cl100k_base", withExtension: "tiktoken")!.absoluteString,
              pattern: "/(?i:'s|'t|'re|'ve|'m|'ll|'d)|[^\\r\\n\\p{L}\\p{N}]?\\p{L}+|\\p{N}{1,3}| ?[^\\s\\p{L}\\p{N}]+[\\r\\n]*|\\s*[\\r\\n]+|\\s+(?!\\S)|\\s+/gu",
              specialTokens: [
                "<|endoftext|>": 100257,
                "<|fim_prefix|>": 100258,
                "<|fim_middle|>": 100259,
                "<|fim_suffix|>": 100260,
                "<|endofprompt|>": 100276
              ])
    }
}
