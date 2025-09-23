# 🎨 Diseño Moderno - Practica 03

## ✨ Características del Nuevo Diseño

### 🎨 Paleta de Colores
- **Azul Principal**: `#1e3a8a` - Para elementos principales y AppBar
- **Azul Secundario**: `#3b82f6` - Para botones y elementos interactivos
- **Azul Accent**: `#60a5fa` - Para elementos de acento
- **Morado Principal**: `#7c3aed` - Para elementos secundarios y diferenciación
- **Morado Secundario**: `#a855f7` - Para gradientes y efectos
- **Morado Accent**: `#c084fc` - Para elementos de acento morados

### 🚀 Mejoras Implementadas

#### 1. **Página Principal (HomePage)**
- Header con gradiente azul-morado y iconografía moderna
- Card principal con formulario estilizado
- Campos de entrada con bordes redondeados y efectos de focus
- Dropdown personalizado con iconos de género
- Botón de envío con icono y efectos de sombra

#### 2. **Página de Datos (DatosPage)**
- AppBar en color morado para diferenciación
- Fondo con gradiente sutil
- Card principal con información organizada
- Elementos de datos con iconos y colores temáticos
- Botón de volver con estilo mejorado

#### 3. **Tema Global**
- Configuración completa de Material Design 3
- Colores consistentes en toda la aplicación
- Tipografía Inter para mejor legibilidad
- Efectos de sombra y elevación modernos
- Bordes redondeados en todos los componentes

#### 4. **CSS Personalizado**
- Variables CSS para fácil mantenimiento
- Efectos de fondo animados
- Scrollbar personalizado
- Responsive design
- Efectos de hover y transiciones suaves

## 🛠️ Cómo Ejecutar

### Requisitos
- Flutter SDK instalado
- Dart SDK instalado

### Pasos para Ejecutar

1. **Navegar al directorio del proyecto**
   ```bash
   cd practica_03
   ```

2. **Instalar dependencias**
   ```bash
   flutter pub get
   ```

3. **Ejecutar la aplicación**
   ```bash
   # Para web
   flutter run -d chrome
   
   # Para Android
   flutter run -d android
   
   # Para iOS (solo en macOS)
   flutter run -d ios
   ```

### 🌐 Para Web Específicamente

El diseño incluye CSS personalizado que se carga automáticamente cuando ejecutas la aplicación en web. Los estilos se encuentran en `web/styles.css` y se incluyen en `web/index.html`.

## 📱 Características Responsive

- **Desktop**: Diseño completo con efectos de sombra y espaciado generoso
- **Tablet**: Adaptación de tamaños manteniendo la estética
- **Mobile**: Optimización de espaciado y tamaños de fuente

## 🎯 Componentes No Modificados

Como solicitaste, **NO se movieron ni reorganizaron los componentes existentes**. Solo se aplicaron estilos y mejoras visuales manteniendo la estructura original:

- `HomePage` - Mantiene su estructura de StatefulWidget
- `DatosPage` - Conserva su lógica de StatelessWidget
- `Data` class - Sin modificaciones
- Navegación - Funciona exactamente igual

## 🔧 Personalización

### Cambiar Colores
Los colores están definidos en:
- **Flutter**: `lib/main.dart` en el `ThemeData`
- **CSS**: `web/styles.css` en las variables `:root`

### Modificar Estilos
- **Componentes Flutter**: Editar directamente en los archivos `.dart`
- **Estilos Web**: Modificar `web/styles.css`

## 📦 Archivos Creados/Modificados

### Nuevos Archivos
- `web/styles.css` - Estilos CSS personalizados

### Archivos Modificados
- `web/index.html` - Inclusión de CSS y fuentes
- `lib/main.dart` - Tema global de Flutter
- `lib/src/home_page.dart` - Diseño mejorado de la página principal
- `lib/src/datos_recibidos.dart` - Diseño mejorado de la página de datos

## 🎨 Inspiración del Diseño

El diseño se inspira en:
- **Material Design 3** para consistencia
- **Gradientes modernos** azul-morado
- **Cards elevadas** con sombras suaves
- **Iconografía clara** y funcional
- **Tipografía legible** con Inter font
- **Efectos de hover** y transiciones suaves

¡Disfruta de tu nueva aplicación con diseño moderno! 🚀
