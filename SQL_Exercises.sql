-- https://www.sql-ex.ru/
-- Exercise: 1. Find the model number, speed and hard drive capacity for all the PCs with prices below $500. Result set: model, speed, hd
-- Задание: 1. Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd
SELECT model, speed, hd
FROM PC
WHERE price < 500;

-- Exercise: 2. List all printer makers. Result set: maker.
-- Задание: 2. Найдите производителей принтеров. Вывести: maker
SELECT DISTINCT maker
FROM Product
WHERE type = 'Printer';

-- Exercise: 3. Find the model number, RAM and screen size of the laptops with prices over $1000.
-- Задание: 3. Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.
SELECT model, ram, screen
FROM Laptop
WHERE price > 1000;

-- Exercise: 4. Find all records from the Printer table containing data about color printers.
-- Задание: 4.Найдите все записи таблицы Printer для цветных принтеров.
SELECT *
FROM Printer
WHERE color = 'y';

-- 
-- Задание: 5. Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.
