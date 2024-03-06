CREATE DATABASE Online_Auction_Platform_for_Artworks;
USE Online_Auction_Platform_for_Artworks;

CREATE TABLE ARTWORK(
	Artwork_ID VARCHAR(10),
    Title VARCHAR(100),
    Year_Created int,
    Description VARCHAR(255),
    Category VARCHAR(50),
    Selling_Status VARCHAR(20),
    Starting_Price INT,
    Current_Bid INT,
    Bid_Count INT,
    Auction_ID VARCHAR(10),
    Seller_ID VARCHAR(10),
    PRIMARY KEY(Artwork_ID),
    Artist_ID VARCHAR(10),
    Shipping_ID VARCHAR(10)
);

-- Inserting random data into the ARTWORK table while considering foreign key constraints
INSERT INTO ARTWORK (Artwork_ID, Title, Year_Created, Description, Category, Selling_Status, Starting_Price, Current_Bid, Bid_Count, Auction_ID, Seller_ID, Artist_ID, Shipping_ID)
VALUES
    ('AW001', 'Mona Lisa', 1503, 'Famous portrait by da Vinci', 'Painting', 'For Sale', 1000000, 1200000, 15, 'AU001', 'SE001', 'AR001', 'SH001'),
    ('AW002', 'Starry Night', 1889, 'Post-impressionist masterpiece', 'Painting', 'Sold', 800000, NULL, 10, 'AU002', 'SE002', 'AR002', 'SH002'),
    ('AW003', 'The Persistence of Memory', 1931, 'Surreal melting clocks', 'Sculpture', 'For Sale', 500000, 550000, 8, 'AU003', 'SE003', 'AR003', 'SH003'),
    ('AW004', 'The Persistence of Memory II', 1935, 'Surreal melting clocks', 'Sculpture', 'For Sale', 750000, NULL, 0, 'AU004', 'SE004', 'AR004', 'SH004'),
    ('AW005', 'The Starry Night', 1889, 'Another version of the famous painting', 'Painting', 'For Sale', 900000, 950000, 9, 'AU005', 'SE005', 'AR005', 'SH005'),
    ('AW006', 'The Scream', 1893, 'Iconic expressionist painting', 'Painting', 'For Sale', 1500000, 1600000, 18, 'AU006', 'SE006', 'AR006', 'SH006'),
    ('AW007', 'Starry Night Over the Rhône', 1888, 'Another masterpiece by van Gogh', 'Painting', 'For Sale', 850000, 900000, 9, 'AU007', 'SE007', 'AR002', 'SH002');

UPDATE ARTWORK
SET Title = 'Updated Mona Lisa', Year_Created = 1505, Description = 'Updated description of Mona Lisa', Starting_Price = 1100000, Current_Bid = 1250000
WHERE Artwork_ID = 'AW001';

UPDATE ARTWORK
SET Title = 'Updated Persistence of Memory', Year_Created = 1932, Description = 'Updated description of Persistence of Memory', Starting_Price = 520000, Current_Bid = 560000
WHERE Artwork_ID = 'AW003';

DELETE FROM ARTWORK
WHERE Artwork_ID = 'AW007';

SELECT * FROM ARTWORK;
DESCRIBE ARTWORK;

CREATE TABLE USER(
	User_ID VARCHAR(10),
    Username VARCHAR(50),
    Password VARCHAR(50),
    Email VARCHAR(50),
    Reg_Date DATE,
    PRIMARY KEY(User_ID)
);

-- Inserting random data into the USER table
INSERT INTO USER (User_ID, Username, Password, Email, Reg_Date)
VALUES
    ('U001', 'user1', 'password1', 'user1@gmail.com', '2023-01-15'),
    ('U002', 'user2', 'password2', 'user2@gmail.com', '2023-02-20'),
    ('U003', 'user3', 'password3', 'user3@gmail.com', '2023-03-10'),
    ('U004', 'user4', 'password4', 'user4@gmail.com', '2023-04-05'),
    ('U005', 'user5', 'password5', 'user5@gmail.com', '2023-05-18'),
    ('U006', 'user6', 'password6', 'user6@gmail.com', '2023-06-22'),
    ('U007', 'user7', 'password7', 'user7@gmail.com', '2023-07-15');
    
UPDATE USER
SET Username = 'updated_user1', Password = 'updated_password1', Email = 'updated_user1@yahoo.com', Reg_Date = '2023-01-20'
WHERE User_ID = 'U001';

UPDATE USER
SET Username = 'updated_user3', Password = 'updated_password3', Email = 'updated_user3@outlook.com', Reg_Date = '2023-03-15'
WHERE User_ID = 'U003';

DELETE FROM USER
WHERE User_ID = 'U007';

SELECT * FROM USER;
DESCRIBE USER;

CREATE TABLE SELLER(
	Seller_ID VARCHAR(10),
	Seller_Name VARCHAR(100),
    User_ID VARCHAR(10),
    Description VARCHAR(255),
    Seller_Rating INT,
    Payment_Method VARCHAR(50),
    Payment_Details VARCHAR(255),
    PRIMARY KEY(Seller_ID)
);

-- Inserting random data into the SELLER table
INSERT INTO SELLER (Seller_ID, Seller_Name, User_ID, Description, Seller_Rating, Payment_Method, Payment_Details)
VALUES
    ('SE001', 'ArtGalleryX', 'U001', 'A reputable art gallery', 4, 'Credit Card', 'XXXX-XXXX-XXXX-1234'),
    ('SE002', 'ArtSeller1', 'U002', 'Specializing in modern art', 3, 'PayPal', 'paypal@example.com'),
    ('SE003', 'VintageArtShop', 'U003', 'Collectors of vintage art', 5, 'Bank Transfer', 'Account: XXXX-XXXX-XXXX-5678'),
    ('SE004', 'AbstractArtCo', 'U004', 'Abstract art enthusiasts', 4, 'Credit Card', 'XXXX-XXXX-XXXX-9876'),
    ('SE005', 'ArtTreasures', 'U005', 'Fine art collectors', 5, 'Bank Transfer', 'Account: XXXX-XXXX-XXXX-4321'),
    ('SE006', 'ArtisticWonders', 'U006', 'Exploring unique artworks', 4, 'PayPal', 'paypal@example.com'),
    ('SE007', 'ArtCollectors', 'U007', 'Passionate collectors of fine art', 5, 'Credit Card', 'XXXX-XXXX-XXXX-7777');

UPDATE SELLER
SET Seller_Name = 'UpdatedArtGalleryX', Description = 'A reputable art gallery with new description', Seller_Rating = 5, Payment_Method = 'Credit Card', Payment_Details = 'Updated Credit Card Details'
WHERE Seller_ID = 'SE001';

UPDATE SELLER
SET Seller_Name = 'UpdatedVintageArtShop', Description = 'Collectors of vintage art with a new focus', Seller_Rating = 4, Payment_Method = 'PayPal', Payment_Details = 'newpaypal@example.com'
WHERE Seller_ID = 'SE003';

DELETE FROM SELLER
WHERE Seller_ID = 'SE007';


SELECT * FROM SELLER;
DESCRIBE SELLER;

CREATE TABLE ARTIST(
	Artist_ID VARCHAR(10),
    Artist_Name VARCHAR(100),
    Birth_Year int,
    Year_Of_Death int,
    Description VARCHAR(255),
    Country VARCHAR(20),
    Artwork_Count INT,
    Website_URL VARCHAR(255),
    PRIMARY KEY(Artist_ID)
);

-- Inserting data into the ARTIST table
INSERT INTO ARTIST (Artist_ID, Artist_Name, Birth_Year, Year_Of_Death, Description, Country, Artwork_Count, Website_URL)
VALUES
    ('AR001', 'Leonardo da Vinci', 1452 , 1519, 'Italian Renaissance polymath', 'Italy', 30, 'https://www.leonardodavinci.com'),
    ('AR002', 'Vincent van Gogh', 1853, 1890, 'Post-Impressionist painter', 'Netherlands', 50, 'https://www.vangoghgallery.com'),
    ('AR003', 'Salvador Dali', 1904, 1989, 'Surrealist artist', 'Spain', 40, 'https://www.salvadordali.org'),
    ('AR004', 'Johannes Vermeer', 1632, 1675, 'Dutch Golden Age painter', 'Netherlands', 35, 'https://www.vermeer-foundation.org'),
    ('AR005', 'Edvard Munch', 1863, 1944, 'Expressionist painter', 'Norway', 25, 'https://www.munchmuseum.no'),
    ('AR006', 'Pablo Picasso', 1881, 1973, 'Cubist artist', 'Spain', 60, 'https://www.picasso.fr'),
    ('AR007', 'Frida Kahlo', 1907, 1954, 'Mexican surrealist painter', 'Mexico', 60, 'https://www.fridakahlo.org'),
    ('AR008', 'Salvador Dali', 1904, 1989, 'Surrealist artist', 'Spain', 40, 'https://www.salvadordali.org');

UPDATE ARTIST
SET Artist_Name = 'Updated Leonardo da Vinci', Birth_Year = 1454, Year_Of_Death = 1519, Description = 'Updated description of Leonardo da Vinci', Country = 'Italy', Artwork_Count = 35, Website_URL = 'https://www.updated-leonardodavinci.com'
WHERE Artist_ID = 'AR001';

UPDATE ARTIST
SET Artist_Name = 'Updated Salvador Dali', Birth_Year = 1905, Year_Of_Death = 1989, Description = 'Updated description of Salvador Dali', Country = 'Spain', Artwork_Count = 45, Website_URL = 'https://www.updated-salvadordali.org'
WHERE Artist_ID = 'AR003';

DELETE FROM ARTIST
WHERE Artist_ID = 'AR007';


SELECT * FROM ARTIST;

CREATE TABLE AUCTION(
	Seller_ID VARCHAR(10),
	Auction_ID VARCHAR(10),
    Auction_Name VARCHAR(50),
    Description VARCHAR(255),
    Auctioneer VARCHAR(50),
    Starting_Date DATE,
    Ending_Date DATE,
    Auction_Status VARCHAR(20),
    PRIMARY KEY(Auction_ID)
);

-- Inserting data into the AUCTION table
INSERT INTO AUCTION (Seller_ID, Auction_ID, Auction_Name, Description, Auctioneer, Starting_Date, Ending_Date, Auction_Status)
VALUES
    ('SE001', 'AU001', 'Impressionist Art Auction', 'Auction of impressionist artworks', 'AUCTIONEER1', '2023-09-10', '2023-09-15', 'Open'),
    ('SE002', 'AU002', 'Modern Art Auction', 'Auction featuring modern art pieces', 'AUCTIONEER2', '2023-09-12', '2023-09-17', 'Open'),
    ('SE003', 'AU003', 'Surrealist Art Auction', 'Auction showcasing surrealist art', 'AUCTIONEER3', '2023-09-14', '2023-09-19', 'Open'),
    ('SE004', 'AU004', 'Dutch Masters Auction', 'Auction of Dutch Golden Age masterpieces', 'AUCTIONEER1', '2023-09-16', '2023-09-21', 'Open'),
    ('SE005', 'AU005', 'Expressionist Art Auction', 'Auction featuring expressionist artworks', 'AUCTIONEER2', '2023-09-18', '2023-09-23', 'Open'),
    ('SE006', 'AU006', 'Cubist Art Auction', 'Auction of cubist art pieces', 'AUCTIONEER3', '2023-09-20', '2023-09-25', 'Open'),
    ('SE007', 'AU007', 'Impressionist Landscape Auction', 'Auction of impressionist landscape artworks', 'AUCTIONEER4', '2023-09-22', '2023-09-27', 'Open');

UPDATE AUCTION
SET Auction_Name = 'Updated Impressionist Art Auction', Description = 'Updated description of impressionist art auction', Auctioneer = 'Updated Auctioneer 1', Starting_Date = '2023-09-11', Ending_Date = '2023-09-16', Auction_Status = 'Closed'
WHERE Auction_ID = 'AU001';

UPDATE AUCTION
SET Auction_Name = 'Updated Surrealist Art Auction', Description = 'Updated description of surrealist art auction', Auctioneer = 'Updated Auctioneer 3', Starting_Date = '2023-09-15', Ending_Date = '2023-09-20', Auction_Status = 'Closed'
WHERE Auction_ID = 'AU003';

DELETE FROM AUCTION
WHERE Auction_ID = 'AU007';

SELECT * FROM AUCTION;

CREATE TABLE PAYMENT(
	Payment_ID VARCHAR(10),
    User_ID VARCHAR(10),
    Artwork_ID VARCHAR(10),
    Amount INT,
    Payment_Method VARCHAR(50),
	Payment_Date DATE,
    PRIMARY KEY(Payment_ID),
    Seller_ID VARCHAR(10)
);

-- Inserting data into the PAYMENT table
INSERT INTO PAYMENT (Payment_ID, User_ID, Artwork_ID, Amount, Payment_Method, Payment_Date, Seller_ID)
VALUES
    ('PAY001', 'U001', 'AW001', 1200000, 'Credit Card', '2023-09-05', 'SE001'),
    ('PAY002', 'U002', 'AW002', 850000, 'PayPal', '2023-09-08', 'SE002'),
    ('PAY003', 'U003', 'AW003', 550000, 'Bank Transfer', '2023-09-10', 'SE003'),
    ('PAY004', 'U004', 'AW004', 1300000, 'Credit Card', '2023-09-12', 'SE004'),
    ('PAY005', 'U005', 'AW005', 950000, 'Bank Transfer', '2023-09-15', 'SE005'),
    ('PAY006', 'U006', 'AW006', 1600000, 'PayPal', '2023-09-18', 'SE006'),
    ('PAY007', 'U007', 'AW007', 750000, 'Credit Card', '2023-09-22', 'SE007');

UPDATE PAYMENT
SET Amount = 1250000, Payment_Method = 'Updated Credit Card', Payment_Date = '2023-09-06'
WHERE Payment_ID = 'PAY001';

UPDATE PAYMENT
SET Amount = 560000, Payment_Method = 'Updated Bank Transfer', Payment_Date = '2023-09-11'
WHERE Payment_ID = 'PAY003';

UPDATE PAYMENT
SET User_ID = 'U004' WHERE Payment_ID = 'PAY006';

DELETE FROM PAYMENT
WHERE Payment_ID = 'PAY007';

SELECT * FROM PAYMENT;

CREATE TABLE BID(
	Bid_ID VARCHAR(10),
    Amount INT,
    Bid_Time TIME,
    User_ID VARCHAR(10),
    Artwork_ID VARCHAR(10),
    PRIMARY KEY(Bid_ID)
);

-- Inserting data into the BID table
INSERT INTO BID (Bid_ID, Amount, Bid_Time, User_ID, Artwork_ID)
VALUES
    ('BID001', 1100000, '10:30:00', 'U001', 'AW001'),
    ('BID002', 820000, '11:45:00', 'U002', 'AW002'),
    ('BID003', 560000, '12:15:00', 'U003', 'AW003'),
    ('BID004', 1280000, '14:20:00', 'U004', 'AW004'),
    ('BID005', 940000, '15:40:00', 'U005', 'AW005'),
    ('BID006', 1580000, '16:55:00', 'U006', 'AW006'),
    ('BID007', 1350000, '17:30:00', 'U007', 'AW007');

UPDATE BID
SET Amount = 1220000, Bid_Time = '10:45:00'
WHERE Bid_ID = 'BID001';

UPDATE BID
SET Amount = 580000, Bid_Time = '12:30:00'
WHERE Bid_ID = 'BID003';

DELETE FROM BID
WHERE Bid_ID = 'BID007';

SELECT * FROM BID;

CREATE TABLE SHIPPING(
	Shipping_ID VARCHAR(10),
    User_ID VARCHAR(10),
    Artwork_ID VARCHAR(10),
    Shipping_Date DATE,
    Est_Delivery_Date DATE,
    Actual_Delivery_Date DATE,
    Shipping_Carrier VARCHAR(50),
    Shipping_Cost INT,
    Tracking_Number INT,
    Shipping_status VARCHAR(20),
    PRIMARY KEY(Shipping_ID)
);

-- Inserting data into the SHIPPING table
INSERT INTO SHIPPING (Shipping_ID, User_ID, Artwork_ID, Shipping_Date, Est_Delivery_Date, Actual_Delivery_Date, Shipping_Carrier, Shipping_Cost, Tracking_Number, Shipping_status)
VALUES
    ('SH001', 'U001', 'AW001', '2023-09-05', '2023-09-10', '2023-09-08', 'UPS', 50, 123456789, 'Delivered'),
    ('SH002', 'U002', 'AW002', '2023-09-06', '2023-09-12', '2023-09-10', 'FedEx', 45, 987654321, 'Delivered'),
    ('SH003', 'U003', 'AW003', '2023-09-07', '2023-09-14', '2023-09-12', 'DHL', 55, 654321987, 'Delivered'),
    ('SH004', 'U004', 'AW004', '2023-09-08', '2023-09-16', '2023-09-14', 'USPS', 60, 321987654, 'Delivered'),
    ('SH005', 'U005', 'AW005', '2023-09-09', '2023-09-18', '2023-09-16', 'UPS', 55, 789456123, 'Delivered'),
    ('SH006', 'U006', 'AW006', '2023-09-10', '2023-09-20', '2023-09-18', 'FedEx', 65, 159753456, 'Delivered'),
    ('SH007', 'U007', 'AW007', '2023-09-12', '2023-09-22', '2023-09-20', 'UPS', 60, 987654321, 'Delivered');

UPDATE SHIPPING
SET Shipping_Date = '2023-09-06', Est_Delivery_Date = '2023-09-13', Actual_Delivery_Date = '2023-09-11', Shipping_Carrier = 'DHL', Shipping_Cost = 58, Tracking_Number = 987654321, Shipping_status = 'In Transit'
WHERE Shipping_ID = 'SH001';

UPDATE SHIPPING
SET Shipping_Date = '2023-09-08', Est_Delivery_Date = '2023-09-15', Actual_Delivery_Date = '2023-09-13', Shipping_Carrier = 'USPS', Shipping_Cost = 63, Tracking_Number = 321987654, Shipping_status = 'In Transit'
WHERE Shipping_ID = 'SH003';

DELETE FROM SHIPPING
WHERE Shipping_ID = 'SH007';

SELECT * FROM SHIPPING;

CREATE TABLE SHIPPING_ADDRESS(
	Shipping_ID VARCHAR(10),
    House_Number VARCHAR(10),
    Street VARCHAR(20),
    City VARCHAR(20),
    State VARCHAR(20),
    Zip_Code INT,
    Country VARCHAR(20),
    PRIMARY KEY(Shipping_ID)
);

-- Inserting random data into the SHIPPING_ADDRESS table
INSERT INTO SHIPPING_ADDRESS (Shipping_ID, House_Number, Street, City, State, Zip_Code, Country)
VALUES
    ('SH001', '123', 'Main Street', 'New York', 'NY', 10001, 'USA'),
    ('SH002', '456', 'Oak Avenue', 'Los Angeles', 'CA', 90001, 'USA'),
    ('SH003', '789', 'Maple Lane', 'Chicago', 'IL', 60601, 'USA'),
    ('SH004', '101', 'Pine Road', 'Houston', 'TX', 77001, 'USA'),
    ('SH005', '222', 'Cedar Drive', 'Miami', 'FL', 33101, 'USA'),
    ('SH006', '333', 'Birch Street', 'San Francisco', 'CA', 94101, 'USA'),
    ('SH007', '777', 'Elm Avenue', 'Boston', 'MA', 02201, 'USA');

UPDATE SHIPPING_ADDRESS
SET House_Number = 'Updated123', Street = 'UpdatedMain Street', City = 'UpdatedNew York', State = 'UpdatedNY', Zip_Code = 10002, Country = 'UpdatedUSA'
WHERE Shipping_ID = 'SH001';

UPDATE SHIPPING_ADDRESS
SET House_Number = 'Updated789', Street = 'UpdatedMaple Lane', City = 'UpdatedChicago', State = 'UpdatedIL', Zip_Code = 60602, Country = 'UpdatedUSA'
WHERE Shipping_ID = 'SH003';

DELETE FROM SHIPPING_ADDRESS
WHERE Shipping_ID = 'SH007';

SELECT * FROM SHIPPING_ADDRESS;

CREATE TABLE ARTWORK_GENRE(
	Artwork_ID varchar(10),
    Genre VARCHAR(20),
    PRIMARY KEY (Artwork_ID , Genre)
);

-- Inserting data into the ARTWORK_GENRE table
INSERT INTO ARTWORK_GENRE (Artwork_ID, Genre)
VALUES
    ('AW001', 'Portrait'),
    ('AW001', 'Renaissance'),
    ('AW003', 'Surrealism'),
    ('AW004', 'Surrealism'),
    ('AW004', 'Dutch Golden Age'),
    ('AW005', 'Post-Impressionism'),
    ('AW006', 'Expressionism'),
    ('AW006', 'Cubism');
    
UPDATE ARTWORK_GENRE
SET Genre = 'UpdatedPortrait'
WHERE Artwork_ID = 'AW001' AND Genre = 'Portrait';

UPDATE ARTWORK_GENRE
SET Genre = 'UpdatedSurrealism'
WHERE Artwork_ID = 'AW003' AND Genre = 'Surrealism';

DELETE FROM ARTWORK_GENRE
WHERE Artwork_ID = 'AW004' AND Genre = 'Baroque';

SELECT * FROM ARTWORK_GENRE;

ALTER TABLE ARTWORK_GENRE 
ADD CONSTRAINT fk_artgen FOREIGN KEY (Artwork_ID) REFERENCES ARTWORK(Artwork_ID) ON DELETE CASCADE;

ALTER TABLE ARTWORK
ADD CONSTRAINT fk_arw FOREIGN KEY (Auction_ID) REFERENCES AUCTION(Auction_ID) ON DELETE CASCADE,
ADD CONSTRAINT fk_arw2 FOREIGN KEY (Artist_ID) REFERENCES ARTIST(Artist_ID) ON DELETE CASCADE,
ADD CONSTRAINT fk_arw3 FOREIGN KEY (Shipping_ID) REFERENCES SHIPPING(Shipping_ID) ON DELETE CASCADE;

ALTER TABLE SELLER
ADD CONSTRAINT fk_usr 
FOREIGN KEY (User_ID) REFERENCES USER(User_ID) ON DELETE CASCADE;

ALTER TABLE AUCTION
ADD CONSTRAINT fk_auc 
FOREIGN KEY (Seller_ID) REFERENCES SELLER(Seller_ID) ON DELETE CASCADE;

ALTER TABLE PAYMENT
ADD CONSTRAINT fk_pym FOREIGN KEY (User_ID) REFERENCES USER(User_ID) ON DELETE CASCADE,
ADD CONSTRAINT fk_pym2 FOREIGN KEY (Seller_ID) REFERENCES SELLER(Seller_ID) ON DELETE CASCADE,
ADD CONSTRAINT fk_pym3 FOREIGN KEY (Artwork_ID) REFERENCES ARTWORK(Artwork_ID) ON DELETE CASCADE;

ALTER TABLE BID
ADD CONSTRAINT fk_bid FOREIGN KEY (User_ID) REFERENCES USER(User_ID) ON DELETE CASCADE,
ADD CONSTRAINT fk_bid2 FOREIGN KEY (Artwork_ID) REFERENCES ARTWORK(Artwork_ID) ON DELETE CASCADE;

ALTER TABLE SHIPPING
ADD CONSTRAINT fk_shp FOREIGN KEY (User_ID) REFERENCES USER(User_ID) ON DELETE CASCADE;

ALTER TABLE SHIPPING_ADDRESS
ADD CONSTRAINT fk_shpadd FOREIGN KEY (Shipping_ID) REFERENCES SHIPPING(Shipping_ID) ON DELETE CASCADE;

CREATE TABLE ARTIST_ARTISTS_INFLUENCED_BY(
	Artist_ID VARCHAR(10),
    Artists_Influenced_By VARCHAR(10),
    PRIMARY KEY(Artist_ID, Artists_Influenced_By)
);

-- Inserting data into the ARTIST_ARTISTS_INFLUENCED_BY table
INSERT INTO ARTIST_ARTISTS_INFLUENCED_BY (Artist_ID, Artists_Influenced_By)
VALUES
    ('AR001', 'AR002'),
    ('AR002', 'AR004'),
    ('AR003', 'AR001'),
    ('AR003', 'AR002'),
    ('AR004', 'AR001'),
    ('AR004', 'AR002'),
    ('AR005', 'AR001'),
    ('AR005', 'AR002'),
    ('AR006', 'AR003');

DESCRIBE ARTIST_ARTISTS_INFLUENCED_BY;

ALTER TABLE ARTIST_ARTISTS_INFLUENCED_BY
ADD CONSTRAINT fk_artists_inf_by FOREIGN KEY (Artist_ID) REFERENCES ARTIST(Artist_ID) ON DELETE CASCADE;

ALTER TABLE ARTIST_ARTISTS_INFLUENCED_BY
ADD CONSTRAINT fk_artists_influenced FOREIGN KEY (Artists_Influenced_By) REFERENCES ARTWORK(Artist_ID) ON DELETE CASCADE;

CREATE TABLE ARTIST_SOCIAL_MEDIA_LINK(
	Artist_ID VARCHAR(10),
    Social_Media_Link VARCHAR(255),
    PRIMARY KEY(Artist_ID, Social_Media_Link)
);

-- Inserting data into the ARTIST_SOCIAL_MEDIA_LINK table
INSERT INTO ARTIST_SOCIAL_MEDIA_LINK (Artist_ID, Social_Media_Link)
VALUES
    ('AR001', 'https://www.facebook.com/leonardodavinci'),
    ('AR002', 'https://www.instagram.com/vangogh'),
    ('AR003', 'https://www.twitter.com/salvadordali'),
    ('AR004', 'https://www.facebook.com/johannesvermeer'),
    ('AR005', 'https://www.instagram.com/edvardmunch'),
    ('AR006', 'https://www.twitter.com/picasso');

UPDATE ARTIST_SOCIAL_MEDIA_LINK
SET Social_Media_Link = 'https://www.facebook.com/updated-leonardodavinci'
WHERE Artist_ID = 'AR001' AND Social_Media_Link = 'https://www.facebook.com/leonardodavinci';

UPDATE ARTIST_SOCIAL_MEDIA_LINK
SET Social_Media_Link = 'https://www.instagram.com/updated-vangogh'
WHERE Artist_ID = 'AR002' AND Social_Media_Link = 'https://www.instagram.com/vangogh';

DELETE FROM ARTIST_SOCIAL_MEDIA_LINK
WHERE Artist_ID = 'AR004' AND Social_Media_Link = 'https://www.facebook.com/johannesvermeer';

ALTER TABLE ARTIST_SOCIAL_MEDIA_LINK
ADD CONSTRAINT fk_social_media_lnk FOREIGN KEY (Artist_ID) REFERENCES ARTIST(Artist_ID) ON DELETE CASCADE;

-- ------------------------------------------------------------------------------------------------------
-- simple queries

-- 1) select operation
-- 	  Retrieve the titles and categories of all artworks.
SELECT Title 'Title of the art' , Category 'Category of art' FROM ARTWORK;

-- 2) project operation
-- 	  Retrieve the seller names from the SELLER table.
SELECT Seller_Name 'Seller Name' FROM SELLER;

-- 3) cartesian product operation
-- 	  Find all possible combinations of artworks and sellers.
SELECT A.Artwork_ID, S.Seller_ID FROM ARTWORK A CROSS JOIN SELLER S ORDER BY Artwork_ID;

-- 4) cartesian product operation
-- 	  Create a view named "ActiveAuctions" to display active auctions
CREATE VIEW Active_Auctions AS SELECT * FROM AUCTION WHERE Auction_Status = 'Open';

-- 5) Rename the "Description" column in the ART table to "Art_Description."
ALTER TABLE ARTWORK CHANGE COLUMN Description Art_Description VARCHAR(255);

-- 6) Aggregation Function (Average):
-- 	  Find the average starting price of all artworks.
SELECT AVG(Starting_Price) AS Average_Starting_Price FROM ARTWORK;

-- 7) LIKE keyword
-- 	  Find users with email addresses containing "gmail.com."
SELECT * FROM USER WHERE Email LIKE '%gmail.com%';

-- Complex queries

-- 8) Union Query
-- 	  Find the titles of artworks that are either in the "Surrealism" genre or have a starting price greater than $1,000,000.
SELECT Title 'Title of the art'
FROM ARTWORK
WHERE Category = 'Surrealism'
UNION
SELECT Title
FROM ARTWORK
WHERE Starting_Price > 1000000;

-- 9) Intersection Query
-- 	  Find the names of artists who influenced both "Leonardo da Vinci" and "Vincent van Gogh
SELECT A1.Artist_Name Artist
FROM ARTIST A1
INNER JOIN ARTIST_ARTISTS_INFLUENCED_BY I1 ON A1.Artist_ID = I1.Artist_ID
INNER JOIN ARTIST A2 ON I1.Artists_Influenced_By = A2.Artist_ID
WHERE A2.Artist_Name = 'Vincent van Gogh';

-- 10)  Set Difference Query
-- 	  	Find the names of artists who are influenced by "Salvador Dali" but not by "Pablo Picasso
SELECT A1.Artist_Name Artist
FROM ARTIST A1
INNER JOIN ARTIST_ARTISTS_INFLUENCED_BY I1 ON A1.Artist_ID = I1.Artist_ID
WHERE I1.Artists_Influenced_By = 'AR003'
EXCEPT
SELECT A2.Artist_Name
FROM ARTIST A2
INNER JOIN ARTIST_ARTISTS_INFLUENCED_BY I2 ON A2.Artist_ID = I2.Artist_ID
WHERE I2.Artists_Influenced_By = 'AR006';

-- 11)  Division Query
-- 	  	Find the sellers who have sold all artworks in the "Surrealism" category.
SELECT S.Seller_Name Seller
FROM SELLER S
WHERE NOT EXISTS (
    SELECT A.Artwork_ID
    FROM ARTWORK A
    WHERE A.Category = 'Surrealism'
    EXCEPT
    SELECT P.Artwork_ID
    FROM PAYMENT P
    WHERE P.Seller_ID = S.Seller_ID
);

-- 12) Inner Join Query
-- 	   Find the title, artist name, and seller name of all sold artworks.
SELECT A.Title, AR.Artist_Name Artist, S.Seller_Name seller
FROM ARTWORK A
INNER JOIN ARTIST AR ON A.Artist_ID = AR.Artist_ID
INNER JOIN SELLER S ON A.Seller_ID = S.Seller_ID
WHERE A.Selling_Status = 'Sold';

-- 13) Natural Join Query
-- 	   Find the shipping details for artworks currently in auction.
SELECT A.Title, SH.Shipping_Date, SH.Est_Delivery_Date
FROM ARTWORK A
NATURAL JOIN SHIPPING SH
WHERE A.Selling_Status = 'For Sale';

-- 14) Left Outer Join Query
-- 	   List all auctions and their corresponding sellers, including auctions without sellers.
SELECT A.Auction_Name, S.Seller_Name Seller
FROM AUCTION A
LEFT OUTER JOIN SELLER S ON A.Seller_ID = S.Seller_ID;

-- 15) Right Outer Join Query
-- 	   List all sellers and their corresponding auctions, including sellers without auctions.
SELECT AW.Title, S.Seller_Name
FROM ARTWORK AW
RIGHT OUTER JOIN SELLER S ON AW.Seller_ID = S.Seller_ID;

-- 16) Full Outer Join Query
-- 	   List all artists and their influenced artists, including artists without influenced artists and vice versa.
SELECT A1.Artist_Name Artist, A2.Artist_Name AS Influenced_By
FROM ARTIST A1
LEFT JOIN ARTIST_ARTISTS_INFLUENCED_BY I ON A1.Artist_ID = I.Artist_ID
LEFT JOIN ARTIST A2 ON I.Artists_Influenced_By = A2.Artist_ID
UNION ALL
SELECT A1.Artist_Name, A2.Artist_Name AS Influenced_By
FROM ARTIST A1
RIGHT JOIN ARTIST_ARTISTS_INFLUENCED_BY I ON A1.Artist_ID = I.Artists_Influenced_By
RIGHT JOIN ARTIST A2 ON I.Artist_ID = A2.Artist_ID;

-- 17) Nested Query with Relational Algebraic Operation
-- 	   Find the total number of artworks influenced by artists who are born after 1700.
SELECT COUNT(*) Count
FROM ARTWORK
WHERE Artist_ID IN (
    SELECT Artist_ID
    FROM ARTIST
    WHERE Birth_Year > 1700
);

-- 18) Nested Query with Set Difference
-- 	   Find the titles of artworks that have never been bid on.
SELECT Title
FROM ARTWORK
WHERE Artwork_ID NOT IN (
    SELECT DISTINCT Artwork_ID
    FROM BID
);

-- 19) Nested Query with Intersection
-- 	   Find the artists who are influenced by all artists who were born in Italy.
SELECT A1.Artist_Name
FROM ARTIST A1
WHERE NOT EXISTS (
    SELECT A2.Artist_ID
    FROM ARTIST A2
    WHERE A2.Country = 'Italy'
    EXCEPT
    SELECT I.Artists_Influenced_By
    FROM ARTIST_ARTISTS_INFLUENCED_BY I
    WHERE I.Artist_ID = A1.Artist_ID
);

-- 20) Nested Query with Outer Union
-- 	   Find the total number of users who have either made a payment or placed a bid.
SELECT User_Count 'Amount of users'
FROM (
    SELECT COUNT(*) AS User_Count
    FROM PAYMENT
    UNION
    SELECT COUNT(*) AS User_Count
    FROM BID
) AS UserStats;

-- DATABASE TUNING

-- Tuning Union Query
SHOW INDEX FROM Artwork;
EXPLAIN (SELECT Title 'Title of the art'
FROM ARTWORK
WHERE Category = 'Surrealism'
UNION
SELECT Title
FROM ARTWORK
WHERE Starting_Price > 1000000);

CREATE INDEX Starting_Price_Index ON Artwork(Starting_Price);
SHOW INDEX FROM Artwork;

EXPLAIN (SELECT Title 'Title of the art'
FROM ARTWORK
WHERE Category = 'Surrealism'
UNION
SELECT Title
FROM ARTWORK
WHERE Starting_Price > 1000000);

-- TUNING INTERSECTION QUERY
SHOW INDEX FROM Artist;

EXPLAIN (SELECT A1.Artist_Name Artist
FROM ARTIST A1
INNER JOIN ARTIST_ARTISTS_INFLUENCED_BY I1 ON A1.Artist_ID = I1.Artist_ID
INNER JOIN ARTIST A2 ON I1.Artists_Influenced_By = A2.Artist_ID
WHERE A2.Artist_Name = 'Vincent van Gogh');

CREATE INDEX Artist_Name_Index on Artist(Artist_Name);
SHOW INDEX FROM Artist;

EXPLAIN (SELECT A1.Artist_Name Artist
FROM ARTIST A1
INNER JOIN ARTIST_ARTISTS_INFLUENCED_BY I1 ON A1.Artist_ID = I1.Artist_ID
INNER JOIN ARTIST A2 ON I1.Artists_Influenced_By = A2.Artist_ID
WHERE A2.Artist_Name = 'Vincent van Gogh');

-- TUNING DIVISION QUERY
EXPLAIN (SELECT S.Seller_Name Seller
FROM SELLER S
WHERE NOT EXISTS (
    SELECT A.Artwork_ID
    FROM ARTWORK A
    WHERE A.Category = 'Surrealism'
    EXCEPT
    SELECT P.Artwork_ID
    FROM PAYMENT P
    WHERE P.Seller_ID = S.Seller_ID
));

SHOW INDEX FROM Artwork;

CREATE INDEX Category_Index ON Artwork(Category);
SHOW INDEX FROM Artwork;

EXPLAIN (SELECT S.Seller_Name Seller
FROM SELLER S
WHERE NOT EXISTS (
    SELECT A.Artwork_ID
    FROM ARTWORK A
    WHERE A.Category = 'Surrealism'
    EXCEPT
    SELECT P.Artwork_ID
    FROM PAYMENT P
    WHERE P.Seller_ID = S.Seller_ID
));

-- TUNING INNER JOIN QUERY
EXPLAIN (SELECT A.Title, AR.Artist_Name Artist, S.Seller_Name seller
FROM ARTWORK A
INNER JOIN ARTIST AR ON A.Artist_ID = AR.Artist_ID
INNER JOIN SELLER S ON A.Seller_ID = S.Seller_ID
WHERE A.Selling_Status = 'Sold');

SHOW INDEX FROM Artwork;

CREATE INDEX Selling_Status_Index ON Artwork(Selling_Status);
SHOW INDEX FROM Artwork;

EXPLAIN (SELECT A.Title, AR.Artist_Name Artist, S.Seller_Name seller
FROM ARTWORK A
INNER JOIN ARTIST AR ON A.Artist_ID = AR.Artist_ID
INNER JOIN SELLER S ON A.Seller_ID = S.Seller_ID
WHERE A.Selling_Status = 'Sold');

-- Tuning Nested Query with Relational Algebraic Operation
EXPLAIN (SELECT COUNT(*) Count
FROM ARTWORK
WHERE Artist_ID IN (
    SELECT Artist_ID
    FROM ARTIST
    WHERE Birth_Year > 1700
));

SHOW INDEX FROM Artist;

CREATE INDEX Birth_Year_Index ON Artist(Birth_Year);
SHOW INDEX FROM Artist;

EXPLAIN (SELECT COUNT(*) Count
FROM ARTWORK
WHERE Artist_ID IN (
    SELECT Artist_ID
    FROM ARTIST
    WHERE Birth_Year > 1700
));

-- TUNING NESTED QUERY WITH INTERSECTION
EXPLAIN (SELECT A1.Artist_Name
FROM ARTIST A1
WHERE NOT EXISTS (
    SELECT A2.Artist_ID
    FROM ARTIST A2
    WHERE A2.Country = 'Italy'
    EXCEPT
    SELECT I.Artists_Influenced_By
    FROM ARTIST_ARTISTS_INFLUENCED_BY I
    WHERE I.Artist_ID = A1.Artist_ID
));

SHOW INDEX FROM Artist;
CREATE INDEX Country_Index ON Artist(Country);
SHOW INDEX FROM Artist;

EXPLAIN (SELECT A1.Artist_Name
FROM ARTIST A1
WHERE NOT EXISTS (
    SELECT A2.Artist_ID
    FROM ARTIST A2
    WHERE A2.Country = 'Italy'
    EXCEPT
    SELECT I.Artists_Influenced_By
    FROM ARTIST_ARTISTS_INFLUENCED_BY I
    WHERE I.Artist_ID = A1.Artist_ID
));


-- TUNING LEFT OUTER JOIN
EXPLAIN (SELECT A.Auction_Name, S.Seller_Name Seller
FROM AUCTION A
LEFT OUTER JOIN SELLER S ON A.Seller_ID = S.Seller_ID);

SHOW INDEX FROM Auction;
CREATE INDEX Name_Index ON AUCTION(Auction_ID, Auction_Name);
SHOW INDEX FROM Auction;

EXPLAIN (SELECT A.Auction_Name, S.Seller_Name Seller
FROM AUCTION A
LEFT OUTER JOIN SELLER S ON A.Seller_ID = S.Seller_ID);

-- TUNING RIGHT OUTER JOIN
EXPLAIN (SELECT AW.Title, S.Seller_Name
FROM ARTWORK AW
RIGHT OUTER JOIN SELLER S ON AW.Seller_ID = S.Seller_ID);

SHOW INDEX FROM Artwork;
CREATE INDEX Artwork_Name_Index ON artwork(Artwork_ID, Title);

SHOW INDEX FROM Artwork;

EXPLAIN (SELECT AW.Title, S.Seller_Name
FROM ARTWORK AW
RIGHT OUTER JOIN SELLER S ON AW.Seller_ID = S.Seller_ID);