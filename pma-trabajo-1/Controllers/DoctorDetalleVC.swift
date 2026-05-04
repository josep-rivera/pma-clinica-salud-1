import UIKit

class DoctorDetalleVC: UIViewController {
    
    @IBOutlet weak var fotoImageView: UIImageView!
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var especialidadLabel: UILabel!
    @IBOutlet weak var cmpLabel: UILabel!
    @IBOutlet weak var horarioLabel: UILabel!
    @IBOutlet weak var biografiaLabel: UILabel!
    
    var doctor: Doctor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let d = doctor else { return }
        title = d.nombre
        
        fotoImageView.image = UIImage(named: d.foto) ?? UIImage(systemName: "person.fill")
        fotoImageView.layer.cornerRadius = 50
        fotoImageView.clipsToBounds = true
        fotoImageView.layer.borderWidth = 3
        fotoImageView.layer.borderColor = UIColor(hex: "#5DAEAF").cgColor
        
        nombreLabel.text = d.nombre
        especialidadLabel.text = d.especialidad
        especialidadLabel.textColor = UIColor(hex: "#5DAEAF")
        cmpLabel.text = d.cmp
        horarioLabel.text = d.horario.map { "\($0.dias): \($0.horas)" }.joined(separator: "\n")
        biografiaLabel.text = d.biografia
    }
}
