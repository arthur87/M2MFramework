//
//  M2MDeviceController.swift
//  M2MFramework
//
//  Created by asakawa on 2015/01/13.
//  Copyright (c) 2015 asakawa All rights reserved.
//

import Foundation
import CoreMotion

class M2MDeviceController {
	class var sharedInstance: M2MDeviceController {
		struct Static {
			static let instance : M2MDeviceController = M2MDeviceController()
		}
		return Static.instance
	}
	
	/**
	歩数計に関する一週間分の情報を返します。
	
	:returns: 歩数計に関する情報
	*/
	func pedometerQuery() -> NSMutableArray {
		var result = NSMutableArray()
		
		let pedometer:CMPedometer = CMPedometer()
		if(!CMPedometer.isStepCountingAvailable()) {
			return result
		}
		
		let now:NSDate = NSDate()
		let formatter:NSDateFormatter = NSDateFormatter()
		formatter.dateFormat = "yyyy-MM-dd"
		var from:NSDate = self.stringToDate(formatter.stringFromDate(now), isStart: true)
		var to:NSDate = self.stringToDate(formatter.stringFromDate(now), isStart: false)
		
		for i in 0...6 {
			let semaphore:dispatch_semaphore_t = dispatch_semaphore_create(0)
			
			pedometer.queryPedometerDataFromDate(from, toDate: to, withHandler: {(pedometerData:CMPedometerData!, error:NSError!) in
				result[i] = [
					"steps": pedometerData.numberOfSteps,
					"distance": pedometerData.distance,
					"floorsAscended": pedometerData.floorsAscended,
					"floorsDescended": pedometerData.floorsDescended,
					"startDate": pedometerData.startDate,
					"endDate": pedometerData.endDate
				]
				
				dispatch_semaphore_signal(semaphore)
			})
			dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER)
			
			from = self.dateByAddingDay(from, day: -1)
			to = self.dateByAddingDay(to, day: -1)
		}
		
		return result
	}
	
	/**
	指定した日付に時分秒を追加して新しいNSDateを返します。
	
	:param: date もとのNSDate
	:param: isStart trueのとき00:00:00、falseのとき23:59:59を追加します
	:returns: 新しいNSData
	*/
	private func stringToDate(date: String, isStart: Bool) -> NSDate {
		let timestamp = (isStart) ? date + " 00:00:00" : date + " 23:59:59"
		let formatter:NSDateFormatter = NSDateFormatter()
		formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
		return formatter.dateFromString(timestamp)!
	}
	
	/**
	指定した日数を加減した新しいNSDateを返します。
	
	:param: date もとのNSData
	:param: day 加減する日数
	:returns: 新しいNSData
	*/
	private func dateByAddingDay(date: NSDate, day: Int) -> NSDate {
		let calendar:NSCalendar = NSCalendar.currentCalendar()
		let components:NSDateComponents = NSDateComponents()
		components.day = day
		return calendar.dateByAddingComponents(components, toDate: date, options: NSCalendarOptions.allZeros)!
	}
}