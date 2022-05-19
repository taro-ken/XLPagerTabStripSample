//
//  ThirdViewController.swift
//  XLPagerTabStripSample
//
//  Created by 木元健太郎 on 2022/05/18.
//

import XLPagerTabStrip

class ThirdViewController: UIViewController {
  
    private var titleName = ""
    
    func setUpName(name: String) {
        titleName = name
    }
    
}

extension ThirdViewController: IndicatorInfoProvider{
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: titleName) // 親のButtonBarで使われる名前になります
    }
}

