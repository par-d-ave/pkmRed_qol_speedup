# Pokémon Red - Quality of Life & Engine Speedup Patch

Modificación de motor (*ROM Hack*) basada en el desensamblado oficial **`pokered`** (ensamblador LR35902 / Z80). 

El objetivo principal de este proyecto es mejorar drásticamente el flujo y la velocidad de juego sin alterar las mecánicas base de la primera generación, garantizando **100% de compatibilidad con archivos de guardado (`.sav`) originales**.

---

## 🚀 Características Implementadas (QoL)

1. **Combates a velocidad x4:** Aceleración interna del ciclo de ejecución de batalla (animaciones y turnos).
2. **Velocidad de movimiento x2:** Movimiento base del personaje duplicado en el *overworld* sin necesidad de mantener botones.
3. **Texto Instantáneo:** En la opción de velocidad `FAST`, el texto de los diálogos se despliega por completo en el primer marco.
4. **Barras de HP y Exp Aceleradas:** Animación de vaciado/llenado de la barra de salud y adición de experiencia optimizadas a ritmo ultrarrápido.
5. **Silenciador de Alarma HP Bajo:** Eliminación del pitido continuo cuando el Pokémon activo está por debajo del 20% de salud.
6. **Experiencia por Captura:** Al capturar un Pokémon salvaje se otorga la experiencia correspondiente al equipo activo (mecánica de 6.ª Gen).

---

## 🛠️ Tecnologías y Herramientas

* **Lenguaje:** Game Boy Assembly (Z80 / LR35902).
* **Base de código:** [`pret/pokered`](https://github.com/pret/pokered).
* **Toolchain:** `RGBDS` (`rgbasm`, `rgblink`, `rgbfix`) y `make`.
* **Compatibilidad RAM:** Estructuras de datos de la RAM sin modificar; preserva la arquitectura original de 8 KB del `.sav`.

---

## 📦 Compilación

### Requisitos previos
Instalar `rgbds`, `git` y `make`:

```bash
# Ubuntu / Debian / WSL
sudo apt update && sudo apt install build-essential git rgbds
