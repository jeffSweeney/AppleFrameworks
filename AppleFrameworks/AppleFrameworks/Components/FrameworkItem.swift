//
//  FrameworkItem.swift
//  AppleFrameworks
//
//  Created by Jeffrey Sweeney on 1/7/24.
//

import SwiftUI

struct FrameworkItem: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 80, height: 80)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundStyle(Color(.label))
                .minimumScaleFactor(0.5)
                .lineLimit(1)
                .frame(width: 90)
        }
    }
}

#Preview {
    FrameworkItem(framework: MockData.frameworks.randomElement()!)
}
