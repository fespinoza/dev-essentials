//
//  File.swift
//  
//
//  Created by Felipe Espinoza on 19/07/2022.
//

import Foundation

public extension String {
    var titleize: String {
        prefix(1).uppercased() + dropFirst()
    }
}
