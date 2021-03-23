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
    @State private var addLoyaltyDetails = false
    @State private var loyaltyNumber = ""
    @State private var tipAmount = 15
    
    let tipAmounts = [10, 15, 20, 25, 0]
    
    var body: some View {
        Form{
            Section{
                Picker("How do you want to pay?", selection: $paymentType){
                    ForEach(paymentTypes, id: \.self){
                        Text($0)
                    }
                }
                Toggle("Add iDine loyalty card", isOn:$addLoyaltyDetails.animation())
                if addLoyaltyDetails{
                    TextField("Enter your iDine ID", text:$loyaltyNumber)
                }
                
            }
            Section(header: Text("Add a tip?")){
                Picker("Percentage:", selection: $tipAmount){
                    ForEach(tipAmounts, id:\.self){
                        Text("\($0)")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            Section(header: Text("TOTLA: $100")){
                Button("Confirm Order"){
                    // place the order
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
