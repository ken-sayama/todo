//
//  AddTaskViewController.swift
//  todo
//
//  Created by 佐山絢 on 2018/02/22.
//  Copyright © 2018年 佐山絢. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // windowの幅と高さを取得しておく
        let frameWidth = self.view.frame.width
        let frameHeight = self.view.frame.height
        
        // ラベルの定義とレイアウト
        let label = UILabel(frame: CGRect(x: frameWidth / 4, y: frameHeight / 2 - 50, width: 200, height: 50))
        label.text = "What do you have task ?"
        self.view.addSubview(label)
        
        // テキストフィールドの定義
        let textArea = UITextField(frame: CGRect(x: frameWidth / 4, y: frameHeight / 2, width: 200, height: 50))
        textArea.placeholder = "Write about your task"
        textArea.textColor = UIColor.black
        textArea.layer.borderWidth = 1.0
        textArea.layer.borderColor = UIColor.gray.cgColor
        textArea.layer.cornerRadius = 2.0
        textArea.leftViewMode = .always
        textArea.leftView = UIView(frame: CGRect(x:0,y:0,width:10,height:10))
        self.view.addSubview(textArea)
        
        // ボタンの定義
        let btn = UIButton(frame: CGRect(x: frameWidth / 4, y:frameHeight / 2 + 70, width: 200, height: 40))
        btn.setTitle("Add", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor = UIColor.black
        btn.layer.cornerRadius = 20.0
        self.view.addSubview(btn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
