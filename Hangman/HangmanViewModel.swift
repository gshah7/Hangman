//
//  HangmanState.swift
//  Hangman
//
//  Created by Gaurav Shah on 2020/09/29.
//

import Foundation

class HangmanViewModel : ObservableObject {
    
    @Published var incorrect = 0
    @Published var guesses: [Character] = []
    @Published var progress: String = ""
    @Published var status = false
    var wordlist: [Character] = []
    var prolist: [Character] = []
    var word: String = ""
    var altit: String = ""
    var almes: String = ""
    var random: Int = 0
    let phrases: [String] = ["h e l l o", "g o o d b y e", "b e a r s", "c o r o n a", "c o v i d", "f a c e m a s k", "m a c b o o k", "o s k i", "g o   b e a r s"]
    let hiddenphrases: [String] = ["_ _ _ _ _", "_ _ _ _ _ _ _", "_ _ _ _ _", "_ _ _ _ _ _", "_ _ _ _ _", "_ _ _ _ _ _ _ _", "_ _ _ _ _ _ _", "_ _ _ _", "_ _   _ _ _ _ _"]

    init() {
        restart()
    }

    func restart() {

        random = Int.random(in: 0..<phrases.count)
        word = phrases[random]
        wordlist = Array(word)
        incorrect = 0
        guesses = []
        progress = hiddenphrases[random]
        prolist = Array(progress)
        status = false
        
    }
    

    public func didLose() -> Bool {
        // This function checks the number of incorrect guesses to determine if the user has lost the game.
        if incorrect == 6{
            return true
        }
        return false
    }
    

    public func didWin() -> Bool {

        if incorrect < 6 && progress == word {
            return true
        }
        return false
    }
    

    func makeGuess(guess letter: Character) {
        
        let letter = Character(letter.lowercased())
        
        if guesses.contains(letter) {
            return
        }
        else {
            if word.contains(letter) {
                for i in 0..<word.count {
                    if wordlist[i] == letter {
                        prolist[i] = letter
                    }
                }
                progress = String(prolist)
            }
            else{
                guesses.append(letter)
                incorrect = incorrect + 1
            }
        }
        getFinalMessage()
        
    }

    public func getFinalMessage() {
                
        if didWin() {
            status = true
            almes = "You had \(incorrect) incorrect guesses."
            altit = "YOU WIN"
        
        }
        if didLose() {
            status = true
            almes = "Try again!"
            altit = "YOU LOSE"
        }
    }
}
