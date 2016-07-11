//
//  Date.swift
//  TaskIt
//
//  Created by Eliot Arntz on 9/22/14.
//  Copyright (c) 2014 BitFountain. All rights reserved.
//

import Foundation

class Date {
    
    class func from (year:Int, month: Int, day: Int) -> NSDate {
        
        let components = NSDateComponents()
        components.year = year
        components.month = month
        components.day = day
        
        let gregorianCalendar = NSCalendar(identifier: NSGregorianCalendar)
        let date = gregorianCalendar?.dateFromComponents(components)
        
        return date!
    }
    
    class func toString(date:NSDate) -> String {
        
        let dateStringFormatter = NSDateFormatter()
        dateStringFormatter.dateFormat = "yyyy-MM-dd"
        let dateString = dateStringFormatter.stringFromDate(date)
        
        return dateString
    }
    
    
    
    
    
    
    
}