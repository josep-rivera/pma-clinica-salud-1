import UIKit

class Paciente: NSObject {
    var nombre: String
    var diagnostico: String
    var dni: String
    var edad: Int
    var tipoSangre: String
    var telefono: String
    var alergias: [String]
    var historial: String
    var foto: String // nombre del asset
    var activo: Bool
    
    init(nombre: String, diagnostico: String, dni: String, edad: Int,
         tipoSangre: String, telefono: String, alergias: [String],
         historial: String, foto: String, activo: Bool) {
        self.nombre = nombre
        self.diagnostico = diagnostico
        self.dni = dni
        self.edad = edad
        self.tipoSangre = tipoSangre
        self.telefono = telefono
        self.alergias = alergias
        self.historial = historial
        self.foto = foto
        self.activo = activo
    }
}
