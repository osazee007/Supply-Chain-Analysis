# Supply Chain Analysis: Suppliers

## Overview
An analysis of supplier data across four countries (China, France, Germany and Nigeria), looking at stock quantity, unit price and total stock value per supplier. The aim was to see where inventory is concentrated and which suppliers hold the most value.

## Data
Five suppliers, each with a country, product type, unit price and stock quantity:

| Supplier | Country | Product |
|---|---|---|
| Shanghai Logistics | China | Packaging |
| Paris Chemicals | France | Raw Chemicals |
| Renault Parts | France | Engine Parts |
| Berlin Tools GmbH | Germany | Industrial Tools |
| Lagos Steel Co | Nigeria | Steel Rods |

## Tools Used
- **SQL (SQLite):** queries for stock value, averages and counts by country, and reorder flags (`queries.sql`)
- **Excel:** stock value calculations, MAX/MIN, conditional formatting and a pivot table (`Book.xlsx`)
- **Power BI:** Suppliers Dashboard with bar chart, pie chart and summary table (`Suppliers Dashboard.pbix`)

## Key Findings
- Total stock value across all suppliers is 341,000, with an average of 68,200 per supplier.
- China holds the most stock: 1,000 of 2,150 units (46.5%).
- Renault Parts (France) holds the highest stock value at 90,000.
- Berlin Tools GmbH (Germany) holds the lowest at 45,000, and Germany has the smallest quantity at 150 units.

## Dashboard
![Suppliers Dashboard](Screenshot%202026-07-11%20113034.png)

## Files
- `queries.sql`: SQL queries
- `Book.xlsx`: Excel analysis
- `Suppliers Dashboard.pbix`: Power BI dashboard
