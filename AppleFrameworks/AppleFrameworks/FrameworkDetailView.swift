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
    @Binding var isShowing: Bool
    
    var shadowColor: Color {
        return colorScheme == .dark ? .white : .gray
    }
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button(action: {
                    isShowing = false
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                })
            }
            
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
            
            Button(action: {
                print("TAP: Learn More")
            }, label: {
                AFButton(buttonLabel: "Learn More")
            })
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.frameworks.randomElement()!, isShowing: .constant(true))
        .preferredColorScheme(.dark)
        
}
