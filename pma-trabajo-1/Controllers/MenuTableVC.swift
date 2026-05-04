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
        tableView.rowHeight = 72
        tableView.backgroundColor = UIColor(hex: "#F0F4F5")
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white
        appearance.titleTextAttributes = [.foregroundColor: UIColor(hex: "#1D3557")]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor(hex: "#1D3557")]
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return opciones.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath)
        var config = cell.defaultContentConfiguration()
        config.text = opciones[indexPath.row]
        config.textProperties.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        config.textProperties.color = UIColor(hex: "#1D3557")
        config.secondaryText = descripciones[indexPath.row]
        config.secondaryTextProperties.font = UIFont.systemFont(ofSize: 13)
        config.secondaryTextProperties.color = UIColor(hex: "#6B7280")
        config.image = UIImage(systemName: iconos[indexPath.row])
        config.imageProperties.tintColor = UIColor(hex: "#5DAEAF")
        config.imageToTextPadding = 12
        cell.contentConfiguration = config
        cell.accessoryType = .disclosureIndicator
        cell.backgroundColor = .white
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: segues[indexPath.row], sender: nil)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72
    }
}
