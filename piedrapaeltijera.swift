import Foundation

func rockPaperScissors() {
    let options = ["piedra", "papel", "tijera"]
    print("Elige piedra, papel o tijera:")
    let userChoice = readLine()?.lowercased() ?? ""
    let computerChoice = options.randomElement()!
    
    print("La computadora eligió: \(computerChoice)")
    
    if userChoice == computerChoice {
        print("¡Es un empate!")
    } else if (userChoice == "piedra" && computerChoice == "tijera") ||
              (userChoice == "papel" && computerChoice == "piedra") ||
              (userChoice == "tijera" && computerChoice == "papel") {
        print("¡Ganaste!")
    } else {
        print("Perdiste.")
    }
}

rockPaperScissors()
