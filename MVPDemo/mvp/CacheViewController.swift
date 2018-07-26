//
//  CacheViewController.swift
//  MVPDemo
//
//  Created by ZhaoHeng on 2018/7/26.
//  Copyright © 2018年 ZhaoHeng. All rights reserved.
//

import UIKit

class CacheViewController: UIViewController {
  private var cachePresenter = CachePresenter<CacheViewController>()
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nil, bundle: nil)
    
    self.cachePresenter.initial(self)
  }
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    reloadData()
  }
  
  func reloadData() {
    // 请求网络
    self.cachePresenter.getCache(by: 2000)
  }
  
}

extension CacheViewController: CacheProtocol {
  
  // 获取成功
  func onGetCacheSuccess(model: CacheModel?) {
    dump(model)
    
    DispatchQueue.main.async {
      self.view.backgroundColor = .white
      let lab = UILabel()
      lab.textColor = .black
      lab.textAlignment = .center
      lab.text = "\(model?.origin ?? "") \n \(model?.url ?? "")"
      lab.numberOfLines = 2
      lab.frame = CGRect(x: 0, y: 100, width: UIScreen.main.bounds.width, height: 200)
      self.view.addSubview(lab)
    }
  }
  
  // 获取失败
  func onGetCacheFailure(error: Error) {
    dump(error)
  }
}
