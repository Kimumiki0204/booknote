//
//  mangaViewController.swift
//  booknote
//
//  Created by 木村美希 on 2020/01/25.
//  Copyright © 2020 木村美希. All rights reserved.
//

import UIKit
import RealmSwift

class mangaViewController: UIViewController,UITextFieldDelegate,UITableViewDataSource,UITableViewDelegate {
    
    var bookItem: Results<BookModel>!
    
    @IBOutlet var table: UITableView!
    
    var genreNumber: Int!
    
    @IBAction func next() {
        performSegueToResult()
    }

    func performSegueToResult(){
        performSegue(withIdentifier: "toAddView", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "toAddView" {
            let addViewController = segue.destination as! addViewController
            addViewController.genreNumber = self.genreNumber
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
        
        do{
            let realm = try Realm()
            bookItem = realm.objects(BookModel.self)
        }catch{
            
        }
        

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animared: Bool){
        super.viewWillAppear(animared)
        table.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        let object = bookItem[indexPath.row].bookTitle
        
        cell?.textLabel?.text = object
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
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
