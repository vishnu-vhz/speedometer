//
//  UserDefaults.swift
//  Farmers App
//
//  Created by Mac on 23/06/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import Foundation

// prefix for userdefaults keys for uniqueness
let prefixKey = "F_"

class BaseMemmory {

    private init(){}
    /// writing to userdefaults
    final class func write(object : Any , forKey key: String){
        let defaults = UserDefaults.standard
        defaults.set(object, forKey: prefixKey + key)
    }
    
    /// reading from userdefaults
    final class func read(forKey key: String) -> Any? {
        let defaults = UserDefaults.standard
        return defaults.object(forKey: prefixKey + key)
    }
    
    /// deleting from userdefaults
    final class func clear(forKey key: String){
        let defaults = UserDefaults.standard
        defaults.removeObject(forKey: prefixKey + key)
    }
    
    final class func isNotEmpty(forKey key: String) -> Bool{
        let defaults = UserDefaults.standard
        return defaults.object(forKey: prefixKey + key) != nil ? true : false
    }

    
    /// get
    
   /* class func get(forKey key: String) -> String?{
        let defaults = UserDefaults.standard
        return defaults.string(forKey: key)
    }
    
    class func get(forKey key: String) -> Int?{
        let defaults = UserDefaults.standard
        return defaults.integer(forKey: key)
    }
    
    class func get(forKey key: String) -> Bool?{
        let defaults = UserDefaults.standard
        return defaults.bool(forKey: key)
    }
    
    class func get(forKey key: String) -> Double?{
        let defaults = UserDefaults.standard
        return defaults.double(forKey: key)
    }
    
    class func get(forKey key: String) -> AnyObject?{
        let defaults = UserDefaults.standard
        return defaults.object(forKey: key) as AnyObject
    } */
    
}
