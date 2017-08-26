//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


struct ParkingTime {
    var startTime: Double = 0
    var endTime: Double = 0
    
    var time: (Double, Double ) = (0, 0) {
        didSet {
            startTime = time.0
            endTime = time.1
        }
    }
    
    
    let fastigiumContinued: [Int] = Array(9...20)
    //    let fastigiumEnd: Double = 20
    
    var continueTime: Double {
        guard startTime != endTime else { return 24}
        
        return startTime < endTime ? endTime - startTime : 24 - (startTime - endTime)
    }
    
    var nomarlTime: Int { return 10 }
    
    var fastigiumTime: Int {
        guard startTime != endTime else { return 0 }
        
        let ceilStart = Int(ceil(startTime))
        let extraStart = ceilStart == Int(startTime) ? 0 : 1
        let startMax = fastigiumContinued.contains(ceilStart) ? fastigiumContinued.last! - ceilStart + extraStart : 0

        let ceilEnd = Int(ceil(endTime))
//        let extraEnd = ceilEnd == Int(endTime) ? 0 : 1
        let endMax = fastigiumContinued.contains(ceilEnd) ? ceilEnd - fastigiumContinued.first! + 1 : 0
        
        let maxFastigiumTime = fastigiumContinued.last! - fastigiumContinued.first! + 1
        
        switch (startMax, endMax) {
        case (0, 0):
            return continueTime > 12.0 ? maxFastigiumTime : 0
        case (0, _):
            return endMax
        case (_, 0):
            return startMax
        default:
            return startTime < endTime ? Int(ceil(endTime - startTime)) : startMax + endMax
        }
    }

    var normalCost: Double {
        let firstHourCost: Double = 5
        let lastCost: Double = 1
        
        return costForParking(time: nomarlTime, firstHourCost: firstHourCost, lastHourCost: lastCost)
    }

    var fastigiumCost: Double {
        let firstHourCost: Double = 10
        let lastCost: Double = 2
        
        return costForParking(time: fastigiumTime, firstHourCost: firstHourCost, lastHourCost: lastCost)
    }

    private func costForParking(time: Int, firstHourCost: Double, lastHourCost: Double) -> Double {
        guard time > 1 else { return firstHourCost }
        
        return Double(time - 1) * lastHourCost + firstHourCost
    }
}

ceil(20.5)


var parkingTime = ParkingTime()
parkingTime.fastigiumTime

parkingTime.time = (3, 4)
parkingTime.fastigiumTime

parkingTime.time = (3, 10)
parkingTime.fastigiumTime

parkingTime.time = (3, 22)
parkingTime.fastigiumTime

parkingTime.time = (3, 2)
parkingTime.fastigiumTime


parkingTime.time = (10, 4)
parkingTime.fastigiumTime

parkingTime.time = (10, 9)
parkingTime.fastigiumTime

parkingTime.time = (10, 15)
parkingTime.fastigiumTime

parkingTime.time = (10, 23)
parkingTime.fastigiumTime


parkingTime.time = (23, 4)
parkingTime.fastigiumTime

parkingTime.time = (23, 10)
parkingTime.fastigiumTime

parkingTime.time = (23, 21)
parkingTime.fastigiumTime

parkingTime.time = (23, 23.5)
parkingTime.fastigiumTime




