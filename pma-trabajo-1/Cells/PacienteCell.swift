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
        fotoPaciente.layer.borderWidth = 2
        fotoPaciente.layer.borderColor = UIColor(hex: "#5DAEAF").cgColor
        fotoPaciente.contentMode = .scaleAspectFill
        activoDot.layer.cornerRadius = 5
        nombreLabel.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        nombreLabel.textColor = UIColor(hex: "#1D3557")
        diagnosticoLabel.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        diagnosticoLabel.textColor = UIColor(hex: "#6B7280")
    }
}
