//
//  ViewController.swift
//  app-icon-change-practice
//
//  Created by jinsei_shima on 2019/05/30.
//  Copyright © 2019 jinsei_shima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let button = UIButton()
        button.addTarget(self, action: #selector(didTap), for: .touchUpInside)
        button.setTitle("Change", for: .normal)
        button.setTitleColor(.darkText, for: .normal)
        button.frame = .init(x: 0, y: 0, width: 200, height: 60)
        button.center = view.center
        
        view.addSubview(button)
    }
    
    @objc func didTap() {

        // Iconを動的に変更する
        // 変更したあとは、システムの確認ダイアログが表示される。
        // iOS10.x以降の機能

        // nilだとPrimaryのIconに変更
//        UIApplication
//            .shared
//            .setAlternateIconName(nil, completionHandler: { error in
//                print(error as Any)
//            })

        // CFBundleAlternateIconsのKeyをNameとして指定すると変更できる
        
        UIApplication
            .shared
            .setAlternateIconName("Icon1", completionHandler: { error in
                print(error as Any)
            })

    }
        
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }


}

