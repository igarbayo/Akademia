# Cherry 🍒

**Business Intelligence Algorithm for Strategic Daycare Expansion in Spain**

> "How to Create Great Things" - Simple Answers to Complex Problems

---

## General Context

| Aspect | Detail |
|--------|--------|
| **Program** | Akademia: Case Study 2023-2024 |
| **Organizer** | Fundación Innovación Bankinter |
| **Team** | Team Cereza (6 members) |
| **Date** | January 12, 2024 |

### Team Members

- César Fieiras Ceide
- Ignacio Garbayo Fernández
- Álvaro Pérez Mut
- Andreu Llopis Sánchez
- Pelayo Iglesias Rodríguez
- Pelayo Ybarra Pérez

---

## The Problem

**Objective:** Locate the **100 best locations** to open daycares in Spain (expansion of an existing chain).

### Business Specifications

| Parameter | Value |
|-----------|-------|
| Children per daycare | 40 |
| Service cost/child/month | €450 |
| Children per employee | 10 |
| Monthly revenue/daycare | €18,000 |
| Requirements | Full occupancy, no defaulters |

### Target Customer Profile

- Family with good economic potential
- Members of daycare age (0-4 years)
- Members of childbearing age (25-44 years)
- Sufficient income to avoid default

---

## The Value Proposition

### Philosophy

**"How to Create Great Things"** - Simple Answers to Complex Problems

### Approach

1. Gather the appropriate intellectual capital
2. Adapt that knowledge to specific needs
3. Combine and interrelate all knowledge

### System Capabilities

- ✅ Full knowledge availability
- ✅ Automatic response time
- ✅ Adaptable in real-time to new contexts
- ✅ Extrapolable/scalable to other ecosystems
- ✅ Economies of scale (interrelated knowledge)

---

## Knowledge Sources

### 1. Daycare Expert

**Óscar Díaz Reimóndez**
- Founding partner of NemoMarlin
- Executive and expansion director
- **Provides:** Ideal population pyramid, sector knowledge

### 2. Language Models (LLMs)

- **Bard** (Google)
- **ChatGPT** (OpenAI)
- **Perplexity**

**They provide:**
- Upper-middle class family budget breakdown
- Private childcare educator cost (€2,000-4,000/month according to Infojobs)
- Percentage of spending on education (~10%)
- *Insight:* "New home purchase is related to family expansion"
- *Insight:* "People sleep in the best place they can afford"

### 3. Official Data

- **INE:** Average age for having children (32 years)
- **Ministry of Education:** Private daycare registry (validation)
- **Bankinter:** Demographic data, income by census section

### 4. Real Estate Data (validation)

- **FotoCasa:** Price per square meter
- **Idealista:** Rental price

### 5. Marketing Expert (anonymous)

---

## The 3 Questions Cherry Answers

1. **What is the ideal population pyramid for the business?**
2. **What income range should the ideal family be in?**
3. **How to know if the family is at the best time to acquire the service?**

---

## Detailed Analysis

### A. Ideal Population Pyramid

| Age Range | Relevance | Justification |
|-----------|-----------|---------------|
| 0-4 | **Very high** | Target age (daycare children) |
| 5-9 | Medium-low | Competition with schools is impractical |
| 10-14 | Low | Necessary for real adjustment |
| 15-19 | Residual | - |
| 20-24 | Medium | Beginning of childbearing age and purchasing power |
| 25-29 | Medium-high | Close to 32, but less purchasing power |
| 30-34 | **High** | According to INE, 32 is average age for having children |
| 35-39 | Medium-high | More established and higher PP, but less likely to have children |
| 40-44 | Medium | More established (€) but older |
| 45-49 | Medium-low | Possible audience with more PP, new fertility methods |
| 50-54 | Low | Necessary for real adjustment |
| 55-59 | Low | Necessary for real adjustment |
| 60-64 | Residual | - |

### B. Optimal Income Range

**Upper-middle class family budget breakdown** (according to Bard):

| Percentage | Activity |
|------------|----------|
| 26.20% | Housing |
| 15.80% | Transportation |
| 13.70% | Food and beverages |
| **10.40%** | **Education and culture** |
| 9.90% | Clothing and footwear |
| 7.40% | Healthcare |
| 6.20% | Leisure and culture |
| 6.20% | Housing and basic services |

**Range calculation:**

Formula: `(Cost × 10) × 12`

- **Minimum income:** (450 × 10) × 12 = **€54,000/year**
  - Can afford daycare (€450/month)
- **Maximum income:** (2,000 × 10) × 12 = **€240,000/year**
  - Cannot afford private educator (€2,000/month), so would use daycare

### C. Real Estate Market Timing

**Logic:** Home purchase correlates with family expansion

**Timing scale:**

| Indicator | Value |
|-----------|-------|
| ++ | 1 |
| + | 0.5 |
| = | 0 |
| - | -0.5 |
| -- | -1 |

The average between apartments and houses is calculated for each section.

---

## The Cherry Algorithm

### Phase-based Operation

```
INPUT: Census section data
    ↓
PHASE 1: Sorting by population adjustment (Parameter P)
    ↓
PHASE 2: Filtering by income (€54,000 ≤ Income ≤ €240,000)
    ↓
PHASE 3: Filtering by timing (stepped selection M=1, 0.75, 0.5...)
    ↓
OUTPUT: Map with the 100 best census sections
```

### Mathematical Modeling

#### Parameter P (Population Adjustment)

```
P₀ = Σ |Weight(i) - N(i)| / Weight(i)
```

Where:
- `Weight(i)` = percentage assigned in ideal pyramid
- `N(i)` = actual percentage of the section

**Special rules:**
- If `Weight(i) = 0`, no division
- For age ranges **(0-4)** and **(30-34)**, **excess is NOT penalized**
- Normalization: `P₀ = P₀/max(P₀)`, then `P = 1 - P₀`

#### Income Filtering

```
54,000 ≤ RM2016 ≤ 240,000
```

#### Timing Filtering

Stepped selection: first M=1, if < 100 → M=0.75, etc.

---

## Comparison with FofM

| Aspect | Cherry | FofM |
|--------|--------|------|
| Correlation (r) | 0.8526657 | 0.8991791 |
| Known formula | ✅ Yes | ❌ No (Excel black box) |
| Penalizes excess in 0-4 and 30-34 | ❌ No | ✅ Yes |
| Modifiable | ✅ Yes | ❌ No |
| Interpretability | **High** | Low |

**Cherry advantages:**
- Does not penalize excess in key age ranges
- Known and modifiable formula
- Simple calculation that measures relative error

---

## Algorithm Validation

**Validation source:** Ministry of Education and Vocational Training Registry (private non-subsidized daycares)

> **Note:** Possible contamination by not considering only franchises

### Validated Case Studies

| Section | Location | Predominant age | Household Income 2016 | Price/m² | Rent |
|---------|----------|-----------------|----------------------|----------|------|
| 2807915160 | Madrid-Costillares | 25-29 years | €69,237 | €4,588 | €1,250 |
| 2807901087 | Madrid-Justicia | 35-44 years | €69,073 | €7,802 | €2,578 |
| 2807915153 | Madrid-Colina | 25-44 years | €77,122 | €4,682 | €1,557 |
| 0801906011 | Barcelona-Sarrià-San Gervasi | 25-64 years | €54,730 | €5,930 | €2,521 |

---

## Technology

| Component | Detail |
|-----------|--------|
| **Language** | R |
| **Libraries** | `pyramid` (demographic visualization), `leaflet` (interactive maps) |
| **Data** | ~8,000 census sections × ~70 variables |

---

## Project Structure

```
├── src/
│   ├── Script Ejecución Cereza.R           # Runs entire pipeline (Cherry)
│   ├── Script Ejecución FofM.R             # Runs entire pipeline (FofM)
│   ├── (0) Pirámide.R                      # Ideal pyramid visualization
│   ├── (1) Generacion DataFrame Basico.R   # Data preparation
│   ├── (2) Algoritmo Cereza.R              # Cherry implementation
│   ├── (2) Algoritmo FofM.R                # Alternative algorithm
│   ├── (3) Mapa.R                          # Geographic visualization
│   ├── (4) Entrenamiento.R                 # Model validation
│   ├── DatosTratados.csv                   # Processed data
│   ├── localizacion.csv                    # Geographic coordinates
│   ├── momento.csv                         # Market timing data
│   └── FofM.csv                            # FofM results
│
├── Presentación Algoritmo.pdf              # Technical documentation (38 pages)
├── Presentación Ventas.pdf                 # Value proposition (45 pages)
├── README.md                               # This file
├── CLAUDE.md                               # Technical context for AI
└── LICENSE                                 # MIT License
```

---

## Usage

### Prerequisites

```r
install.packages("pyramid")
install.packages("leaflet")
```

### Quick Execution (Recommended)

Run one of the scripts that perform all steps automatically:

- `Script Ejecución Cereza.R` → Complete pipeline with Cherry algorithm
- `Script Ejecución FofM.R` → Complete pipeline with FofM algorithm

### Step-by-Step Execution

1. **Prepare data:** Run `(1) Generacion DataFrame Basico.R`
2. **Run algorithm:** Choose one of the two available scripts:
   - `(2) Algoritmo Cereza.R` → Cherry algorithm (interpretable)
   - `(2) Algoritmo FofM.R` → FofM algorithm (higher correlation)
3. **Visualize results:** Run `(3) Mapa.R`
4. **Validate (optional):** Run `(4) Entrenamiento.R`

---

## Deliverables

- ✅ Interactive map with the 100 best census sections
- ✅ Analysis by province
- ✅ Statistical validation (correlation coefficient)
- 🔜 (Future proposal) List of premises and opening cost plan

---

## Additional Documentation

- [Presentación Algoritmo.pdf](Presentación%20Algoritmo.pdf) - Complete technical documentation
- [Presentación Ventas.pdf](Presentación%20Ventas.pdf) - Value proposition and methodology

---

## License

This project is licensed under the [MIT License](LICENSE).

### Data Attribution

CSV files in the `src/` folder come from:
- **INE (National Statistics Institute)**: Publicly accessible demographic and census data
- **Fundación Innovación Bankinter**: Public data shared in the Akademia 2023-2024 program
