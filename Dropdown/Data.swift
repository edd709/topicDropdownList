//
//  Data.swift
//  Dropdown
//
//  Created by Erio Daniel Díaz on 29/03/2022.
//

import Foundation
import SwiftUI

struct Country: Identifiable, Hashable {
    let id = UUID()
    let flag: String
    let countryAbbreviation: String
}

struct CountryRow: View {
    var country: Country
    
    var body: some View {
        HStack {
            Image("\(country.flag)")
            Text("\(country.countryAbbreviation)")
        }
    }
}
