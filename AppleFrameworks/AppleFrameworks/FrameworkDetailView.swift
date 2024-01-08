//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Jeffrey Sweeney on 1/7/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    @Environment(\.colorScheme) var colorScheme
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Spacer()
            
            FrameworkItem(framework: framework)
                .shadow(color: colorScheme == .dark ? .white : .gray, radius: 30)
                .padding(.vertical)
            
            Text(framework.description)
                .lineSpacing(5)
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding()
            
            Spacer()
            
            Link("Learn More", destination: URL(string: framework.urlString)!)
                .padding()
                .frame(width: 250)
                .background(Color(UIColor.systemRed))
                .foregroundStyle(.white)
                .fontWeight(.bold)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
        }
        .background(Color(.systemBackground))
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.frameworks.randomElement()!)
        .preferredColorScheme(.dark)
        
}
