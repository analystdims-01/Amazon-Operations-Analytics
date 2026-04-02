# Amazon-Operations-Analytics
Power BI dashboard analyzing Amazon sales performance, order fulfillment, and cancellation impact to uncover revenue trends and operational inefficiencies.
 📊 Amazon Sales & Delivery Performance Dashboard

 🧠 Project Overview

This project presents a comprehensive analysis of Amazon sales data, combining sales performance and delivery/cancellation insights into an interactive Power BI dashboard.

The objective is to move beyond basic reporting and uncover:

* Revenue drivers
* Product performance
* Operational inefficiencies
* Revenue realization vs loss

The project is divided into **two dashboard pages**, each answering a specific business question.

---

 🎯 Business Objectives

* Evaluate overall **sales performance and trends**
* Identify **top-performing products and categories**
* Analyze **order fulfillment efficiency**
* Measure **cancellation impact on revenue**
* Provide actionable insights to improve operations and profitability

---

🛠️ Tools & Technologies

* **SQL** → Data querying and exploration
* **Power BI** → Data modeling, DAX measures, and visualization
* **Power Query** → Data cleaning and transformation

---

 📂 Dataset Description

The dataset includes transactional Amazon sales data with:

* Order ID
* SKU / Product Category
* Order Status (Delivered, Shipped, Cancelled, Pending)
* Fulfillment Type (Amazon, Merchant)
* Shipping Service Level (Expedited, Standard)
* Revenue (Amount)
* Date (Month)
* Location (City/State)
* Index
* Status
* Sales_Channel
* Style
* Size
* Ship_state  etc
---

🧹 Data Cleaning & Preparation

* Standardized multiple **status values into a single clean column**
* Handled nulls and inconsistencies using Power Query
* Removed duplicates and ensured **accurate aggregation at order level**
* Validated key metrics such as **Revenue and Order Count**
* Ensured consistent use of **one version of truth across all visuals**
<img width="1920" height="1020" alt="Power Query view" src="https://github.com/user-attachments/assets/c9d27dfd-00ce-4ba2-9eaa-af721ac97e92" />


---

 📊 Dashboard 1: Sales Analysis

 🔍 Key Metrics

* **Total Revenue**
* **Total Orders**
* **Average Order Value (AOV)**

## 📈 Visuals

 **Revenue by Category**
  → Identifies categories driving the most revenue

 **Total Orders by Category**
  → Highlights demand distribution across products

 **Revenue Trend (Monthly)**
  → Shows how sales performance changes over time

 **Top 10 SKUs by Revenue**
  → Reveals best-performing products at a granular level

---

 💡 Key Insights (Sales)

* Revenue is highly concentrated in a few categories, particularly **Set** and **Kurta**
* A small number of SKUs contribute significantly to total revenue
* Sales peaked during a specific month before showing a gradual decline
* Order volume aligns closely with revenue trends, indicating consistent pricing patterns

---

 🚚 Dashboard 2: Delivery & Cancellation Analysis

 🔑 KPIs

* **Total Orders**
* **Cancelled Orders**
* **Cancellation Rate**
* **Delivered Revenue**

 📈 Visuals

* **Order Fulfillment Flow (Funnel)**
  → Tracks progression from total orders to delivered and cancelled

* **Order Value by Fulfillment Status**
  → Compares revenue across Delivered, Shipped, Pending, and Cancelled

**Cancelled Orders by Category**
  → Identifies product categories contributing to cancellations

* **Order Distribution by Shipping Type**
  → Compares delivery outcomes across Expedited vs Standard shipping

* **Monthly Cancellation Trend**
  → Tracks how cancellations evolve over time

* **Fulfillment Slicer (Amazon vs Merchant)**
  → Enables comparison of operational performance

---

💡 Key Insights (Operations)

* Approximately **16% of orders are cancelled**, indicating operational inefficiencies
* A noticeable **drop-off exists between shipped and delivered orders**, suggesting last-mile delivery challenges
* **Delivered orders generate actual revenue**, while shipped and pending orders represent pipeline value
* Certain categories contribute disproportionately to cancellations
* Shipping type influences delivery outcomes, highlighting logistics performance differences

---

 📌 Business Recommendations

* Improve **last-mile delivery processes** to reduce drop-offs after shipment
* Investigate high-cancellation categories for **product or demand issues**
* Optimize **fulfillment strategy (Amazon vs Merchant)**
* Enhance customer communication for **pending or delayed orders**
* Monitor and improve **shipping service performance**

---

🚀 Key Learnings

* Importance of **data cleaning and standardization** in analytics
* Understanding **DAX measures and filter context in Power BI**
* Designing dashboards that prioritize **clarity and insight over clutter**
* Translating raw data into **actionable business decisions**

---

📷 Dashboard Preview
<img width="1248" height="695" alt="Amazon Sales Dashboard" src="https://github.com/user-attachments/assets/4a11028a-9edc-4423-8008-6c44fd172b9a" />
<img width="1242" height="708" alt="Amazon Delivery Dashboard" src="https://github.com/user-attachments/assets/9d6d594b-e8fd-4f8f-af56-0b5ef1968730" />

---

 💼 Conclusion

This project demonstrates how data can be transformed into meaningful insights by combining **sales performance analysis with operational diagnostics**.

By analyzing both **revenue generation and fulfillment efficiency**, the dashboard provides a clear view of:

* Where the business is performing well
* Where value is being lost
* Where improvements can drive growth

---

 🔗 Author

**Oladimeji Adigun**

 Data Analyst | SQL • Power BI • Data Visualization
