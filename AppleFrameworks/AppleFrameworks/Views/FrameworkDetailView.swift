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
    
    var shadowColor: Color {
        return colorScheme == .dark ? .white : .gray
    }
    
    var body: some View {
        ScrollView {
            Spacer()
            
            FrameworkItem(framework: framework)
                .shadow(color: shadowColor, radius: 30)
                .padding(.vertical)
            
            Text(framework.description)
                .lineSpacing(5)
                .font(.body)
                .fontWeight(.semibold)
                .padding()
            
            Spacer()
            
            Link(destination: URL(string: framework.urlString)!, label: {
                AFButton(buttonLabel: "Learn More")
            })
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.frameworks.randomElement()!)
        .preferredColorScheme(.dark)
}
