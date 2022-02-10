//
//  ContentView.swift
//  VideoPlayer
//
//  Created by Charles Parmley on 2/9/22.
//
import AVKit
import SwiftUI

struct ContentView: View {
    // defining constant for mp4 video link
    let url = URL(string: "https://www.pexels.com/video/3831869/download/")!
    
    // A var to hold the View containing the video player
    var body: some View {
        // basic interactive view
        NavigationView{
            // what is VStack??
            VStack{
                // making the videoplayer and feeding it an AVPlayer instance created from the video url
                VideoPlayer(player: AVPlayer(url:url),
                    // text overlay with narrow background. titles, watermarks, etc
                    videoOverlay: {
                    // declarting the text and resizing its frame, then changing bg color
                        Text("Charles Video Test").frame(width: 200, height: 20).background(Color.blue)
                    // fitting the video within the screen
                }).scaledToFit()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
