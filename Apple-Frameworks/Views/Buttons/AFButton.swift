//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by arun deshan on 2023-10-24.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .frame(width: 300, height: 50)
            .background(Color.red)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.title2)
            .fontWeight(.semibold)
    }
}

#Preview {
    AFButton(title: "Test title")
}
