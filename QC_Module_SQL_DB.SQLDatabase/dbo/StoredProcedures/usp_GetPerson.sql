CREATE PROCEDURE dbo.usp_GetPerson
    @PersonId INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT PersonId, FirstName, LastName
    FROM dbo.Person
    WHERE PersonId = @PersonId;
END

GO

