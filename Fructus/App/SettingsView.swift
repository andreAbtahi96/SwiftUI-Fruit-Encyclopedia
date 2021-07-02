//
//  SettingsView.swift
//  Fructus
//
//  Created by Andre Abtahi on 7/2/21.
//

import SwiftUI

struct SettingsView: View {
    // PROPERTIES
    
    //property wrapper that let's us store values provided externally
    //ex: is user in light or dark mode? What time zone are they on? etc
    @Environment(\.presentationMode) var presentationMode
    // BODY
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    
                    // SECTION 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle" )
                    ){ // GroupBox
                        
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fats and sodium. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fibers, vitamins and much more!")
                                .font(.footnote)
                        }// HSTACK
                    }
                    // SECTION 2

                    
                    // SECTION 3

                }// VSTACK
                .navigationBarTitle(Text("Settings"),displayMode: .large)
                .navigationBarItems(
                trailing:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                    })// Button
                    )// .navigationBarItems
                    
            
                .padding()
            }// ScrollView
        }// NavigationView
    }
}

// PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
