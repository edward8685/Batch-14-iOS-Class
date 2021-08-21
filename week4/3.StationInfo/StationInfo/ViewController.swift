//
//  ViewController.swift
//  StationInfo
//
//  Created by Ed Chang on 2021/8/18.
//

import UIKit

class ViewController: UIViewController {
    
    struct StationJSON : Codable {
            let stationID : String
            let stationName : String
            let stationAddress : String
    }
    

    @IBOutlet var textStationID: UILabel!
    @IBOutlet var textStationName : UILabel!
    @IBOutlet var textAddress : UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadStationItem()
    }
    
    func loadStationItem() {
        
        let configuration = URLSessionConfiguration.default
        
        let session = URLSession(configuration: configuration)
        
        let url = URL(string: "https://stations-98a59.firebaseio.com/practice.json")!
        
        let task = session.dataTask(with: url) {
          
          (data, response, error) in
          
              guard let httpResponse = response as? HTTPURLResponse,
                    httpResponse.statusCode == 200, let data = data else {
                return
              }
            do {
                let info = try   JSONDecoder().decode(StationJSON.self, from: data)
                DispatchQueue.main.async {  // main thread
                    self.textStationID.text = info.stationID
                    self.textStationName.text = info.stationName
                    self.textAddress.text = info.stationAddress
                }
                
                
          } catch {
            print("Error info: \(error)")
          }
        }
    task.resume()
    }

}
