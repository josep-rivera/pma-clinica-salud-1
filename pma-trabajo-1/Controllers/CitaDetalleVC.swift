import UIKit

class CitaDetalleVC: UIViewController {
    
    @IBOutlet weak var estadoBadge: UILabel!
    @IBOutlet weak var pacienteLabel: UILabel!
    @IBOutlet weak var doctorLabel: UILabel!
    @IBOutlet weak var consultorioLabel: UILabel!
    @IBOutlet weak var fechaLabel: UILabel!
    @IBOutlet weak var horaLabel: UILabel!
    @IBOutlet weak var notasLabel: UILabel!
    
    var cita: Cita?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let c = cita else { return }
        title = "Detalle de Cita"
        
        estadoBadge.text = c.estado
        estadoBadge.layer.cornerRadius = 12
        estadoBadge.clipsToBounds = true
        estadoBadge.textColor = .white
        
        switch c.estado {
        case "CONFIRMADA":
            estadoBadge.backgroundColor = UIColor(hex: "#2ECC71")
        case "CANCELADA":
            estadoBadge.backgroundColor = UIColor(hex: "#EF4444")
        default:
            estadoBadge.backgroundColor = UIColor(hex: "#F59E0B")
        }
        
        pacienteLabel.text = c.paciente
        doctorLabel.text = c.doctor
        consultorioLabel.text = "N.º \(c.consultorio)"
        fechaLabel.text = c.fecha
        horaLabel.text = c.hora
        notasLabel.text = c.notas
    }
}
