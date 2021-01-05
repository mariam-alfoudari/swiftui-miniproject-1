//
//  BicycleDetailView.swift
//  mini-project-swiftui
//
//  Created by mariam alfoudari on 03/01/2021.
//

import SwiftUI

struct BicycleDetailView: View {
    let bicycle: Bicycle
    let price: Int
    @State var name : String = ""
    @State var number : String = ""
    @State var Hours = 0
    @State var AmountOfBc = 0
    @State var PaymentPrice = 0
    
    var body: some View {
        VStack {
                Image(bicycle.bicycle)
                    .resizable()
                    .scaledToFit()
            VStack{
        TextField("اسم المستلم ", text: $name)
            .foregroundColor(.black)
        TextField("الهاتف ", text: $number)
            .foregroundColor(.black)
            }
                HStack{
                    Stepper("", value: $Hours).labelsHidden()
                    Spacer()
                   
                    Text("عدد الساعات \(Hours)")
                }
            HStack{
                    Stepper("", value: $AmountOfBc).labelsHidden()
                    
                    Spacer()
                    Text("عدد الدرجات \(AmountOfBc)")
                
            }
               
                VStack{
                    Text("\(PaymentPrice(hours: Hours, amountOfBc: AmountOfBc, price: price))")
                    Text("المبلغ الكلي")
                }
                
                if (Hours != 0 && AmountOfBc != 0 && name != "" && number != ""){
                    NavigationLink(
                        destination: PaymentDetailView(payment: Payment(name: name, hour: Hours, number: number, price: PaymentPrice(hours: Hours, amountOfBc: AmountOfBc, price: price))),
                        label: {
                            Text("اضغط للمتابعة").modifier(ColorChange(Color: .blue))
                        })
                }
            }.padding(.all, 15.0)
            
            
        }
    func PaymentPrice(hours: Int , amountOfBc: Int ,price: Int) -> Int {
        let thePaymentPrice = price * amountOfBc * hours
        
        return thePaymentPrice
    }
    }

struct BicycleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BicycleDetailView(bicycle: bicycles[0], price: 14)
            
    }
}
