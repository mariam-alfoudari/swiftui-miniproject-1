//
//  ContentView.swift
//  mini-project-swiftui
//
//  Created by mariam alfoudari on 01/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
//            Text("مرحباً بك يمكنك اختيار الدراجة المناسبة لك من القائمة وأكمل بياناتك للحجز")
                List{
                    Section(header: Text("مرحباً بك يمكنك اختيار الدراجة المناسبة لك من القائمة وأكمل بياناتك للحجز")
                                .foregroundColor(.black)) {
                    ForEach (bicycles) { bicycle in
                    
                    
                NavigationLink(
                    destination: BicycleDetailView(bicycle: bicycle, price: 0),
                    label: {
                        BicycleRow(Bicycle: bicycle)
                    })
                }
                }
                }
            .navigationTitle(" تـأجير الدراجات ")
        
        
    }
        .accentColor(.black)
}
}
struct ColorChange :ViewModifier {
    var Color :Color
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(width: 380, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color)
            .foregroundColor(.white)
            .cornerRadius(15)
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
            
    }
}
}
struct BicycleRow: View {
    let Bicycle : Bicycle
    var body: some View{
        HStack(alignment: .center){
            Text(Bicycle.numbers)
                .font(.subheadline)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .clipShape(Circle())
            Image(Bicycle.bicycle)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .clipShape(Rectangle())
            
            
            
        }
    }
}
