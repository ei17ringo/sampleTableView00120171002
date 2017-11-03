//
//  ViewController.swift
//  sampleTableView001
//
//  Created by Eriko Ichinohe on 2017/10/30.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

//1.プロトコルの設定（DataSource,Delegate）
class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
    
    //表示したいデータ（配列）
    var teaList = ["ダージリン","アールグレイ","アッサム","オレンジペコ"]
    
    //何行目が選択されたか保存する変数
    //-1は、何もまだ行番号が保存されていないという目印
    var selectedIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Storyboadで設定する（PickerViewの時はプログラムで指定）
        //4.TableViewに指示を出すのがViewControllerだと設定する
//        myTableView.delegate = self プログラムで書く場合
//        myTableView.dataSource = self プログラムで書く場合
        
        //5.tableViewにCellオブジェクトを追加してidentifierに「Cell」という名前をつける
        
    }
    
    //2. 行数の決定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        var retValue = 10
//        if section == 0{
//            retValue = 10
////            return 10 //10行表示
//
//        }else{
//            retValue = 20
////            return 20 //10行表示
//
//        }
        
//        return retValue
        //エラーがなかなか消えない時はcommand+shift+Kで一旦エラーをクリアできます
        
        return teaList.count
        
    }
    
    //3.リストに表示する文字列を決定し、表示
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //文字列を表示するセルの取得（セルの再利用）
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //表示したい文字の設定
//        cell.textLabel?.text = "\(indexPath.row)行目"
        cell.textLabel?.text = teaList[indexPath.row]
        
        //文字を設定したセルを返す
        return cell
    }
    
    //セルをタップしたら発動
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("\(indexPath.row)行目がタップされました")

        //選択された行番号を保存
        selectedIndex = indexPath.row
        
        //セグエの名前を指定して、画面遷移処理を発動
        performSegue(withIdentifier: "showDetail", sender: nil)
        
    }
    
    //セグエを使って、画面遷移している時発動
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //次の画面のインスタンス（オブジェクト）を取得
        // as! DetailViewControllerがダウンキャスト変換している箇所
        
        var dvc:DetailViewController = segue.destination as! DetailViewController
        
        //次の画面のプロパティ（メンバ変数）passedIndexに選択された行番号を渡す
        dvc.passedIndex = selectedIndex
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

