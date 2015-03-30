
themeColors = {
	placeholder = {
		[1] = color("#FFFFFF")
	},
	main = {
		[1] = color("#00AEEF"), --Primary light blue
		[2] = color("#009AEF"),-- Slightly darker blue
		[3] = color("#00C2EF") -- Slightly lighter blue
	},

	grade = {
		Grade_Tier01	= color("#66ccff"), -- AAAA
		Grade_Tier02	= color("#eebb00"), -- AAA
		Grade_Tier03	= color("#66cc66"), -- AA
		Grade_Tier04	= color("#da5757"), -- A
		Grade_Tier05	= color("#5b78bb"), -- B
		Grade_Tier06	= color("#c97bff"), -- C
		Grade_Tier07	= color("#8c6239"), -- D
		Grade_Failed	= color("0.8,0.8,0.8,1"), -- F
		Grade_None		= color("#666666"), -- no play
	},

	Difficulty = {
		Difficulty_Beginner	= color("#66ccff"),		-- light blue
		Difficulty_Easy		= color("#099948"),		-- green
		Difficulty_Medium	= color("#ddaa00"),		-- yellow
		Difficulty_Hard		= color("#e61e25"),		-- red
		Difficulty_Challenge= color("#c97bff"),	-- light blue
		Difficulty_Edit 	= color("0.8,0.8,0.8,1"),	-- gray
		Difficulty_Couple	= color("#ed0972"),			-- hot pink
		Difficulty_Routine	= color("#ff9a00"),			-- orange
		Beginner	= color("#66ccff"),		
		Easy		= color("#099948"),		-- green
		Medium		= color("#ddaa00"),		-- yellow
		Normal		= color("#ddaa00"),		-- yellow
		Hard		= color("#e61e25"),		-- red
		Challenge 		= color("#c97bff"),	-- Purple
		Insane 		= color("#c97bff"),
		Expert 		= color("#c97bff"),	
		Edit 		= color("0.8,0.8,0.8,1"),	-- gray
		Couple		= color("#ed0972"),			-- hot pink
		Routine		= color("#ff9a00")			-- orange
	},

	DifficultyVivid = {
		Difficulty_Beginner	= color("#0099ff"),		-- light blue
		Difficulty_Easy		= color("#00ff00"),		-- green
		Difficulty_Medium	= color("#ffff00"),		-- yellow
		Difficulty_Hard		= color("#ff0000"),		-- red
		Difficulty_Challenge= color("#cc66ff"),	-- light blue
		Difficulty_Edit 	= color("0.8,0.8,0.8,1"),	-- gray
		Difficulty_Couple	= color("#ed0972"),			-- hot pink
		Difficulty_Routine	= color("#ff9a00"),			-- orange
		Beginner	= color("#0099ff"),		-- light blue
		Easy		= color("#00ff00"),		-- green
		Medium		= color("#ffff00"),		-- yellow
		Normal		= color("#ddaa00"),		-- yellow
		Hard		= color("#ff0000"),		-- red
		Challenge 		= color("#cc66ff"),	-- Purple
		Insane 		= color("#cc66ff"),	
		Expert 		= color("#cc66ff"),
		Edit 		= color("0.8,0.8,0.8,1"),	-- gray
		Couple		= color("#ed0972"),			-- hot pink
		Routine		= color("#ff9a00")			-- orange
	},

}

function getPlaceholderColor()
	return themeColors.placeholder[1] or color("#FFFFFF")
end

function getMainColor(i)
	return themeColors.main[i] or color("#FFFFFF")
end

function getGradeColor (grade)
	return themeColors.grade[grade] or color("#ffffff");
end;

function getDifficultyColor(diff)
	return themeColors.Difficulty[diff] or color("#ffffff");
end;

function getVividDifficultyColor(diff)
	return themeColors.DifficultyVivid[diff] or color("#ffffff");
end;