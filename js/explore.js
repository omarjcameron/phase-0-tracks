// Take in a word (string) as a parameter.
// Iterate through the word, each time adding the letter at a given position to the reversed string (which starts off empty).

function reverseWord(string) {
    var reversedWord = "";
    for (var i = string.length - 1; i >= 0; i--) {
        reversedWord += string[i];
    }
    return reversedWord;
}
console.log(reverseWord('hello'));