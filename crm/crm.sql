-- Drops existing tables, so we start fresh with each
-- run of this script
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS my_contacts;
DROP TABLE IF EXISTS enrollments;

-- CREATE TABLES

--create base tables 

CREATE TABLE contacts (
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   contact_name TEXT,
   email_address TEXT,
   phone_number TEXT
);

CREATE TABLE activities (
     id INTEGER PRIMARY KEY AUTOINCREMENT,
     contact_type TEXT,
     contact_date DATE,
     contact_time TIME
);

CREATE TABLE companies (
     id INTEGER PRIMARY KEY AUTOINCREMENT,
     company_name TEXT
);

CREATE TABLE my_contacts (
     id INTEGER PRIMARY KEY AUTOINCREMENT,
     first_name TEXT,
     last_name TEXT,
     email_address TEXT
);

--Create joined tables 
CREATE TABLE company_contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company_id INTEGER,
    contact_id INTEGER
);


CREATE TABLE my_activities (
     id INTEGER PRIMARY KEY AUTOINCREMENT,
    activities_id INTEGER,
    my_contacts_id INTEGER
);
