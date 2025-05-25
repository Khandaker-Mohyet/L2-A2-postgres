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




