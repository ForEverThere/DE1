# Приложение создано для выполнения тасок и вывода их в определенный формат
Сначала загружаются данные из json файлов в базу данных mssql server, далее делается запрос, и выводится конкретный результат.
На уровне БД написаны процедуры для вставки и для запросов
На уровне приложения с помощью языка Python в отдельных классах написаны функции для вставки, логгирования, соединения с бд, и выполнения запросов.