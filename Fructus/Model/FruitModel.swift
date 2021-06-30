//
//  FruitModel.swift
//  Fructus
//
//  Created by Andre Abtahi on 6/23/21.
//
//  This is a data blue print. Similar to a class

import SwiftUI

//  MARK: - FRUITS DATA MODEL
struct Fruit: Identifiable{
    
    //UUID = universally unique identifier. Generates random universal unique value.
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color] //array of color values
    var description: String
    var nutrition: [String]     //array of nutritional values in string (vitamins, etc)
}
