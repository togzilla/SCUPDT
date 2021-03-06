local Heroes = {"Draven", "Nami", "Brand", "Zilean", "Soraka", "Lux", "Blitzcrank","Lulu", "MissFortune","Karthus", "Illaoi", "Taliyah", "Kalista", "Cassiopeia", "Azir", "Thresh", "AurelionSol", "Xerath",
"Ryze","XinZhao","Kassadin","Veigar","Warwick","Neeko","Malzahar","Zyra","Sylas","Kayle","Morgana","Ekko","Sona","Ahri"}
if not table.contains(Heroes, myHero.charName) then print("Hero not supported: " .. myHero.charName) return end




local HeroesAIO1 = {"Ryze","XinZhao","Kassadin","Veigar","Tristana","Warwick","Neeko","Cassiopeia","Malzahar","Zyra","Sylas","Kayle","Morgana","Ekko","Xerath","Sona","Ahri"} --17
if table.contains(HeroesAIO1, myHero.charName) then 


	if not FileExist(COMMON_PATH .. "PussyAIO1.lua") then
		print("Champion installed Press 2x F6")
		DownloadFileAsync("https://raw.githubusercontent.com/gamsteron/GOS-External/master/Common/GamsteronPrediction.lua", COMMON_PATH .. "PussyAIO1.lua", function() end)
		while not FileExist(COMMON_PATH .. "PussyAIO1.lua") do end
end

require('PussyAIO1.lua')
end



local HeroesAIO2 = {"Nami","Brand", "Zilean", "Soraka", "Lux", "Blitzcrank","Lulu", "MissFortune","Karthus", "Illaoi", "Taliyah", "Kalista", "Azir", "Thresh", "AurelionSol"}  --15
if table.contains(HeroesAIO2, myHero.charName) then 

	if not FileExist(COMMON_PATH .. "PussyAIO2.lua") then
	print("Champion installed Press 2x F6")
	DownloadFileAsync("https://raw.githubusercontent.com/gamsteron/GOS-External/master/Common/GamsteronPrediction.lua", COMMON_PATH .. "PussyAIO2.lua", function() end)
	while not FileExist(COMMON_PATH .. "PussyAIO2.lua") do end
end

require('PussyAIO2.lua')
end


--[[
do
    
    local Version = 0.14
    
    local Files = {
        Lua = {
            Path = SCRIPT_PATH,
            Name = "PussyAIO.lua",
            Url = "https://raw.githubusercontent.com/Pussykate/GoS/master/PussyAIO.lua"
        },
        Version = {
            Path = SCRIPT_PATH,
            Name = "PussyAIO.version",
            Url = "https://raw.githubusercontent.com/Pussykate/GoS/master/PussyAIO.version"
        }
    }
    
    local function AutoUpdate()
        
        local function DownloadFile(url, path, fileName)
            DownloadFileAsync(url, path .. fileName, function() end)
            while not FileExist(path .. fileName) do end
        end
        
        local function ReadFile(path, fileName)
            local file = io.open(path .. fileName, "r")
            local result = file:read()
            file:close()
            return result
        end
        
        DownloadFile(Files.Version.Url, Files.Version.Path, Files.Version.Name)
        local textPos = myHero.pos:To2D()
        local NewVersion = tonumber(ReadFile(Files.Version.Path, Files.Version.Name))
        if NewVersion > Version then
            DownloadFile(Files.Lua.Url, Files.Lua.Path, Files.Lua.Name)
            print("New PussyAIO Version Press 2x F6")
        else
            print(Files.Version.Name .. ": No Updates Found")
        end
    
    end
    
    AutoUpdate()

end ]]