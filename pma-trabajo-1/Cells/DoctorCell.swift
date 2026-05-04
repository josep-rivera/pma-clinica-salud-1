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
        fotoDoctor.layer.borderWidth = 2
        fotoDoctor.layer.borderColor = UIColor(hex: "#5DAEAF").cgColor
        fotoDoctor.contentMode = .scaleAspectFill
        disponibleDot.layer.cornerRadius = 5
        nombreLabel.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        nombreLabel.textColor = UIColor(hex: "#1D3557")
        especialidadLabel.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        especialidadLabel.textColor = UIColor(hex: "#5DAEAF")
    }
}
