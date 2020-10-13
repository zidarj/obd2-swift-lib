//
//  CommandMode03.swift
//  OBD2Swift
//
//  Created by Max Vitruk on 07/06/2017.
//  Copyright © 2017 Lemberg. All rights reserved.
//

import Foundation

public extension Command {
  
    enum Mode03 : CommandType {
    
    public typealias Descriptor = Mode03Descriptor
    
    public var hashVal: Int {
      return Int(mode.rawValue) ^ 0
    }
    
    public static func == (lhs: Mode03, rhs: Mode03) -> Bool {
      return lhs.hashVal == rhs.hashVal
    }
    
    case troubleCode
    
    public var mode : Mode {
      return .DiagnosticTroubleCodes03
    }
    
    public var dataRequest : DataRequest {
      return DataRequest(from: "03")
    }
    
  }
  
}
