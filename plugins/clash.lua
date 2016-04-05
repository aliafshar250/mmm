local apikey = 
'Enter Your Clash API here' 
local function run(msg, matches)
 if matches[1]:lower() == 'کلن' or matches[1]:lower() == 'کلش' or matches[1]:lower() == 'تگ کلن' or matches[1]:lower() == 'تگ' then
  local clantag = matches[2]
  if string.match(matches[2], '^#.+$') then
     clantag = string.gsub(matches[2], '#', '')
  end
  clantag = string.upper(clantag)
  local curl = 'curl -X GET --header "Accept: application/json" --header "authorization: Bearer '..apikey..'" "https://api.clashofclans.com/v1/clans/%23'..clantag..'"'
  cmd = io.popen(curl)
  
  local result = cmd:read('*all')
  local jdat = json:decode(result)
if jdat.reason then
      if jdat.reason == 'accessDenied' then return 'برای ثبت API Key خود به سایت زیر بروید\ndeveloper.clashofclans.com' end
   return '#Error\n'..jdat.reason
  end
  local text = 'تگ: '.. jdat.tag
     text = text..'\nاسم کلن: '.. jdat.name
     text = text..'\nتوضیحات: '.. jdat.description
     text = text..'\nدروازه: '.. jdat.type
     text = text..'\nوضعیت وار زدن: '.. jdat.warFrequency
     text = text..'\nلول: '.. jdat.clanLevel
     text = text..'\nوار: '.. jdat.warWins
     text = text..'\nکاپ: '.. jdat.clanPoints
     text = text..'\nحداقل کاپ برای وارد شدن: '.. jdat.requiredTrophies
     text = text..'\nاعضا: '.. jdat.members
     cmd:close()
  return text
 end
 if matches[1]:lower() == 'اعضا' or matches[1]:lower() == 'اعضای کلش' or matches[1]:lower() == 'اعضای کلن' then
  local members = matches[2]
  if string.match(matches[2], '^#.+$') then
     members = string.gsub(matches[2], '#', '')
  end
  members = string.upper(members)
  local curl = 'curl -X GET --header "Accept: application/json" --header "authorization: Bearer '..apikey..'" "https://api.clashofclans.com/v1/clans/%23'..members..'/members"'
  cmd = io.popen(curl)
  local result = cmd:read('*all')
  local jdat = json:decode(result)
  if jdat.reason then
      if jdat.reason == 'accessDenied' then return 'برای ثبت API Key خود به سایت زیر بروید\ndeveloper.clashofclans.com' end
   return '#Error\n'..jdat.reason
  end
  local leader = ""
  local coleader = ""
  local items = jdat.items
  leader = 'اعضای کلن همراه با مدیران: \n'
   for i = 1, #items do
   if items[i].role == "لیدر" then
   leader = leader.."\nلیدر: "..items[i].name.."\nلول: "..items[i].expLevel
   end
   if items[i].role == "کولیدر" then
   coleader = coleader.."\nکولیدر: "..items[i].name.."\nلول: "..items[i].expLevel
   end
  end
text = leader.."\n"..coleader.."\n\nاعضای کلن:"
  for i = 1, #items do
  text = text..'\n'..i..'- '..items[i].name..'\nلول: '..items[i].expLevel.."\n"
  end
   cmd:close()
  return text
 end
end

return {
   patterns = {
"^(کلش) (.*)$",
"^(کلن) (.*)$",
"^(تگ کلن) (.*)$",
"^(تگ) (.*)$",
"^(اعضای کلش) (.*)$",
"^(اعضای کلن) (.*)$",
"^(اعضا) (.*)$",
   },
   run = run
}
