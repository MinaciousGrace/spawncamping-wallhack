t = Def.ActorFrame{};

t[#t+1] = LoadFont("Common Normal") .. {
	Name = "currentTime";
	InitCommand=cmd(xy,10,50;halign,0;zoom,0.45;);
	};

local function Update(self)
	local year = Year()
	local month = MonthOfYear()
	local day = DayOfMonth()
	local hour = Hour()
	local minute = Minute()
	local second = Second()
	self:GetChild("currentTime"):settextf("%04d-%02d-%02d %02d:%02d:%02d",year,month,day,hour,minute,second)
end;

t.InitCommand=cmd(SetUpdateFunction,Update)

return t