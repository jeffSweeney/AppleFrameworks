//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Jeffrey Sweeney on 1/7/24.
//

import SwiftUI

struct FrameworkGridView: View {
    @Environment(\.colorScheme) var colorScheme
    
    let columns: [GridItem] = [
        .init(.flexible()),
        .init(.flexible()),
        .init(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 24) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink {
                            FrameworkDetailView(framework: framework)
                        } label: {
                            FrameworkItem(framework: framework)
                                .foregroundStyle(colorScheme == .dark ? .white : .black)
                        }
                    }
                }
                .padding(.top)
            }
            .navigationTitle("🍎 Frameworks")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    FrameworkGridView()
//        .colorScheme(.dark)
}
