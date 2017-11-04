//
//  MeetingRoomsListController.swift
//  MeetingRoomsDynamic
//
//  Created by Lingostar on 2016. 3. 13..
//  Copyright © 2016년 CodersHigh. All rights reserved.
//

import UIKit

class MeetingRoomsListController: UITableViewController {
    var service:Service?
    
    override func viewDidLoad() {
        self.title = service?.name
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let rowCount = service?.items?.count else {
            return 0
        }
        return rowCount
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        
        guard let meetingRoom = service?.items?[indexPath.row] else {
            return cell
        }
        cell.textLabel?.text = meetingRoom.name
        cell.detailTextLabel?.text = String(meetingRoom.capacity)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ReservationSegue" {
            guard let destination = segue.destination as? ReservationListViewController, let selectedIndex = self.tableView.indexPathForSelectedRow?.row, let meetingRoom = service?.items?[selectedIndex] else {
                return
            }
            destination.meetingRoom = meetingRoom
        }
    }
}


