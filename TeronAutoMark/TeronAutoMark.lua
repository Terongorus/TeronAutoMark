
local attacking;
local target_changed;
local combat;
local target_index = 8

combat = PlayerFrame.InCombat;

--, "TeronAutoMarkFrame"
local f = CreateFrame("Frame");
f:RegisterEvent("PLAYER_ENTER_COMBAT");
f:RegisterEvent("PLAYER_TARGET_CHANGED");
f:SetScript("OnEvent", function()
	attacking = event == "PLAYER_ENTER_COMBAT";
	target_changed = event == "PLAYER_TARGET_CHANGED";
	print("TeronAutoMark: " .. event);
	if (attacking) then
		print("TeronAutoMark: Entering combat")
	end
	if (target_changed) then
		print("TeronAutoMark: Target changed")
	end
	if (combat) then
		print("TeronAutoMark: In combat")
	end
end)

function TeronAutoMark()
	--UnitXP("debug", "breakpoint");
	if (attacking or target_changed or combat) and UnitExists("target") then
		--check current mark
		if target_index == 0 then
			print("Current mark is - "..target_index.." Star")
		end
		if target_index == 1 then
			print("Current mark is - "..target_index.." Circle")
		end
		if target_index == 2 then
			print("Current mark is - "..target_index.." Diamond")
		end
		if target_index == 3 then
			print("Current mark is - "..target_index.." Triangle")
		end
		if target_index == 4 then
			print("Current mark is - "..target_index.." Square")
		end
		if target_index == 5 then
			print("Current mark is - "..target_index.." Moon")
		end
		if target_index == 6 then
			print("Current mark is - "..target_index.." Cross")
		end
		if target_index == 7 then
			print("Current mark is - "..target_index.." Skull")
		end
		if target_index == 8 then
			print("Current mark is - "..target_index.." X")
		end
		SetRaidTarget("target", target_index)
	end
	if target_changed and UnitExists("target") then
		target_index = target_index - 1;
		--check current mark
		if target_index == 0 then
			print("Current mark is - "..target_index.." Star")
		end
		if target_index == 1 then
			print("Current mark is - "..target_index.." Circle")
		end
		if target_index == 2 then
			print("Current mark is - "..target_index.." Diamond")
		end
		if target_index == 3 then
			print("Current mark is - "..target_index.." Triangle")
		end
		if target_index == 4 then
			print("Current mark is - "..target_index.." Square")
		end
		if target_index == 5 then
			print("Current mark is - "..target_index.." Moon")
		end
		if target_index == 6 then
			print("Current mark is - "..target_index.." Cross")
		end
		if target_index == 7 then
			print("Current mark is - "..target_index.." Skull")
		end
		if target_index == 8 then
			print("Current mark is - "..target_index.." X")
		end
		
	end
	if target_index < 1 then
		target_index = 8;
		--check current mark
		if target_index == 0 then
			print("Current mark is - "..target_index.." Star")
		end
		if target_index == 1 then
			print("Current mark is - "..target_index.." Circle")
		end
		if target_index == 2 then
			print("Current mark is - "..target_index.." Diamond")
		end
		if target_index == 3 then
			print("Current mark is - "..target_index.." Triangle")
		end
		if target_index == 4 then
			print("Current mark is - "..target_index.." Square")
		end
		if target_index == 5 then
			print("Current mark is - "..target_index.." Moon")
		end
		if target_index == 6 then
			print("Current mark is - "..target_index.." Cross")
		end
		if target_index == 7 then
			print("Current mark is - "..target_index.." Skull")
		end
		if target_index == 8 then
			print("Current mark is - "..target_index.." X")
		end
	end
--	if attacking then
--		target_index = 8;
		--check current mark
--		if target_index == 0 then
--			print("Current mark is - "..target_index.." Star")
--		end
--		if target_index == 1 then
--			print("Current mark is - "..target_index.." Circle")
--		end
--		if target_index == 2 then
--			print("Current mark is - "..target_index.." Diamond")
--		end
--		if target_index == 3 then
--			print("Current mark is - "..target_index.." Triangle")
--		end
--		if target_index == 4 then
--			print("Current mark is - "..target_index.." Square")
--		end
--		if target_index == 5 then
--			print("Current mark is - "..target_index.." Moon")
--		end
--		if target_index == 6 then
--			print("Current mark is - "..target_index.." Cross")
--		end
--		if target_index == 7 then
--			print("Current mark is - "..target_index.." Skull")
--		end
--		if target_index == 8 then
--			print("Current mark is - "..target_index.." X")
--		end
--	end
	if not combat then
		target_index = 8;
		--check current mark
		if target_index == 0 then
			print("Current mark is - "..target_index.." Star")
		end
		if target_index == 1 then
			print("Current mark is - "..target_index.." Circle")
		end
		if target_index == 2 then
			print("Current mark is - "..target_index.." Diamond")
		end
		if target_index == 3 then
			print("Current mark is - "..target_index.." Triangle")
		end
		if target_index == 4 then
			print("Current mark is - "..target_index.." Square")
		end
		if target_index == 5 then
			print("Current mark is - "..target_index.." Moon")
		end
		if target_index == 6 then
			print("Current mark is - "..target_index.." Cross")
		end
		if target_index == 7 then
			print("Current mark is - "..target_index.." Skull")
		end
		if target_index == 8 then
			print("Current mark is - "..target_index.." X")
		end
	end
	target_changed = false;
	attacking = false;
end