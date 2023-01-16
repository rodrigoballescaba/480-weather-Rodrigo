import 'package:get/get_navigation/src/root/internacionalization.dart';

class MessagesService extends Translations {
  @override
  // ignore: long-method
  Map<String, Map<String, String>> get keys => {
        'en': {
          // Widget - Home
          "language": "Language",
          "name": "Name",
          "mail": "Mail",
          "phone": "Phone",
          "city": "City",
          "date": "Birthdate",
          "send": "Send",
          "ok": "Ok",
          "error": "Error",
          "confirmContact":"Completed form",
          "message_error_standard": "Something has gone wrong, try again.",
        },
        'es': {
          // Widget - Home
          "language": "Idioma",
          "name": "Nombre",
          "mail": "Mail",
          "phone": "Teléfono",
          "city": "Ciudad",
          "date": "Fecha de nacimiento",
          "send": "Enviar",
          "ok": "Ok",
          "error": "Error",
          "confirmContact":"Formulario completado",
          "message_error_standard": "Algo ha salido mal, inténtalo de nuevo.",
        },
      };
}
