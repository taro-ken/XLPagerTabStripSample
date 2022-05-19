//
//  FirstViewController.swift
//  XLPagerTabStripSample
//
//  Created by 木元健太郎 on 2022/05/18.
//

import XLPagerTabStrip

class FirstViewController: UIViewController {
  // 中略
}

extension FirstViewController: IndicatorInfoProvider{
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Child1") // ButtonBarItemに表示される名前になります
    }
}
