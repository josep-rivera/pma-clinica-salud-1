import UIKit

class CitaCell: UITableViewCell {
    @IBOutlet weak var horaLabel: UILabel!
    @IBOutlet weak var pacienteLabel: UILabel!
    @IBOutlet weak var especialidadTipoLabel: UILabel!
    @IBOutlet weak var estadoBadge: UILabel!
    @IBOutlet weak var barraEstado: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        estadoBadge.layer.cornerRadius = 8
        estadoBadge.clipsToBounds = true
        estadoBadge.font = UIFont.systemFont(ofSize: 11, weight: .bold)
        estadoBadge.textAlignment = .center
        horaLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        horaLabel.textColor = UIColor(hex: "#1D3557")
        pacienteLabel.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        pacienteLabel.textColor = UIColor(hex: "#1D3557")
        especialidadTipoLabel.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        especialidadTipoLabel.textColor = UIColor(hex: "#6B7280")
        barraEstado.layer.cornerRadius = 2
    }
    
    func configurarEstado(_ estado: String) {
        estadoBadge.text = " \(estado) "
        switch estado {
        case "CONFIRMADA":
            estadoBadge.backgroundColor = UIColor(hex: "#2ECC71")
            barraEstado.backgroundColor = UIColor(hex: "#2ECC71")
        case "CANCELADA":
            estadoBadge.backgroundColor = UIColor(hex: "#EF4444")
            barraEstado.backgroundColor = UIColor(hex: "#EF4444")
        default:
            estadoBadge.backgroundColor = UIColor(hex: "#F59E0B")
            barraEstado.backgroundColor = UIColor(hex: "#F59E0B")
        }
        estadoBadge.textColor = .white
    }
}
