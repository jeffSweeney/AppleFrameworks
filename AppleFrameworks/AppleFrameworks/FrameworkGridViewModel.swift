//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Jeffrey Sweeney on 1/8/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    @Published var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
