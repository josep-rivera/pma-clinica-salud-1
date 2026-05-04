import UIKit

class Doctor: NSObject {
    var nombre: String
    var especialidad: String
    var cmp: String
    var biografia: String
    var horario: [(dias: String, horas: String)]
    var foto: String
    var disponible: Bool
    
    init(nombre: String, especialidad: String, cmp: String,
         biografia: String, horario: [(dias: String, horas: String)],
         foto: String, disponible: Bool) {
        self.nombre = nombre
        self.especialidad = especialidad
        self.cmp = cmp
        self.biografia = biografia
        self.horario = horario
        self.foto = foto
        self.disponible = disponible
    }
}
