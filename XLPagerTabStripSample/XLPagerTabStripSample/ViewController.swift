//
//  ViewController.swift
//  XLPagerTabStripSample
//
//  Created by 木元健太郎 on 2022/05/18.
//

import UIKit
import XLPagerTabStrip

final class ViewController: ButtonBarPagerTabStripViewController {
    
    var newVC: UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ButtonBar全体の背景色
        settings.style.buttonBarBackgroundColor = .white
        // ButtonBarItemの背景色
        settings.style.buttonBarItemBackgroundColor = .white
        // ButtonBarItemのフォント
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
        // 選択中のButtonBarインジケーターの色
        settings.style.selectedBarBackgroundColor = UIColor.red
        
        settings.style.buttonBarItemTitleColor = .red
        // 選択中のButtonBarインジケーターの太さ
        settings.style.selectedBarHeight = 2
        // ButtonBarの左端の余白
        settings.style.buttonBarLeftContentInset = 8
        // ButtonBarの右端の余白
        settings.style.buttonBarRightContentInset = 8
        // Button間のスペース
        settings.style.buttonBarMinimumInteritemSpacing = 0
        // Button内の余白
        settings.style.buttonBarItemLeftRightMargin = 32
        // スワイプやButtonBarItemタップ等でページを切り替えた時の動作
        changeCurrentIndexProgressive = { oldCell, newCell, progressPercentage, changeCurrentIndex, animated in
            // 変更されたか、選択前後のCellをアンラップ
            guard changeCurrentIndex, let oldCell = oldCell, let newCell = newCell else { return }
            // 選択前のセルの状態を指定
            // oldCell.contentView.backgroundColor = .lightGray
            oldCell.label.textColor = .darkGray
            // 選択後のセルの状態を指定する
            // newCell.contentView.backgroundColor = .green
            newCell.label.textColor = .red
        }
    }
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        
        var vcs = self.viewControllers
        
        // まだ何も登録されていない場合
        if vcs.isEmpty {
            // 初期設定の ViewController を追加
            let firstVC = UIStoryboard.firstViewController
            firstVC.view.backgroundColor = .red
            vcs.append(firstVC)
            
            let secondVC = UIStoryboard.secondViewController
            secondVC.view.backgroundColor = .yellow
            vcs.append(secondVC)
        }
        // 追加する ViewController がある場合
        if let addvc = newVC {
            // 追加する
            vcs.append(addvc)
            
            // 追加に利用した newVC は nil に戻す
            newVC = nil
        }
        return vcs
    }
    
    @IBAction func addTabButton(_ sender: Any) {
        let vc =  UIStoryboard.thirdViewController
        vc.setUpName(name: "aaa")
        vc.view.backgroundColor = .green
        
        // newVC に追加したい ViewController を登録する
        newVC = vc
        
        reloadPagerTabStripView()
    }
}



