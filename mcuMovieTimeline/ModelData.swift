//
//  ModelData.swift
//  mcuMovieTimeline
//
//  Created by Sergio Herrera on 2/20/21.
//

import Foundation

struct Movie : Hashable, Codable {
    var id: Int
    var year: Int
    var title: String
    var image: String
}

class DataModel: NSObject {
    static let data = [
        Movie(id: 1, year: 2011, title: "Captain America: The First Avenger", image: "image0"),
        Movie(id: 2, year: 2019, title: "Captain Marvel", image: "image1"),
        Movie(id: 3, year: 2008, title: "Iron Man", image: "image2"),
        Movie(id: 4, year: 2010, title: "Iron Man 2", image: "image3"),
        Movie(id: 5, year: 2008, title: "Incredible Hulk", image: "image4"),
        Movie(id: 6, year: 2011, title: "Thor", image: "image5"),
        Movie(id: 7, year: 2012, title: "Avengers", image: "image6"),
        Movie(id: 8, year: 2013, title: "Thor: The Dark World", image: "image7"),
        Movie(id: 9, year: 2013, title: "Iron Man 3", image: "image8"),
        Movie(id: 10, year: 2014, title: "Captain America: The Winter Soldier", image: "image9"),
        Movie(id: 11, year: 2014, title: "Guardians of the Galaxy", image: "image10"),
        Movie(id: 12, year: 2017, title: "Guardians of the Galaxy Vol.2", image: "image11"),
        Movie(id: 13, year: 2015, title: "Avengers: Age of Ultron", image: "image12"),
        Movie(id: 14, year: 2015, title: "Ant-Man", image: "image13"),
        Movie(id: 15, year: 2016, title: "Captain America: Civil War", image: "image14"),
        Movie(id: 16, year: 2017, title: "Spider-Man: Homecoming", image: "image15"),
        Movie(id: 17, year: 2016, title: "Doctor Strange", image: "image16"),
        Movie(id: 18, year: 2018, title: "Black Panther", image: "image17"),
        Movie(id: 19, year: 2017, title: "Thor: Ragnarok", image: "image18"),
        Movie(id: 20, year: 2018, title: "Ant-Man and The Wasp", image: "image19"),
        Movie(id: 21, year: 2019, title: "Avengers: Infinity War", image: "image20"),
        Movie(id: 22, year: 2019, title: "Avengers: Endgame", image: "image21"),
        Movie(id: 23, year: 2019, title: "Spiderman: Far From Home", image: "image22")
    ]
}
