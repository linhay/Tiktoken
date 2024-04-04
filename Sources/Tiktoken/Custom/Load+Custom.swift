//
//  File.swift
//  
//
//  Created by linhey on 2024/4/4.
//

import Foundation

extension Load {
    
    static func loadTiktokenBpe(data: Data, decoder: FileDecoder = FileDecoder()) -> [[UInt8]: Int] {
        return decoder.decode(data)
    }
    
}
