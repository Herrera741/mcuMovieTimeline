//
//  ContentView.swift
//  mcuMovieTimeline
//
//  Created by Sergio Herrera on 2/20/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var movies = DataModel.data
    @State var menu = 0
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color("bgColor").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                // main screen container
                VStack {
                    // header title and search button
                    HStack {
                        Text("MCU Timeline")
                            .italic()
                            .font(.system(size: 35, weight: .heavy))
                            .foregroundColor(.white)
                            .padding()
                            .shadow(color: .black, radius: 3, x: 3, y: 3)
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Image(systemName: "magnifyingglass")
                                .scaleEffect(1.3)
                                .padding()
                        }
                        .foregroundColor(.blue)
                    }
                    
                    // sort buttons
                    HStack {
                        Button(action: {
                            self.menu = 0
                            movies.sort(by: {$0.id < $1.id})
                        }) {
                            Text("Timeline")
                                .foregroundColor(self.menu == 0 ? .white : .black)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 20)
                        }
                        .background(self.menu == 0 ? Color("imRed") : Color("imYellow"))
                        .clipShape(Capsule())
                        
                        Button(action: {
                            self.menu = 1
                            movies.sort(by: {$0.year < $1.year})
                        }) {
                            Text("Year")
                                .foregroundColor(self.menu == 1 ? .white : .black)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 20)
                        }
                        .background(self.menu == 1 ? Color("imRed") : Color("imYellow"))
                        .clipShape(Capsule())
                        
                        Button(action: {
                            self.menu = 2
                            movies.sort(by: {$0.title < $1.title})
                        }) {
                            Text("Title")
                                .foregroundColor(self.menu == 2 ? .white : .black)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 20)
                        }
                        .background(self.menu == 2 ? Color("imRed") : Color("imYellow"))
                        .clipShape(Capsule())
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Movies")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.white)
                            .padding(.top, 15)
                            .padding(.leading, 18)
                        
                        // body section with list of movies
                        List(movies, id: \.self) { movie in
                            
                            NavigationLink(destination: DetailView(data: movie)) {
                                HStack {
                                    Image(movie.image)
                                        .resizable()
                                        .frame(width: 50, height: 75)
                                        .cornerRadius(5)
                                    
                                    VStack(alignment: .leading) {
                                        Text(movie.title)
                                            .foregroundColor(.black)

                                        
                                        Text(String(movie.year))
                                            .foregroundColor(.black)
                                    }
                                }
                            }
                            
                        }
                        // remove gray space around list
                        .listStyle(PlainListStyle())
                        
                    }
                    
                }
                .navigationBarHidden(true)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
