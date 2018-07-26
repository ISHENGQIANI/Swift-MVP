//
//  CacheModel.swift
//  MVPDemo
//
//  Created by ZhaoHeng on 2018/7/26.
//  Copyright © 2018年 ZhaoHeng. All rights reserved.
//

import Foundation

struct CacheModel {
  var origin: String?
  var url: String?
  
  init() {
    // 🚀 This is CacheModel
  }
  
  static func fromJSON(_ dictionary: [String: Any]?) -> CacheModel? {
    if let json = dictionary {
      var cm = CacheModel()
      cm.origin = json["origin"] as? String
      cm.url = json["url"] as? String
      return cm
    }
    return nil
  }
}
