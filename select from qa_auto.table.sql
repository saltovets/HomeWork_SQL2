select* from qa_auto.user_profiles where name like '%am%';
select max(totalCost) from qa_auto.expenses left join cars on expenses.carid =cars.id left join car_brands on cars.carBrandId=car_brands.id where car_brands.title='Audi';
select* from car_brands;
select carBrandid, count(*) as count_models, count(*) as car_id from cars where carBrandId in (select carBrandId from car_brands where title in ("Audi", 'BMW')) group by carBrandId;
select car_models.title as car_model, car_brands.title as car_brand, count(distinct cars.userId) as user_count from cars
inner join car_models on cars.carModelId = car_models.id 
inner join car_brands on car_models.carBrandId=car_brands.id group by car_models.title, car_brands.title;
select name, lastName, carBrandId from cars left join user_profiles on user_profiles.userId=cars.userId;
select*from user_profiles;
 