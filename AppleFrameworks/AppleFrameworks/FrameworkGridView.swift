//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Jeffrey Sweeney on 1/7/24.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = [
        .init(.flexible()),
        .init(.flexible()),
        .init(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, content: {
                ForEach(0 ... 100, id: \.self) { _ in
                    FrameworkItem(framework: MockData.frameworks.randomElement()!)
                }
            })
        }
    }
}

#Preview {
    FrameworkGridView()
}
