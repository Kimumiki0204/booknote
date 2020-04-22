//
//  ViewController.swift
//  booknote
//
//  Created by 木村美希 on 2020/01/11.
//  Copyright © 2020 木村美希. All rights reserved.
//

import UIKit
import RealmSwift
class ViewController: UIViewController, UISearchBarDelegate  {
    @IBOutlet weak var searchBar: UISearchBar!
    var genreNumber: Int!
    
    @IBAction func selectGenre(sender: UIButton)
    {
        if sender.tag == 1{
            genreNumber = 1
        }else if sender.tag == 2{
            genreNumber = 2
        }else if sender.tag == 3{
            genreNumber = 3
        }
        performSegueToResult()
        
    }
    
    func performSegueToResult(){
        performSegue(withIdentifier: "tomangaViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "toAddView"{
            let addViewController = segue.destination as! addViewController
            addViewController.genreNumber = self.genreNumber
        }
    }
    
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

