local md = require("markdown")

-- get file path from command line
local file = arg[1]

if file == nil then
  print("Usage: lua main.lua <file>")
  os.exit(1)
end

-- read file content
local reader = io.open(file, 'r')
if reader == nil then
  print("File not found")
  os.exit(1)
end

local content = reader:read("*all")

local html = md(content)

-- ext to html
local wf = io.open(file .. ".html", 'w')
if wf == nil then
  print("Can't write to file")
  os.exit(1)
end

-- write html content to file
wf:write(html)

print("File converted to HTML")

