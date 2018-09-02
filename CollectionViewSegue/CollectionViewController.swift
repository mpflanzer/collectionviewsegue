//
//  CollectionViewController.swift
//  CollectionViewSegue
//
//  Created by Moritz Pflanzer on 02.09.18.
//  Copyright © 2018 Moritz Pflanzer. All rights reserved.
//

import Cocoa

class CollectionViewController: NSViewController, NSCollectionViewDataSource {
    @IBOutlet weak var collectionView: NSCollectionView!

    let items = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight"]

    func numberOfSections(in collectionView: NSCollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }

    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let item = collectionView.makeItem(withIdentifier: NSUserInterfaceItemIdentifier("CollectionItem"), for: indexPath)

        item.textField?.stringValue = self.items[indexPath.item]

        return item
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.

        let itemNib = NSNib(nibNamed: NSNib.Name(rawValue: "CollectionViewItem"), bundle: nil)
        self.collectionView.register(itemNib, forItemWithIdentifier: NSUserInterfaceItemIdentifier("CollectionItem"))
    }
    
}
