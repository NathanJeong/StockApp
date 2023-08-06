//
//  ViewController.swift
//  StockApp
//
//  Created by 정동현 on 2023/08/06.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!

    let stockList: [StockModel] = StockModel.list

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stockList.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellData = collectionView.dequeueReusableCell(withReuseIdentifier: "StockCollectionViewCell", for: indexPath)
        //return UICollectionViewCell()
        return cellData
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {

}

