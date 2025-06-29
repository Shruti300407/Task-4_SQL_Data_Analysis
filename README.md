# 📊 SQL for Data Analysis - Olist eCommerce Dataset

Objective

Analyze the Olist Brazilian eCommerce dataset using SQL to extract business insights, build analytical queries, and explore customer behavior. 
The project demonstrates SQL skills such as joins, aggregation, subqueries, and views using a relational database.

Tools Used

- SQLite via [DB Browser for SQLite](https://sqlitebrowser.org/)
- Python (Pandas + sqlite3) — for ETL from CSVs to `.db`
- Google Colab — to preprocess and export the SQLite file
- PDF — for reporting and documentation

Dataset Overview

The dataset contains Brazilian eCommerce order data spanning multiple dimensions including customers, products, sellers, reviews, payments, and geolocation. It originates from the public [Olist dataset on Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce).

 Database File ('olist.db')

This project includes a ready-to-use **SQLite database** file:  
[ `olist.db` ]

Open this in DB Browser for SQLite to:
- Browse or query the data using the Execute SQL tab
- Visualize schema relationships
- Run all SQL analysis directly from the provided `olist_queries.sql` file

Tables Included:

| Table Name                          | Description                              |
|-------------------------------------|------------------------------------------|
| `customers`                         | Customer ID and location info            |
| `orders`                            | Order metadata                           |
| `order_items`                       | Items in each order                      |
| `order_payments`                    | Payment details                          |
| `order_reviews`                     | Customer reviews and ratings             |
| `geolocation`                       | Zip code mapping and coordinates         |
| `products`                          | Product specifications                   |
| `sellers`                           | Seller information                       |
| `product_category_name_translation` | Translated product category names        |

 SQL Queries

All queries are stored in `olist_queries.sql` and include:

- Filtering (`WHERE`), sorting (`ORDER BY`)
- Aggregates (`SUM`, `AVG`, etc.)
- Grouping (`GROUP BY`)
- Joins (INNER, LEFT)
- Subqueries
- Views
- Index creation

You can copy and paste them into DB Browser for SQLite, or execute them in bulk using the file.

 Report Include Screenshots of Query & Outputs



--- Deliverables

- `olist.db` — SQLite database
- `olist_queries.sql` — All queries used
-  Screenshots of output report pdf
-  This `README.md`



