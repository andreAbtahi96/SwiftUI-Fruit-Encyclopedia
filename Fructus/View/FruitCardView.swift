//
//  FluidCardView.swift
//  Fructus
//
//  Created by Andre Abtahi on 6/19/21.
//

import SwiftUI

struct FruitCardView: View {
    //Mark - Properties
    
    //create a var: representation of previous fruit model
    var fruit: Fruit
    
    //grab user's attention
    @State private var isAnimating: Bool = false
    
    //Mark - Body

    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                
                //FRUIT: Image
                Image(fruit.image)
                .resizable()
                .scaledToFit()
                    .shadow(color: Color(red:0, green:0, blue:0, opacity: 0.15), radius: 8, x:6, y:8)
                    
                    /* Initially image is scaled down to 0.6 size. When isAnimating changes states from false to true then image scales up to full original size.
                    */
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
    
                //FRUIT: TITLE
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red:0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                //FRUIT: HEADLINE (2 lines is ideal)
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                //BUTTON: START - created from StartButtonView
                StartButtonView()
                
                
            }//: VSTACK
        }//: ZSTACK
        
        //when card appears, animate
        //this way V V V neglects the sizing of img
//        .onAppear{
//            withAnimation(.easeOut(duration:0.5)){
//                isAnimating = true
//            }
//
//            //switch state back
//            isAnimating = false
//        }
        
        //when card appears, animate image!
        //inquire more about "DispatchQueue.main.async"
        .onAppear{
            DispatchQueue.main.async{
                withAnimation(.easeOut(duration: 0.5)){
                    isAnimating = true
                }
            }
        }.onDisappear(){
            isAnimating = false
        }
    

        //.frame snippet creates a full onboarding screen:)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    
    }//:View
}

// Mark: - PREVIEW

struct FluidCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
