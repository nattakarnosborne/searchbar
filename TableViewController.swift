//
//  TableViewController.swift
//  searchbar
//
//  Created by Nattakarn Osborne on 3/8/16.
//  Copyright © 2016 Nan Osborne. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController{
    
    var breeds = [Breed]()
    var filteredBreeds = [Breed]()
    let resultSearchController = UISearchController(searchResultsController: nil)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set up search
                resultSearchController.searchResultsUpdater = self
                resultSearchController.searchBar.delegate = self
                definesPresentationContext = true
                resultSearchController.dimsBackgroundDuringPresentation = false
        
                tableView.tableHeaderView = resultSearchController.searchBar
                tableView.reloadData()
        
        
        breeds = [Breed]()
        
        
        breeds = [
            Breed(name:"Affenpinscher", category:"Toy"),
            Breed(name:"Afghan Hound", category:"Hound"),
            Breed(name:"Airedale Terrier", category:"Terrier"),
            Breed(name:"Akita", category: "Working"),
            Breed(name:"Alaskan Malamute", category: "Working"),
            Breed(name:"American English", category: "Coonhound"),
            Breed(name:"American Eskimo Dog (Miniature)", category: "Non-Sporting"),
            Breed(name:"American Eskimo Dog (Standard)", category: "Non-Sporting"),
            Breed(name:"American Eskimo Dog (Toy)", category: "Toy"),
            Breed(name:"American Foxhound", category: "Hound"),
            Breed(name:"American Hairless Terrier", category: "Terrier"),
            Breed(name:"American Staffordshire Terrier", category: "Terrier"),
            Breed(name:"American Water Spaniel", category: "Sporting"),
            Breed(name:"Anatolian Shepherd Dog", category: "Working"),
            Breed(name:"Australian Cattle Dog", category: "Herding"),
            Breed(name:"Australian Shepherd", category: "Herding"),
            Breed(name:"Australian Terrier", category: "Terrier"),
            Breed(name:"Basenji", category: "Hound"),
            Breed(name:"Basset Hound", category: "Hound"),
            Breed(name:"Beagle", category: "Hound"),
            Breed(name:"Bearded Collie", category: "Herding"),
            Breed(name:"Beauceron", category: "Herding"),
            Breed(name:"Bedlington Terrier", category: "Terrier"),
            Breed(name:"Belgian Malinois", category: "Herding"),
            Breed(name:"Belgian Sheepdog", category: "Herding"),
            Breed(name:"Belgian Tervuren", category: "Herding"),
            Breed(name:"Bergamasco", category: "Herding"),
            Breed(name:"Berger Picard", category: "Herding"),
            Breed(name:"Bernese Mountain Dog", category: "Working"),
            Breed(name:"Bichon Frisé", category: "Non-Sporting"),
            Breed(name:"Black and Tan Coonhound", category: "Hound"),
            Breed(name:"Black Russian", category: "Terrier, Working"),
            Breed(name:"Bloodhound", category: "Hound"),
            Breed(name:"Bluetick Coonhound", category: "Hound"),
            Breed(name:"Boerboel", category: "Working"),
            Breed(name:"Border Collie", category: "Herding"),
            Breed(name:"Border Terrier", category: "Terrier"),
            Breed(name:"Borzoi", category: "Hound"),
            Breed(name:"Boston Terrier", category: "Non-Sporting"),
            Breed(name:"Bouvier des Flandres", category: "Herding"),
            Breed(name:"Boxer", category: "Working"),
            Breed(name:"Boykin Spaniel", category: "Sporting"),
            Breed(name:"Briard", category: "Herding"),
            Breed(name:"Brittany", category: "Sporting"),
            Breed(name:"Brussels Griffon", category: "Toy"),
            Breed(name:"Bull Terrier", category: "Terrier"),
            Breed(name:"Bull Terrier (Miniature)", category: "Terrier"),
            Breed(name:"Bulldog", category: "Non-Sporting"),
            Breed(name:"Bullmastiff", category: "Working"),
            Breed(name:"Cairn Terrier", category: "Terrier"),
            Breed(name:"Canaan Dog" ,category: "Working"),
            Breed(name:"Cane Corso ", category: "Working"),
            Breed(name:"Cardigan Welsh Corgi", category: "Herding"),
            Breed(name:"Cavalier King Charles Spaniel", category: "Toy"),
            Breed(name:"Cesky Terrier", category: "Terrier"),
            Breed(name:"Chesapeake Bay Retriever", category: "Sporting"),
            Breed(name:"Chihuahua", category: "Toy"),
            Breed(name:"Chinese Crested Dog", category: "Toy"),
            Breed(name:"Chinese Shar Pei", category: "Non-Sporting"),
            Breed(name:"Chinook", category: "Working"),
            Breed(name:"Chow Chow", category: "Non-Sporting"),
            Breed(name:"Cirneco dell'Etna", category: "Hound"),
            Breed(name:"Clumber Spaniel", category: "Sporting"),
            Breed(name:"Cocker Spaniel", category: "Sporting"),
            Breed(name:"Collie", category: "Herding"),
            Breed(name:"Coton de Tulear", category: " Non-Sporting"),
            Breed(name:"Curly-Coated Retriever", category: "Sporting"),
            Breed(name:"Dachshund", category: "Hound"),
            Breed(name:"Dalmatian", category: "Non-Sporting"),
            Breed(name:"Dandie Dinmont Terrier", category: "Terrier"),
            Breed(name:"Doberman Pinscher", category: "Working"),
            Breed(name:"Dogue de Bordeaux", category: "Working"),
            Breed(name:"English Cocker Spaniel", category: "Sporting"),
            Breed(name:"English Foxhound", category: "Hound"),
            Breed(name:"English Setter", category: "Sporting"),
            Breed(name:"English Springer Spaniel", category: "Sporting"),
            Breed(name:"English Toy Spaniel", category: "Toy"),
            Breed(name:"Entlebucher Mountain Dog", category: "Herding"),
            Breed(name:"Field Spaniel", category: "Sporting"),
            Breed(name:"Finnish Lapphund", category: "Herding"),
            Breed(name:"Finnish Spitz", category: "Non-Sporting"),
            Breed(name:"Flat-Coated Retriever", category: "Sporting"),
            Breed(name:"French Bulldog", category: "Non-Sporting"),
            Breed(name:"German Pinscher", category: "Working"),
            Breed(name:"German Shepherd Dog", category: "Herding"),
            Breed(name:"German Shorthaired Pointer", category: "Sporting"),
            Breed(name:"German Wirehaired Pointer", category: "Sporting"),
            Breed(name:"Giant Schnauzer", category: "Working"),
            Breed(name:"Glen of Imaal Terrier", category: "Terrier"),
            Breed(name:"Golden Retriever", category: "Sporting"),
            Breed(name:"Gordon Setter", category: " Sporting"),
            Breed(name:"Great Dane", category: " Working"),
            Breed(name:"Great Pyrenees", category: " Working"),
            Breed(name:"Greater Swiss Mountain Dog", category:  "Working"),
            Breed(name:"Greyhound", category: " Hound"),
            Breed(name:"Harrier", category: " Hound"),
            Breed(name:"Havanese", category: " Toy"),
            Breed(name:"Ibizan Hound", category: " Hound"),
            Breed(name:"Icelandic Sheepdog", category: " Herding"),
            Breed(name:"Irish Red and White Setter", category: " Sporting"),
            Breed(name:"Irish Setter", category: " Sporting"),
            Breed(name:"Irish Terrier", category: " Terrier"),
            Breed(name:"Irish Water Spaniel", category: " Sporting"),
            Breed(name:"Irish Wolfhound", category: " Hound"),
            Breed(name:"Italian Greyhound", category: " Toy"),
            Breed(name:"Japanese Chin", category: " Toy"),
            Breed(name:"Keeshond", category: " Non-Sporting"),
            Breed(name:"Kerry Blue Terrier", category: " Terrier"),
            Breed(name:"Komondor", category: " Working"),
            Breed(name:"Kuvasz", category: " Working"),
            Breed(name:"Labrador Retriever", category: " Sporting"),
            Breed(name:"Lagotto Romagnolo", category: " Sporting"),
            Breed(name:"Lakeland Terrier", category: " Terrier"),
            Breed(name:"Leonberger", category: " Working"),
            Breed(name:" Lhasa Apso", category: " Non-Sporting"),
            Breed(name:"Löwchen", category: " Non-Sporting"),
            Breed(name:"Maltese", category: " Toy"),
            Breed(name:"Manchester Terrier", category: " Terrier & Toy"),
            Breed(name:"Mastiff", category: " Working"),
            Breed(name:"Miniature American Shepherd", category: " Herding"),
            Breed(name:"Miniature Bull Terrier", category: " Terrier"),
            Breed(name:"Miniature Pinscher", category: " Toy"),
            Breed(name:"Miniature Schnauzer", category: " Terrier"),
            Breed(name:"Neapolitan Mastiff", category: " Working"),
            Breed(name:"Newfoundland", category: " Working"),
            Breed(name:"Norfolk Terrier", category: " Terrier"),
            Breed(name:"Norwegian Buhund", category: " Herding"),
            Breed(name:"Norwegian Elkhound", category: " Hound"),
            Breed(name:"Norwegian Lundehund", category: " Non-Sporting"),
            Breed(name:"Norwich Terrier", category: " Terrier"),
            Breed(name:"Nova Scotia Duck-Tolling Retriever", category: "Sporting"),
            Breed(name:"Old English Sheepdog", category: " Herding"),
            Breed(name:"Otterhound", category: " Hound"),
            Breed(name:"Papillon", category: " Toy"),
            Breed(name:"Parson Russell Terrier", category: " Terrier"),
            Breed(name:"Pekingese", category: " Toy"),
            Breed(name:"Pembroke Welsh Corgi", category: " Herding"),
            Breed(name:"Petit Basset Griffon Vendéen", category: " Hound"),
            Breed(name:"Pharaoh Hound", category: " Hound"),
            Breed(name:"Plott", category: " Hound"),
            Breed(name:"Pointer", category: " Sporting"),
            Breed(name:"Polish Lowland Sheepdog", category: " Herding"),
            Breed(name:"Pomeranian", category: " Toy"),
            Breed(name:"Poodle", category: " Non-Sporting & Toy"),
            Breed(name:"Portuguese Podengo Pequeno", category: " Hound"),
            Breed(name:"Portuguese Water Dog", category: " Working"),
            Breed(name:"Pug", category: " Toy"),
            Breed(name:"Puli", category: " Herding"),
            Breed(name:"Pyrenean Shepherd", category: " Herding"),
            Breed(name:"Rat Terrier", category: " Terrier"),
            Breed(name:"Redbone Coonhound", category: " Hound"),
            Breed(name:"Rhodesian Ridgeback", category: " Hound"),
            Breed(name:"Rottweiler", category: " Working"),
            Breed(name:"Russell Terrier", category: " Terrier"),
            Breed(name:"St. Bernard", category: " Working"),
            Breed(name:"Saluki", category: " Hound"),
            Breed(name:"Samoyed", category: " Working"),
            Breed(name:"Schipperke", category: " Non-Sporting"),
            Breed(name:"Scottish Deerhound", category: " Hound"),
            Breed(name:"Scottish Terrier", category: " Terrier"),
            Breed(name:"Sealyham Terrier", category: " Terrier"),
            Breed(name:"Shetland Sheepdog", category: " Herding"),
            Breed(name:"Shiba Inu", category: " Non-Sporting"),
            Breed(name:"Shih Tzu", category: " Toy"),
            Breed(name:"Siberian Husky", category: " Working"),
            Breed(name:"Silky Terrier", category: " Toy"),
            Breed(name:"Skye Terrier", category: " Terrier"),
            Breed(name:"Smooth Fox Terrier", category: " Terrier"),
            Breed(name:"Soft-Coated Wheaten Terrier", category: " Terrier"),
            Breed(name:"Spanish Water Dog", category: " Herding"),
            Breed(name:"Spinone Italiano", category: " Sporting"),
            Breed(name:"Staffordshire Bull Terrier", category: " Terrier"),
            Breed(name:"Standard Schnauzer", category: " Working"),
            Breed(name:"Sussex Spaniel", category: " Sporting"),
            Breed(name:"Swedish Vallhund", category: " Herding"),
            Breed(name:"Tibetan Mastiff", category: " Working"),
            Breed(name:"Tibetan Spaniel", category: " Non-Sporting"),
            Breed(name:"Tibetan Terrier", category: "Non-Sporting"),
            Breed(name:"Toy Fox Terrier", category: "Toy"),
            Breed(name:"Treeing Walker Coonhound", category: "Hound"),
            Breed(name:"Vizsla", category: " Sporting"),
            Breed(name:"Weimaraner", category: " Sporting"),
            Breed(name:"Welsh Springer Spaniel", category: " Sporting"),
            Breed(name:"Welsh Terrier", category: " Terrier"),
            Breed(name:"West Highland White Terrier", category: " Terrier"),
            Breed(name:"Whippet", category: "Hound"),
            Breed(name:"Wire Fox Terrier", category: " Terrier"),
            Breed(name:"Wirehaired Pointing Griffon", category: " Sporting"),
            Breed(name:"Wirehaired Vizsla", category: " Sporting"),
            Breed(name:"Xoloitzcuintli", category: " Non-Sporting"),
            Breed(name:"Yorkshire Terrier", category: "Toy")]
        
        
        
        
        

        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func viewWillAppear(animated: Bool) {
        
        
        super.viewWillAppear(animated)
    }
 
    // MARK: - Table view data source
    
    func filterContentForSearchText(searchText: String) {
        filteredBreeds = breeds.filter { Breed in
            return Breed.name.lowercaseString.containsString(searchText.lowercaseString)
        }
        
        tableView.reloadData()
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (resultSearchController.active && resultSearchController.searchBar.text != "") {
            return filteredBreeds.count
        }else{
            
            return breeds.count

            
        }
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        let myDogBreed : Breed
        
        if (resultSearchController.active && resultSearchController.searchBar.text != "") {
            
            myDogBreed = filteredBreeds[indexPath.row]
            
        }else{
        
            myDogBreed = breeds[indexPath.row]
        }
        
        cell.textLabel!.text = myDogBreed.name
        cell.detailTextLabel!.text = myDogBreed.category
        
        return cell
    }
    
//    // MARK: - Segues
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "ProfileViewController" {
//            if let indexPath = tableView.indexPathForSelectedRow {
//                let breed: Breed
//                if searchController.active && searchController.searchBar.text != "" {
//                    candy = filteredCandies[indexPath.row]
//                } else {
//                    candy = candies[indexPath.row]
//                }
//                let controller = (segue.destinationViewController as! UINavigationController).topViewController as! DetailViewController
//                controller.detailCandy = candy
//                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem()
//                controller.navigationItem.leftItemsSupplementBackButton = true
//            }
//        }
//    }
//    
}

extension TableViewController: UISearchBarDelegate {
    // MARK: - UISearchBar Delegate
    func searchBar(searchBar: UISearchBar) {
        filterContentForSearchText(searchBar.text!)
    }
}

extension TableViewController: UISearchResultsUpdating {
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
}
