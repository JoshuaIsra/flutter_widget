import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/appBar.dart';

class DialogsScreen extends StatelessWidget {
  const DialogsScreen({super.key});

  // Primer dialogo: info del alumno
  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Info del alumno'),
          content: Text('Nombre: Joshua Israel Martinez Diaz'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  // Segundo dialogo: confirmar eliminar
  void openAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Eliminar alumno'),
          content: Text('¿Está seguro de eliminar al alumno?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('No'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Sí'),
            ),
          ],
        );
      },
    );
  }

  // Tercer dialogo: partida encontrada
  void openAlertLol(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => PartidaDialog(),
    );
  }

  // Cuarto dialogo: resultados
  void openResultados(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Victoria'),
          content: Text('Joshua: 10/2/8\nPapu: 3/7/12\nXatu: 8/1/15'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  // Quinto dialogo: elegir campeon
  void openCampeon(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text('Elige tu campeón'),
          children: [
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context),
              child: Text('Ahri'),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context),
              child: Text('Garen'),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context),
              child: Text('Lux'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Dialogs'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () => openDialog(context),
              child: Text('Info del alumno'),
            ),
            SizedBox(height: 10),
            FilledButton(
              onPressed: () => openAlert(context),
              child: Text('Eliminar alumno'),
            ),
            SizedBox(height: 10),
            FilledButton(
              onPressed: () => openAlertLol(context),
              child: Text('Partida encontrada'),
            ),
            SizedBox(height: 10),
            FilledButton(
              onPressed: () => openResultados(context),
              child: Text('Resultados'),
            ),
            SizedBox(height: 10),
            FilledButton(
              onPressed: () => openCampeon(context),
              child: Text('Elegir campeón'),
            ),
            SizedBox(height: 10),
            FilledButton(
              // Snack 1: el basico
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('El Snack 1')),
                );
              },
              child: Text('Snack 1'),
            ),
            SizedBox(height: 10),
            FilledButton(
              // Snack 2: flotante, rojo y con boton de deshacer
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Alumno eliminado'),
                    backgroundColor: Colors.red,
                    behavior: SnackBarBehavior.floating,
                    duration: Duration(seconds: 3),
                    action: SnackBarAction(
                      label: 'Deshacer',
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                );
              },
              child: Text('Snack 2'),
            ),
          ],
        ),
      ),
    );
  }
}


// Dialogo circular de "Partida encontrada" con contador
class PartidaDialog extends StatefulWidget {
  const PartidaDialog({super.key});

  @override
  State<PartidaDialog> createState() => _PartidaDialogState();
}

class _PartidaDialogState extends State<PartidaDialog> {
  int segundos = 10;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    // Cada segundo le resta 1 al contador
    timer = Timer.periodic(Duration(seconds: 1), (t) {
      if (segundos == 1) {
        t.cancel();
        Navigator.pop(context); // se cierra solo cuando llega a 0
      } else {
        setState(() {
          segundos--;
        });
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: SizedBox(
        width: 300,
        height: 300,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Fondo circular azul con borde dorado
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF0A1428),
                border: Border.all(color: Color(0xFFC8AA6E), width: 3),
              ),
            ),
            // Aro que se va vaciando con el tiempo
            SizedBox(
              width: 280,
              height: 280,
              child: CircularProgressIndicator(
                value: segundos / 10,
                strokeWidth: 5,
                color: Color(0xFFC8AA6E),
              ),
            ),
            // Contenido del centro
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('$segundos',
                  style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Text('¡PARTIDA ENCONTRADA!',
                  style: TextStyle(color: Color(0xFFC8AA6E), fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                OutlinedButton(
                  onPressed: () => Navigator.pop(context),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color(0xFF1E2328),
                    side: BorderSide(color: Color(0xFFC8AA6E), width: 2),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  child: Text('ACEPTAR',
                    style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Rechazar', style: TextStyle(color: Colors.grey)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}