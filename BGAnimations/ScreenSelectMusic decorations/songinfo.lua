local update = false
local t = Def.ActorFrame{
	BeginCommand=cmd(queuecommand,"Set");
	OffCommand=cmd(bouncebegin,0.2;xy,-500,0;); -- visible(false) doesn't seem to work with sleep
	OnCommand=cmd(bouncebegin,0.2;xy,0,0;);
	SetCommand=function(self)
		self:finishtweening()
		if getTabIndex() == 0 then
			self:queuecommand("On");
			update = true
		else 
			self:queuecommand("Off");
			update = false
		end;
	end;
	CodeMessageCommand=cmd(queuecommand,"Set");
};

t[#t+1] = Def.Quad{
	InitCommand=cmd(xy,10,170;zoomto,384,20;halign,0;diffuse,color("#000000");diffusealpha,0.7);
}

t[#t+1] = LoadFont("Common Normal") .. {
	Name="songTitle";
	InitCommand=cmd(xy,15,170;visible,true;halign,0;zoom,0.45;maxwidth,360/0.45);
	BeginCommand=cmd(queuecommand,"Set");
	SetCommand=function(self)
		if update then
			local song = GAMESTATE:GetCurrentSong()
			if song ~= nil then
				self:settext(song:GetDisplayMainTitle().." // "..song:GetDisplayArtist())
			else
				self:settext("")
			end
		end
	end;
	CurrentSongChangedMessageCommand=cmd(queuecommand,"Set");
};


return t