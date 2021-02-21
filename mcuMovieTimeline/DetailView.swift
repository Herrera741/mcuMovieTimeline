//
//  DetailView.swift
//  mcuMovieTimeline
//
//  Created by Sergio Herrera on 2/21/21.
//

import SwiftUI

struct DetailView: View {
    var data: Movie
    var body: some View {
        
        ZStack {
            
            Color("bgColor").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Image(data.image)
                    .resizable()
                    .frame(width: 300, height: 450)
                    .cornerRadius(15)
                
                VStack {
                    Text(data.title)
                        .foregroundColor(.white)
                        .font(.system(size: 25, weight: .bold))
                    
                    Text(String(data.year))
                        .foregroundColor(.white)
                        .font(.system(size: 25, weight: .bold))
                }
                .padding()
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(data: DataModel.data[0])
    }
}
