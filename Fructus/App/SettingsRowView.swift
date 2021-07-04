//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Andre Abtahi on 7/3/21.
//

import SwiftUI

struct SettingsRowView: View {
    
    // PROPERTIES
    
    var name: String
    var content: String? = nil //"?" means it may or maynot
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!) //display simple static text. ! is safe on this string.
                }
                //if label and link isn't empty
                else if(linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else{
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/ //for safety purposes
                }
            }// HSTACK
        }// VSTACK
    }
}

// PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            //when name and content are there
            SettingsRowView(name: "Developer", content: "Andre Abtahi")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            
            //when linkLabel and linkDestination
            SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            
            //when content is empty
            SettingsRowView(name: "")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
    
}
