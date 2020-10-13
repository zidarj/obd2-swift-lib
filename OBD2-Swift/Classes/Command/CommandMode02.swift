//
//  CommandMode02.swift
//  OBD2Swift
//
//  Created by Max Vitruk on 07/06/2017.
//  Copyright © 2017 Lemberg. All rights reserved.
//

import Foundation

public extension Command {
  
    enum Mode02 : CommandType {
    
    public typealias Descriptor = Mode01Descriptor
    
    public var hashVal: Int {
      switch self {
      case .pid(number : let pid):
        return Int(mode.rawValue) ^ pid
      }
    }
    
    public static func ==(lhs: Mode02, rhs: Mode02) -> Bool {
      return lhs.hashVal == rhs.hashVal
    }
    
    case pid(number : Int)
    
    public var mode : Mode {
      return .FreezeFrame02
    }
    
    public var dataRequest : DataRequest {
      switch self {
      case .pid(number: let pid):
        return DataRequest(mode: mode, pid: UInt8(pid))
      }
    }
    
  }
  
}
