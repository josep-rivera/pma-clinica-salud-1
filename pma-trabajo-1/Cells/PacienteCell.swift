import UIKit

class PacienteCell: UITableViewCell {
    @IBOutlet weak var fotoPaciente: UIImageView!
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var diagnosticoLabel: UILabel!
    @IBOutlet weak var activoDot: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        fotoPaciente.layer.cornerRadius = 26
        fotoPaciente.clipsToBounds = true
        activoDot.layer.cornerRadius = 5
    }
}
