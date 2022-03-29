//
//  SingleView.swift
//  Dropdown
//
//  Created by Erio Daniel Díaz on 29/03/2022.
//

import SwiftUI

struct SingleView: View {
    let countries = [
        Country(flag: "flag_sp", countryAbbreviation: "es"),
        Country(flag: "flag_uk", countryAbbreviation: "uk"),
    ]

        var body: some View {
            HStack {
                List(countries) { country in
                    CountryRow(country: country)
                }
            }
        }
}

struct SingleView_Previews: PreviewProvider {
    static var previews: some View {
        SingleView()
    }
}
