DROP DATABASE IF EXISTS gestion_recipes;

CREATE DATABASE IF NOT EXISTS gestion_recipes;

USE gestion_recipes;

CREATE TABLE IF NOT EXISTS categorys (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL unique
);


CREATE TABLE IF NOT EXISTS recipes (
   id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
   titre VARCHAR(100) NOT NULL UNIQUE,
   type TEXT NOT NULL,
   ingredient TEXT NOT NULL,
   category_id INT NOT NULL,
   FOREIGN KEY(category_id) REFERENCES categorys(id)
);


INSERT INTO categorys (name) VALUES 
   ('Appetizer'),
   ('Main Course'),
   ('Dessert'),
   ('Beverage');

INSERT INTO recipes (titre, type, ingredient, category_id) VALUES
   ('Caesar Salad', 'Salad', 'Lettuce, croutons, Parmesan cheese, Caesar dressing', 1),
   ('Spaghetti Bolognese', 'Pasta', 'Spaghetti, ground beef, tomato sauce, garlic, onion', 2),
   ('Chocolate Cake', 'Baked Good', 'Flour, cocoa powder, sugar, eggs, butter', 3),
   ('Lemonade', 'Drink', 'Lemon juice, sugar, water', 4),
   ('Chicken Curry', 'Main Course', 'Chicken, curry powder, coconut milk, onions', 2),
   ('Fruit Salad', 'Dessert', 'Assorted fruits, honey, lime juice', 3);