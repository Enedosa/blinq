
import UIKit
import AVKit

class ViewController: UIViewController, AVPlayerViewControllerDelegate {
    var post = PostViewModel()
    let playerLayer = AVPlayerLayer()

  
    @IBOutlet weak var CollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionView.dataSource = self
        CollectionView.delegate = self
    
        post.getData()
        populateCollectionView()
    }
    
    
    func populateCollectionView() {
        post.completion = { [weak self] in
            self?.CollectionView.reloadData()
        }
    }
    @objc func playVideo(urlstring: String) {
        guard let url = URL(string: urlstring) else {
            return
        }
        let player = AVPlayer(url: url)
        playerLayer.player = player
//        playerLayer.delegate = self
//        playerLayer.allowsPictureInPicturePlayback = true
//        playerLayer.player?.play()
//        self.present(playerLayer, animated: true)
        playerLayer.frame = self.view.bounds
        self.view.layer.addSublayer(playerLayer)
        player.play()
    }
}


extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        post.post.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? PostCell else {
            return UICollectionViewCell()
        }

        let data = post.post[indexPath.row]
        

        cell.setup(with: data)

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        
        let post = post.post[indexPath.row]
        if post.video == true {
            guard let display = post.display else {
                return
            }
            
            playVideo(urlstring: display)
        }
    }


}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CollectionView.frame.width, height: 400)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        20.0
    }
}

