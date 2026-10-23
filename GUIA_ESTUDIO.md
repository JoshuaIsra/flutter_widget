# Guía de estudio Flutter 📚

## 0. Flutter en una frase
En Flutter **todo es un widget**. Un widget es una pieza de la pantalla: un texto, un botón, una imagen, una tarjeta…
Armas tu app **metiendo unas piezas dentro de otras**, como cajas.

---

## 1. Padre, hijo, `child` y `children` 📦

Si una caja está **dentro** de otra:
- la de afuera es el **padre**
- la de adentro es el **hijo**

```
Center        ← padre
  └─ Text     ← hijo
```

### `child` = UN hijo
```dart
Center(
  child: Text('Hola'),
)
```
Es como **una caja donde solo cabe un juguete**.
Ejemplos: `Center`, `Padding`, `Card`, `Align`, `Expanded`

### `children` = VARIOS hijos (van en una lista `[ ]`)
```dart
Column(
  children: [
    Text('Uno'),
    Text('Dos'),
    Text('Tres'),
  ],
)
```
Es como **una repisa con varios juguetes**.

- **`Column`** → uno **debajo** del otro ⬇️
- **`Row`** → uno **al lado** del otro ➡️

```
Column:        Row:
[ Uno  ]       [ Uno ][ Dos ][ Tres ]
[ Dos  ]
[ Tres ]
```

🧠 **Truco:** *children* es plural → **muchos**.

---

## 2. Stateless vs Stateful 🗿🔄

**Stateless** = **no cambia**. Es como una **foto**.
> Ejemplos: `HomeScreen`, `HeroCard`

**Stateful** = **sí cambia**. Es como un **marcador de fútbol**.
> Ejemplo: `CardProduct`, donde el **contador** sube y baja con ➕ / ➖

**`setState()`** = le dice a Flutter *"algo cambió, vuelve a dibujar"*.
```dart
setState(() => contador++);
```

🧠 **Truco:** **State** = "estado" = algo que puede cambiar.

---

## 3. Scaffold 🏠
Es el **esqueleto** de una pantalla:

```
┌──────────────────┐
│ AppBar (título)  │  ← barra de arriba
├──────────────────┤
│                  │
│      body        │  ← el contenido
│                  │
│              (+) │  ← floatingActionButton
└──────────────────┘
```

---

## 4. main, runApp y MaterialApp 🚀
- **`main()`** es donde **arranca** la app
- **`runApp()`** **enciende** la app
- **`MaterialApp`** es la **app completa** (aquí van las rutas y el tema)

---

## 5. Navegación 🧭
Las pantallas se **apilan** como platos 🍽️.

- **`Navigator.pushNamed`** pone un plato encima → **ir** a otra pantalla
- **`Navigator.pop`** quita el de arriba → **regresar**

```dart
Navigator.pushNamed(context, '/buttons'); // ir
Navigator.pop(context);                   // volver
```
Las **rutas** son las "direcciones" de cada pantalla: `'/buttons'`, `'/cards'`.

---

## 6. ListView.builder 📜
Hace una **lista con scroll** (como el menú del Home).
- **`itemCount`**: cuántos elementos hay
- **`itemBuilder`**: cómo se ve cada uno

**`ListTile`** = una fila ya hecha:
```
[icono]  Título            [>]
leading   title          trailing
```

---

## 7. Botones 🔘
| Botón | Cómo se ve |
|---|---|
| `TextButton` | solo texto |
| `ElevatedButton` | con sombrita |
| `FilledButton` | relleno de color |
| `OutlinedButton` | solo borde |
| `IconButton` | solo icono |
| `FloatingActionButton` | redondo flotando |

- **`onPressed`** = lo que pasa al apretar
- **`onPressed: null`** = botón **desactivado** (gris)

---

## 8. Card 🃏
Una **tarjeta** con esquinas redondas y sombra.
- **`elevation`**: qué tanta sombra tiene
- **`margin`**: espacio **afuera** de la tarjeta

---

## 9. Espacios y acomodo 📐
- **`Padding`** = espacio **adentro** (como el relleno de un sándwich 🥪)
- **`margin`** = espacio **afuera**
- **`SizedBox(height: 10)`** = un **hueco** entre cosas
- **`Center`** = centra
- **`Align`** = acomoda a un lado (izquierda, abajo…)
- **`Expanded`** = *"ocupa todo lo que sobra"*

---

## 10. Imágenes 🖼️
- **`Image.network('url')`** → viene de **internet** 🌐
- **`Image.asset('assets/...')`** → viene de **tu proyecto** 📁 (hay que declararla en `pubspec.yaml`)
- **`ClipRRect`** → le **redondea las esquinas** a la imagen ✂️

---

## 11. Scroll 📱
**`SingleChildScrollView`** permite **deslizar** cuando el contenido no cabe en la pantalla.

---

## 12. Tema (colores) 🎨
- **`ThemeData`** = colores y estilo de **toda la app**
- **`theme`** = modo claro ☀️
- **`darkTheme`** = modo oscuro 🌙
- **`AppColors`** = tu paleta de colores guardada en un solo lugar

---

## ⚡ Resumen ultra corto
- Todo es **widget**
- **child** = 1 hijo, **children** = varios (Column ⬇️, Row ➡️)
- **Stateless** no cambia, **Stateful** sí cambia (con `setState`)
- **Scaffold** = esqueleto de la pantalla
- **Navigator**: push para ir, pop para volver
- **ListView** = lista con scroll
- **Padding** es adentro, **margin** es afuera
- **Theme** = colores de la app
