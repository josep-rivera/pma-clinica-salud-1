import UIKit

class DoctorCell: UITableViewCell {
    @IBOutlet weak var fotoDoctor: UIImageView!
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var especialidadLabel: UILabel!
    @IBOutlet weak var disponibleDot: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        fotoDoctor.layer.cornerRadius = 26
        fotoDoctor.clipsToBounds = true
        disponibleDot.layer.cornerRadius = 5
    }
}
