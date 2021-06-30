//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Andre Abtahi on 6/27/21.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        //Container(default is vertically) with sleek design
        GroupBox(){
            HStack{
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }//HSTACK
            .font(.footnote)
        }//GROUPBOX
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
