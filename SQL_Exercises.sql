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

-- Exercise: 5. Find the model number, speed and hard drive capacity of PCs cheaper than $600 having a 12x or a 24x CD drive.
-- Задание: 5. Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.
SELECT model, speed, hd 
FROM PC
WHERE (cd = '12x' OR cd ='24x') AND price < 600;

-- Exercise: 6. For each maker producing laptops with a hard drive capacity of 10 Gb or higher, find the speed of such laptops. Result set: maker, speed.
-- Задание: 6. Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.



-- Exercise: 7. Get the models and prices for all commercially available products (of any type) produced by maker B.
-- Задание: 7. Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).
