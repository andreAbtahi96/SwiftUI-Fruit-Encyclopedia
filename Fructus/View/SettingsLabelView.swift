//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Andre Abtahi on 7/2/21.
//

import SwiftUI

struct SettingsLabelView: View {
    // PROPERTIES
    var labelText: String
    var labelImage: String
    
    // BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }// HSTACK
    }// BODY
}


// PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
