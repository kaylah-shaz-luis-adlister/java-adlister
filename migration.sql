USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS categories;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL,
    email VARCHAR(240) NOT NULL,
    password VARCHAR(500) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE categories (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    description VARCHAR (50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(500) NOT NULL,
    description TEXT NOT NULL,
    photo VARCHAR(900),
    category INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE,
    CONSTRAINT FOREIGN KEY (category) REFERENCES categories(id)
);


INSERT INTO users (username, email, password) VALUES
            ('bob4', 'bob@mail.com', '$2a$12$LiJeFcg5HZ.dAAy9LcePe.D8vg.IJS6Y6DqKWYuCpXU/4iC0srypa');

INSERT INTO categories (id, description) VALUES
            (1, 'shoes'),
            (2, 'shirts'),
            (3, 'pants'),
            (4, 'outerwear'),
            (5, 'accessories'),
            (6, 'hats');

INSERT INTO ads (user_id, title, description, photo, category) VALUES
            (1, 'Doc Martens for sale', 'Selling brand new never worn Doc Marten boots', 'https://i.guim.co.uk/img/media/ac1c53dc8a3b549480149d041e9299097cb39955/0_302_1600_960/master/1600.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=72a96ac2a6a11b027782df30148181e9', 1),
            (1, 'Stetson Hat', 'Lightly used stetson hat for sale', 'https://cdn.nudiejeans.com/img/Western-Hat-Brown-180998B10-01_1600x1600.jpg', 6),
             (1, 'Wrangler Jeans', 'Lightly used wrangler jeans for sale. Size 32x30.', 'https://media.kohlsimg.com/is/image/kohls/1692397_Dark_Denim?wid=600&hei=600&op_sharpen=1', 3),
              (1, 'Cowboy boots', 'Boots for sale size 10', 'https://m.media-amazon.com/images/I/811VSTCeOPL._AC_UY500_.jpg', 1),
            (1, 'White Shirt', 'White button-up shirt in great condition. Size medium', 'https://m.media-amazon.com/images/I/51jeA4UDYHL._AC_UL1200_.jpg', 2),
            (1, 'White t-shirt', 'Never worn large white t-shirt', 'https://www.gap.com/webcontent/0020/581/516/cn20581516.jpg', 2),
            (1, 'Black military boots', 'Black boots in fair condition for sale, size 10.', 'https://i5.walmartimages.com/asr/eb316cdb-0a06-4cb8-a26e-9e750255a46d_1.293aaa93139571e278d8c9b5a8783cb4.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF', 1),
             (1, 'Texas Belt Buckle', 'I got this belt buckle a couple years ago but I have no use for it anymore', 'https://www.texascapitolgiftshop.com/mas_assets/cache/image/1/a/b/427.Jpg', 5),
              (1, 'Blue Canvas Belt', 'This belt was my brothers belt and I no longer have a use for it', 'https://pussers.com/wp-content/uploads/2017/07/31014-blue.jpg', 5),
              (1, 'Black Winter Coat', 'Moving to a place where I dont need winter clothes, priced to sell fast.', 'https://i5.walmartimages.com/asr/9fd510f6-330d-433a-9b58-2e885c58da55_1.e42c304ca82715fe8995f11f4031a3b3.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF', 4),
              (1, 'Winter gloves', 'Moving to a location where I dont need winter clothes, priced to sell', 'https://i5.walmartimages.com/asr/d9fc0fda-1134-4593-a66a-421fdae640ae_1.d9938bbcc8f08f24baeba920685aeab6.jpeg', 5),
              (1, 'Band Shirt', 'Im devoting my life to religion so Im getting rid of my demonic belongings', 'https://www.littlerockstore.com/media/catalog/product/cache/6140c043870e77365662bee6d7375144/s/l/slayer-kids-t-shirt-silver-eagle.jpg', 2);





