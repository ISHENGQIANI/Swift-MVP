//
//  ViewController.swift
//  MVPDemo
//
//  Created by ZhaoHeng on 2018/7/26.
//  Copyright © 2018年 ZhaoHeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.navigationController?.pushViewController(CacheViewController(), animated: true)
  }
  
}

