//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by arun deshan on 2023-10-24.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @Binding var isShowingDetailsView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            FrameworkTitleView(framework: framework)
//            Spacer()
            Text(framework.description)
                .font(.body)
                .padding()
                .multilineTextAlignment(.center)
            Spacer()
            Button{
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
            .padding(.vertical, 10)
          
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: (URL(string: framework.urlString) ?? URL(string: "www.apple.com"))!)
        })
    }
}
//
#Preview {
    FrameworkDetailView(framework: MockData.sampleDataFramework, isShowingDetailsView: .constant(false))
}

