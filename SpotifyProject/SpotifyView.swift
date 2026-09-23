import SwiftUI
import Playgrounds

struct ContentView: View {
    @State private var progress: Double = 20
    var body: some View {
        VStack {
            HStack() {
               Image(systemName: "chevron.down")
                Spacer()
                Text("Playlist")
                    .bold()
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding()
            Spacer()
            Image("AmericanNightsCover")
                .resizable()
                .frame(width: 360, height: 360, alignment: Alignment.center)
            Spacer()
            VStack {
                // Name/Artist/Like
                HStack {
                    VStack(alignment: .leading) {
                       Text("Towers")
                            .bold()
                            .font(.title)
                        Text("Zach Bryan")
                            .foregroundStyle(.secondary)
                    }
                    Spacer()
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .aspectRatio(contentMode: .fit)
                        .padding([.trailing],4)
                }
                //Progress bar
                VStack {
                    HStack {
                        Slider(value: $progress, in: 0...100)
                            .accentColor(.white)
                            .buttonStyle(.plain)
                        //Had to google this part
                            .onAppear {
                                           let thumbImage = UIImage(systemName: "circle.fill")
                                           UISlider.appearance().setThumbImage(thumbImage, for: .normal)
                                       }
                            
                    }
                    HStack {
                        Text("0:11")
                        Spacer()
                        Text("3:26")
                    }
                    .foregroundStyle(.secondary)
                }
                //Action bar
                HStack {
                   Image(systemName: "shuffle")
                        .resizable()
                        .foregroundColor(.green)
                        .frame(width: 25, height: 25)
                        
                    Spacer()
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding()
                    Spacer()
                    Image(systemName: "pause.circle.fill")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .padding()
                    Spacer()
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding()
                    Spacer()
                    Image(systemName: "repeat")
                        .resizable()
                        .foregroundColor(.green)
                        .frame(width: 25, height: 25)
                        
                }
                .foregroundColor(.white)
                //Lower bar
                HStack {
                    Image(systemName: "hifispeaker.2")
                    Spacer()
                    HStack(alignment: .center){
                        Image(systemName: "square.and.arrow.up")
                            .padding([.trailing], 8)
                        Image(systemName: "line.3.horizontal.decrease")
                    }
                }
                .foregroundColor(.white)
            }
            .padding()
            
        }
        .background(LinearGradient(colors: [Color.albumRed, Color.albumDark], startPoint: UnitPoint.top, endPoint: UnitPoint.bottom))
        .foregroundColor(Color.white)
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}

