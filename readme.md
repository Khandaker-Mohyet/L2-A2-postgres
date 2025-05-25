# PostgreSQL Basic Concepts Guide

এই ডকুমেন্টটি PostgreSQL-এর গুরুত্বপূর্ণ কিছু মৌলিক ধারণা ব্যাখ্যা করে। এটি নতুনদের জন্য খুবই উপযোগী যারা PostgreSQL শিখছে বা ব্যবহার করতে চায়।

---

## 1. What is PostgreSQL?

**PostgreSQL** একটি ওপেন-সোর্স, শক্তিশালী এবং উচ্চ-মানের **Object-Relational Database Management System (ORDBMS)**। এটি ANSI SQL-এর প্রায় সব স্ট্যান্ডার্ড অনুসরণ করে এবং জটিল ডেটা ওয়ার্কলোড হ্যান্ডল করার সক্ষমতা রাখে।

**বৈশিষ্ট্যসমূহ:**

* ACID কমপ্লায়েন্ট (ডেটা সঠিকতা ও নিরাপত্তা নিশ্চিত করে)
* MVCC (Multi-Version Concurrency Control)
* JSON এবং XML সাপোর্ট
* Stored Procedures, Triggers, Views সাপোর্ট করে

---

## 2. What is the purpose of a database schema in PostgreSQL?

একটি **Schema** হলো ডাটাবেজের মধ্যে বস্তু (objects) যেমন টেবিল, ভিউ, ফাংশন ইত্যাদি সংগঠিত করে রাখার একটি উপায়।

**উদ্দেশ্য:**

* ডেটাবেজে একই নামে একাধিক অবজেক্ট রাখতে দেয় (ভিন্ন স্কিমায়)
* ডেটার শ্রেণিবিন্যাস সহজ করে
* অ্যাক্সেস কন্ট্রোল ও পারমিশন সহজ করে তোলে

> উদাহরণস্বরূপ, `public` হলো PostgreSQL-এর ডিফল্ট স্কিমা।

---

## 3. Explain the Primary Key and Foreign Key concepts in PostgreSQL.

### 🔑 Primary Key:

একটি কলাম (বা কলামের সমষ্টি) যেটি প্রতিটি রেকর্ডকে **অন্যদের থেকে আলাদা করে চিনতে সাহায্য করে**।

* Uniqueness নিশ্চিত করে
* NULL মান থাকতে পারে না

### 🔗 Foreign Key:

একটি কলাম যা অন্য টেবিলের প্রাইমারি কি-কে **রেফার করে**, অর্থাৎ এটি **দুটি টেবিলের মধ্যে সম্পর্ক** তৈরি করে।

> উদাহরণ:

```sql
-- Primary Key
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name TEXT
);

-- Foreign Key
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id)
);
```

---

## 4. What is the difference between the `VARCHAR` and `CHAR` data types?

| Feature | `VARCHAR(n)`         | `CHAR(n)`                 |
| ------- | -------------------- | ------------------------- |
| দৈর্ঘ্য | ভেরিয়েবল             | নির্দিষ্ট দৈর্ঘ্য         |
| স্পেস   | ট্রিম করে না         | অপ্রয়োজনীয় স্পেস রেখে দেয় |
| ব্যবহার | সাধারণত অধিক ব্যবহৃত | ফিক্সড-লেন্থ ডেটার জন্য   |

> ✅ Best Practice: সবসময় `VARCHAR` ব্যবহার করাই উত্তম কারণ এটি স্পেস ও মেমরি ব্যবহারে আরও কার্যকর।

---

## 5. Explain the purpose of the WHERE clause in a SELECT statement.

**`WHERE`** ক্লজ ব্যবহার করে আপনি **নির্দিষ্ট শর্ত অনুযায়ী** রেকর্ড নির্বাচন করতে পারেন।

> উদাহরণ:

```sql
SELECT * FROM employees WHERE salary > 50000;
```

এটি শুধু ঐসব রেকর্ড ফেরত দিবে যেগুলোর salary ৫০,০০০ টাকার বেশি।

---

## 6. What are the LIMIT and OFFSET clauses used for?

**LIMIT:** কতগুলো রেকর্ড ফেরত দিবে সেটি নির্ধারণ করে।
**OFFSET:** কতগুলো রেকর্ড স্কিপ করে তারপর রেজাল্ট দিবে।

> উদাহরণ:

```sql
SELECT * FROM products LIMIT 10 OFFSET 20;
```

এটি ২১তম রেকর্ড থেকে শুরু করে ১০টি রেকর্ড ফেরত দিবে।

---



