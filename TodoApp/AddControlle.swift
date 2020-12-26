//
//  AddControlle.swift
//  TodoApp
//
//  Created by 黒川魁 on 2020/12/20.
//  Copyright © 2020 Kai Kurokawa. All rights reserved.
//

import UIKit

//変数の設置
var TodoKobetsunonakami = [String]()

class AddControlle: UIViewController {
    
    //テキストフィールドの設定
    @IBOutlet weak var TodoTextField: UITextField!
    
    //追加ボタンの設定
    @IBAction func TodoAddButton(_ sender: Any) {
        //変数に入力内容を入れる
        TodoKobetsunonakami.append(TodoTextField.text!)
        //追加ボタンを押したらフィールドを空にする
        TodoTextField.text = ""
        //変数の中身をUDに追加
        UserDefaults.standard.set( TodoKobetsunonakami, forKey: "TodoList" )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
