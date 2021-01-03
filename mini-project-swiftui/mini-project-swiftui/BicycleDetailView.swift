//
//  BicycleDetailView.swift
//  mini-project-swiftui
//
//  Created by mariam alfoudari on 03/01/2021.
//

import SwiftUI

struct BicycleDetailView: View {
    let bicycle: Bicycle
    var body: some View {
        ZStack {
            Group {
                Image(bicycle.bicycle)
                    .resizable()
                    .scaledToFit()
                Spacer()
            }.ignoresSafeArea()
            
            .padding()
            .foregroundColor(.white)
        }
    }
}
   

struct BicycleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BicycleDetailView(bicycle: bicycles[0])
    }
}
