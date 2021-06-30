//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Andre Abtahi on 6/30/21.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    // PROPERTIES
    
    var fruit: Fruit
    
    // Array contains all label text
    let nutrients: [String] = [ "Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    // BODY
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g"){
                /*
                 This code will repeat the content as many times as many elements are in the nutrients array
                 We are using the strings themselves as an id from the array. That way the for loop can differentiate the
                 items!
                 */
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack{
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }// GROUP
                        // Modifiers for group
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            
        }// BOX
    }
}

// PREVIEW
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
