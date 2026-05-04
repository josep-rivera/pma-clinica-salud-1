import Foundation

class Especialidad: NSObject {
    var nombre: String
    var descripcion: String
    var icono: String // SF Symbol name
    var doctoresAsociados: [String]
    var numeroDoctores: Int
    
    init(nombre: String, descripcion: String, icono: String,
         doctoresAsociados: [String], numeroDoctores: Int) {
        self.nombre = nombre
        self.descripcion = descripcion
        self.icono = icono
        self.doctoresAsociados = doctoresAsociados
        self.numeroDoctores = numeroDoctores
    }
}
