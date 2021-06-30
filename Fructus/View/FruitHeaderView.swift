//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Andre Abtahi on 6/27/21.
//

import SwiftUI

struct FruitHeaderView: View {
    //PROPERTIES
    var fruit: Fruit
    
    //Property that stores animation scale effect
    @State private var isAnimatingImage: Bool = false
    
    //BODY
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8 )
                .padding(.vertical, 20) //padding mostly useful on ipad screen
            
                //adding scale effect modifier
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }//ZSTACK
        .frame(height: 440)
        .onAppear(){
            DispatchQueue.main.async {
                withAnimation(.easeOut(duration: 0.5)){
                    isAnimatingImage = true
                }//withAnimation
            }//DispatchQueue
        }//OnAppear
    }//view
}

//PREVIEW

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
