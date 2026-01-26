-- ========================================
-- EXPERIMENT 1: TABLE CREATION AND DATA INSERTION
-- ========================================

-- Step 1: Create Books Table
CREATE TABLE Books (
	book_id INT PRIMARY KEY,
	book_name VARCHAR(20) NOT NULL,
	author_name VARCHAR(20) NOT NULL,
	book_count INT CHECK (book_count > 0) NOT NULL
);

-- Step 2: Insert Data into Books Table
INSERT INTO Books (book_id, book_name, author_name, book_count) 
VALUES (01, 'Harry Potter', 'David', 3);

-- Step 3: Create Library_Visitors Table
CREATE TABLE Library_Visitors (
	user_id INT PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	age INT CHECK(age >= 17) NOT NULL,
	email VARCHAR(20) NOT NULL UNIQUE
);

-- Step 4: Insert Data into Library_Visitors Table
INSERT INTO Library_Visitors (user_id, name, age, email)
VALUES (100, 'Yashraj', 19, 'me@example.com');

INSERT INTO Library_Visitors (user_id, name, age, email)
VALUES (1, 'Visitor Babu 1', 69, 'visitor1@example.com');

INSERT INTO Library_Visitors (user_id, name, age, email)
VALUES (2, 'Pushpa', 20, 'visitor2@example.com');

-- Step 5: Create Book_Issue Table with Foreign Keys
CREATE TABLE Book_Issue(
	book_issue_id INT PRIMARY KEY,
	user_id INT NOT NULL,
	book_id INT NOT NULL,
	FOREIGN KEY (user_id) REFERENCES Library_Visitors (user_id),
	FOREIGN KEY (book_id) REFERENCES Books (book_id)
);

-- Step 6: Insert Data into Book_Issue Table
INSERT INTO Book_Issue (book_issue_id, user_id, book_id)
VALUES (1, 100, 01);

-- ========================================
-- ROLE CREATION WITH PERMISSIONS
-- ========================================

-- Create Librarian Role with Login
CREATE ROLE Librarian WITH LOGIN PASSWORD 'LibrarianOnTop123!';

-- Grant Permissions to Librarian Role
-- Permissions to Books Table
GRANT SELECT, INSERT, UPDATE ON Books TO Librarian;

-- Permissions to Library_Visitors Table
GRANT SELECT, INSERT, UPDATE ON Library_Visitors TO Librarian;

-- Permissions to Book_Issue Table
GRANT SELECT, INSERT, UPDATE, DELETE ON Book_Issue TO Librarian;

-- Create Admin Role with Full Permissions
CREATE ROLE Admin WITH LOGIN PASSWORD 'AdminOnTop123!';

-- Grant Full Permissions to Admin Role
GRANT ALL PRIVILEGES ON Books TO Admin;
GRANT ALL PRIVILEGES ON Library_Visitors TO Admin;
GRANT ALL PRIVILEGES ON Book_Issue TO Admin;