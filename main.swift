/* This is a program that
   generates two vehicles.

   Sean McLeod
   2021/05/25
*/

// call object
let firstVehicle = Vehicle()
let secondVehicle = Vehicle()

// current state
print("Vehicle #1: ")
firstVehicle.printVehicleInfo()

// input
print();
print("***Change plate number of Vehicle #1***")
firstVehicle.setPlate(plateNumber: "CAJA723")
print("***Change colour of Vehicle #1***")
firstVehicle.setColour(colourString: "Purple")
print("***Speed up Vehicle #1 by 50***")
firstVehicle.acceleration(increment: 50)

// changed values
print("\nVehicle #1:");
firstVehicle.printVehicleInfo();

// current state
print()
print("Vehicle #2: ")
secondVehicle.printVehicleInfo()

// input
print();
print("***Change plate number of Vehicle #2***")
secondVehicle.setPlate(plateNumber: "CLMV191")
print("***Speed up Vehicle #2 by 60***")
secondVehicle.acceleration(increment: 60)
print("***Apply brake on Vehicle #2 by 40***")
secondVehicle.brake(decrement: 40)

// changed values
print("\nVehicle #2:")
secondVehicle.printVehicleInfo()
