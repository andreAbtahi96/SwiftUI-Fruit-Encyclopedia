//
//  OnboardingView.swift
//  Fructus
//
//  Created by Andre Abtahi on 6/22/21.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    //create new property and initialized it with data
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        
        //Paging!
        TabView{
            //Recommeded only 4-5 slides for on boarding screen
            ForEach(fruits[0...5]){ item in
                //Custom View!
                FruitCardView(fruit: item)
            }//: LOOP
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: -PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
