--installation script
--rhNbNbFE
--Version 1.0

local libURL = "https://raw.githubusercontent.com/dotada/Draconic-Evolution-Reactor-Controller/master/lib/f.lua"
local startupURL = "https://raw.githubusercontent.com/dotada/Draconic-Evolution-Reactor-Controller/master/Draconic-Evolution-Reactor-Controller.lua"
local lib, startup
local libFile, startupFile

fs.makeDir("lib")

lib = http.get(libURL)
libFile = lib.readAll()

local file1 = fs.open("lib/f", "w")
file1.write(libFile)
file1.close()

startup = http.get(startupURL)
startupFile = startup.readAll()

local file2 = fs.open("startup", "w")
file2.write(startupFile)
file2.close()
os.reboot()
