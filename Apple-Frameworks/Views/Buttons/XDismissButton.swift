//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by arun deshan on 2023-10-24.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailsView: Bool
    
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingDetailsView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
                
        }
    }
}

#Preview {
    XDismissButton(isShowingDetailsView: .constant(false))
}
