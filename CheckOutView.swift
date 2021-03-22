//
//  CheckOutView.swift
//  StartProject
//
//  Created by 박광규 on 2021/03/22.
//

import SwiftUI

struct CheckOutView: View {
    @EnvironmentObject var order: Order
    // paymennt types
    let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    @State private var paymentType = "Cash"
    
    
    var body: some View {
        VStack{
            Section{
                Picker("How do you want to pay?", selection: $paymentType){
                    ForEach(paymentTypes, id: \.self){
                        Text($0)
                    }
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CheckOutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckOutView()
            .environmentObject(Order())
    }
}
