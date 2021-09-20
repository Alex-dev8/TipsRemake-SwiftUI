//
//  ListingView.swift
//  TipRemake
//
//  Created by Alex Cannizzo on 20/09/2021.
//

import SwiftUI

struct ListingView: View {
    var body: some View {
        List {
            Section(header: NavigationLink(destination: DetailView()) {
                ZStack(alignment: .topLeading) {
                    Image("iOS14")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 250)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    VStack(alignment: .leading) {
                        Text("What's New")
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                        
                        Text("2 tips")
                            .foregroundColor(Color.white
                                                .opacity(0.8))
                    }
                    .offset(x: 15, y: 10)
                    //otherwise all caps
                    .textCase(.none)
                }
            }
            ) {
                ForEach(0..<30) { row in
                    NavigationLink(destination: DetailView()) {
                        ListingRow()
                    }
                    .listRowBackground(Color("Background"))
                }
            }
        }
        .listStyle(GroupedListStyle())
    }
}

struct ListingView_Previews: PreviewProvider {
    static var previews: some View {
        ListingView()
    }
}
