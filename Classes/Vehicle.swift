/* This is a class that has
   the Vehicle's properties and states.

   Sean McLeod
   2021/05/25
*/

class Vehicle {
    private var plate:String
    private var colour:String
    private let nOfDoors:Int
    private var speed:Int
    private let maxSpeed:Int

    init() {
        self.plate = "null"
        self.colour = "White"
        self.nOfDoors = 4
        self.speed = 0
        self.maxSpeed = 100
    }

    func getPlate() -> String {
        return self.plate
    }

    func getColour() -> String {
        return self.colour
    }

    func getNOfDoors() -> Int {
        return self.nOfDoors
    }

    func getSpeed() -> Int {
        return self.speed
    }

    func getMaxSpeed() -> Int {
        return self.maxSpeed
    }

    func setPlate(plateNumber: String) {
        self.plate = plateNumber
    }

    func setColour(colourString: String) {
        self.colour = colourString
    }

    func acceleration(increment: Int) {
        if (increment < 0) {
            print("Please enter in a positive number")
        } else if (self.speed + increment > self.maxSpeed) {
            print("Your input is greater than the maximum speed.")
            print("Speed has automatically set to maximum speed.")
            self.speed = self.maxSpeed
        } else {
            self.speed += increment
        }
    }

    func brake(decrement: Int) {
        if (decrement < 0) {
            print("Please enter in a positive number")
        } else if (self.speed - decrement < 0) {
            print("Your speed is less than the minimum speed.")
            print("Speed has automatically set to 0.")
            self.speed = 0
        } else {
            self.speed -= decrement
        }
    }

    func printVehicleInfo() {
        print("License plate number: \(self.plate)");
		print("Colour: \(self.colour)");
		print("# of doors:  \(self.nOfDoors)");
		print("Speed:  \(self.speed)");
		print("Maximum speed:  \(self.maxSpeed)");
    }
}
