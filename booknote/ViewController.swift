//
//  ViewController.swift
//  booknote
//
//  Created by 木村美希 on 2020/01/11.
//  Copyright © 2020 木村美希. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate  {
    @IBOutlet weak var searchBar: UISearchBar!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
//        searchBar.delegate = self
//        searchBar.showsCancelButton = true
//        //プレースホルダの指定
//        searchBar.placeholder = "検索"
        //検索スコープを指定するボタン
       
        
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func searchBarSearchButtonClicked(searchBar:UISearchBar) {
        print("検索ボタンをタップ scopeIndex=\(searchBar.selectedScopeButtonIndex)")
    }
    
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        print("キャンセルボタンをタップ")
    }
    
   
}

