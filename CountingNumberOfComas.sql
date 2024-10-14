--using while loop

declare @text nvarchar(max) = 'a,bc,bef,cnn,f' --using this variable in both ways
declare @commacount int = 0
declare @pos int = 1

while charindex(',', @text, @pos) > 0
begin
    set @commacount = @commacount + 1
    set @pos = charindex(',', @text, @pos) + 1
end

select @commacount CountUsingLoop

--using string_split function

select count(*) - 1 CountUsingFunction
from string_split(@text, ',');
