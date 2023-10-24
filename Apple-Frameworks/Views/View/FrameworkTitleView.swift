import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View{
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 60, height: 60)
            Text(framework.name)
                .font(.title3)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding(.horizontal, 5)
            Spacer()
        }
    }
    
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleDataFramework)
}
