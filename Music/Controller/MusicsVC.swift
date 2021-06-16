//
//  MusicsVC.swift
//  Music
//
//  Created by Lucas Sesti on 13/06/21.
//

import UIKit

class MusicsVC: UITableViewController {
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        tableView.register(MusicsCell.self, forCellReuseIdentifier: cellId)
    }
}

extension MusicsVC {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 56
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! MusicsCell
    
        return cell;
    }
}
