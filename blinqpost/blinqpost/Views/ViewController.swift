////
////  ViewController.swift
////  blinqpost
////
//
//
//import UIKit
//
//class ViewController: UIViewController {
//    var post = PostViewModel()
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .blue
//   
//
//        // Do any additional setup after loading the view.
//        post.getData()
//    }
//  
//    lazy var tableView:UITableView = {
//        let tableView = UITableView()
//        tableView.frame = view.frame
//        tableView.translatesAutoresizingMaskIntoConstraints = false
//        tableView.backgroundColor = .systemGray
//        return tableView
//        
//    }()
//    
////    let viewLayout = UICollectionViewFlowLayout()
////    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: viewLayout)
////    collectionView.translatesAutoresizingMaskIntoConstraints = false
////    collectionView.backgroundColor = .white
////    return collectionView
//
//    func setupTable(){
//        collectionView.register(PostCollectionViewCell.self, forCellWithReuseIdentifier: PostCollectionViewCell.identifier)
//        tableView.frame = view.bounds
//        collectionView.backgroundColor = .white
//        collectionView.dataSource = self
//    }
//
//    func setUpViews(){
//        view.addSubview(tableView)
//        let layout = view.safeAreaLayoutGuide
//        NSLayoutConstraint.activate([
//           tableView.topAnchor.constraint(equalTo: layout.topAnchor),
//            tableView.bottomAnchor.constraint(equalTo: layout.bottomAnchor),
//            tableView.leftAnchor.constraint(equalTo: layout.leftAnchor),
//            tableView.rightAnchor.constraint(equalTo: layout.rightAnchor)
//        ])
//        
//    }
//    // Layout constraints for `collectionView`
//  
//
//
//}
//
//extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        20
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
////        let postCell = collectionView.dequeueReusableCell(withReuseIdentifier: PostCollectionViewCell.identifier, for: indexPath)
//        
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
//        cell.textLabel = "Hello"
//        
//        return cell
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//    
//    }
//    
//    
//    
//
//}
