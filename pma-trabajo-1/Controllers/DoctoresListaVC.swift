import UIKit

class DoctoresListaVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let doctores: [Doctor] = [
        Doctor(nombre: "Dr. Ricardo Vargas Ponce", especialidad: "Cardiología",
               cmp: "CMP 48291",
               biografia: "Cardiólogo con 15 años de experiencia en cardiopatías isquémicas y arritmias complejas. Fellowship en HeartCenter Lima. Miembro de la Sociedad Peruana de Cardiología.",
               horario: [("Lun – Mié", "08:00 – 13:00"), ("Jue – Vie", "14:00 – 18:00"), ("Sábado", "09:00 – 12:00")],
               foto: "doctor1", disponible: true),
        Doctor(nombre: "Dra. Lucía Paredes Salas", especialidad: "Neurología",
               cmp: "CMP 52341",
               biografia: "Neuróloga especializada en epilepsia y enfermedades cerebrovasculares. Doctorado en la UNMSM. Investigadora activa en neurociencias.",
               horario: [("Lun – Jue", "09:00 – 14:00"), ("Viernes", "09:00 – 12:00")],
               foto: "doctor2", disponible: true),
        Doctor(nombre: "Dr. Emilio Chávez Ruiz", especialidad: "Oftalmología",
               cmp: "CMP 39812",
               biografia: "Oftalmólogo con subespecialidad en retina y vítreo. Más de 2000 cirugías realizadas. Formado en el Instituto de Oftalmología.",
               horario: [("Mar – Vie", "10:00 – 16:00"), ("Sábado", "08:00 – 12:00")],
               foto: "doctor3", disponible: false),
        Doctor(nombre: "Dra. Sofía Mendoza Llanos", especialidad: "Medicina General",
               cmp: "CMP 61234",
               biografia: "Médico general con enfoque en medicina preventiva y atención primaria. Especialista en salud familiar y comunitaria.",
               horario: [("Lun – Vie", "07:00 – 13:00")],
               foto: "doctor4", disponible: true),
        Doctor(nombre: "Dr. Andrés Quispe Huanca", especialidad: "Traumatología",
               cmp: "CMP 44567",
               biografia: "Traumatólogo ortopédico especializado en cirugía de rodilla y cadera. Fellow en artroscopia avanzada.",
               horario: [("Lun – Mié", "14:00 – 19:00"), ("Jue – Vie", "08:00 – 13:00")],
               foto: "doctor5", disponible: true)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Doctores"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 72
        tableView.backgroundColor = UIColor(hex: "#F0F4F5")
        tableView.separatorStyle = .none
        navigationController?.navigationBar.tintColor = UIColor(hex: "#5DAEAF")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return doctores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "doctorCell", for: indexPath) as! DoctorCell
        let d = doctores[indexPath.row]
        cell.nombreLabel.text = d.nombre
        cell.especialidadLabel.text = d.especialidad
        cell.especialidadLabel.textColor = UIColor(hex: "#5DAEAF")
        cell.fotoDoctor.image = UIImage(named: d.foto) ?? UIImage(systemName: "person.fill")
        cell.disponibleDot.backgroundColor = d.disponible ? UIColor(hex: "#2ECC71") : UIColor.lightGray
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "irADetalleDoctor", sender: doctores[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "irADetalleDoctor",
           let destino = segue.destination as? DoctorDetalleVC,
           let doctor = sender as? Doctor {
            destino.doctor = doctor
        }
    }
}
