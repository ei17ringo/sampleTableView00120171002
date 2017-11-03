//
//  DetailViewController.swift
//  sampleTableView001
//
//  Created by Eriko Ichinohe on 2017/11/03.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    //受け取った行番号を保存しておく変数
    var passedIndex:Int = -1

    override func viewDidLoad() {
        super.viewDidLoad()

        print("2枚め表示されたよ")
        print("受け取った行番号\(passedIndex)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
