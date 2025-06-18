# 🧠 Prisma + PostgreSQL + TypeScript – Learning Project

This project is a practical exercise to learn how to use *Prisma ORM* with a *PostgreSQL* database in a *TypeScript* environment. It includes basic setup, database modeling, migrations, and CRUD operations.

---

## 🎯 Goal

- Learn how to set up and use Prisma with PostgreSQL
- Practice defining models and running migrations
- Write clean and type-safe database logic with TypeScript

---

## 🛠 Tech Stack

- *Language:* TypeScript
- *Database:* PostgreSQL
- *ORM:* Prisma

---

## 🔧 Features

- ✅ Prisma setup with PostgreSQL connection
- ✅ .env configuration for secure DB access
- ✅ Schema modeling in schema.prisma
- ✅ Migration and database initialization
- ✅ Sample CRUD operations (Create, Read, Update, Delete)
- ✅ Seed script to populate sample data

---

## 🚀 Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/your-username/prisma-postgresql-typescript-demo.git
cd prisma-postgresql-typescript-demo

2. Install dependencies

npm install

3. Setup your .env file

DATABASE_URL="postgresql://user:password@localhost:5432/mydb"

4. Run Prisma migrations

npx prisma migrate dev --name init

5. Generate Prisma client

npx prisma generate

6. Run the app

npm run dev


---

📁 Project Structure

/prisma          → Prisma schema & migrations
/src
  ├── index.ts   → Entry point
  ├── db.ts      → Prisma client instance
  └── logic/     → CRUD logic


---

📘 Resources

Prisma Docs

PostgreSQL Tutorial

TypeScript Handbook



---

📝 License

MIT – Free to use and modify.

---
