-- Stored procedure that prints "Hello, world!"
CREATE PROCEDURE HelloWorld AS BEGIN PRINT 'Hello, world!'; END;
GO

-- Stored procedure that returns information about the current time
CREATE PROCEDURE GetCurrentTime AS BEGIN SELECT GETDATE() AS CurrentTime; END;
GO

-- Stored procedure that returns information about the current date
CREATE PROCEDURE GetCurrentDate AS BEGIN SELECT GETDATE() AS CurrentDate; END;
GO

-- Stored procedure that takes three numbers and returns their sum
CREATE PROCEDURE GetSum
    @Num1 INT,
    @Num2 INT,
    @Num3 INT
AS
BEGIN
    SELECT @Num1 + @Num2 + @Num3 AS Sum;
END;
GO

-- Stored procedure that takes three numbers and returns their average
CREATE PROCEDURE GetAverage
    @Num1 INT,
    @Num2 INT,
    @Num3 INT
AS
BEGIN
    SELECT (@Num1 + @Num2 + @Num3) / 3.0 AS Average;
END;
GO

-- Stored procedure that takes three numbers and returns the maximum value
CREATE PROCEDURE GetMax
    @Num1 INT,
    @Num2 INT,
    @Num3 INT
AS
BEGIN
    SELECT MAX(Value) AS MaxValue
    FROM (VALUES (@Num1), (@Num2), (@Num3)) AS Numbers(Value);
END;
GO

-- Stored procedure that takes three numbers and returns the minimum value
CREATE PROCEDURE GetMin
    @Num1 INT,
    @Num2 INT,
    @Num3 INT
AS
BEGIN
    SELECT MIN(Value) AS MinValue
    FROM (VALUES (@Num1), (@Num2), (@Num3)) AS Numbers(Value);
END;
GO

-- Stored procedure that takes a number and a symbol and prints a line of length equal to the number
CREATE PROCEDURE DrawLine
    @Length INT,
    @Symbol CHAR(1)
AS
BEGIN
    DECLARE @Line VARCHAR(MAX);
    SET @Line = REPLICATE(@Symbol, @Length);
    PRINT @Line;
END;
GO

-- Stored procedure that takes a number and returns its factorial
CREATE PROCEDURE GetFactorial
    @Number INT
AS
BEGIN
    DECLARE @Factorial BIGINT = 1;
    DECLARE @Counter INT = 1;
    
    WHILE @Counter <= @Number
    BEGIN
        SET @Factorial = @Factorial * @Counter;
        SET @Counter = @Counter + 1;
    END;
    
    SELECT @Factorial AS Factorial;
END;
GO

-- Stored procedure that takes a number and a power and returns the number raised to the power
CREATE PROCEDURE GetPower
    @Number INT,
    @Power INT
AS
BEGIN
    DECLARE @Result FLOAT = POWER(@Number, @Power);
    SELECT @Result AS Result;
END;
GO
