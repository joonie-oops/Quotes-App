//
//  QuoteView.swift
//  Quotes App
//
//  Created by 박준우 on 2021/06/16.
//

import SwiftUI

struct QuoteView: View {
    
    var quote:Quote
    
    var body: some View {
        ZStack {
            Image(quote.image)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: UIScreen.main.bounds.width - 30, height: 400)
                .cornerRadius(20)
            VStack(alignment: .leading) {
                Text(quote.quotes[0]).font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .shadow(color: .black, radius: 15, x: 5, y: 5)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 40)
                Text("- \(quote.author)")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.lightGray))
                    .shadow(color: .black, radius: 5, x: 3, y: 3)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                    .padding(.top, 10)
            }
        }
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView(quote: DataService.getLocalData()[3])
    }
}
