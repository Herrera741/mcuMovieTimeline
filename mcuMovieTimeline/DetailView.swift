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
        VStack {
            Image(data.image)
                .resizable()
                .frame(width: 300, height: 450)
                .cornerRadius(15)
            
            VStack {
                Text(data.title)
                    .font(.system(size: 20))
                
                Text(String(data.year))
                    .font(.system(size: 20))
            }
            .padding()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(data: DataModel.data[0])
    }
}
