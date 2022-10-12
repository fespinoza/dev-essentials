//
//  File.swift
//  
//
//  Created by Felipe Espinoza on 24/07/2022.
//

import SwiftUI

public extension View {
    func frame(size: CGFloat, alignment: Alignment = .center) -> some View {
        frame(width: size, height: size, alignment: alignment)
    }
}
