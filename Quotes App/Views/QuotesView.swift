//
//  ContentView.swift
//  Quotes App
//
//  Created by 박준우 on 2021/06/15.
//

import SwiftUI

struct QuotesView: View {
    var model = QuoteModel()
    
    var body: some View {

        NavigationView {
            ScrollView {
                VStack(spacing: 20.0) {
                    
                    
                    ForEach(model.quotes) { quote in
                        NavigationLink(destination: QuoteListView(quote: quote)) {
                            QuoteView(quote: quote)
                        }
                    }
                    
                    
                }
            }.navigationBarTitle("Quotes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesView()
            .previewDevice("iPhone 12")
    }
}
