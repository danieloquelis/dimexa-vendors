class Strings {
  static const dbErrorMessage = "Ocurrió un error con el sistema de base de datos local, porfavor contacta a un supervisor.";
  static const serverDefaultError = "Error en el servidor, porfavor intenta otra vez o contacta a un supervisor.";
  static const socketDefaultError = "Necesitas conexión a internet si es la primera vez que usas el sistema.";
  static const timeoutDefaultError = "Tiempo de espera alcanzado, porfavor intenta otra vez o contacta a un supervisor.";
  static const unknownDefaultError = "Ha ocurrido un error tratando de comunicar con el servidor, porfavor contacta a un supervisor.";
  static const systemError = "Un error en el sistema ha ocurrido, porfavor contacta a un supervisor";

  static const phonePermissionError = "Los permisos de teléfono son obligatorios para el correcto funcionamiento de la app, otorga permisos desde ajustes del sistema y luego reinicia la aplicación.";
  static const validateDeviceError = "Ha ocurrido un error tratando de validar tu dispositivo, porfavor intenta otra vez o contacta a tu supervisor.";
  static const deviceNotValidatedError = "Este equipo no está autorizado para utilizar la aplicación, si crees que existe un error porfavor contacta a un supervisor.";
  static List<String> productHeaders = [
    "Descripción",
    "Código",
    "Línea",
    "Stock",
    "Cant."
  ];
  static List<String> priceScaleHeaders = [
    "Cant.", //quantity
    "P.Unit", //unit price
    "P.Cont",
    "P.C/E",
    "P.Con Prom"
  ];
  static List<String> bonificationHeaders = [
    "Código",
    "Descripción",
    "Tramo",
    "Cant."
  ];
  static List<String> productInfoHeaders = [
    "Lote",
    "Vencimiento",
    "Stock"
  ];
  static List<String> basePrice = [
    "Código",
    "Descripción",
    "VVF"
  ];
  static List<String> discountHeaders = [
    "Cant",
    "Finan",
    "Bon",
    "Lab",
    "Adi",
    "Dime",
    "C/E",
    "P.Unit"
  ];
}