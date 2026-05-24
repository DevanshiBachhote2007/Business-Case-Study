# ✈️ Airline Route Profitability Dashboard

## Project Question
Question Link:

👉 [Practical Exam Questions](https://docs.google.com/document/d/1QKYlBldmP9u0LIcXv2UjWiUxavN79xOteEuXa3RRydw/edit?tab=t.0)

## 📌 Project Overview
This project analyzes airline route performance using **SQL + Power BI**.  
It provides insights into **revenue, profit, occupancy, and route efficiency** with interactive visuals and KPIs.

---

## 🎯 Objectives
- Identify **top profitable routes**
- Compare **cost vs revenue per route**
- Track **monthly profit trends**
- Measure **average occupancy rate**
- Visualize **origin–destination flight network**

---

## 🗂️ Data Preparation
- Source: Flight dataset containing **Origin, Destination, FlightDate, AircraftType, Revenue, Cost, Profit, Occupancy**
- SQL Queries used:
  - `SELECT TOP 10 RouteCode, SUM(Profit)` → Top profitable routes  
  - `SELECT MONTH(FlightDate), SUM(Profit)` → Monthly profit trend  
  - `SELECT RouteCode, SUM(Revenue), SUM(Cost)` → Cost vs Revenue  
  - `(SeatsSold * 100) / SeatsAvailable` → Occupancy rate  

---

## 📊 Dashboard Features
- **KPI Cards** → Total Revenue, Total Profit, Avg Occupancy, Total Flights, Avg Flight Duration  
- **Bar Chart** → Top 10 profitable routes  
- **Line Chart** → Monthly profit trend  
- **Gauge Chart** → Average occupancy rate  
- **Stacked Column Chart** → Cost vs Revenue per route  
- **Map** → Origin–Destination flight network  
- **Interactive Slicers** → AircraftType, Flight Month, RouteCode  

---

## 💡 Key Insights
- **Profitable Routes**: BOM–JFK, DEL–SYD, MAA–KUL  
- **Seasonal Trends**: Profit peaks in May & October, dips in Feb & Aug  
- **High Revenue but Low Profit Routes**: DEL–SYD, BOM–DXB (due to high costs)  
- **Occupancy Impact**: Higher seat fill → better profitability  
- **Flight Network**: Mix of domestic & international hubs (Delhi, Mumbai, Sydney, Dubai, London, New York)

---

## 🎥 Project Walkthrough Video
Watch the explanation here:  
👉 [Video Link](https://drive.google.com/file/d/1cwpGKnzDl5rNXciaiZ05GMr90RN75qNQ/view?usp=sharing)

---

## 🚀 How to Use
1. Clone this repository  
2. Open `.pbix` file in Power BI Desktop  
3. Connect to your SQL database  
4. Explore visuals with slicers for **AircraftType, Month, RouteCode**

---

## 📌 Conclusion
This dashboard provides a clear story of airline performance:  
- Which routes are profitable  
- How monthly demand changes  
- Where costs reduce margins  
- And how occupancy drives efficiency  

It helps airlines decide **which routes to expand, optimize, or cut back**.

---

