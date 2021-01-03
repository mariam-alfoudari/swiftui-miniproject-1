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
            List (bicycles) { bicycle in
                NavigationLink(
                    destination: BicycleDetailView(bicycle: bicycle),
                    label: {
                        BicycleRow(Bicycle: bicycle)
                    })
            }
            .navigationTitle("تاجير الدراجات ")
        }
        .accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
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
