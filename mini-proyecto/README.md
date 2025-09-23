# Calculadora de IMC - Mini Proyecto Flutter

Una aplicación móvil desarrollada en Flutter para calcular el Índice de Masa Corporal (IMC) con una interfaz moderna y atractiva.

## 📱 Características

- **Splash Screen animado** con logo y transiciones suaves
- **Cálculo automático del IMC** usando la fórmula estándar: IMC = Peso (kg) / Estatura² (m)
- **Clasificación completa** según los rangos médicos establecidos
- **Interfaz moderna** con Material Design 3
- **Imágenes personalizadas** para cada clasificación de IMC
- **Validación de entrada** para asegurar datos correctos
- **Pantalla de resultados detallada** con información completa

## 🎯 Funcionalidades

### Pantallas
1. **Splash Screen**: Pantalla de bienvenida con animaciones
2. **Pantalla Principal**: Formulario para ingresar peso y estatura
3. **Pantalla de Resultados**: Muestra el IMC calculado, clasificación e imagen correspondiente

### Clasificaciones de IMC
- **Peso Bajo** (IMC < 18): Necesario valorar signos de desnutrición
- **Normal** (18 - 24.9): Peso saludable
- **Obesidad** (25 - 26.9): Sobrepeso
- **Obesidad grado I** (27 - 29.9): Riesgo relativo para enfermedades cardiovasculares
- **Obesidad grado II** (30 - 39.9): Riesgo relativo muy alto
- **Obesidad grado III** (≥ 40): Extrema o mórbida

## 🛠️ Tecnologías Utilizadas

- **Flutter**: Framework de desarrollo móvil
- **Dart**: Lenguaje de programación
- **Material Design 3**: Sistema de diseño
- **Flutter SVG**: Para mostrar imágenes vectoriales
- **Animaciones**: Transiciones y efectos visuales

## 📁 Estructura del Proyecto

```
lib/
├── main.dart                 # Punto de entrada de la aplicación
├── models/
│   └── bmi_model.dart       # Modelo de datos para IMC
├── screens/
│   ├── splash_screen.dart   # Pantalla de bienvenida
│   ├── home_screen.dart     # Pantalla principal
│   └── result_screen.dart   # Pantalla de resultados
└── utils/                   # Utilidades (futuro uso)

assets/
└── images/                  # Imágenes SVG para clasificaciones
    ├── underweight.svg
    ├── normal.svg
    ├── overweight.svg
    ├── obesity1.svg
    ├── obesity2.svg
    └── obesity3.svg
```

## 🚀 Instalación y Ejecución

### Prerrequisitos
- Flutter SDK (versión 3.9.0 o superior)
- Dart SDK
- Un editor de código (VS Code, Android Studio, etc.)
- Un dispositivo o emulador para probar

### Pasos para ejecutar

1. **Clonar o descargar el proyecto**
   ```bash
   cd D:\flutter\mini-proyecto
   ```

2. **Instalar dependencias**
   ```bash
   flutter pub get
   ```

3. **Ejecutar la aplicación**
   ```bash
   flutter run
   ```

### Comandos útiles

- **Analizar código**: `flutter analyze`
- **Ejecutar tests**: `flutter test`
- **Limpiar proyecto**: `flutter clean`
- **Obtener dependencias**: `flutter pub get`

## 📱 Capturas de Pantalla

La aplicación incluye:
- Splash screen con animaciones
- Formulario de entrada con validación
- Pantalla de resultados con clasificación visual
- Tabla de rangos de IMC
- Funcionalidad de compartir resultados

## 🎨 Diseño

- **Colores principales**: Verde (#2E7D32) para elementos principales
- **Tipografía**: Material Design 3
- **Iconografía**: Material Icons
- **Animaciones**: Transiciones suaves y efectos visuales
- **Responsive**: Adaptable a diferentes tamaños de pantalla

## 📋 Requisitos del Proyecto

Este proyecto cumple con todos los requisitos especificados:

✅ **Fórmula IMC**: Peso / Estatura²  
✅ **Entrada de datos**: Peso en kg y estatura en m  
✅ **Mostrar IMC**: Valor calculado  
✅ **Clasificación**: Según rangos médicos  
✅ **Imágenes**: Una por cada clasificación  
✅ **Splash Screen**: Pantalla de bienvenida animada  

## 🔧 Personalización

Para modificar la aplicación:

1. **Cambiar colores**: Editar `main.dart` en la sección `ThemeData`
2. **Modificar rangos**: Actualizar `bmi_model.dart`
3. **Agregar nuevas pantallas**: Crear en `lib/screens/`
4. **Cambiar imágenes**: Reemplazar archivos SVG en `assets/images/`

## 📄 Licencia

Este proyecto es de código abierto y está disponible bajo la licencia MIT.

## 👨‍💻 Autor

Desarrollado como parte de un mini proyecto de Flutter para el cálculo de IMC.

---

**Nota**: Esta aplicación es solo para fines educativos. Para consultas médicas reales, consulte siempre con un profesional de la salud.