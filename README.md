# cuatrochenta_weather_rodrigo

Prueba Técnica  480 - Rodrigo Ballesteros Cabañas

## Plugins Principales Utilizados
get -> Con este plugin manejo todo el proyecto: traducciones, comprobación de plataforma, programación reactiva para no utilizar setState (.obs y Obx) y 
       uso de GetXController como alternativa a Singleton, Provider o Bloc.

flutter_screenutil -> Utilizo este plugin para adaptar la app a cualquier tamaño de pantalla, primero se define en el main el tamaño base y luego en el resto
                     de la app he ido añadiendo en cada espacio o paddings las siguientes directivas: .w (ancho), .h (alto), .r (radio) y .sp (tamaño fuente).

http -> Plugin para realizar llamadas http y obtener la información de la API OpenWeather.

lottie -> Plugin utilizado en el splash para mostrar una animación Lottie Json.

animate_do -> Plugin para dotar muy facilmente con alguna animación al widget seleccionado, lo he utilizado en la home para hacer más dinámico los idiomas y la
              bottom navigation bar.

auto_size_text -> Plugin para añadir widgets de texto a la app, cuando no cabe en algunas pantallas se adapta haciendo un resize del tamaño.

cached_network_image -> Con este plugin podemos añadir placeholder mientras se está cargando la url de la imagen y permite añadir un pequeño loader mientras carga.

freezed -> Este plugin sirve para manejar los modelos de la aplicación y hacer cambios rapidamente. Mediante el siguiente comando actualizamos los modelos y genera
           automáticamente todos los métodos necesarios para trabajar con los modelos como toJson() y fromJson().
            
           flutter pub run build_runner build --delete-conflicting-outputs

## SVG

Para no ocupar más espacio en los assets del proyecto, utilizo una herramienta llamada "https://fluttershapemaker.com/", de esta forma podemos convertir cualquier
recurso svg en un fichero del proyecto, el cual podemos llamar con un CustomPaint y podemos ahorrar espacio de recursos.
