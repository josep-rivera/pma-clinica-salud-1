import UIKit

class EspecialidadesTableVC: UITableViewController {
    
    let especialidades: [Especialidad] = [
        Especialidad(nombre: "Cardiología",
                     descripcion: "Diagnóstico y tratamiento de enfermedades del corazón y sistema cardiovascular.",
                     icono: "heart.fill",
                     doctoresAsociados: ["Dr. Ricardo Vargas Ponce"],
                     numeroDoctores: 3),
        Especialidad(nombre: "Neurología",
                     descripcion: "Sistema nervioso central y periférico. Epilepsia, ACV y enfermedades neurodegenerativas.",
                     icono: "brain.head.profile",
                     doctoresAsociados: ["Dra. Lucía Paredes Salas"],
                     numeroDoctores: 2),
        Especialidad(nombre: "Oftalmología",
                     descripcion: "Salud visual y enfermedades oculares. Cirugía de retina y vítreo.",
                     icono: "eye.fill",
                     doctoresAsociados: ["Dr. Emilio Chávez Ruiz"],
                     numeroDoctores: 2),
        Especialidad(nombre: "Medicina General",
                     descripcion: "Atención primaria y medicina preventiva. Salud familiar y comunitaria.",
                     icono: "stethoscope",
                     doctoresAsociados: ["Dra. Sofía Mendoza Llanos"],
                     numeroDoctores: 4),
        Especialidad(nombre: "Traumatología",
                     descripcion: "Cirugía ortopédica y traumatológica. Especialidad en rodilla y cadera.",
                     icono: "figure.walk",
                     doctoresAsociados: ["Dr. Andrés Quispe Huanca"],
                     numeroDoctores: 2)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Especialidades"
        tableView.rowHeight = 72
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return especialidades.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "especialidadCell", for: indexPath)
        let e = especialidades[indexPath.row]
        
        var config = cell.defaultContentConfiguration()
        config.text = e.nombre
        config.secondaryText = e.descripcion
        config.image = UIImage(systemName: e.icono)
        config.imageProperties.tintColor = UIColor(hex: "#5DAEAF")
        cell.contentConfiguration = config
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "irADetalleEspecialidad", sender: especialidades[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "irADetalleEspecialidad",
           let destino = segue.destination as? EspecialidadDetalleVC,
           let especialidad = sender as? Especialidad {
            destino.especialidad = especialidad
        }
    }
}
