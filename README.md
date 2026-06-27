# COVID-19 Global Health Analytics & Data Pipeline

An end-to-end data analytics pipeline designed to ingest, clean, aggregate, and visualize global healthcare metrics. This project spans across the entire data engineering and analytics lifecycle: Preprocessing and standardization via **Python**, structural data warehousing and deep exploratory queries with **SQL**, and dynamic executive-level business intelligence delivery through **Power BI**.

---

## 🛠️ Technical Architecture & Tools
* **Data Processing & ETL:** Python (Pandas, NumPy)
* **Relational Warehousing:** SQL (MySQL Server)
* **Business Intelligence & Reporting:** Power BI Desktop

---

## 🔄 Data Pipeline Lifecycle

### Phase 1: Python Ingestion & Preprocessing
The raw global data flat file contained non-standardized column schemas with illegal characters (slashes and spaces) prone to breaking database engines. 
* Handled string formatting across all metadata headers to ensure relational database structural compliance.
* Audited data types to prevent structural rounding errors across metric values.
* Standardized categorical geographical entries and exported the clean schema to unified formats.

### Phase 2: Relational SQL Warehousing & Aggregation
The verified dataset was loaded into a robust database instance (`covid_db`). Strategic queries were written to extract precise healthcare intelligence:
* Aggregated macro-level international corporate KPIs including total global footprints, recoveries, and aggregate fatality ratios.
* Used structural `GROUP BY` routines to establish volumetric case behaviors across multi-national blocks.
* Designed isolated metric sub-queries tracking critical regional recovery rates vs fatality indexes.

### Phase 3: Executive-Level Power BI Interface
A high-impact interactive dashboard was architected to serve operational leadership and healthcare managers:
* **Top Metric Ribbon:** Instantly displays overarching business metrics (Global Confirmed Cases, Total Recoveries, and Aggregate Fatalities).
* **Geographical Market Ring:** A specialized donut visual outlining the case percentage share distribution across major global sectors.
* **Impact Ranking Bars:** A sorted top-performing rank chart profiling the nations with the highest infection volumes.
* **Dynamic Slicing Panel:** Implemented a localized region dropdown mechanism allowing stakeholders to filter down to specific regional datasets on demand.

---

## 📊 Dashboard Preview
![COVID-19 Dashboard Preview](dashboard_screenshot (2).png)

---

## 💡 Core Strategic Insights Derived
1. **Infection Epicenters:** High-volume vectors are concentrated heavily in specific regions (e.g., the Americas sector accounts for more than half of the total global footprint volume), signaling where administrative support and health supplies are needed most.
2. **Fatality Volatility:** Certain regions show isolated high fatality ratios despite lower total volumetric footprints, emphasizing the necessity of auditing localized healthcare system constraints rather than just relying on broad top-line metrics.
3. **Data-Driven Interventions:** The cross-tabulated recovery matrix identifies specific countries maintaining high-efficiency recovery metrics, offering blueprints for standard operating procedures that can be shared globally.
