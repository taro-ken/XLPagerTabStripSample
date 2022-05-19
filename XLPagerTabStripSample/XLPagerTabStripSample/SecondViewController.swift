//
//  SecondViewController.swift
//  XLPagerTabStripSample
//
//  Created by 木元健太郎 on 2022/05/18.
//

import XLPagerTabStrip

class SecondViewController: UIViewController {
  
}

extension SecondViewController: IndicatorInfoProvider{
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Child2") // 親のButtonBarで使われる名前になります
    }
}
