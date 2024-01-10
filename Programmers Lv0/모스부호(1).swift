import Foundation

func solution(_ letter:String) -> String {
    var result = ""
    
    let morse = [
    ".-": "a", "-...": "b", "-.-.": "c", "-..": "d", ".": "e", "..-.": "f",
    "--.": "g", "....": "h", "..": "i", ".---": "j", "-.-": "k", ".-..": "l",
    "--": "m", "-.": "n", "---": "o", ".--.": "p", "--.-": "q", ".-.": "r",
    "...": "s", "-": "t", "..-": "u", "...-": "v", ".--": "w", "-..-": "x",
    "-.--": "y", "--..": "z"
    ]
    
    var letter = letter.components(separatedBy: " ")
    
    for i in letter {
        result.append(morse[i]!)
    }
    
    return String(result)
}
