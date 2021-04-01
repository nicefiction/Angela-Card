//  ContentView.swift
import SwiftUI


struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            Color(red : 0.09 ,
                  green : 0.63 ,
                  blue : 0.52)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("angela-yu")
                    .resizable()
                    .aspectRatio(contentMode : .fit)
                    .frame(width : 250.0)
                    .clipShape(Circle())
                    .overlay(Circle()
                                .stroke(Color.white ,
                                        lineWidth : 6.0))
                Text("Angela Yu")
                    .font(Font.custom("Pacifico-Regular" ,
                                      size : 40.0))
                    .foregroundColor(.white)
                    .padding()
                
                Text("iOS Developer")
                    .font(.system(size : 25))
                    .foregroundColor(.white)
                
                Divider()
                
                
                InfoView(imageName : "phone.fill" ,
                         infoText : "0123 / 456 789")
                
                InfoView(imageName : "envelope.fill" ,
                         infoText : "angela@email.com")
            }
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView().previewDevice("iPhone 12 Pro")
    }
}
