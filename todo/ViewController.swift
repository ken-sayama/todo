//
//  ViewController.swift
//  todo
//
//  Created by 佐山絢 on 2018/02/22.
//  Copyright © 2018年 佐山絢. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ナビゲーションバーのタイトルをセット
        self.navigationItem.title = "Todo"
        
        // ナビゲーションバーの右上にAddという文字を表示させ、押すとAddTaskViewControllerに遷移させる
        let addTaskBarButton = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(self.moveTaskPage))
        self.navigationItem.rightBarButtonItem = addTaskBarButton
    }
    
    // Addを押した際のページ遷移
    @objc func moveTaskPage(){
        // 遷移先のコントローラー
        let controller = AddTaskViewController()
        // 遷移の際にアニメーションで遷移する
        self.navigationController?.pushViewController(controller, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

