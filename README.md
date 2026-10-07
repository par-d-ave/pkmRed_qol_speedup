# Pokémon Red – Quality of Life & Engine Speedup Patch

ROM hack basado en el desensamblado [`pret/pokered`](https://github.com/pret/pokered) de Pokémon Red.

El proyecto busca mejorar la velocidad, comodidad y flujo de juego sin alterar innecesariamente las mecánicas originales de primera generación.

**Prioridad principal:** mantener la compatibilidad con los archivos de guardado (`.sav`) originales.

> **Regla fundamental:** ninguna funcionalidad debe implementarse si requiere romper la compatibilidad con las partidas originales.

---

## 🚀 Objetivos

* Combates más rápidos.
* Movimiento más rápido.
* Texto instantáneo.
* Menos esperas artificiales.
* Animaciones más rápidas.
* Mayor disponibilidad de determinados Pokémon.
* Pequeños ajustes de QoL y balance.
* Compatibilidad con partidas guardadas originales.

La filosofía del proyecto es realizar cambios pequeños y localizados, reutilizando los sistemas existentes siempre que sea posible.

---

## ✨ Características implementadas

### Combates acelerados

Reducción de delays y esperas internas para conseguir combates aproximadamente **×4 más rápidos** en las partes afectadas.

### Movimiento ×2

Movimiento del overworld aproximadamente **×2 más rápido**, incluyendo:

* Movimiento normal.
* Bicicleta.
* Surf.

Los movimientos especiales mantienen su comportamiento original.

### Texto instantáneo

La opción `FAST` muestra los textos inmediatamente, eliminando el retraso carácter por carácter.

### Alarma de HP bajo

Se ha eliminado el sonido repetitivo de alarma cuando el Pokémon activo tiene poca salud. La condición de HP no cambia.

### Evoluciones por intercambio → nivel 36

| Pokémon  | Evolución |
| -------- | --------- |
| Kadabra  | Alakazam  |
| Graveler | Golem     |
| Machoke  | Machamp   |
| Haunter  | Gengar    |

### Exclusivos de Blue en Safari Zone

Añadidos a **Safari Zone Center**:

* Sandshrew
* Vulpix
* Meowth
* Bellsprout
* Magmar
* Pinsir

### Guardado

Eliminada la espera artificial durante el proceso de guardado.

### Animaciones de combate

* Ticks de daño: **6 → 2**.
* Barra de HP acelerada: **2 → 1 frame/píxel**.

### Game Corner

* Porygon: **5500 monedas**.

### Ultra Ball

* Modificador de captura: **8 → 4**.

### Cerulean Cave

**1F:**

* Omanyte
* Kabuto

**B1F:**

* Bulbasaur
* Charmander
* Squirtle

Los encuentros reutilizan las tablas existentes del juego.

---

## 🔒 Compatibilidad con `.sav`

La compatibilidad con partidas originales es la principal restricción técnica del proyecto.

Se evita modificar:

* Estructuras de Pokémon.
* Party y Pokémon almacenados en cajas.
* RAM/SRAM persistente.
* Layout y formato de los saves.
* Offsets y tamaños de estructuras existentes.

Se priorizan modificaciones de delays, constantes, tablas y rutinas existentes.

Si una funcionalidad requiere modificar la estructura o interpretación de los datos persistentes, debe buscarse una alternativa o descartarse.

---

## 🛠️ Tecnologías

* Game Boy Assembly / LR35902
* [`pret/pokered`](https://github.com/pret/pokered)
* RGBDS

  * `rgbasm`
  * `rgblink`
  * `rgbfix`
* `make`
* `git`

Desarrollo realizado actualmente sobre WSL2 + Ubuntu.

---

## 📦 Compilación

### Requisitos

En Ubuntu/Debian/WSL:

```bash
sudo apt update
sudo apt install build-essential git rgbds
```

### Obtener el proyecto

```bash
git clone https://github.com/pret/pokered.git
cd pokered
```

### Compilar

```bash
make
```

---

## 🧪 Pruebas

Cada cambio debe comprobar:

* Compilación correcta.
* Inicio normal del juego.
* Funcionamiento de la característica modificada.
* Funcionamiento de las mecánicas no afectadas.
* Guardado y carga correctos.

Cuando sea relevante, también debe comprobarse una partida `.sav` original antes y después del cambio.

---

## 📋 Estado

| #  | Característica                         | Estado |
| -- | -------------------------------------- | ------ |
| 1  | Combates ×4                            | ✅      |
| 2  | Movimiento ×2                          | ✅      |
| 3  | Texto `FAST` instantáneo               | ✅      |
| 4  | Silenciar alarma de HP bajo            | ✅      |
| 5  | Evoluciones por intercambio → nivel 36 | ✅      |
| 6  | Exclusivos Blue en Safari Zone         | ✅      |
| 7  | Eliminar espera artificial de guardado | ✅      |
| 8  | Ticks de daño 6 → 2                    | ✅      |
| 9  | HP bar 2 → 1 frame/píxel               | ✅      |
| 10 | Porygon → 5500 monedas                 | ✅      |
| 11 | Ultra Ball 8 → 4                       | ✅      |
| 12 | Fósiles en Cerulean Cave               | ✅      |
| 13 | Iniciales en Cerulean Cave             | ✅      |

---

## ⚠️ Prioridad de desarrollo

```text
1. Compatibilidad con saves originales
2. Integridad de las estructuras existentes
3. Funcionamiento correcto del juego
4. Mantener las mecánicas originales
5. Quality of Life
6. Nuevas funcionalidades
```

**La compatibilidad con partidas originales siempre tiene prioridad.**


---

# 📄 Licencia y base del proyecto

Este proyecto utiliza como base el desensamblado **pret/pokered**.

Para obtener información sobre el proyecto original, su licencia y sus condiciones de uso, consultar el repositorio oficial:

https://github.com/pret/pokered





