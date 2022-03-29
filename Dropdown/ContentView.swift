//
//  ContentView.swift
//  Dropdown
//
//  Created by Erio Daniel Díaz on 29/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isExpanded = false
    @State private var selectedCountry = Country(flag: "flag_sp", countryAbbreviation: "es")
    let countries = [
        Country(flag: "flag_sp", countryAbbreviation: "es"),
        Country(flag: "flag_uk", countryAbbreviation: "uk"),
    ]
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            DisclosureGroup(isExpanded: $isExpanded, content: {
                ScrollView {
                    VStack {
                        ForEach(countries, id: \.self) { country in
                            HStack {
                                CountryRow(country: country)
                            }.onTapGesture {
                                self.selectedCountry = country
                                withAnimation {
                                    self.isExpanded.toggle()
                                }
                            }
                        }
                    }
                }
            }, label: {
                CountryRow(country: selectedCountry)
            })
            .frame(width: 100, alignment: .center)
            .accentColor(.black)
            .font(.title2)
            .foregroundColor(.black)
            .padding(.all)
            .background(.white)
            .cornerRadius(8)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
            Spacer()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
