//
//  CachePresenter.swift
//  MVPDemo
//
//  Created by ZhaoHeng on 2018/7/26.
//  Copyright © 2018年 ZhaoHeng. All rights reserved.
//

import Foundation

struct CachePresenter<U> where U: CacheProtocol {
  
  var view: U?
  mutating func initial(_ view: U) {
    self.view = view
    self.httpClient = HTTPClient(handle: self)
  }
  
  var httpClient: HTTPClient?
  init() {}
  
  typealias Value = Int
  func getCache(by integer: Value) {
    // 网络请求 ...
    self.httpClient?.get(url: "http://httpbin.org/cache/\(integer)")
  }
}

extension CachePresenter: HTTPResponProtocol {
  func onSuccess(object: Dictionary<String, Any>) {
    view?.onGetCacheSuccess(model: CacheModel.fromJSON(object))
  }
  
  func onFailure(error: Error) {
    print(error)
  }
}
