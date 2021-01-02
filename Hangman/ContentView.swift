//
//  ContentView.swift
//  Hangman
//
//  Created by Gaurav Shah on 2020/09/29.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var man = HangmanViewModel()

    var body: some View {
        GeometryReader{ geo in
        VStack{
            HStack{
                Button(action: {man.restart()
                }) {Text("Exit Game").foregroundColor(.blue)
                }
                Spacer()
                Button(action: {man.restart()
                }) {Text("Restart").foregroundColor(.blue)
                }
            }
            Spacer()
            HStack{
                Text("Incorrect Guesses:").fontWeight(.heavy)
                Text(String(man.guesses)).fontWeight(.heavy)
            }
            Spacer()
            Image("hangman\(man.incorrect)")
            Spacer()
            Text(man.progress).fontWeight(.heavy).font(.title)
            Spacer()
            keyboardButtonView(hangman: man)
            }.padding(.horizontal, geo.size.width*0.05)
        }.alert(isPresented: $man.status) {
            Alert(title: Text(man.altit),
                  message: Text(man.almes),
                  dismissButton: .default(Text("Restart"), action: {
                    man.restart()
                  }))
        }
    }
}

struct keyboardButtonView: View {
    
    //Keyboard - Hard-coded implementation
    
    var hangman: HangmanViewModel
    
    var body: some View {
        VStack{
            HStack{
                Button(action: {hangman.makeGuess(guess: "A")
                }) {Text("A").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "B")
                }) {Text("B").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333453, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "C")
                }) {Text("C").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "D")
                }) {Text("D").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333453, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "E")
                }) {Text("E").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "F")
                }) {Text("F").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333453, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "G")
                }) {Text("G").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))).foregroundColor(.white)
                }
            }.frame(height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            HStack{
                Button(action: {hangman.makeGuess(guess: "H")
                }) {Text("H").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333453, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "I")
                }) {Text("I").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "J")
                }) {Text("J").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333453, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "K")
                }) {Text("K").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "L")
                }) {Text("L").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333453, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "M")
                }) {Text("M").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "N")
                }) {Text("N").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333453, alpha: 1))).foregroundColor(.white)
                }
            }.frame(height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            HStack{
                Button(action: {hangman.makeGuess(guess: "O")
                }) {Text("O").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "P")
                }) {Text("P").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333453, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "Q")
                }) {Text("Q").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "R")
                }) {Text("R").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333453, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "S")
                }) {Text("S").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "T")
                }) {Text("T").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333453, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "U")
                }) {Text("U").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))).foregroundColor(.white)
                }

            }.frame(height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            HStack{
                Button(action: {hangman.makeGuess(guess: "V")
                }) {Text("V").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "W")
                }) {Text("W").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "X")
                }) {Text("X").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "Y")
                }) {Text("Y").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))).foregroundColor(.white)
                }
                Button(action: {hangman.makeGuess(guess: "Z")
                }) {Text("Z").frame(width: 35, height: 35).background(Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))).foregroundColor(.white)
                }
            }.frame(height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
        
    }
}


