import UIKit

class CitasListaVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let citas: [Cita] = [
        Cita(paciente: "Carlos Mendoza", doctor: "Dr. Ricardo Vargas",
             especialidad: "Cardiología", tipo: "Control Anual",
             fecha: "05 Mayo 2025", hora: "09:00 AM",
             estado: "PENDIENTE", consultorio: "201",
             notas: "Traer resultados de último ECG y perfil lipídico."),
        Cita(paciente: "Elena Rivas", doctor: "Dra. Sofía Mendoza",
             especialidad: "Dermatología", tipo: "Revisión",
             fecha: "05 Mayo 2025", hora: "09:45 AM",
             estado: "CONFIRMADA", consultorio: "105",
             notas: "Control post-tratamiento acné."),
        Cita(paciente: "Julián Castro", doctor: "Dra. Lucía Paredes",
             especialidad: "Pediatría", tipo: "Vacunación",
             fecha: "05 Mayo 2025", hora: "10:30 AM",
             estado: "CANCELADA", consultorio: "302",
             notas: "Paciente canceló por viaje."),
        Cita(paciente: "Sofía Guerrero", doctor: "Dr. Emilio Chávez",
             especialidad: "Odontología", tipo: "Limpieza",
             fecha: "05 Mayo 2025", hora: "11:15 AM",
             estado: "PENDIENTE", consultorio: "204",
             notas: "Primera visita del año."),
        Cita(paciente: "Marcos Valdés", doctor: "Dr. Andrés Quispe",
             especialidad: "Neurología", tipo: "Seguimiento",
             fecha: "05 Mayo 2025", hora: "12:00 PM",
             estado: "CONFIRMADA", consultorio: "401",
             notas: "Revisar resultados de resonancia magnética."),
        Cita(paciente: "Rosa Huanca", doctor: "Dra. Sofía Mendoza",
             especialidad: "Medicina General", tipo: "Control",
             fecha: "05 Mayo 2025", hora: "14:00 PM",
             estado: "PENDIENTE", consultorio: "101",
             notas: "Control rutinario mensual.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Citas"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 90
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return citas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "citaCell", for: indexPath) as! CitaCell
        let c = citas[indexPath.row]
        cell.horaLabel.text = c.hora
        cell.pacienteLabel.text = c.paciente
        cell.especialidadTipoLabel.text = "\(c.especialidad) • \(c.tipo)"
        cell.configurarEstado(c.estado)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "irADetalleCita", sender: citas[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "irADetalleCita",
           let destino = segue.destination as? CitaDetalleVC,
           let cita = sender as? Cita {
            destino.cita = cita
        }
    }
}
