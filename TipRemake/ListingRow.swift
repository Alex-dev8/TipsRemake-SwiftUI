//
//  ListingRow.swift
//  TipRemake
//
//  Created by Alex Cannizzo on 20/09/2021.
//

import SwiftUI

struct ListingRow: View {
    var body: some View {
        HStack(spacing: 10) {
            Image("iPhone")
                .background(Color(white: 0.7).opacity(0.25))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            VStack(alignment: .leading) {
                Text("Welcometo iPhone")
                    .font(.title3)
                Text("Get to know your iPhone")
                Text("5 tips")
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ListingRow_Previews: PreviewProvider {
    static var previews: some View {
        ListingRow()
    }
}
