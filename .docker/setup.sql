CREATE DATABASE IF NOT EXISTS atm;
USE atm;

CREATE TABLE customer (
   id INT NOT NULL,
   name VARCHAR(45) NOT NULL,
   pin TEXT NOT NULL,
   PRIMARY KEY (id)
);

INSERT INTO customer (id, name, pin) VALUES (1, "Nung", "$2a$12$28PR60gj6Y.L9KYmn1fNv.cNg2TWPbEY1ECQ3/4nUWMvgFxi59mjW");
INSERT INTO customer (id, name, pin) VALUES (2, "Song", "$2a$12$zZGeM4r7eKg107jNgrLV7u8a6nr6gjMLYb5Jp894vHm1x4AoBNYO6");

CREATE DATABASE IF NOT EXISTS bank;
USE bank;

CREATE TABLE bank_account (
   id INT NOT NULL AUTO_INCREMENT,
   customer_id INT NOT NULL,
   type VARCHAR(20) NOT NULL,
   balance DOUBLE NOT NULL,
   PRIMARY KEY (id)
);

INSERT INTO bank_account (customer_id, type, balance) VALUES (1, "Saving",
5000);
INSERT INTO bank_account (customer_id, type, balance) VALUES (1, "Checking",
10000);
INSERT INTO bank_account (customer_id, type, balance) VALUES (2, "Saving",
200000);