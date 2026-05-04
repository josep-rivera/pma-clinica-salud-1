import UIKit

class PacientesListaVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let pacientes: [Paciente] = [
        Paciente(nombre: "María Flores Quispe", diagnostico: "Hipertensión Arterial",
                 dni: "47382192", edad: 42, tipoSangre: "O+",
                 telefono: "+51 987 654 321", alergias: ["PENICILINA", "FRUTOS SECOS"],
                 historial: "Paciente con HTA desde 2019. Tratamiento con Enalapril 10mg. Controles mensuales. Última presión registrada: 130/85.",
                 foto: "paciente1", activo: true),
        Paciente(nombre: "Carlos Mamani Torres", diagnostico: "Diabetes Mellitus T2",
                 dni: "43219876", edad: 55, tipoSangre: "A+",
                 telefono: "+51 976 543 210", alergias: [],
                 historial: "Diabetes diagnosticada hace 5 años. Metformina 850mg. Hemoglobina glicosilada en control.",
                 foto: "paciente2", activo: true),
        Paciente(nombre: "Rosa Huanca Ccori", diagnostico: "Asma Bronquial",
                 dni: "48123456", edad: 34, tipoSangre: "B+",
                 telefono: "+51 965 432 109", alergias: ["ÁCAROS"],
                 historial: "Asma leve persistente. Salbutamol de rescate. Evitar exposición a polvo.",
                 foto: "paciente3", activo: false),
        Paciente(nombre: "Jorge Condori Apaza", diagnostico: "Lumbalgia Crónica",
                 dni: "45678901", edad: 48, tipoSangre: "O-",
                 telefono: "+51 954 321 098", alergias: [],
                 historial: "Lumbalgia mecánica crónica. Fisioterapia semanal. Ibuprofeno 400mg según dolor.",
                 foto: "paciente4", activo: true),
        Paciente(nombre: "Ana Quispe Calla", diagnostico: "Hipotiroidismo",
                 dni: "46789012", edad: 38, tipoSangre: "AB+",
                 telefono: "+51 943 210 987", alergias: [],
                 historial: "Hipotiroidismo primario. Levotiroxina 50mcg en ayunas. TSH en rango normal.",
                 foto: "paciente5", activo: true),
        Paciente(nombre: "Luis Ramos Huamán", diagnostico: "Insuficiencia Cardíaca",
                 dni: "44567890", edad: 63, tipoSangre: "A-",
                 telefono: "+51 932 109 876", alergias: ["ASPIRINA"],
                 historial: "ICC leve. Fracción de eyección 48%. Control con cardiología cada 3 meses.",
                 foto: "paciente6", activo: true)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Pacientes"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 72
        tableView.backgroundColor = UIColor(hex: "#F0F4F5")
        tableView.separatorStyle = .none
        navigationController?.navigationBar.tintColor = UIColor(hex: "#5DAEAF")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pacientes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pacienteCell", for: indexPath) as! PacienteCell
        let p = pacientes[indexPath.row]
        cell.nombreLabel.text = p.nombre
        cell.diagnosticoLabel.text = p.diagnostico
        cell.fotoPaciente.image = UIImage(named: p.foto) ?? UIImage(systemName: "person.fill")
        cell.activoDot.backgroundColor = p.activo ? UIColor(hex: "#2ECC71") : UIColor.lightGray
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "irADetallePaciente", sender: pacientes[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "irADetallePaciente",
           let destino = segue.destination as? PacienteDetalleVC,
           let paciente = sender as? Paciente {
            destino.paciente = paciente
        }
    }
}
