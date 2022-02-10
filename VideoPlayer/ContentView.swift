//
//  ContentView.swift
//  VideoPlayer
//
//  Created by Charles Parmley on 2/9/22.
//
import AVKit
import SwiftUI

struct ContentView: View {
    let url = URL(string: "https://www.pexels.com/video/3831869/download/")!
    
    
    var body: some View {
        NavigationView{
            VStack{
                VideoPlayer(player: AVPlayer(url:url),
                    videoOverlay: {
                        Text("Charles Video Test").frame(width: 200, height: 20).background(Color.blue)
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
