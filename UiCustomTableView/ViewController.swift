//
//  ViewController.swift
//  UiCustomTableView
//
//  Created by COE-028 on 20/09/19.
//  Copyright © 2019 COE-028. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let StudentDetails = [
        ["Name":"abc","Grade":"A+"],
        ["Name":"Dhruv","Grade":"B+"],
        ["Name":"Pooja","Grade":"C+"],
        ["Name":"Raj","Grade":"D"],
        ["Name":"Rajesh","Grade":"A+"]
    ]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StudentDetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let details = StudentDetails[indexPath.row]
        cell.textLabel?.text = details["Name"]
        cell.detailTextLabel?.text = details["Grade"]
        
        return cell
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

