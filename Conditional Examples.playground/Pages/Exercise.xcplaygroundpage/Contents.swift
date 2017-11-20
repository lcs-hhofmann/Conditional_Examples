//: [Previous](@previous)
//: # Exercise
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Create a program that produces the following output:
 
 ![output](output.png "Output")
 
 The algorithm (recipe) for the program is indicated by the comments.
 
 Your job is to fill in the required code.
 
 */
// Create canvas
let canvas = Canvas(width: 402, height: 102)
/*:
 ## Add your code below
 
 Fill in the blanks below the comments
 */
// Loop 4 times, counting up by 100, from 0

for x in stride(from: 1, to: 401, by: 100) {

// Inside the loop, generate a random number (1 or 2)

   let number = random(from: 1, toButNotIncluding: 3)


// Draw a square at the current position – black fill, white text when random number is one, otherwise, colours are inverted
    
    if number == 1 {
        canvas.fillColor = Color.black
    } else {
        canvas.fillColor = Color.white
    }
    
    
    canvas.drawRectangle(bottomLeftX: x, bottomLeftY: 1, width: 100, height: 100)

    if number == 1 {
        canvas.textColor = Color.white
        canvas.drawText(message: "1", size: 35, x: x+5, y: 2)
    } else {
        canvas.textColor = Color.black
        canvas.drawText(message: "2", size: 35, x: x+5, y: 2)
    }
    
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView

