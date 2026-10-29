# Employee Management System - MySQL Database

Database schemas, indices, seed data, and operational SQL scripts for the Employee Management System.

---

## 📌 Database Structure

- **Database Name:** `employee_db`
- **Table Name:** `employees`

### Table Schema:
| Column | Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| `id` | `BIGINT` | `PRIMARY KEY, AUTO_INCREMENT` | Internal primary key |
| `employee_id` | `VARCHAR(50)` | `NOT NULL, UNIQUE` | Unique employee code (e.g. `EMP101`) |
| `name` | `VARCHAR(100)` | `NOT NULL` | Employee full name |
| `time_in` | `VARCHAR(20)` | `NOT NULL` | Shift start time (e.g. `09:00 AM`) |
| `time_out` | `VARCHAR(20)` | `NOT NULL` | Shift end time (e.g. `05:00 PM`) |
| `salary` | `DOUBLE` | `NOT NULL` | Annual salary |
| `status` | `INT` | `NOT NULL, DEFAULT 1` | `1` = Active, `0` = Soft Deleted |
| `created_at` | `TIMESTAMP` | `DEFAULT CURRENT_TIMESTAMP` | Row creation timestamp |
| `updated_at` | `TIMESTAMP` | `DEFAULT CURRENT_TIMESTAMP ON UPDATE` | Last modification timestamp |

### Indexes:
- `idx_emp_id`: B-tree index on `employee_id` for fast lookups.
- `idx_emp_name`: B-tree index on `name` for partial string search.
- `idx_emp_status`: Filter index on `status` (`status = 1`).

---

## 🚀 How to Initialize in MySQL

### Option A: Using MySQL Workbench
1. Open **MySQL Workbench** and connect to your local instance.
2. Open `schema.sql` and click ⚡ **Execute**.
3. Open `seed_data.sql` and click ⚡ **Execute**.

### Option B: Using Command Line (Terminal)
```bash
mysql -u root -p < schema.sql
mysql -u root -p < seed_data.sql
```

---

## 🧪 Included Scripts
- [`schema.sql`](schema.sql): Creates `employee_db` database and `employees` table.
- [`seed_data.sql`](seed_data.sql): Inserts 7 initial employee records.
- [`useful_queries.sql`](useful_queries.sql): Operational queries for Show (status=1), Soft Delete (status=0), Edit, and Partial Search.
