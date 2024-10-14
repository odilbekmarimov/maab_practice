--using while loop
declare @text nvarchar(max) = 'a,bc,bef,cnn,f';
declare @commacount int = 0;
declare @pos int = 1;

while charindex(',', @text, @pos) > 0
begin
    set @commacount = @commacount + 1;
    set @pos = charindex(',', @text, @pos) + 1;
end

select @commacount as commacount;


--using string_split function
declare @text nvarchar(max) = 'a,bc,bef,cnn,f';

select count(*) - 1 as commacount
from string_split(@text, ',');
