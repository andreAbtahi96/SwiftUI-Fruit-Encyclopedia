//
//  ContentView.swift
//  Fructus
//
//  Created by Andre Abtahi on 6/19/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: -PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
    //array of fruits
    var fruits: [Fruit] = fruitsData
     
    // MARK: -BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                    //create navigation link
                    NavigationLink(
                        destination: FruitDetailView(fruit: item)){
                            FruitRowView(fruit: item)
                                .padding(.vertical, 4)
                        }//end of NavigationLink
                }//ForEach
            }//list
            .navigationTitle("Fruits")
            
            //SETTINGS BUTTON
            .navigationBarItems(
            trailing:
                Button(action: {
                    isShowingSettings = true
                },
                label: {
                    Image(systemName: "slider.horizontal.3")
                }
                )// Button
                .sheet(isPresented: $isShowingSettings){
                    SettingsView()
                }
            )//  navigationBarItems
        }//NavigationView
        .navigationViewStyle(StackNavigationViewStyle())

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
