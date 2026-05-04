import UIKit

class MenuTableVC: UITableViewController {
    
    let opciones = ["Pacientes", "Doctores", "Citas", "Especialidades"]
    let descripciones = [
        "Directorio y expedientes clínicos",
        "Especialistas y turnos activos",
        "Calendario y nuevas solicitudes",
        "Áreas médicas y servicios"
    ]
    let iconos = ["person.2.fill", "stethoscope", "calendar.badge.clock", "cross.case.fill"]
    let segues = ["irAPacientes", "irADoctores", "irACitas", "irAEspecialidades"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ClinicaSalud"
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationController?.navigationBar.tintColor = UIColor(hex: "#5DAEAF")
        tableView.rowHeight = 64
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return opciones.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath)
        
        var config = cell.defaultContentConfiguration()
        config.text = opciones[indexPath.row]
        config.secondaryText = descripciones[indexPath.row]
        config.image = UIImage(systemName: iconos[indexPath.row])
        config.imageProperties.tintColor = UIColor(hex: "#5DAEAF")
        cell.contentConfiguration = config
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: segues[indexPath.row], sender: nil)
    }
}
