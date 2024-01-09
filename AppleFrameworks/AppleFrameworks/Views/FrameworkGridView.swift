//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Jeffrey Sweeney on 1/7/24.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns, spacing: 24) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkItem(framework: framework)
                        }
                    }
                }
                .padding(.top)
            }
            .navigationTitle("🍎 Frameworks")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: Framework.self, destination: { framework in
                FrameworkDetailView(framework: framework)
            })
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
