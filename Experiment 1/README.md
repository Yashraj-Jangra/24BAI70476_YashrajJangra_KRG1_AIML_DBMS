# Experiment 1: Database Tables and Relationships

## Overview
This experiment demonstrates fundamental SQL concepts including table creation, constraints, data insertion, and foreign key relationships.

## Concepts Covered

### 1. **Table Creation with Constraints**
- `PRIMARY KEY`: Unique identifier for each record
- `NOT NULL`: Ensures a column must have a value
- `CHECK`: Validates data meets specific conditions
- `UNIQUE`: Ensures uniqueness of column values

### 2. **ALTER TABLE**
- Modifying existing table structures
- Adding new columns with constraints

### 3. **Foreign Key Relationships**
- Linking tables together using `FOREIGN KEY`
- Referential integrity between tables

## Tables Created

### Books Table
- `book_id`: Primary key
- `book_name`: Book title (20 character limit)
- `author_name`: Author name (20 character limit)
- `book_count`: Number of copies available (must be > 0)

### Library_Visitors Table
- `user_id`: Primary key
- `name`: Visitor name (20 character limit)
- `age`: Visitor age (minimum 17 years)
- `email`: Email address (must be unique)

### Book_Issue Table
- `book_issue_id`: Primary key
- `user_id`: Foreign key referencing Library_Visitors
- `book_id`: Foreign key referencing Books

## Key Features
- Data integrity through constraints
- Relationship management with foreign keys
- Sample data demonstrating the library management system
