//
//  ContentView.swift
//  Xcode Demo
//
//  Created by Kevin Bui on 1/20/24.
//

import SwiftUI
import AVFoundation

var player: AVAudioPlayer!

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            Color("BG")
                .ignoresSafeArea()
            VStack {
                Spacer()
                Text("SoundBoard")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(10)
                    .background(Rectangle()
                        .cornerRadius(10))
                Spacer()
                
                HStack {
                    Spacer()
                    Button{
                        playSound(sound: "thunder")
                    }
                label: {Image(systemName: "cloud.bolt.fill")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .foregroundColor(.yellow)
                        .padding(10)
                        .background(Rectangle()
                            .foregroundColor(Color("Gray"))
                            .shadow(radius: 10)
                            .cornerRadius(15))
                        .border(Color.black, width: 3)
                        .cornerRadius(15)
                }
                    
                    Spacer()
                    
                    Button{
                        playSound(sound: "sparkle")
                    }
                label: {Image(systemName: "sparkles")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .foregroundColor(.yellow)
                        .contrast(2)
                        .padding(10)
                        .background(Rectangle()
                            .foregroundColor(Color("Light Yellow"))
                            .shadow(radius: 10)
                            .cornerRadius(15))
                        .border(Color.black, width: 3)
                        .cornerRadius(15)
                }
                    
                    Spacer()
                    
                    let skyBlue = Color(red: 0, green: 1, blue: 1.0)
                    
                    Button{
                        
                    }
                label: {Image(systemName: "snowflake")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .foregroundColor(skyBlue)
                        .padding(10)
                        .background(Rectangle()
                            .foregroundColor(Color("BGColor"))
                            .shadow(radius: 10)
                            .cornerRadius(15))
                        .border(Color.black, width: 3)
                        .cornerRadius(15)
                }
                    
                    Spacer()
                }
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button{
                        playSound(sound: "waterdrop")
                    }
                label: {Image(systemName: "drop.fill")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .foregroundColor(.blue)
                        .padding(10)
                        .background(Rectangle()
                            .foregroundColor(Color("BGColor"))
                            .shadow(radius: 10)
                            .cornerRadius(15))
                        .border(Color.black, width: 3)
                        .cornerRadius(15)
                }
                    
                    Spacer()
                    
                    Button{
                        playSound(sound: "wind")
                    }
                label: {Image(systemName: "wind")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .foregroundColor(.green)
                        .padding(10)
                        .background(Rectangle()
                            .foregroundColor(Color("Light Green"))
                            .shadow(radius: 10)
                            .cornerRadius(15))
                        .border(Color.black, width: 3)
                        .cornerRadius(15)
                }
                    
                    Spacer()
                    
                    Button{
                        
                    }
                label: {Image(systemName: "bird.fill")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .foregroundColor(.brown)
                        .padding(10)
                        .background(Rectangle()
                            .foregroundColor(.green)
                            .shadow(radius: 10)
                            .cornerRadius(15))
                        .border(Color.black, width: 3)
                        .cornerRadius(15)
                }
                    
                    Spacer()
                }
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button{
                        playSound(sound: "hard_rain")
                    }
                label: {Image(systemName: "cloud.rain.fill")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .foregroundColor(Color("Dark Gray"))
                        .padding(10)
                        .background(Rectangle()
                            .foregroundColor(.gray)
                            .shadow(radius: 10)
                            .cornerRadius(15))
                        .border(Color.black, width: 5)
                        .cornerRadius(15)
                }
                    
                    Spacer()
                    
                    Button{
                        playSound(sound: "flowing_water")
                    }
                label: {Image(systemName: "water.waves")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .foregroundColor(.blue)
                        .contrast(10)
                        .padding(10)
                        .background(Rectangle()
                            .foregroundColor(Color("Mellow Blue"))
                            .shadow(radius: 10)
                            .cornerRadius(15))
                        .border(Color.black, width: 3)
                        .cornerRadius(15)
                }
                    
                    Spacer()
                    
                    Button{
                        
                    }
                label: {Image(systemName: "fish.fill")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .foregroundColor(.orange)
                        .padding(10)
                        .background(Rectangle()
                            .foregroundColor(.blue)
                            .shadow(radius: 10)
                            .cornerRadius(15))
                        .border(Color.black, width: 3)
                        .cornerRadius(15)
                }
                    
                    Spacer()
                }
                
                Spacer()
                Spacer()
            }
        }
    }
}

func playSound(sound: String ) {
    let url =  Bundle.main.url(forResource: sound, withExtension: "mp3")
    
    guard url != nil else {
        return
    }
    
    do {
        player = try  AVAudioPlayer(contentsOf: url!)
        player?.play()
    } catch {
        print("error")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
