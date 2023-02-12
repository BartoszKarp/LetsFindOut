insert into categories (id, name) values
                                      (gen_random_uuid(), 'Zdrowie'),
                                      (gen_random_uuid(), 'Zwierzęta'),
                                      (gen_random_uuid(), 'Turystyka'),
                                      (gen_random_uuid(), 'Uroda i Styl'),
                                      (gen_random_uuid(), 'Kultura'),
                                      (gen_random_uuid(), 'Edukacja'),
                                      (gen_random_uuid(), 'Gry'),
                                      (gen_random_uuid(), 'Hobby'),
                                      (gen_random_uuid(), 'Dom i Ogród'),
                                      (gen_random_uuid(), 'Biznes'),
                                      (gen_random_uuid(), 'Finanse'),
                                      (gen_random_uuid(), 'Kulinaria'),
                                      (gen_random_uuid(), 'Komputery'),
                                      (gen_random_uuid(), 'Smartphone'),
                                      (gen_random_uuid(), 'Motoryzacja'),
                                      (gen_random_uuid(), 'Polityka');

-- select * from questions;

insert into questions (id, name, category_id) values
    (gen_random_uuid(), 'Gdzie najlepiej spędzić wakacje z Polsce', (select id from categories where name = 'Turystyka')),
    (gen_random_uuid(), 'Gdzie najlepiej spędzić wakacje z Europie', (select id from categories where name = 'Turystyka'));

insert into questions (id, name, category_id) values
    (gen_random_uuid(), 'Dlaczego warto uczyć się programowania?', (select id from categories where name = 'Edukacja')),
    (gen_random_uuid(), 'Jaki język programowania na start?', (select id from categories where name = 'Edukacja'));

insert into questions (id, name, category_id) values
    (gen_random_uuid(), 'Jakie są najzdrowsze warzywa?', (select id from categories where name = 'Zdrowie'));

insert into answers (id, name, question_id) values
                                                (gen_random_uuid(), 'Marchewka', (select id from questions where name = 'Jakie są najzdrowsze warzywa?')),
                                                (gen_random_uuid(), 'Brokuł', (select id from questions where name = 'Jakie są najzdrowsze warzywa?')),
                                                (gen_random_uuid(), 'Dynia', (select id from questions where name = 'Jakie są najzdrowsze warzywa?')),
                                                (gen_random_uuid(), 'Groch', (select id from questions where name = 'Jakie są najzdrowsze warzywa?'));


insert into answers (id, name, question_id) values
                                                (gen_random_uuid(), 'Gdańsk', (select id from questions where name = 'Gdzie najlepiej spędzić wakacje z Polsce')),
                                                (gen_random_uuid(), 'Bieszczady', (select id from questions where name = 'Gdzie najlepiej spędzić wakacje z Polsce')),
                                                (gen_random_uuid(), 'Mazury', (select id from questions where name = 'Gdzie najlepiej spędzić wakacje z Polsce'));

insert into questions (id, name, category_id) values
                                                  (gen_random_uuid(), 'Jaki smarthpone wybrać w 2023 roku?', (select id from categories where name = 'Smartphone')),
                                                  (gen_random_uuid(), 'Budżetowe smartphone? 1000zł, 1500zł, 2000zł', (select id from categories where name = 'Smartphone'));

insert into answers (id, name, question_id) values
                                                (gen_random_uuid(), 'Iphone 14', (select id from questions where name = 'Jaki smarthpone wybrać w 2023 roku?')),
                                                (gen_random_uuid(), 'Samsung S23', (select id from questions where name = 'Jaki smarthpone wybrać w 2023 roku?'));

insert into questions (id, name, category_id) values
                                                  (gen_random_uuid(), 'W co zagrać w 2023 roku?', (select id from categories where name = 'Gry')),
                                                  (gen_random_uuid(), 'Jaką gre kupić dla syna na urodziny?', (select id from categories where name = 'Gry'));

insert into answers (id, name, question_id) values
                                                (gen_random_uuid(), 'Wiedźmin 3: Dziki Gon', (select id from questions where name = 'W co zagrać w 2023 roku?')),
                                                (gen_random_uuid(), 'Cyberpunk 2077', (select id from questions where name = 'W co zagrać w 2023 roku?')),
                                                (gen_random_uuid(), 'Rocket League', (select id from questions where name = 'W co zagrać w 2023 roku?')),
                                                (gen_random_uuid(), 'Hogwart Legacy', (select id from questions where name = 'W co zagrać w 2023 roku?'));


insert into answers (id, name, question_id) values
                                                (gen_random_uuid(), 'Minecraft', (select id from questions where name = 'Jaką gre kupić dla syna na urodziny?')),
                                                (gen_random_uuid(), 'Call of Duty', (select id from questions where name = 'Jaką gre kupić dla syna na urodziny?')),
                                                (gen_random_uuid(), 'Counter Strike: Global Offensive', (select id from questions where name = 'Jaką gre kupić dla syna na urodziny?'));