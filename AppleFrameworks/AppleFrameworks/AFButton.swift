//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Jeffrey Sweeney on 1/8/24.
//

import SwiftUI

struct AFButton: View {
    let buttonLabel: String
    
    var body: some View {
        Text(buttonLabel)
            .padding()
            .frame(width: 280, height: 50)
            .background(Color(UIColor.systemRed))
            .foregroundStyle(.white)
            .fontWeight(.bold)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
    }
}

#Preview {
    AFButton(buttonLabel: "Hello, World!")
}
