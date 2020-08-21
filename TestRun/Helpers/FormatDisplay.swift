//
//  FormatDisplay.swift
//  TestRun
//
//  Created by Mac on 20/08/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import Foundation
var speed2 :Double?
struct FormatDisplay {
  static func distance(_ distance: Double) -> String {
    let distanceMeasurement = Measurement(value: distance , unit: UnitLength.kilometers)
    return FormatDisplay.distance(distanceMeasurement)
  }
  
  static func distance(_ distance: Measurement<UnitLength>) -> String {
    let formatter = MeasurementFormatter()
    return formatter.string(from: distance)
  }
  
  static func time(_ seconds: Int) -> String {
    let formatter = DateComponentsFormatter()
    formatter.allowedUnits = [.hour, .minute, .second]
    formatter.unitsStyle = .positional
    formatter.zeroFormattingBehavior = .pad
    return formatter.string(from: TimeInterval(seconds))!
  }
  
  static func avgSpeed(distance: Measurement<UnitLength>, seconds: Int, outputUnit: UnitSpeed) -> String {
    let formatter = MeasurementFormatter()
    formatter.unitOptions = [.providedUnit] // 1
    let speedMagnitude = seconds != 0 ? distance.value / Double(seconds)  : 0
    let speed = Measurement(value: speedMagnitude, unit: UnitSpeed.kilometersPerHour)
    return formatter.string(from: speed.converted(to: outputUnit))
  }
    
    static func speed(distance: Measurement<UnitLength>, seconds: Int, outputUnit: UnitSpeed) -> String {
      let formatter = MeasurementFormatter()
      formatter.unitOptions = [.providedUnit] // 1
        var speed1 :Double?
        speed1 = distance.value
        if speed2 == nil{
            let speedMagnitude = seconds != 0 ? distance.value / Double(10) : 0
                   speed2 = distance.value
            let speed = Measurement(value: speedMagnitude*3.6, unit: UnitSpeed.kilometersPerHour)
                  return formatter.string(from: speed)
        }else{
            let NewDist = Double(speed1 ?? 0.0) - Double(speed2 ?? 0.0)
            speed2 = distance.value
            let speedMagnitude = seconds != 0 ? NewDist / Double(10) : 0
                   speed2 = distance.value
                 let speed = Measurement(value: speedMagnitude*3.6, unit: UnitSpeed.kilometersPerHour)
                  return formatter.string(from: speed)
        }
        
    
     
    }
  
  static func date(_ timestamp: Date?) -> String {
    guard let timestamp = timestamp as Date? else { return "" }
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    return formatter.string(from: timestamp)
  }
}
