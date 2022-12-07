//
//  ViewController.swift
//  SuperHeroBook
//
//  Created by Yavuz on 4.12.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var superKahramanGoreselIsimleri = [String]()
    var superKahramanIsımleri = [String]()
    var secilenIsim = ""
    var secilenGorsel = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        
        superKahramanIsımleri.append("batman")
        superKahramanIsımleri.append("flash")
        superKahramanIsımleri.append("spiderman")
        superKahramanIsımleri.append("superman")
        superKahramanIsımleri.append("captanamerica")
        
        
        superKahramanGoreselIsimleri.append("batman")
        superKahramanGoreselIsimleri.append("flash")
        superKahramanGoreselIsimleri.append("spiderman")
        superKahramanGoreselIsimleri.append("superman")
        superKahramanGoreselIsimleri.append("captanamerica")
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superKahramanIsımleri.count
    }
         
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superKahramanIsımleri [indexPath.row]
        return cell
        
    }
    internal func tableView( _ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle,forRowAt indexPath: IndexPath){
        if editingStyle == .delete {
            superKahramanGoreselIsimleri.remove(at: indexPath.row)
            superKahramanIsımleri.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         secilenIsim = superKahramanIsımleri[indexPath.row]
         secilenGorsel = superKahramanGoreselIsimleri[indexPath.row]
        performSegue(withIdentifier: "detailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.secilenKahramanIsmi = secilenIsim
            destinationVC.secilenKahramanGorsel = secilenGorsel
            
        }
    }
}
