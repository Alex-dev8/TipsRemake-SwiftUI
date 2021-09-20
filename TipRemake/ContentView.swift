//
//  ContentView.swift
//  TipRemake
//
//  Created by Alex Cannizzo
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ListingView()
                .navigationTitle("Collections")
                //to have the white background behind the iOS14 image. otherwise it's gray
                .onAppear {
                    UITableView.appearance().backgroundColor = UIColor(named: "Background")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
