-- Made by Snytex
-- Credits for AOBSwap Functions

--Script
function mainmenu(sender)
--Creates first the form
SnytexsModMenu = createForm(true)
SnytexsModMenu.caption = [[Snytex's Mod Menu (Page 1)]]
SnytexsModMenu.left = 1000
SnytexsModMenu.top = 120
SnytexsModMenu.width = 355
SnytexsModMenu.height = 540
SnytexsModMenu.align = alNone
SnytexsModMenu.enabled = true
SnytexsModMenu.visible = true
SnytexsModMenu.Color = 0x242424
Set = Set
To = To

-------------------------------------------------------------------------------------------------

-- Creating the objects

--AOBSWAPS
function AOBRep(search, change)
local aob = AOBScan(search)
if aob then
  for i=0,aob.Count-1 do
    autoAssemble(aob[i]..':\ndb '..change)
  end
  aob.Destroy()
end
end

-------------------------------------------------------------------------------------------------

function AOBSwap(aobIn,aobOut)
 aobOut = aobOut:gsub('[^%w]','') -- remove all spaces

 local _aobOut=''
 for i=1,#aobOut,2 do
  _aobOut = _aobOut..aobOut:sub(i,i+1)..' '  -- add spaces (only the needed ones)
 end

 local address = 0

--AOBScan("aobstring", protectionflags OPTIONAL, alignmenttype OPTIONAL, alignmentparam HALFOPTIONAL)


 local aobs = AOBScan(aobIn, '+W*X-C', 1, '4') -- you can change here: protection flags and alignment (e.g. writable, addresses dividable by 4)
 if(aobs ~= nil) then
   for i = 0,aobs.Count-1 do
     address = aobs.String[i]
     autoAssemble(address..[[:
                  db ]].._aobOut)
   end
   aobs.destroy()
 end
end

-------------------------------------------------------------------------------------------------

--Mod Menu Title
modmenutitle = createLabel(SnytexsModMenu)
modmenutitle.caption = [[Snytex's Mod Menu V4]]
modmenutitle.font.size = [[18]]
modmenutitle.left = [[55]]
modmenutitle.top = [[10]]
modmenutitle.width = [[281]]
modmenutitle.height = [[45]]
modmenutitle.align = [[alNone]]
modmenutitle.enabled = [[true]]
modmenutitle.visible = [[true]]
modmenutitle.font.color = 0x15FF00

-------------------------------------------------------------------------------------------------

--Skip Orientation Function
function skiporw(sender)

AOBSwap('31 00 61 00 63 00 31 00 35 00 31 00 37 00 37 00 38 00 33 00 30 00 62 00 37 00 37 00 63 00 34 00 32 00 39 00 33 00 38 00 66 00 66 00 34 00 65 00 62 00 36 00 64 00 64 00 62 00 62 00 32 00 34 00', '61 00 34 00 62 00 36 00 37 00 35 00 63 00 34 00 32 00 64 00 61 00 64 00 63 00 39 00 38 00 34 00 61 00 38 00 38 00 31 00 65 00 35 00 61 00 61 00 65 00 35 00 61 00 66 00 38 00 35 00 63 00 37 00')
end

--Store UI Function
function storeuiw(sender)

AOBSwap('39 00 39 00 36 00 37 00 32 00 31 00 34 00 61 00 62 00 37 00 39 00 62 00 65 00 34 00 35 00 34 00 66 00 38 00 65 00 37 00 66 00 36 00 30 00 35 00 32 00 64 00 36 00 38 00 38 00 38 00 63 00 62 00', '33 00 30 00 39 00 30 00 35 00 62 00 66 00 65 00 34 00 34 00 65 00 66 00 63 00 35 00 35 00 34 00 36 00 39 00 36 00 36 00 62 00 32 00 63 00 65 00 38 00 39 00 34 00 62 00 35 00 62 00 64 00 63 00')
end
--MakerPen UI Function
function makerpenuiw(sender)

AOBSwap('37 00 64 00 38 00 32 00 61 00 34 00 33 00 63 00 33 00 62 00 32 00 65 00 31 00 62 00 34 00 34 00 30 00 38 00 30 00 39 00 33 00 63 00 31 00 63 00 39 00 61 00 34 00 31 00 63 00 37 00 30 00 35 00', '64 00 35 00 62 00 30 00 35 00 30 00 61 00 64 00 32 00 62 00 31 00 34 00 64 00 37 00 35 00 34 00 65 00 38 00 34 00 33 00 31 00 35 00 34 00 37 00 64 00 63 00 61 00 63 00 62 00 66 00 30 00 39 00')
end

--Customize UI Function
function customizeuiw(sender)

AOBSwap('32 00 33 00 62 00 37 00 32 00 65 00 37 00 39 00 32 00 39 00 31 00 34 00 62 00 65 00 61 00 34 00 62 00 39 00 35 00 35 00 65 00 30 00 66 00 35 00 62 00 35 00 61 00 61 00 30 00 65 00 33 00 37 00', '61 00 39 00 37 00 39 00 38 00 63 00 61 00 64 00 66 00 31 00 30 00 32 00 33 00 65 00 66 00 34 00 63 00 61 00 31 00 36 00 39 00 33 00 64 00 34 00 33 00 63 00 66 00 65 00 62 00 39 00 39 00 39 00')
end

--Shirt on Head Function
function headshirtc(sender)

AOBSwap('31 00 61 00 37 00 31 00 30 00 36 00 34 00 62 00 2D 00 37 00 39 00 34 00 66 00 2D 00 34 00 30 00 66 00 61 00 2D 00 39 00 31 00 30 00 39 00 2D 00 38 00 61 00 64 00 33 00 36 00 36 00 30 00 32 00 62 00 36 00 65 00 31 00', '38 00 61 00 61 00 37 00 39 00 35 00 36 00 33 00 2D 00 61 00 63 00 65 00 31 00 2D 00 34 00 62 00 61 00 37 00 2D 00 61 00 64 00 30 00 63 00 2D 00 66 00 33 00 32 00 31 00 30 00 61 00 37 00 38 00 31 00 34 00 32 00 66 00')
end

--Saija Shirt
function Saija()

searchV = '38 00 61 00 61 00 37 00 39 00 35 00 36 00 33 00 2D 00 61 00 63 00 65 00 31 00 2D 00 34 00 62 00 61 00 37 00 2D 00 61 00 64 00 30 00 63 00 2D 00 66 00 33 00 32 00 31 00 30 00 61 00 37 00 38 00 31 00 34 00 32 00 66 00'
replaceV = '32 00 63 00 36 00 37 00 39 00 66 00 38 00 39 00 2D 00 63 00 37 00 36 00 65 00 2D 00 34 00 63 00 66 00 62 00 2D 00 39 00 34 00 65 00 39 00 2D 00 34 00 34 00 38 00 63 00 38 00 66 00 64 00 34 00 34 00 64 00 35 00 35 00'
AOBRep(searchV,replaceV)
end

--Invisible Outfit
function invis()

SearchA = "65 00 63 00 63 00 31 00 64 00 62 00 65 00 36 00 2D 00 63 00 61 00 30 00 36 00 2D 00 34 00 35 00 36 00 34 00 2D 00 62 00 32 00 61 00 36 00 2D 00 33 00 30 00 39 00 35 00 36 00 31 00 39 00 34 00 64 00 31 00 65 00 39 00"
ReplaceA = "38 00 61 00 61 00 37 00 39 00 35 00 36 00 33 00 2D 00 61 00 63 00 65 00 31 00 2D 00 34 00 62 00 61 00 37 00 2D 00 61 00 64 00 30 00 63 00 2D 00 66 00 33 00 32 00 31 00 30 00 61 00 37 00 38 00 31 00 34 00 32 00 66 00"
AOBRep(SearchA,ReplaceA)
end

--Permissions Function
function makerpen()

searchA = '62 00 00 00 01 00 00 00'
replaceA = '02 00 00 00 01 00 00 00'
AOBRep(searchA,replaceA)
end

--Submit Function
function submitfunction(sender)

  Selected = EditBox.Text
  searchV = '38 00 61 00 61 00 37 00 39 00 35 00 36 00 33 00 2D 00 61 00 63 00 65 00 31 00 2D 00 34 00 62 00 61 00 37 00 2D 00 61 00 64 00 30 00 63 00 2D 00 66 00 33 00 32 00 31 00 30 00 61 00 37 00 38 00 31 00 34 00 32 00 66 00'
  replaceV = Selected
  AOBRep(searchV,replaceV)
  print ("Shirt swapped successfully!")
end

--Reset Function
function reset()

searchV = Selected
replaceV = '38 00 61 00 61 00 37 00 39 00 35 00 36 00 33 00 2D 00 61 00 63 00 65 00 31 00 2D 00 34 00 62 00 61 00 37 00 2D 00 61 00 64 00 30 00 63 00 2D 00 66 00 33 00 32 00 31 00 30 00 61 00 37 00 38 00 31 00 34 00 32 00 66 00'
print ("Shirt reset successfully!")
AOBRep(searchV,replaceV)
end

function whfunction(sender)

searchA = '71 00 48 00 79 00 4B 00 66 00 43 00 73 00 72 00 62 00 55 00 71 00 53 00 57 00 6F 00 6D 00 6A 00 4C 00 58 00 66 00 37 00 48 00 77 00 2C 00 52 00 52 00 36 00 39 00 49 00 47 00 56 00 34 00 6A 00 30 00 53 00 64 00 32 00 78 00 74 00 6D 00 79 00 4E 00 35 00 77 00 46 00 67'
replaceA = '38 00 58 00 61 00 6A 00 53 00 32 00 61 00 64 00 4F 00 45 00 4F 00 71 00 7A 00 71 00 6E 00 4C 00 79 00 36 00 2D 00 7A 00 63 00 51 00 2C 00 50 00 31 00 32 00 43 00 55 00 6B 00 49 00 67 00 38 00 45 00 75 00 46 00 69 00 68 00 47 00 51 00 73 00 76 00 50 00 6C 00 78 00 67'
searchC = '64 00 38 00 34 00 39 00 39 00 33 00 64 00 64 00 2D 00 34 00 65 00 31 00 35 00 2D 00 34 00 34 00 38 00 31 00 2D 00 39 00 34 00 35 00 30 00 2D 00 66 00 38 00 38 00 61 00 33 00 34 00 63 00 64 00 62 00 63 00 38 00 32'
replaceC = '37 00 36 00 33 00 36 00 39 00 61 00 65 00 66 00 2D 00 61 00 65 00 64 00 61 00 2D 00 34 00 36 00 64 00 32 00 2D 00 39 00 39 00 36 00 61 00 2D 00 63 00 64 00 30 00 30 00 35 00 39 00 34 00 64 00 30 00 35 00 34 00 33'
replaceB = '64 00 38 00 34 00 39 00 39 00 33 00 64 00 64 00 2D 00 34 00 65 00 31 00 35 00 2D 00 34 00 34 00 38 00 31 00 2D 00 39 00 34 00 35 00 30 00 2D 00 66 00 38 00 38 00 61 00 33 00 34 00 63 00 64 00 62 00 63 00 38 00 32'
searchB = '32 00 35 00 30 00 62 00 62 00 62 00 35 00 33 00 2D 00 31 00 66 00 61 00 65 00 2D 00 34 00 34 00 30 00 64 00 2D 00 62 00 32 00 35 00 61 00 2D 00 34 00 36 00 61 00 31 00 36 00 63 00 32 00 37 00 31 00 33 00 36 00 37'
AOBRep(searchA,replaceA)
AOBRep(searchB,replaceB)
AOBRep(searchC,replaceC)
end

function crashfixfunction(sender)

AOBSwap("54 00 72 00 75 00 65 00", "46 00 61 00 6C 00 73 00 65 00")
end

function gtfunction(sender)

AOBSwap("5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 47 00 6F 00 62 00 6C 00 69 00 6E 00 5F 00 42 00 61 00 73 00 69 00 63 00 47 00 72 00 6F 00 75 00 6E 00 64 00 4D 00 65 00 6C 00 65 00 65 00 45 00 6E 00 65 00 6D 00 79 00 5D 00", "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00")
AOBSwap("5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 47 00 6F 00 62 00 6C 00 69 00 6E 00 5F 00 42 00 61 00 73 00 69 00 63 00 46 00 6C 00 79 00 69 00 6E 00 67 00 52 00 61 00 6E 00 67 00 65 00 64 00 45 00 6E 00 65 00 6D 00 79 00 5D 00", "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00")
AOBSwap("5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 47 00 6F 00 62 00 6C 00 69 00 6E 00 5F 00 45 00 6C 00 69 00 74 00 65 00 46 00 6C 00 79 00 69 00 6E 00 67 00 52 00 61 00 6E 00 67 00 65 00 64 00 45 00 6E 00 65 00 6D 00 79 00 5D 00", "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00")
AOBSwap("5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 47 00 6F 00 62 00 6C 00 69 00 6E 00 5F 00 45 00 6C 00 69 00 74 00 65 00 47 00 72 00 6F 00 75 00 6E 00 64 00 4D 00 65 00 6C 00 65 00 65 00 45 00 6E 00 65 00 6D 00 79 00 5D 00", "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00")
AOBSwap("5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 47 00 6F 00 62 00 6C 00 69 00 6E 00 5F 00 4B 00 6E 00 69 00 67 00 68 00 74 00 43 00 68 00 61 00 72 00 67 00 65 00 45 00 6E 00 65 00 6D 00 79 00 5D 00", "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00")
AOBSwap("5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 47 00 6F 00 62 00 6C 00 69 00 6E 00 5F 00 4B 00 6E 00 69 00 67 00 68 00 74 00 53 00 70 00 69 00 6E 00 45 00 6E 00 65 00 6D 00 79 00 5D 00", "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00")
AOBSwap("5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 47 00 6F 00 62 00 6C 00 69 00 6E 00 5F 00 52 00 6F 00 74 00 61 00 74 00 69 00 6E 00 67 00 42 00 6F 00 73 00 73 00 45 00 6E 00 65 00 6D 00 79 00 5D 00", "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00")
end

function jtfunction(sender)

SearchA = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 53 00 63 00 69 00 46 00 69 00 5F 00 42 00 61 00 73 00 69 00 63 00 46 00 6C 00 79 00 69 00 6E 00 67 00 52 00 61 00 6E 00 67 00 65 00 64 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceA = "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00"
SearchB = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 53 00 63 00 69 00 46 00 69 00 5F 00 42 00 61 00 73 00 69 00 63 00 47 00 72 00 6F 00 75 00 6E 00 64 00 52 00 61 00 6E 00 67 00 65 00 64 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceB = "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00"
SearchC = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 53 00 63 00 69 00 46 00 69 00 5F 00 45 00 6C 00 69 00 74 00 65 00 46 00 6C 00 79 00 69 00 6E 00 67 00 52 00 61 00 6E 00 67 00 65 00 64 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceC = "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00"
SearchD = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 53 00 63 00 69 00 46 00 69 00 5F 00 45 00 6C 00 69 00 74 00 65 00 47 00 72 00 6F 00 75 00 6E 00 64 00 52 00 61 00 6E 00 67 00 65 00 64 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceD = "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00"
SearchE = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 53 00 63 00 69 00 46 00 69 00 5F 00 4B 00 6E 00 69 00 67 00 68 00 74 00 41 00 73 00 73 00 61 00 73 00 73 00 69 00 6E 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceE = "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00"
SearchF = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 53 00 63 00 69 00 46 00 69 00 5F 00 54 00 69 00 6E 00 79 00 47 00 72 00 6F 00 75 00 6E 00 64 00 45 00 78 00 70 00 6C 00 6F 00 73 00 69 00 76 00 65 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceF = "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00"
SearchG = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 53 00 63 00 69 00 66 00 69 00 5F 00 4A 00 75 00 6D 00 62 00 6F 00 74 00 72 00 6F 00 6E 00 42 00 6F 00 73 00 73 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceG = "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00"
AOBRep(SearchA, ReplaceA)
AOBRep(SearchB, ReplaceB)
AOBRep(SearchC, ReplaceC)
AOBRep(SearchD, ReplaceD)
AOBRep(SearchE, ReplaceE)
AOBRep(SearchF, ReplaceF)
AOBRep(SearchG, ReplaceG)
end

function ccfunction(sender)

SearchA = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 47 00 6F 00 62 00 6C 00 69 00 6E 00 5F 00 42 00 61 00 73 00 69 00 63 00 47 00 72 00 6F 00 75 00 6E 00 64 00 4D 00 65 00 6C 00 65 00 65 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceA = "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00"
SearchB = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 47 00 6F 00 62 00 6C 00 69 00 6E 00 5F 00 42 00 61 00 73 00 69 00 63 00 46 00 6C 00 79 00 69 00 6E 00 67 00 52 00 61 00 6E 00 67 00 65 00 64 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceB = "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00"
SearchC = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 47 00 6F 00 62 00 6C 00 69 00 6E 00 5F 00 45 00 6C 00 69 00 74 00 65 00 46 00 6C 00 79 00 69 00 6E 00 67 00 52 00 61 00 6E 00 67 00 65 00 64 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceC = "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00"
SearchD = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 47 00 6F 00 62 00 6C 00 69 00 6E 00 5F 00 45 00 6C 00 69 00 74 00 65 00 47 00 72 00 6F 00 75 00 6E 00 64 00 4D 00 65 00 6C 00 65 00 65 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceD = "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00"
SearchE = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 47 00 6F 00 62 00 6C 00 69 00 6E 00 5F 00 4B 00 6E 00 69 00 67 00 68 00 74 00 43 00 68 00 61 00 72 00 67 00 65 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceE = "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00"
SearchF = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 47 00 6F 00 62 00 6C 00 69 00 6E 00 5F 00 4B 00 6E 00 69 00 67 00 68 00 74 00 53 00 70 00 69 00 6E 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceF = "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00"
SearchG = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 47 00 6F 00 62 00 6C 00 69 00 6E 00 5F 00 42 00 61 00 73 00 69 00 63 00 47 00 72 00 6F 00 75 00 6E 00 64 00 4D 00 65 00 6C 00 65 00 65 00 45 00 6E 00 65 00 6D 00 79 00 5F 00 50 00 69 00 6B 00 65 00 5D 00"
ReplaceG = "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00"
SearchH = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 47 00 6F 00 62 00 6C 00 69 00 6E 00 5F 00 42 00 61 00 73 00 69 00 63 00 47 00 72 00 6F 00 75 00 6E 00 64 00 52 00 61 00 6E 00 67 00 65 00 64 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceH = "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00"
SearchI = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 47 00 6F 00 62 00 6C 00 69 00 6E 00 5F 00 56 00 6F 00 6C 00 6C 00 65 00 79 00 52 00 61 00 6E 00 67 00 65 00 64 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceI = "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00"
SearchJ = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 47 00 6F 00 62 00 6C 00 69 00 6E 00 5F 00 42 00 6F 00 67 00 4D 00 6F 00 6E 00 73 00 74 00 65 00 72 00 5D 00"
ReplaceJ = "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00"
SearchK = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 47 00 6F 00 62 00 6C 00 69 00 6E 00 5F 00 57 00 69 00 74 00 63 00 68 00 42 00 6F 00 73 00 73 00 5D 00"
ReplaceK = "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00"
AOBRep(SearchA, ReplaceA)
AOBRep(SearchB, ReplaceB)
AOBRep(SearchC, ReplaceC)
AOBRep(SearchD, ReplaceD)
AOBRep(SearchE, ReplaceE)
AOBRep(SearchF, ReplaceF)
AOBRep(SearchG, ReplaceG)
AOBRep(SearchH, ReplaceH)
AOBRep(SearchI, ReplaceI)
AOBRep(SearchJ, ReplaceJ)
AOBRep(SearchK, ReplaceK)
end

function iotlsfunction(sender)

SearchA = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 50 00 69 00 72 00 61 00 74 00 65 00 5F 00 42 00 61 00 73 00 69 00 63 00 47 00 72 00 6F 00 75 00 6E 00 64 00 4D 00 65 00 6C 00 65 00 65 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceA = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 50 00 69 00 72 00 61 00 74 00 65 00 31 00 5F 00 43 00 6F 00 69 00 6E 00 53 00 74 00 61 00 63 00 6B 00 5F 00 53 00 6D 00 61 00 6C 00 6C 00 5D 00 00 00 00 00 00 00 00 00 00 00"
SearchB = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 50 00 69 00 72 00 61 00 74 00 65 00 5F 00 43 00 61 00 6E 00 6E 00 6F 00 6E 00 65 00 65 00 72 00 45 00 6E 00 65 00 6D 00 79 00 5D 00 00 00 00 00"
ReplaceB = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 50 00 69 00 72 00 61 00 74 00 65 00 31 00 5F 00 43 00 6F 00 69 00 6E 00 53 00 74 00 61 00 63 00 6B 00 5F 00 53 00 6D 00 61 00 6C 00 6C 00 5D 00"
SearchC = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 50 00 69 00 72 00 61 00 74 00 65 00 5F 00 47 00 72 00 6F 00 75 00 6E 00 64 00 5F 00 42 00 6F 00 74 00 74 00 6C 00 65 00 5F 00 54 00 68 00 72 00 6F 00 77 00 6E 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceC = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 50 00 69 00 72 00 61 00 74 00 65 00 31 00 5F 00 43 00 6F 00 69 00 6E 00 53 00 74 00 61 00 63 00 6B 00 5F 00 53 00 6D 00 61 00 6C 00 6C 00 5D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
SearchD = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 50 00 69 00 72 00 61 00 74 00 65 00 5F 00 47 00 72 00 6F 00 75 00 6E 00 64 00 5F 00 45 00 78 00 70 00 6C 00 6F 00 73 00 69 00 76 00 65 00 5F 00 54 00 68 00 72 00 6F 00 77 00 6E 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceD = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 50 00 69 00 72 00 61 00 74 00 65 00 31 00 5F 00 43 00 6F 00 69 00 6E 00 53 00 74 00 61 00 63 00 6B 00 5F 00 53 00 6D 00 61 00 6C 00 6C 00 5D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
SearchE = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 50 00 69 00 72 00 61 00 74 00 65 00 5F 00 47 00 72 00 6F 00 75 00 6E 00 64 00 5F 00 47 00 69 00 62 00 62 00 65 00 74 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceE = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 50 00 69 00 72 00 61 00 74 00 65 00 31 00 5F 00 43 00 6F 00 69 00 6E 00 53 00 74 00 61 00 63 00 6B 00 5F 00 53 00 6D 00 61 00 6C 00 6C 00 5D 00 00 00 00 00"
SearchF = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 50 00 69 00 72 00 61 00 74 00 65 00 5F 00 47 00 72 00 6F 00 75 00 6E 00 64 00 5F 00 52 00 61 00 6E 00 67 00 65 00 64 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceF = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 50 00 69 00 72 00 61 00 74 00 65 00 31 00 5F 00 43 00 6F 00 69 00 6E 00 53 00 74 00 61 00 63 00 6B 00 5F 00 53 00 6D 00 61 00 6C 00 6C 00 5D 00 00 00 00 00"
SearchG = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 50 00 69 00 72 00 61 00 74 00 65 00 5F 00 42 00 6F 00 73 00 73 00 45 00 6E 00 65 00 6D 00 79 00 5D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
ReplaceG = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 50 00 69 00 72 00 61 00 74 00 65 00 31 00 5F 00 43 00 6F 00 69 00 6E 00 53 00 74 00 61 00 63 00 6B 00 5F 00 53 00 6D 00 61 00 6C 00 6C 00 5D 00 00 00 00 00"
AOBRep(SearchA, ReplaceA)
AOBRep(SearchB, ReplaceB)
AOBRep(SearchC, ReplaceC)
AOBRep(SearchD, ReplaceD)
AOBRep(SearchE, ReplaceE)
AOBRep(SearchF, ReplaceF)
AOBRep(SearchG, ReplaceG)
end

function silverhack(sender)

SearchA = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 42 00 61 00 73 00 69 00 63 00 42 00 6F 00 6E 00 65 00 4D 00 65 00 6C 00 65 00 65 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceA = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 4D 00 69 00 6E 00 69 00 42 00 6F 00 73 00 73 00 43 00 6F 00 69 00 6E 00 73 00 5F 00 57 00 6F 00 6C 00 66 00 5D 00 00 00"
SearchB = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 42 00 61 00 73 00 69 00 63 00 43 00 68 00 61 00 72 00 67 00 69 00 6E 00 67 00 57 00 6F 00 6C 00 66 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceB = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 4D 00 69 00 6E 00 69 00 42 00 6F 00 73 00 73 00 43 00 6F 00 69 00 6E 00 73 00 5F 00 57 00 6F 00 6C 00 66 00 5D 00 00 00 00 00 00 00 00 00"
SearchC = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 42 00 61 00 73 00 69 00 63 00 4C 00 75 00 6E 00 67 00 69 00 6E 00 67 00 42 00 61 00 74 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceC = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 4D 00 69 00 6E 00 69 00 42 00 6F 00 73 00 73 00 43 00 6F 00 69 00 6E 00 73 00 5F 00 57 00 6F 00 6C 00 66 00 5D 00 00 00 00 00"
SearchD = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 42 00 61 00 73 00 69 00 63 00 4C 00 75 00 6E 00 67 00 69 00 6E 00 67 00 42 00 61 00 74 00 45 00 6E 00 65 00 6D 00 79 00 5F 00 49 00 6E 00 76 00 65 00 72 00 74 00 65 00 64 00 5D 00"
ReplaceD = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 4D 00 69 00 6E 00 69 00 42 00 6F 00 73 00 73 00 43 00 6F 00 69 00 6E 00 73 00 5F 00 57 00 6F 00 6C 00 66 00 5D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
SearchE= "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 42 00 61 00 73 00 69 00 63 00 4C 00 75 00 6E 00 67 00 69 00 6E 00 67 00 57 00 6F 00 6C 00 66 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceE = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 4D 00 69 00 6E 00 69 00 42 00 6F 00 73 00 73 00 43 00 6F 00 69 00 6E 00 73 00 5F 00 57 00 6F 00 6C 00 66 00 5D 00 00 00 00 00 00 00"
SearchF = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 42 00 61 00 73 00 69 00 63 00 52 00 61 00 6E 00 67 00 65 00 64 00 42 00 61 00 74 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceF = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 4D 00 69 00 6E 00 69 00 42 00 6F 00 73 00 73 00 43 00 6F 00 69 00 6E 00 73 00 5F 00 57 00 6F 00 6C 00 66 00 5D 00 00 00"
SearchG = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 42 00 61 00 73 00 69 00 63 00 52 00 61 00 6E 00 67 00 65 00 64 00 42 00 61 00 74 00 45 00 6E 00 65 00 6D 00 79 00 5F 00 49 00 6E 00 76 00 65 00 72 00 74 00 65 00 64 00 5D 00"
ReplaceG = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 4D 00 69 00 6E 00 69 00 42 00 6F 00 73 00 73 00 43 00 6F 00 69 00 6E 00 73 00 5F 00 57 00 6F 00 6C 00 66 00 5D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
SearchH = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 47 00 72 00 6F 00 75 00 6E 00 64 00 5F 00 42 00 6F 00 6E 00 65 00 5F 00 54 00 68 00 72 00 6F 00 77 00 6E 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceH = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 4D 00 69 00 6E 00 69 00 42 00 6F 00 73 00 73 00 43 00 6F 00 69 00 6E 00 73 00 5F 00 57 00 6F 00 6C 00 66 00 5D 00 00 00 00 00 00 00 00 00 00 00"
SearchI = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 47 00 72 00 6F 00 75 00 6E 00 64 00 5F 00 4D 00 75 00 73 00 6B 00 65 00 74 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceI = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 4D 00 69 00 6E 00 69 00 42 00 6F 00 73 00 73 00 43 00 6F 00 69 00 6E 00 73 00 5F 00 57 00 6F 00 6C 00 66 00 5D 00"
SearchJ = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 4D 00 69 00 6E 00 69 00 42 00 6F 00 73 00 73 00 42 00 6F 00 6E 00 65 00 4D 00 65 00 6C 00 65 00 65 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceJ = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 4D 00 69 00 6E 00 69 00 42 00 6F 00 73 00 73 00 43 00 6F 00 69 00 6E 00 73 00 5F 00 57 00 6F 00 6C 00 66 00 5D 00 00 00 00 00 00 00 00 00"
SearchK = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 4D 00 69 00 6E 00 69 00 42 00 6F 00 73 00 73 00 47 00 72 00 6F 00 75 00 6E 00 64 00 42 00 6F 00 6E 00 65 00 54 00 68 00 72 00 6F 00 77 00 6E 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceK = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 4D 00 69 00 6E 00 69 00 42 00 6F 00 73 00 73 00 43 00 6F 00 69 00 6E 00 73 00 5F 00 57 00 6F 00 6C 00 66 00 5D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
SearchL = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 4D 00 69 00 6E 00 69 00 42 00 6F 00 73 00 73 00 47 00 72 00 6F 00 75 00 6E 00 64 00 5F 00 4D 00 75 00 73 00 6B 00 65 00 74 00 5D 00"
ReplaceL = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 4D 00 69 00 6E 00 69 00 42 00 6F 00 73 00 73 00 43 00 6F 00 69 00 6E 00 73 00 5F 00 57 00 6F 00 6C 00 66 00 5D 00 00 00 00 00 00 00 00 00"
SearchM = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 4D 00 69 00 6E 00 69 00 42 00 6F 00 73 00 73 00 4C 00 75 00 6E 00 67 00 69 00 6E 00 67 00 57 00 6F 00 6C 00 66 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceM = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 4D 00 69 00 6E 00 69 00 42 00 6F 00 73 00 73 00 43 00 6F 00 69 00 6E 00 73 00 5F 00 57 00 6F 00 6C 00 66 00 5D 00 00 00 00 00 00 00 00 00 00 00 00 00"
SearchN = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 4D 00 69 00 6E 00 69 00 42 00 6F 00 73 00 73 00 52 00 61 00 6E 00 67 00 65 00 64 00 42 00 61 00 74 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceN = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 44 00 72 00 61 00 63 00 75 00 6C 00 61 00 31 00 5F 00 4D 00 69 00 6E 00 69 00 42 00 6F 00 73 00 73 00 43 00 6F 00 69 00 6E 00 73 00 5F 00 57 00 6F 00 6C 00 66 00 5D 00 00 00 00 00 00 00 00 00"
AOBRep(SearchA, ReplaceA)
AOBRep(SearchB, ReplaceB)
AOBRep(SearchC, ReplaceC)
AOBRep(SearchD, ReplaceD)
AOBRep(SearchE, ReplaceE)
AOBRep(SearchF, ReplaceF)
AOBRep(SearchG, ReplaceG)
AOBRep(SearchH, ReplaceH)
AOBRep(SearchI, ReplaceI)
AOBRep(SearchJ, ReplaceJ)
AOBRep(SearchK, ReplaceK)
AOBRep(SearchL, ReplaceL)
AOBRep(SearchM, ReplaceM)
AOBRep(SearchN, ReplaceN)
end

function flyhack()

searchA = '62 00 00 00 01 00 01'
replaceA = '21 00 00 00 01 01 01'
AOBRep(searchA,replaceA)
end

function gtshotgunf()

SearchA = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 47 00 6F 00 62 00 6C 00 69 00 6E 00 5F 00 42 00 61 00 73 00 69 00 63 00 47 00 72 00 6F 00 75 00 6E 00 64 00 4D 00 65 00 6C 00 65 00 65 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceA = "5B 00 41 00 72 00 65 00 6E 00 61 00 5F 00 53 00 68 00 6F 00 74 00 67 00 75 00 6E 00 5D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
AOBRep(SearchA,ReplaceA)
end

function gtcarf()

SearchA = "5B 00 51 00 75 00 65 00 73 00 74 00 5F 00 47 00 6F 00 62 00 6C 00 69 00 6E 00 5F 00 42 00 61 00 73 00 69 00 63 00 47 00 72 00 6F 00 75 00 6E 00 64 00 4D 00 65 00 6C 00 65 00 65 00 45 00 6E 00 65 00 6D 00 79 00 5D 00"
ReplaceA = "5B 00 56 00 65 00 68 00 69 00 63 00 6C 00 65 00 5F 00 35 00 30 00 73 00 43 00 61 00 72 00 5D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
AOBRep(SearchA,ReplaceA)
end

function backtopage2(sender)
SnytexsModMenu3.hide()
gotopage2()
end

function backtopage3()
SnytexsModMenu4.hide()
gotopage3()
end

function ppf()

SearchA = "38 00 61 00 61 00 37 00 39 00 35 00 36 00 33 00 2D 00 61 00 63 00 65 00 31 00 2D 00 34 00 62 00 61 00 37 00 2D 00 61 00 64 00 30 00 63 00 2D 00 66 00 33 00 32 00 31 00 30 00 61 00 37 00 38 00 31 00 34 00 32 00 66 00"
ReplaceA = "32 00 37 00 63 00 64 00 65 00 63 00 64 00 32 00 2D 00 38 00 38 00 66 00 31 00 2D 00 34 00 30 00 61 00 38 00 2D 00 38 00 30 00 61 00 39 00 2D 00 38 00 37 00 61 00 62 00 64 00 38 00 32 00 37 00 63 00 33 00 63 00 35 00"
AOBRep(SearchA,ReplaceA)
end

function poofyf()

SearchA = "38 00 61 00 61 00 37 00 39 00 35 00 36 00 33 00 2D 00 61 00 63 00 65 00 31 00 2D 00 34 00 62 00 61 00 37 00 2D 00 61 00 64 00 30 00 63 00 2D 00 66 00 33 00 32 00 31 00 30 00 61 00 37 00 38 00 31 00 34 00 32 00 66 00"
ReplaceA = "61 00 33 00 30 00 32 00 37 00 34 00 31 00 64 00 2D 00 33 00 31 00 33 00 62 00 2D 00 34 00 36 00 38 00 32 00 2D 00 38 00 32 00 65 00 35 00 2D 00 61 00 63 00 37 00 36 00 37 00 36 00 34 00 65 00 36 00 36 00 32 00 63 00"
AOBRep(SearchA,ReplaceA)
end

function hockeyf()

SearchA = "38 00 61 00 61 00 37 00 39 00 35 00 36 00 33 00 2D 00 61 00 63 00 65 00 31 00 2D 00 34 00 62 00 61 00 37 00 2D 00 61 00 64 00 30 00 63 00 2D 00 66 00 33 00 32 00 31 00 30 00 61 00 37 00 38 00 31 00 34 00 32 00 66 00"
ReplaceA = "61 00 33 00 30 00 32 00 37 00 34 00 31 00 64 00 2D 00 33 00 31 00 33 00 62 00 2D 00 34 00 36 00 38 00 32 00 2D 00 38 00 32 00 65 00 35 00 2D 00 61 00 63 00 37 00 36 00 37 00 36 00 34 00 65 00 36 00 36 00 32 00 63 00"
AOBRep(SearchA,ReplaceA)
end

function winterf()

SearchA = "38 00 61 00 61 00 37 00 39 00 35 00 36 00 33 00 2D 00 61 00 63 00 65 00 31 00 2D 00 34 00 62 00 61 00 37 00 2D 00 61 00 64 00 30 00 63 00 2D 00 66 00 33 00 32 00 31 00 30 00 61 00 37 00 38 00 31 00 34 00 32 00 66 00"
ReplaceA = "33 00 37 00 35 00 37 00 31 00 34 00 39 00 62 00 2D 00 66 00 34 00 37 00 38 00 2D 00 34 00 39 00 37 00 35 00 2D 00 38 00 31 00 65 00 35 00 2D 00 64 00 38 00 30 00 38 00 61 00 31 00 62 00 65 00 64 00 38 00 64 00 35 00"
AOBRep(SearchA,ReplaceA)
end

function unlinkf()

os.execute('rmdir /s /q "C:\\Users\\%USERNAME%\\AppData\\LocalLow\\Against Gravity"')
os.execute('rmdir /s /q "%LocalAppData%\\Temp\\RecRoom')
os.execute('rmdir /s /q "%LocalAppData%\\Temp\\Against Gravity"')
os.execute('del /s /q %AppData%\\Microsoft\\Windows\\Recent\\RecRoom.lnk')
os.execute('del /s /q "%AppData%\\Microsoft\\Windows\\Start Menu\\Programs\\Steam\\Rec Room.url"')
os.execute('REG DELETE "HKEY_CURRENT_USER\\Software\\Against Gravity" /y')
os.execute('REG DELETE "HKEY_CURRENT_USER\\SOFTWARE\\Classes\\recroom" /y')
os.execute('REG DELETE "HKEY_CURRENT_USER\\SOFTWARE\\Valve\\Steam\\Apps\\471710" /y')
os.execute('REG DELETE "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Steam App 471710" /y')
os.execute('REG DELETE "HKEY_CURRENT_USER\\SOFTWARE\\Valve\\Steam\\Apps\\471710" /y')
end

function nukef()

os.execute('taskkill /im RecRoom.exe /f')
os.execute('taskkill /im cheatengine-x86_64.exe /f')
end

function gotopage2(sender)
SnytexsModMenu.hide()

SnytexsModMenu2 = createForm(true)
SnytexsModMenu2.caption = [[Snytex's Mod Menu (Page 2)]]
SnytexsModMenu2.left = 1000
SnytexsModMenu2.top = 120
SnytexsModMenu2.width = 355
SnytexsModMenu2.height = 540
SnytexsModMenu2.align = alNone
SnytexsModMenu2.enabled = true
SnytexsModMenu2.visible = true
SnytexsModMenu2.Color = 0x242424
Set = Set
To = To


-- Creating the objects

--AOBSWAPS
function AOBRep(search, change)
local aob = AOBScan(search)
if aob then
  for i=0,aob.Count-1 do
    autoAssemble(aob[i]..':\ndb '..change)
  end
  aob.Destroy()
end
end

--Mod Menu Title
modmenutitle2 = createLabel(SnytexsModMenu2)
modmenutitle2.caption = [[Snytex's Mod Menu V4]]
modmenutitle2.font.size = [[18]]
modmenutitle2.left = [[55]]
modmenutitle2.top = [[10]]
modmenutitle2.width = [[281]]
modmenutitle2.height = [[45]]
modmenutitle2.align = [[alNone]]
modmenutitle2.enabled = [[true]]
modmenutitle2.visible = [[true]]
modmenutitle2.font.color = 0x15FF00

--Split Label
Line2 = createLabel(SnytexsModMenu2)
Line2.caption = [[________________________________________________________________________________________]]
Line2.Font.Color = clSilver
Line2.Font.Size = [[10]]
Line2.Left = [[0]]
Line2.Top = [[40]]
Line2.Alignment = taCenter

--Discord Link
discord2 = createLabel(SnytexsModMenu2)
discord2.caption = [[https://discord.gg/mMutruJwfk]]
discord2.font.size = 16
discord2.left = [[30]]
discord2.top = [[499]]
discord2.width = [[216]]
discord2.height = [[21]]
discord2.align = [[alNone]]
discord2.enabled = [[true]]
discord2.visible = [[true]]
discord2.font.color = 0x6BFF50

--Page 1 Button
page1b = createButton(SnytexsModMenu2)
page1b.caption = [[<]]
page1b.left = [[5]]
page1b.top = [[430]]
page1b.width = [[50]]
page1b.height = [[50]]
page1b.onClick = gotopage1

--Page 1 Label
page1l = createLabel(SnytexsModMenu2)
page1l.caption = [[Page 1]]
page1l.left = [[12]]
page1l.top = [[410]]
page1l.font.color = 0x6BFF50

--Exploits
exploits = createLabel(SnytexsModMenu2)
exploits.caption = [[Quest Stuff]]
exploits.font.size = 12
exploits.left = [[140]]
exploits.top = [[60]]
exploits.width = [[73]]
exploits.height = [[21]]
exploits.align = [[alNone]]
exploits.enabled = [[true]]
exploits.visible = [[true]]
exploits.font.color = 0x6BFF50

--GT Enemies Button
gt = createButton(SnytexsModMenu2)
gt.caption = [[No GT Enemies]]
gt.left = [[20]]
gt.top = [[85]]
gt.width = [[136]]
gt.height = [[60]]
gt.onClick = gtfunction

--JT Enemies Button
jt = createButton(SnytexsModMenu2)
jt.caption = [[No JT Enemies]]
jt.left = [[195]]
jt.top = [[85]]
jt.width = [[136]]
jt.height = [[60]]
jt.onClick = jtfunction

--CC Enemies Button
cc = createButton(SnytexsModMenu2)
cc.caption = [[No CC Enemies]]
cc.left = [[20]]
cc.top = [[163]]
cc.width = [[136]]
cc.height = [[60]]
cc.onClick = ccfunction

--IOTLS Gold Hack Button
ils = createButton(SnytexsModMenu2)
ils.caption = [[ILS Gold Hack]]
ils.left = [[195]]
ils.top = [[163]]
ils.width = [[136]]
ils.height = [[60]]
ils.onClick = iotlsfunction

--Crescendo Silver Hack Button
cbm = createButton(SnytexsModMenu2)
cbm.caption = [[CBM Silver Hack]]
cbm.left = [[20]]
cbm.top = [[241]]
cbm.width = [[136]]
cbm.height = [[60]]
cbm.onClick = silverhack

--Golden Trophy Shotgun Button
gtshotgun = createButton(SnytexsModMenu2)
gtshotgun.caption = [[Goblin -> ArenaShotgun]]
gtshotgun.left = [[195]]
gtshotgun.top = [[241]]
gtshotgun.width = [[136]]
gtshotgun.height = [[60]]
gtshotgun.onClick = gtshotgunf

--Golden Trophy Car Button
gtcar = createButton(SnytexsModMenu2)
gtcar.caption = [[Goblin -> Car]]
gtcar.left = [[20]]
gtcar.top = [[319]]
gtcar.width = [[136]]
gtcar.height = [[60]]
gtcar.onClick = gtcarf

--Golden Trophy CharPen Button
gtchp = createButton(SnytexsModMenu2)
gtchp.caption = [[Goblin -> CharPen]]
gtchp.left = [[195]]
gtchp.top = [[319]]
gtchp.width = [[136]]
gtchp.height = [[60]]
gtchp.onClick = gtchpf

--Page 3 button
page3b = createButton(SnytexsModMenu2)
page3b.caption = [[>]]
page3b.left = [[300]]
page3b.top = [[430]]
page3b.width = [[50]]
page3b.height = [[50]]
page3b.align = [[alNone]]
page3b.onClick = gotopage3

--Page 3 Label
page2l = createLabel(SnytexsModMenu2)
page2l.caption = [[Page 3]]
page2l.left = [[307]]
page2l.top = [[410]]
page2l.font.color = 0x6BFF50
end

function gotopage3(sender)
SnytexsModMenu2.hide()

SnytexsModMenu3 = createForm(true)
SnytexsModMenu3.caption = [[Snytex's Mod Menu (Page 3)]]
SnytexsModMenu3.left = 1000
SnytexsModMenu3.top = 120
SnytexsModMenu3.width = 355
SnytexsModMenu3.height = 540
SnytexsModMenu3.align = alNone
SnytexsModMenu3.enabled = true
SnytexsModMenu3.visible = true
SnytexsModMenu3.Color = 0x242424
Set = Set
To = To


-- Creating the objects

--AOBSWAPS
function AOBRep(search, change)
local aob = AOBScan(search)
if aob then
  for i=0,aob.Count-1 do
    autoAssemble(aob[i]..':\ndb '..change)
  end
  aob.Destroy()
end
end

--Mod Menu Title
modmenutitle3 = createLabel(SnytexsModMenu3)
modmenutitle3.caption = [[Snytex's Mod Menu V4]]
modmenutitle3.font.size = [[18]]
modmenutitle3.left = [[55]]
modmenutitle3.top = [[10]]
modmenutitle3.width = [[281]]
modmenutitle3.height = [[45]]
modmenutitle3.align = [[alNone]]
modmenutitle3.enabled = [[true]]
modmenutitle3.visible = [[true]]
modmenutitle3.font.color = 0x15FF00

--Split Label
Line3 = createLabel(SnytexsModMenu3)
Line3.caption = [[________________________________________________________________________________________]]
Line3.Font.Color = clSilver
Line3.Font.Size = [[10]]
Line3.Left = [[0]]
Line3.Top = [[40]]
Line3.Alignment = taCenter

--Page 2 Button Back
page2bback = createButton(SnytexsModMenu3)
page2bback.caption = [[<]]
page2bback.left = [[5]]
page2bback.top = [[430]]
page2bback.width = [[50]]
page2bback.height = [[50]]
page2bback.onClick = backtopage2

discord3 = createLabel(SnytexsModMenu3)
discord3.caption = [[https://discord.gg/mMutruJwfk]]
discord3.font.size = 16
discord3.left = [[30]]
discord3.top = [[499]]
discord3.width = [[216]]
discord3.height = [[21]]
discord3.align = [[alNone]]
discord3.enabled = [[true]]
discord3.visible = [[true]]
discord3.font.color = 0x6BFF50

--Page 1 Label
page1l = createLabel(SnytexsModMenu3)
page1l.caption = [[Page 2]]
page1l.left = [[12]]
page1l.top = [[410]]
page1l.font.color = 0x6BFF50

--Misc
misc = createLabel(SnytexsModMenu3)
misc.caption = [[Outfit Stuff]]
misc.font.size = 12
misc.left = [[139]]
misc.top = [[60]]
misc.width = [[73]]
misc.height = [[21]]
misc.align = [[alNone]]
misc.enabled = [[true]]
misc.visible = [[true]]
misc.font.color = 0x6BFF50

headshirt = createButton(SnytexsModMenu3)
headshirt.caption = [[Shirt on head]]
headshirt.left = [[20]]
headshirt.top = [[85]]
headshirt.width = [[136]]
headshirt.height = [[60]]
headshirt.align = [[alNone]]
headshirt.enabled = [[true]]
headshirt.visible = [[true]]
headshirt.onClick = headshirtc

--White Hat Button
wh = createButton(SnytexsModMenu3)
wh.caption = [[White Hat]]
wh.left = [[195]]
wh.top = [[85]]
wh.width = [[136]]
wh.height = [[60]]
wh.onClick = whfunction

saijash = createButton(SnytexsModMenu3)
saijash.caption = [[Saija Shirt]]
saijash.left = [[20]]
saijash.top = [[163]]
saijash.width = [[136]]
saijash.height = [[60]]
saijash.onClick = Saija

inv = createButton(SnytexsModMenu3)
inv.caption = [[Invisibility]]
inv.left = [[195]]
inv.top = [[163]]
inv.width = [[136]]
inv.height = [[60]]
inv.onClick = invis

infsh = createButton(SnytexsModMenu3)
infsh.caption = [[Big PP]]
infsh.left = [[20]]
infsh.top = [[241]]
infsh.width = [[136]]
infsh.height = [[60]]
infsh.onClick = ppf

poofy = createButton(SnytexsModMenu3)
poofy.caption = "Poofy Dress"
poofy.left = 195
poofy.top = 241
poofy.width = 136
poofy.height = 60
poofy.onClick = poofyf

hockey = createButton(SnytexsModMenu3)
hockey.caption = "Hockey Shirt"
hockey.left = 20
hockey.top = 319
hockey.width = 136
hockey.height = 60
hockey.onClick = hockeyf

winter = createButton(SnytexsModMenu3)
winter.caption = "Winter Shirt"
winter.left = 195
winter.top = 319
winter.width = 136
winter.height = 60
winter.onClick = winterf

page4b = createButton(SnytexsModMenu3)
page4b.caption = [[>]]
page4b.left = [[300]]
page4b.top = [[430]]
page4b.width = [[50]]
page4b.height = [[50]]
page4b.align = [[alNone]]
page4b.onClick = gotopage4

page4l = createLabel(SnytexsModMenu3)
page4l.caption = [[Page 4]]
page4l.left = [[307]]
page4l.top = [[410]]
page4l.font.color = 0x6BFF50
end

function gotopage4(sender)
SnytexsModMenu3.hide()

SnytexsModMenu4 = createForm(true)
SnytexsModMenu4.caption = [[Snytex's Mod Menu (Page 4)]]
SnytexsModMenu4.left = 1000
SnytexsModMenu4.top = 120
SnytexsModMenu4.width = 355
SnytexsModMenu4.height = 540
SnytexsModMenu4.align = alNone
SnytexsModMenu4.enabled = true
SnytexsModMenu4.visible = true
SnytexsModMenu4.Color = 0x242424
Set = Set
To = To


-- Creating the objects

--AOBSWAPS
function AOBRep(search, change)
local aob = AOBScan(search)
if aob then
  for i=0,aob.Count-1 do
    autoAssemble(aob[i]..':\ndb '..change)
  end
  aob.Destroy()
end
end

--Mod Menu Title
modmenutitle4 = createLabel(SnytexsModMenu4)
modmenutitle4.caption = [[Snytex's Mod Menu V4]]
modmenutitle4.font.size = [[18]]
modmenutitle4.left = [[55]]
modmenutitle4.top = [[10]]
modmenutitle4.width = [[281]]
modmenutitle4.height = [[45]]
modmenutitle4.align = [[alNone]]
modmenutitle4.enabled = [[true]]
modmenutitle4.visible = [[true]]
modmenutitle4.font.color = 0x15FF00

--Split Label
Line4 = createLabel(SnytexsModMenu4)
Line4.caption = [[________________________________________________________________________________________]]
Line4.Font.Color = clSilver
Line4.Font.Size = [[10]]
Line4.Left = [[0]]
Line4.Top = [[40]]
Line4.Alignment = taCenter

--Page 3 Button Back
page3bback = createButton(SnytexsModMenu4)
page3bback.caption = [[<]]
page3bback.left = [[5]]
page3bback.top = [[430]]
page3bback.width = [[50]]
page3bback.height = [[50]]
page3bback.onClick = backtopage3

discord4 = createLabel(SnytexsModMenu4)
discord4.caption = [[https://discord.gg/mMutruJwfk]]
discord4.font.size = 16
discord4.left = [[30]]
discord4.top = [[499]]
discord4.width = [[216]]
discord4.height = [[21]]
discord4.align = [[alNone]]
discord4.enabled = [[true]]
discord4.visible = [[true]]
discord4.font.color = 0x6BFF50

--Page 1 Label
page3l = createLabel(SnytexsModMenu4)
page3l.caption = [[Page 3]]
page3l.left = [[12]]
page3l.top = [[410]]
page3l.font.color = 0x6BFF50

misc = createLabel(SnytexsModMenu4)
misc.caption = [[Miscellaneous]]
misc.font.size = 12
misc.left = [[125]]
misc.top = [[60]]
misc.width = [[73]]
misc.height = [[21]]
misc.align = [[alNone]]
misc.enabled = [[true]]
misc.visible = [[true]]
misc.font.color = 0x6BFF50

unlink = createButton(SnytexsModMenu4)
unlink.caption = "Unlink Account"
unlink.left = 20
unlink.top = 85
unlink.width = 136
unlink.height = 60
unlink.onClick = unlinkf

nuke = createButton(SnytexsModMenu4)
nuke.caption = "Self Destruction"
nuke.left = 195
nuke.top = 85
nuke.width = 136
nuke.height = 60
nuke.onClick = nukef

--Split Label
Line4 = createLabel(SnytexsModMenu4)
Line4.caption = [[________________________________________________________________________________________]]
Line4.Font.Color = clSilver
Line4.Font.Size = [[10]]
Line4.Left = [[0]]
Line4.Top = [[165]]
Line4.Alignment = taCenter

--Credits
credits = createLabel(SnytexsModMenu4)
credits.caption = [[Credits]]
credits.font.size = 12
credits.left = [[148]]
credits.top = [[185]]
credits.width = [[73]]
credits.height = [[21]]
credits.align = [[alNone]]
credits.enabled = [[true]]
credits.visible = [[true]]
credits.font.color = 0x6BFF50

credits = createLabel(SnytexsModMenu4)
credits.caption = [[bena.png#0847 -- General Lua Help
Smapty#0001    -- General Lua Help
Tato#3026          -- Idea with Pages
Sanchez#0620   --Password system
Krane#4181       --White Hat]]
credits.font.size = 12
credits.left = [[20]]
credits.top = [[215]]
credits.width = [[73]]
credits.height = [[21]]
credits.align = [[alNone]]
credits.enabled = [[true]]
credits.visible = [[true]]
credits.font.color = 0x6BFF50
end

function gotopage1(sender)
SnytexsModMenu2.hide()
mainmenu()
end

--Creating Help Menu
function QHelp(sender)
HelpMenu = createForm()
HelpMenu.caption = [[Help Menu]]
HelpMenu.width = [[460]]
HelpMenu.height = [[300]]
HelpMenu.Color = 0x242424


--Creating Objects

--Question
QHML = createLabel(HelpMenu)
QHML.caption = [[What do you need help with?]]
QHML.left = [[90]]
QHML.top = [[5]]
QHML.font.size = [[16]]
QHML.font.color = 0x6BFF50

--Line
Line3 = createLabel(HelpMenu)
Line3.caption = [[_________________________________________________________________________________________________________________________________________________]]
Line3.top = [[30]]

--UIs Help Button
qhbuis = createButton(HelpMenu)
qhbuis.caption = [[Watch Uis]]
qhbuis.left = [[10]]
qhbuis.top = [[60]]
qhbuis.width = [[136]]
qhbuis.height = [[60]]
qhbuis.onClick = qhuisf

--Shirt on head Help Button
qhbheadshirt = createButton(HelpMenu)
qhbheadshirt.caption = [[Shirt on head]]
qhbheadshirt.left = [[160]]
qhbheadshirt.top = [[60]]
qhbheadshirt.width = [[136]]
qhbheadshirt.height = [[60]]
qhbheadshirt.onClick = qhheadshirtf

--White Hat Help Button
qhbwhitehat = createButton(HelpMenu)
qhbwhitehat.caption = [[White Hat]]
qhbwhitehat.left = [[310]]
qhbwhitehat.top = [[60]]
qhbwhitehat.width = [[136]]
qhbwhitehat.height = [[60]]
qhbwhitehat.onClick = qhwhitehatf

--Shirt Swapper Help Button
qhbswapper = createButton(HelpMenu)
qhbswapper.caption = [[Shirt Swapper]]
qhbswapper.left = [[10]]
qhbswapper.top = [[135]]
qhbswapper.width = [[136]]
qhbswapper.height = [[60]]
qhbswapper.onClick = qhswapperf

--MakerPen Help Button
qhbmakerpen = createButton(HelpMenu)
qhbmakerpen.caption = [[Flight]]
qhbmakerpen.left = [[160]]
qhbmakerpen.top = [[135]]
qhbmakerpen.width = [[136]]
qhbmakerpen.height = [[60]]
qhbmakerpen.onClick = qhflightf

--Crash Fix Help Button
qhbcrashfix = createButton(HelpMenu)
qhbcrashfix.caption = [[Crash Fix]]
qhbcrashfix.left = [[310]]
qhbcrashfix.top = [[135]]
qhbcrashfix.width = [[136]]
qhbcrashfix.height = [[60]]
qhbcrashfix.onClick = qhcrashfixf

qhsilgol = createButton(HelpMenu)
qhsilgol.caption = "Silver / Gold Hack"
qhsilgol.left = 10
qhsilgol.top = 210
qhsilgol.width = 136
qhsilgol.height = 60
qhsilgol.onClick = qhsilgolf

qhoutfits = createButton(HelpMenu)
qhoutfits.caption = "Outfits"
qhoutfits.left = 160
qhoutfits.top = 210
qhoutfits.width = 136
qhoutfits.height = 60
qhoutfits.onClick = qhoutfitsf

qhunlink = createButton(HelpMenu)
qhunlink.caption = "Unlink Account"
qhunlink.left = 310
qhunlink.top = 210
qhunlink.width = 136
qhunlink.height = 60
qhunlink.onClick = qhunlinkf
end

--QH UIS FORM
function qhuisf(sender)

qhuis = createForm()
qhuis.caption = [[Watch Uis Help Menu]]
qhuis.width = [[500]]
qhuis.height = [[200]]
qhuis.Color = 0x242424

--QH TEXTS UIS
ht1 = createLabel(qhuis)
ht1.caption = [[Skip Orientation:]]
ht1.font.size = [[12]]
ht1.font.color = 0x6BFF50

ht1 = createLabel(qhuis)
ht1.caption = [[To skip Orientation, click the button and then open your watch ingame.]]
ht1.top = [[20]]
ht1.font.size = [[12]]
ht1.font.color = 0x6BFF50

ht1 = createLabel(qhuis)
ht1.caption = [[Other Uis]]
ht1.top = [[60]]
ht1.font.size = [[12]]
ht1.font.color = 0x6BFF50

ht1 = createLabel(qhuis)
ht1.caption = [[For the other uis, just check all your backpack tabs after swapping.]]
ht1.top = [[80]]
ht1.font.size = [[12]]
ht1.font.color = 0x6BFF50
end

--QH HEADSHIRT FORM
function qhheadshirtf(sender)

qhheadshirt = createForm()
qhheadshirt.caption = [[Shirt on Head Help Menu]]
qhheadshirt.width = [[500]]
qhheadshirt.height = [[200]]
qhheadshirt.Color = 0x242424

--QH TEXTS HEADSHIRT
ht2 = createLabel(qhheadshirt)
ht2.caption = [[To put a shirt on your head, you need to first equip the shagg hair.]]
ht2.font.size = [[12]]
ht2.font.color = 0x6BFF50

ht2 = createLabel(qhheadshirt)
ht2.caption = [[After that, click the button and then refresh your outfit.]]
ht2.top = [[20]]
ht2.font.size = [[12]]
ht2.font.color = 0x6BFF50
end

--QH WHITE HAT FORM
function qhwhitehatf(sender)

qhwhitehat = createForm()
qhwhitehat.caption = [[White Hat Help Menu]]
qhwhitehat.width = [[500]]
qhwhitehat.height = [[200]]
qhwhitehat.Color = 0x242424

--QH SHITE HAT TEXTS
ht3 = createLabel(qhwhitehat)
ht3.caption = [[Click the White Hat Button and wait for it to finish.]]
ht3.font.size = [[12]]
ht3.font.color = 0x6BFF50

ht3 = createLabel(qhwhitehat)
ht3.caption = [[Once it finished, open the user settings and logout.]]
ht3.font.size = [[12]]
ht3.top = [[20]]
ht3.font.color = 0x6BFF50

ht3 = createLabel(qhwhitehat)
ht3.caption = [[Now just use your Customize UI and search up Nightcap.]]
ht3.font.size = [[12]]
ht3.top = [[40]]
ht3.font.color = 0x6BFF50

ht3 = createLabel(qhwhitehat)
ht3.caption = [[There you will see the White Hat.]]
ht3.font.size = [[12]]
ht3.top = [[60]]
ht3.font.color = 0x6BFF50
end

--QH SHIRT SWAPPER FORM
function qhswapperf(sender)

qhswapper = createForm()
qhswapper.caption = [[Shirt Swapper Help Menu]]
qhswapper.width = [[500]]
qhswapper.height = [[200]]
qhswapper.Color = 0x242424

--QH SHIRT SWAPPER TEXTS
ht4 = createLabel(qhswapper)
ht4.caption = [[First of all, you will need to equip the default V Shirt.]]
ht4.font.size = [[12]]
ht4.font.color = 0x6BFF50

ht4 = createLabel(qhswapper)
ht4.caption = [[Then copy any clothing AOB of your choice,]]
ht4.font.size = [[12]]
ht4.top = [[20]]
ht4.font.color = 0x6BFF50

ht4 = createLabel(qhswapper)
ht4.caption = [[paste it into the input field and click Submit.]]
ht4.font.size = [[12]]
ht4.top = [[40]]
ht4.font.color = 0x6BFF50
end

--QH MAKERPEN FORM
function qhflightf(sender)

qhmakerpen = createForm()
qhmakerpen.caption = [[Flight Help Menu]]
qhmakerpen.width = [[500]]
qhmakerpen.height = [[200]]
qhmakerpen.Color = 0x242424

--QH MAKERPEN TEXTS
ht5 = createLabel(qhmakerpen)
ht5.caption = [[Maker Pen is buggy and wont work in every room!]]
ht5.font.size = [[12]]
ht5.font.color = 0x6BFF50

ht5 = createLabel(qhmakerpen)
ht5.caption = [[Works best in private Rooms.]]
ht5.font.size = [[12]]
ht5.top = [[20]]
ht5.font.color = 0x6BFF50

ht5 = createLabel(qhmakerpen)
ht5.caption = [[In combination with MakerPen UI you can delete every room tho.]]
ht5.font.size = [[12]]
ht5.top = [[40]]
ht5.font.color = 0x6BFF50
end

--QH CRASH FIX FORM
function qhcrashfixf(sender)

qhcrashfix = createForm()
qhcrashfix.caption = [[Crash Fix Help Menu]]
qhcrashfix.width = [[500]]
qhcrashfix.height = [[200]]
qhcrashfix.Color = 0x242424

--QH CRASH FIX TEXTS
ht6 = createLabel(qhcrashfix)
ht6.caption = [[Use this in the login screen to prevent crashes!]]
ht6.font.size = [[12]]
ht6.font.color = 0x6BFF50
end

function qhsilgolf()

qhsilgol = createForm()
qhsilgol.caption = "Silver / Gold Hack Menu"
qhsilgol.width = 500
qhsilgol.height = 200
qhsilgol.color = 0x242424

ht7 = createLabel(qhsilgol)
ht7.caption = "After the loading is finished, just play through the quest."
ht7.font.size = 12
ht7.font.color = 0x6BFF50
end

function qhoutfitsf()

qhoutfits = createForm()
qhoutfits.width = 500
qhoutfits.height = 200
qhoutfits.color = 0x242424

ht8 = createLabel(qhoutfits)
ht8.caption = "Every shirt (not the first two) will be swapped with the Default V shirt."
ht8.font.size = 12
ht8.font.color = 0x6BFF50
end

function qhunlinkf()

qhunlink = createForm()
qhunlink.caption = "Unlink Account Help Menu"
qhunlink.width = 500
qhunlink.height = 200
qhunlink.color = 0x242424

ht9 = createLabel(qhunlink)
ht9.caption = "If you do this when Rec Room is closed, it will unlink your Account."
ht9.font.size = 12
ht9.font.color = 0x6BFF50

ht9 = createLabel(qhunlink)
ht9.caption = "Note: The CMD windows that pop up, will clean your Rec Room files."
ht9.font.size = 12
ht9.font.color = 0x6BFF50
ht9.top = 20
end

-------------------------------------------------------------------------------------------------

--Watch Uis
watchuis = createLabel(SnytexsModMenu)
watchuis.caption = [[Watch UIs]]
watchuis.font.size = 12
watchuis.left = [[140]]
watchuis.top = [[60]]
watchuis.width = [[73]]
watchuis.height = [[21]]
watchuis.align = [[alNone]]
watchuis.enabled = [[true]]
watchuis.visible = [[true]]
watchuis.font.color = 0x6BFF50

--Funny Options
funnyoptions = createLabel(SnytexsModMenu)
funnyoptions.caption = [[Player Options]]
funnyoptions.font.size = 12
funnyoptions.left = [[125]]
funnyoptions.top = [[235]]
funnyoptions.width = [[53]]
funnyoptions.height = [[21]]
funnyoptions.align = [[alNone]]
funnyoptions.enabled = [[true]]
funnyoptions.visible = [[true]]
funnyoptions.font.color = 0x6BFF50

--Shirt Swapper
editor = createLabel(SnytexsModMenu)
editor.caption = [[Shirt Swapper]]
editor.font.size = 12
editor.left = [[128]]
editor.top = [[390]]
editor.width = [[73]]
editor.height = [[21]]
editor.align = [[alNone]]
editor.enabled = [[true]]
editor.visible = [[true]]
editor.font.color = 0x6BFF50

--Discord Link
discord = createLabel(SnytexsModMenu)
discord.caption = [[https://discord.gg/mMutruJwfk]]
discord.font.size = 16
discord.left = [[30]]
discord.top = [[499]]
discord.width = [[216]]
discord.height = [[21]]
discord.align = [[alNone]]
discord.enabled = [[true]]
discord.visible = [[true]]
discord.font.color = 0x6BFF50

--Page 2 Label
page2l = createLabel(SnytexsModMenu)
page2l.caption = [[Page 2]]
page2l.left = [[307]]
page2l.top = [[410]]
page2l.font.color = 0x6BFF50

--Split Label
Line = createLabel(SnytexsModMenu)
Line.caption = [[________________________________________________________________________________________]]
Line.Font.Color = clSilver
Line.Font.Size = [[10]]
Line.Left = [[0]]
Line.Top = [[40]]
Line.Alignment = taCenter

-------------------------------------------------------------------------------------------------

--Skip Orientation
skipor = createButton(SnytexsModMenu)
skipor.caption = [[Skip Orientation]]
skipor.left = [[20]]
skipor.top = [[85]]
skipor.width = [[136]]
skipor.height = [[60]]
skipor.align = [[alNone]]
skipor.enabled = [[true]]
skipor.visible = [[true]]
skipor.onClick = skiporw

--Store UI
storeui = createButton(SnytexsModMenu)
storeui.caption = [[Store UI]]
storeui.left = [[195]]
storeui.top = [[85]]
storeui.width = [[136]]
storeui.height = [[60]]
storeui.align = [[alNone]]
storeui.enabled = [[true]]
storeui.visible = [[true]]
storeui.onClick = storeuiw

--MakerPen UI
makerpenui = createButton(SnytexsModMenu)
makerpenui.caption = [[MakerPen UI]]
makerpenui.left = [[20]]
makerpenui.top = [[163]]
makerpenui.width = [[136]]
makerpenui.height = [[60]]
makerpenui.align = [[alNone]]
makerpenui.enabled = [[true]]
makerpenui.visible = [[true]]
makerpenui.onClick = makerpenuiw

--Customize UI
customizeui = createButton(SnytexsModMenu)
customizeui.caption = [[Customize UI]]
customizeui.left = [[195]]
customizeui.top = [[163]]
customizeui.width = [[136]]
customizeui.height = [[60]]
customizeui.align = [[alNone]]
customizeui.enabled = [[true]]
customizeui.visible = [[true]]
customizeui.onClick = customizeuiw

--Crash Fix
mp = createButton(SnytexsModMenu)
mp.caption = [[Crash Fix]]
mp.left = [[20]]
mp.top = [[267]]
mp.width = [[136]]
mp.height = [[60]]
mp.onClick = crashfixfunction

--Fly Button
fly = createButton(SnytexsModMenu)
fly.caption = [[Flight]]
fly.left = [[195]]
fly.top = [[267]]
fly.width = [[136]]
fly.height = [[60]]
fly.onClick = flyhack

--Submit Button
SubmitButton = createButton(SnytexsModMenu)
SubmitButton.Caption = "Submit"
SubmitButton.Left = 102
SubmitButton.Top = 450
SubmitButton.OnClick = submitfunction

--Reset Button
ResetButton = createButton(SnytexsModMenu)
ResetButton.Caption = "Reset"
ResetButton.Left = 178
ResetButton.Top = 450
ResetButton.OnClick = reset

--Input box
EditBox = createEdit(SnytexsModMenu)
EditBox.Left = 105
EditBox.Top = 425
EditBox.Width = 144

--Help Button
Help = createButton(SnytexsModMenu)
Help.caption = [[?]]
Help.left = [[40]]
Help.top = [[430]]
Help.width = [[30]]
Help.height = [[30]]
Help.onClick = QHelp

--Page 2 button
page2b = createButton(SnytexsModMenu)
page2b.caption = [[>]]
page2b.left = [[300]]
page2b.top = [[430]]
page2b.width = [[50]]
page2b.height = [[50]]
page2b.align = [[alNone]]
page2b.onClick = gotopage2
end
mainmenu()
-------------------------------------------------------------------------------------------------
