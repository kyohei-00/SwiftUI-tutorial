//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Kyohei Sakamoto on 2022/01/30.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView{
            List{
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame( height: 200 )
                    .clipped()
                
                ForEach(modelData.categories.keys.sorted(),id: \.self){ key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        }
        
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
