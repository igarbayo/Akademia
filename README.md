# Cherry 🍒

**Algoritmo de Inteligencia de Negocio para la Expansión Estratégica de Guarderías en España**

> "How to Create Great Things" - Respuestas Sencillas a Problemas Complejos

---

## Contexto General

| Aspecto | Detalle |
|---------|---------|
| **Programa** | Akademia: Caso Práctico 2023-2024 |
| **Organizador** | Fundación Innovación Bankinter |
| **Equipo** | Equipo Cereza (6 miembros) |
| **Fecha** | 12 de enero de 2024 |

### Miembros del Equipo

- César Fieiras Ceide
- Ignacio Garbayo Fernández
- Álvaro Pérez Mut
- Andreu Llopis Sánchez
- Pelayo Iglesias Rodríguez
- Pelayo Ybarra Pérez

---

## El Problema

**Objetivo:** Localizar las **100 mejores ubicaciones** para abrir guarderías en España (expansión de cadena existente).

### Especificaciones del Negocio

| Parámetro | Valor |
|-----------|-------|
| Niños por guardería | 40 |
| Coste servicio/niño/mes | 450€ |
| Niños por empleado | 10 |
| Ingresos mensuales/guardería | 18.000€ |
| Requisitos | Ocupación plena, sin morosos |

### Perfil del Cliente Objetivo

- Familia con buen potencial económico
- Miembros en edad de asistencia a guardería (0-4 años)
- Miembros en edad de tener hijos (25-44 años)
- Renta suficiente para evitar morosidad

---

## La Propuesta de Valor

### Filosofía

**"How to Create Great Things"** - Respuestas Sencillas a Problemas Complejos

### Enfoque

1. Reunir el capital intelectual apropiado
2. Adaptar ese conocimiento a necesidades específicas
3. Combinar e interrelacionar todo el conocimiento

### Capacidades del Sistema

- ✅ Plena disponibilidad del conocimiento
- ✅ Tiempo de respuesta automático
- ✅ Adaptable en directo a nuevos contextos
- ✅ Extrapolable/escalable a otros ecosistemas
- ✅ Economía de escala (conocimiento interrelacionado)

---

## Fuentes de Conocimiento

### 1. Experto en Guarderías

**Óscar Díaz Reimóndez**
- Socio fundador de NemoMarlin
- Director ejecutivo y de expansión
- **Aporta:** Pirámide poblacional ideal, conocimiento del sector

### 2. Modelos de Lenguaje (LLMs)

- **Bard** (Google)
- **ChatGPT** (OpenAI)
- **Perplexity**

**Aportan:**
- Escandallo familiar clase media-alta
- Coste educadora infantil privada (2.000-4.000€/mes según Infojobs)
- Porcentaje de gasto en educación (~10%)
- *Insight:* "La compra de nueva vivienda está relacionada con la ampliación de familia"
- *Insight:* "Las personas duermen en el mejor lugar que pueden permitirse"

### 3. Datos Oficiales

- **INE:** Edad media para tener hijos (32 años)
- **Ministerio de Educación:** Registro de guarderías privadas (validación)
- **Bankinter:** Datos demográficos, rentas por sección censal

### 4. Datos Inmobiliarios (validación)

- **FotoCasa:** Precio metro cuadrado
- **Idealista:** Precio alquiler

### 5. Experto en Marketing (anónimo)

---

## Las 3 Preguntas que Responde Cherry

1. **¿Cuál es la pirámide de población ideal para el negocio?**
2. **¿En qué rango de renta debe estar la familia ideal?**
3. **¿Cómo saber si la familia está en el mejor momento para adquirir el servicio?**

---

## Análisis Detallado

### A. Pirámide Poblacional Ideal

| Franja | Relevancia | Justificación |
|--------|------------|---------------|
| 0-4 | **Muy alta** | Edad objetivo (niños de guardería) |
| 5-9 | Media-baja | Competencia con colegios es impracticable |
| 10-14 | Baja | Necesaria para ajuste real |
| 15-19 | Residual | - |
| 20-24 | Media | Comienzo edad de hijos y poder adquisitivo |
| 25-29 | Media-alta | Cercano a 32, pero menos poder adquisitivo |
| 30-34 | **Alta** | Según INE, 32 es edad media para tener hijos |
| 35-39 | Media-alta | Más asentada y más PA, pero menos probable hijos |
| 40-44 | Media | Más asentada (€) pero más edad |
| 45-49 | Media-baja | Posible público con más PA, nuevas formas fecundación |
| 50-54 | Baja | Necesaria para ajuste real |
| 55-59 | Baja | Necesaria para ajuste real |
| 60-64 | Residual | - |

### B. Rango de Renta Óptimo

**Escandallo familiar clase media-alta** (según Bard):

| Porcentaje | Actividad |
|------------|-----------|
| 26,20% | Vivienda |
| 15,80% | Transporte |
| 13,70% | Alimentación y bebidas |
| **10,40%** | **Educación y cultura** |
| 9,90% | Ropa y calzado |
| 7,40% | Atención sanitaria |
| 6,20% | Ocio y cultura |
| 6,20% | Vivienda y servicios básicos |

**Cálculo del rango:**

Fórmula: `(Coste × 10) × 12`

- **Renta mínima:** (450 × 10) × 12 = **54.000€/año**
  - Puede pagar guardería (450€/mes)
- **Renta máxima:** (2.000 × 10) × 12 = **240.000€/año**
  - No puede pagar educadora privada (2.000€/mes), así que usaría guardería

### C. Momento del Mercado Inmobiliario

**Lógica:** La compra de vivienda correlaciona con ampliación familiar

**Escala de momento:**

| Indicador | Valor |
|-----------|-------|
| ++ | 1 |
| + | 0,5 |
| = | 0 |
| - | -0,5 |
| -- | -1 |

Se calcula la media entre pisos y casas para cada sección.

---

## El Algoritmo Cherry

### Funcionamiento por Fases

```
ENTRADA: Datos de secciones censales
    ↓
FASE 1: Ordenación por ajuste poblacional (Parámetro P)
    ↓
FASE 2: Filtrado por renta (54.000€ ≤ Renta ≤ 240.000€)
    ↓
FASE 3: Filtrado por momento (selección escalonada M=1, 0.75, 0.5...)
    ↓
SALIDA: Mapa con las 100 mejores secciones censales
```

### Modelización Matemática

#### Parámetro P (Ajuste Poblacional)

```
P₀ = Σ |Peso(i) - N(i)| / Peso(i)
```

Donde:
- `Peso(i)` = porcentaje asignado en pirámide ideal
- `N(i)` = porcentaje real de la sección

**Reglas especiales:**
- Si `Peso(i) = 0`, no se divide
- Para franjas **(0-4)** y **(30-34)**, **NO se penaliza el exceso**
- Normalización: `P₀ = P₀/máx(P₀)`, luego `P = 1 - P₀`

#### Filtrado por Renta

```
54.000 ≤ RM2016 ≤ 240.000
```

#### Filtrado por Momento

Selección escalonada: primero M=1, si < 100 → M=0.75, etc.

---

## Comparativa con FofM

| Aspecto | Cherry | FofM |
|---------|--------|------|
| Correlación (r) | 0.8526657 | 0.8991791 |
| Fórmula conocida | ✅ Sí | ❌ No (caja negra Excel) |
| Penaliza exceso en 0-4 y 30-34 | ❌ No | ✅ Sí |
| Modificable | ✅ Sí | ❌ No |
| Interpretabilidad | **Alta** | Baja |

**Ventajas de Cherry:**
- No penaliza exceso en franjas clave
- Fórmula conocida y modificable
- Cálculo simple que mide error relativo

---

## Validación del Algoritmo

**Fuente de validación:** Registro del Ministerio de Educación y Formación Profesional (guarderías privadas no concertadas)

> **Nota:** Posible contaminación al no considerar solo franquicias

### Casos de Estudio Validados

| Sección | Ubicación | Edad predominante | Renta Hogar 2016 | Precio m² | Alquiler |
|---------|-----------|-------------------|------------------|-----------|----------|
| 2807915160 | Madrid-Costillares | 25-29 años | 69.237€ | 4.588€ | 1.250€ |
| 2807901087 | Madrid-Justicia | 35-44 años | 69.073€ | 7.802€ | 2.578€ |
| 2807915153 | Madrid-Colina | 25-44 años | 77.122€ | 4.682€ | 1.557€ |
| 0801906011 | Barcelona-Sarrià-San Gervasi | 25-64 años | 54.730€ | 5.930€ | 2.521€ |

---

## 🛠️ Tecnología

| Componente | Detalle |
|------------|---------|
| **Lenguaje** | R |
| **Librerías** | `pyramid` (visualización demográfica), `leaflet` (mapas interactivos) |
| **Datos** | ~8.000 secciones censales × ~70 variables |

---

## Estructura del Proyecto

```
├── src/
│   ├── Script Ejecución Cereza.R           # Ejecuta todo el pipeline (Cherry)
│   ├── Script Ejecución FofM.R             # Ejecuta todo el pipeline (FofM)
│   ├── (0) Pirámide.R                      # Visualización pirámide ideal
│   ├── (1) Generacion DataFrame Basico.R   # Preparación de datos
│   ├── (2) Algoritmo Cereza.R              # Implementación Cherry
│   ├── (2) Algoritmo FofM.R                # Algoritmo alternativo
│   ├── (3) Mapa.R                          # Visualización geográfica
│   ├── (4) Entrenamiento.R                 # Validación del modelo
│   ├── DatosTratados.csv                   # Datos procesados
│   ├── localizacion.csv                    # Coordenadas geográficas
│   ├── momento.csv                         # Datos momento mercado
│   └── FofM.csv                            # Resultados FofM
│
├── Presentación Algoritmo.pdf              # Documentación técnica (38 págs)
├── Presentación Ventas.pdf                 # Propuesta de valor (45 págs)
├── README.md                               # Este archivo
├── CLAUDE.md                               # Contexto técnico para IA
└── LICENSE                                 # Licencia MIT
```

---

## Uso

### Prerrequisitos

```r
install.packages("pyramid")
install.packages("leaflet")
```

### Ejecución Rápida (Recomendado)

Ejecutar uno de los scripts que realizan todos los pasos automáticamente:

- `Script Ejecución Cereza.R` → Pipeline completo con algoritmo Cherry
- `Script Ejecución FofM.R` → Pipeline completo con algoritmo FofM

### Ejecución Paso a Paso

1. **Preparar datos:** Ejecutar `(1) Generacion DataFrame Basico.R`
2. **Ejecutar algoritmo:** Elegir uno de los dos scripts disponibles:
   - `(2) Algoritmo Cereza.R` → Algoritmo Cherry (interpretable)
   - `(2) Algoritmo FofM.R` → Algoritmo FofM (mayor correlación)
3. **Visualizar resultados:** Ejecutar `(3) Mapa.R`
4. **Validar (opcional):** Ejecutar `(4) Entrenamiento.R`

---

## Entregables

- ✅ Mapa interactivo con las 100 mejores secciones censales
- ✅ Análisis por provincia
- ✅ Validación estadística (coeficiente de correlación)
- 🔜 (Propuesta futura) Relación de locales y plan de gastos de apertura

---

## Documentación Adicional

- [Presentación Algoritmo.pdf](Presentación%20Algoritmo.pdf) - Documentación técnica completa
- [Presentación Ventas.pdf](Presentación%20Ventas.pdf) - Propuesta de valor y metodología

---

## Licencia

Este proyecto está licenciado bajo la [Licencia MIT](LICENSE).

### Atribución de Datos

Los archivos CSV de la carpeta `src/` provienen de:
- **INE (Instituto Nacional de Estadística)**: Datos demográficos y censales de acceso público
- **Fundación Innovación Bankinter**: Datos públicos compartidos en el programa Akademia 2023-2024
