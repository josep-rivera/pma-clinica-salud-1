import Foundation

class Cita: NSObject {
    var paciente: String
    var doctor: String
    var especialidad: String
    var tipo: String
    var fecha: String
    var hora: String
    var estado: String // "CONFIRMADA" | "PENDIENTE" | "CANCELADA"
    var consultorio: String
    var notas: String
    
    init(paciente: String, doctor: String, especialidad: String,
         tipo: String, fecha: String, hora: String,
         estado: String, consultorio: String, notas: String) {
        self.paciente = paciente
        self.doctor = doctor
        self.especialidad = especialidad
        self.tipo = tipo
        self.fecha = fecha
        self.hora = hora
        self.estado = estado
        self.consultorio = consultorio
        self.notas = notas
    }
}
