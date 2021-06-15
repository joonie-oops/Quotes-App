//
//  QuoteListView.swift
//  Quotes App
//
//  Created by 박준우 on 2021/06/16.
//

import SwiftUI

struct QuoteListView: View {
    var quote: Quote
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            Text(quote.author)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            ForEach(quote.quotes, id:\.self) { q in
                Text(q)
            }
        
            Spacer()
        }
        .padding(.horizontal, 20)
    }
}

struct QuoteListView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteListView(quote: DataService.getLocalData()[0])
    }
}
