//  InfoView.swift
import SwiftUI



struct InfoView: View {
    
    let imageName: String
    let infoText: String
    
    
    var body: some View {
        
        RoundedRectangle(cornerRadius : 25.0)
            .fill(Color.white)
            .frame(height : 50.0)
            .overlay(
                HStack {
                    Image(systemName : imageName)
                    Text(infoText)
                })
            .padding()
    }
}





struct InfoView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        InfoView(imageName : "phone.fill" ,
                 infoText : "0123 / 456 789")
            .previewLayout(.sizeThatFits)
    }
}
