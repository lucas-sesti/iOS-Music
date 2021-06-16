//
//  MusicModel.swift
//  Music
//
//  Created by Lucas Sesti on 13/06/21.
//

struct Music {    
    var explicit: Bool;
    var album: String;
    var artist: String;
    var coverImage: String;
    
    init(explicit: Bool, album: String, artist: String, coverImage: String) {
        self.explicit = explicit;
        self.album = album;
        self.artist = artist;
        self.coverImage = coverImage;
    }
}
