
import UIKit
import Kingfisher

class PostCell: UICollectionViewCell {
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var timestamp: UILabel!
    @IBOutlet weak var display: UIView!
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var postPicture: UIImageView!
    
    override func prepareForReuse() {
        username.text = nil
        timestamp.text = nil
        details.text = nil
    }
    

    
    func setup(with model: PostModel) {
        guard let url = URL(string: model.display ?? "") else {
            return
        }
        postPicture.kf.setImage(with: url)
        username.text = model.username
        timestamp.text = dateFromInt(number: model.timestamp ?? 0 )
        details.text = model.description
    }
    
    override func layoutSubviews() {
       // display.backgroundColor = .white
    
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
       
        
    }
    
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
   
    
  
}

func dateFromInt(number: Int) -> String {
        let date =  Date(timeIntervalSince1970: TimeInterval(number))
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
