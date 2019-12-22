
SELECT [id]
      ,[name]
      ,[description]
      ,[price]
      ,[price_promo]
      ,[thumb]
      ,[img]
      ,[unit]
      ,[percent_promo]
      ,[rating]
      ,[sold]
      ,[point]
      ,[type]
	  ,food.modified
	  ,food_type.type_name as 'type_name_f'
  FROM [dbo].[food],food_type
  Where food_type.type_id = id AND year(food.modified) between 2019 and  2012

  SELECT *  FROM [dbo].[food_type] WHERE  status =1 And ([type_name] LIKE '%1%' OR type_pos LIKE '%1%')
  SELECT *  FROM [dbo].[food_type] WHERE  status =1 And ([type_name] LIKE '%1%' OR [type_pos] LIKE '%1%')

SELECT [id]
      ,[name]
      ,[description]
      ,[price]
      ,[price_promo]
      ,[thumb]
      ,[img]
      ,[unit]
      ,[percent_promo]
      ,[rating]
      ,[sold]
      ,[point]
      ,[type]
	  ,food.modified
	  ,food_type.type_name as 'type_name_f'
  FROM [dbo].[food],food_type
  Where food_type.type_id = id

select getDate()
select day('2019-12-15 00:00:00.000')
select month('2019-12-15 00:00:00.000')
select year('2019-12-15 00:00:00.000')
SELECT convert(varchar, getdate(), 108)

SELECT CONVERT(VARCHAR(10), GETDATE(), 104) + ' ' + CONVERT(VARCHAR(8), GETDATE(), 108)
SELECT FORMAT(GETDATE() , 'dd/MM/yyyy HH:mm:ss')