import SwiftUI

struct ContentView: View {
    
    @State  var leftDiceNumber  = 1
    @State  var rightDiceNumber  = 4

    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    ExtractedView(diceNumber: leftDiceNumber)
                    ExtractedView(diceNumber: rightDiceNumber)
                }
                .padding(.all)
                Spacer()
                Button("Roll Dice") {
                    leftDiceNumber = Int.random(in: 1...6);
                    rightDiceNumber = Int.random(in: 1...6)
                }
                .foregroundColor(.white)
                .font(.title)
                .fontWeight(.bold)
//                .frame(width: 150, height: 50)
//                .background(.red)
            }
           

        }
    }
}

struct ExtractedView: View {
    
    let diceNumber : Int
    
    var body: some View {
        Image("dice\(diceNumber)")
            .resizable()
            .aspectRatio(1,contentMode: .fit)
            .padding(.all)
    }
}


#Preview {
    ContentView()
}
