//
//  HomeFeedViewController.swift
//  foundApp
//
//  Created by Judy Gatobu on 4/23/18.
//  Copyright © 2018 Judy Gatobu. All rights reserved.
//

import UIKit
import Parse

class HomeFeedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    
    
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    
    
    
    
    //create instance of UI refreshcontroll
  //  refreshcontrol = UIRefreshControl()
  //  refreshcontrol.addTarget(self, action: #selector(HomeViewController.didPullToRefresh(_:)    ), for: .valueChanged)
   // tableView.insertSubview(refreshcontrol, at: 0)
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        print("ok")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! postCell
        
    
    cell.itemName.text = "Calculator"
    cell.itemPrice.text = "$45"
    
    
        return cell
    }
    
}
