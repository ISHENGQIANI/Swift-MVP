//
//  CacheProtocol.swift
//  MVPDemo
//
//  Created by ZhaoHeng on 2018/7/26.
//  Copyright © 2018年 ZhaoHeng. All rights reserved.
//

import Foundation

protocol CacheProtocol {
  func onGetCacheSuccess(model: CacheModel?)
  func onGetCacheFailure(error: Error)
}
