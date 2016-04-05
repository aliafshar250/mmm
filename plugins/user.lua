local function run(msg, matches ) 
  if matches[1] == "یوزر" then
    return "telegram.me/"..msg.from.username
  end
end

return {
  patterns ={
    "^(یوزر)$" 
 }, 
  run = run 
}
