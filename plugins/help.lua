do

function run(msg, matches)

local member = [[
 
راهنمای ممبر ها:
 
 !calc [formula]
 
 !get [Value]
 
 info

!info

اپارات ادرس سایت فیلم

اذان شهر مورد نظر

google [متن]

بگو  سلام
 
 ای دی
 
 voc [MSG]
 
 !time [Area]

زمان  شهر مورد نظر شما
 
 !tex [Msg]

تبدیل متن انگلیسی
 
 !feedback [msg]

ارسال نظر 
 
king bot

 ]]
 
 if msg.to.type == 'chat' and matches[1]:lower() == 'help' and matches[2] == nil then 
     
    if is_sudo(msg) then 
        return sudo
    elseif is_admin(msg) then 
        return admin 
    elseif is_owner(msg) then 
        return owner
    elseif is_momod(msg) then 
         return mods
    else 
        return member
        end
end
 if msg.to.type == 'chat' and matches[1]:lower() == 'راهنما' and matches[2]:lower() == 'owner' then 
     if is_owner(msg) then 
         return owner
    else return 'Only Admins or higher can See this !'
    end 
end

 if msg.to.type == 'chat' and matches[1]:lower() == 'راهنما' and matches[2]:lower() == 'mod' then
     if is_momod(msg) then 
         return mods
    else return 'only Owners Or higher Can See this !'
    end 
end 

 if msg.to.type == 'chat' and matches[1]:lower() == 'راهنما' and matches[2]:lower() == 'ممبر' then
         return member
    end 
end

    
return {
 
  patterns = {
    "^!(help)$",
	"^(راهنما)$",
	"^(راهنما)$",
	
	"^(راهنما) (ممبر)$",
  }, 
  run = run 
}

end
