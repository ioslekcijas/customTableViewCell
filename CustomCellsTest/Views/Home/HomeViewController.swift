//
//  ViewController.swift
//  CustomCellsTest
//
//  Created by Armands Berzins on 12/04/2021.
//

import UIKit

class HomeViewController: UIViewController {
    // MARK: - Outlets Connection
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Identifiers
    let kHomeCellID = "HomeCellID"
    let kDetailsSegue = "HeroDetailsSegue"

    // MARK: - Global objects
    var selectedHero: Hero? = nil
    let allHeros = DefaultHeros.shared.getAll()
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupNavigationBar()
    }
    
    // MARK: - Setups
    func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        
        let HomeCellXib = UINib(nibName: "HomeCell", bundle: .main)
        tableView.register(HomeCellXib, forCellReuseIdentifier: kHomeCellID)
    }
    
    func setupNavigationBar() {
        title = "Heroes"
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()
        appearance.backgroundColor = UIColor(named: "JLNavigationBarColor")

        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    // MARK: - On events
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { 
        switch segue.identifier {
        case kDetailsSegue:
            let detailsViewController = segue.destination as! HeroDetailsViewController
            detailsViewController.hero = selectedHero
        default:
            return
        }

    }
}

// MARK: - Table view delegate
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        allHeros.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        
        if let homeCell = tableView.dequeueReusableCell(withIdentifier: kHomeCellID,
                                                        for: indexPath) as? HomeCell {
            homeCell.setup(with: allHeros[indexPath.row])
            cell = homeCell
        }
        
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedHero = allHeros[indexPath.row]
        performSegue(withIdentifier: kDetailsSegue, sender: self)
    }
}

