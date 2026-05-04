import UIKit

class PacienteDetalleVC: UIViewController {
    
    @IBOutlet weak var fotoImageView: UIImageView!
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var diagnosticoLabel: UILabel!
    @IBOutlet weak var dniLabel: UILabel!
    @IBOutlet weak var edadLabel: UILabel!
    @IBOutlet weak var tipoSangreLabel: UILabel!
    @IBOutlet weak var telefonoLabel: UILabel!
    @IBOutlet weak var alergiasLabel: UILabel!
    @IBOutlet weak var historialLabel: UILabel!
    
    var paciente: Paciente?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let p = paciente else { return }
        title = p.nombre
        
        fotoImageView.image = UIImage(named: p.foto) ?? UIImage(systemName: "person.fill")
        fotoImageView.layer.cornerRadius = 50
        fotoImageView.clipsToBounds = true
        fotoImageView.layer.borderWidth = 3
        fotoImageView.layer.borderColor = UIColor(hex: "#5DAEAF").cgColor
        
        nombreLabel.text = p.nombre
        diagnosticoLabel.text = p.diagnostico
        dniLabel.text = p.dni
        edadLabel.text = "\(p.edad) años"
        tipoSangreLabel.text = p.tipoSangre
        telefonoLabel.text = p.telefono
        alergiasLabel.text = p.alergias.isEmpty ? "Sin alergias registradas" : p.alergias.joined(separator: ", ")
        historialLabel.text = p.historial
    }
}
