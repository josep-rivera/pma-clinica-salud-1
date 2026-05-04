import UIKit

class EspecialidadDetalleVC: UIViewController {
    
    @IBOutlet weak var iconoImageView: UIImageView!
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var descripcionLabel: UILabel!
    @IBOutlet weak var doctoresLabel: UILabel!
    @IBOutlet weak var numeroDoctoresLabel: UILabel!
    
    var especialidad: Especialidad?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let e = especialidad else { return }
        title = e.nombre
        
        iconoImageView.image = UIImage(systemName: e.icono)
        iconoImageView.tintColor = UIColor(hex: "#5DAEAF")
        nombreLabel.text = e.nombre
        descripcionLabel.text = e.descripcion
        doctoresLabel.text = e.doctoresAsociados.joined(separator: "\n")
        numeroDoctoresLabel.text = "\(e.numeroDoctores) doctores"
    }
}
