/*:
 [Previous](@previous) / [Next](@next)
 
 # Design Two
 
 Here is a starting point for your assignment that you can build upon.
 
 It will produce this output:
 
 ![example_grid](example_grid.png "Grid example")
 
 From this basic form, make the modifications necessary to produce your intended design.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

// Generate a grid
canvas.defaultBorderWidth = 1

// This loop makes a 10 rows of columns
for x in stride(from: 25, through: 475, by: 50){
    
    // This loop makes a single column, bottom to top
    for y in stride(from: 25, through: 475, by: 50) {
        
        let h = random(from: 30, toButNotIncluding: 60)
        
        //Random Colors
        let hue = random(from: 0, toButNotIncluding: 100)
        let sat = random(from: 0, toButNotIncluding: 100)
        let bright = random(from: 25, toButNotIncluding: 100)
        let alpha = random(from: 75, toButNotIncluding: 100)
        canvas.fillColor = Color(hue: hue, saturation: sat, brightness: bright, alpha: alpha)
        
        // Draw the shapes
        canvas.drawRectangle(centreX: x, centreY: y, width: h, height: h)
    }
}


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
