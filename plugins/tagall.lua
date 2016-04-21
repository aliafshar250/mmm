--Tag ppl with username and a msg after it
local function tagall(cb_extra, success, result)
  local receiver = cb_extra.receiver
  local channel_id = "channel#id"..result.id
 local text = ''
   local i = 0 + 1
 for k,v in pairs(result.members) do
   if v.username then
 text = text..i.."- @"..v.username.."\n"
      end
end
text = text.."\n"..cb_extra.msg_text
send_large_msg(receiver, text)
end 
local function run(msg, matches)
    local receiver = get_receiver(msg)
if not is_owner(msg) then 
return "For owner only !"
end 
if matches[1] then
 channel_info(receiver, tagall, {receiver = receiver,msg_text = matches[1]})
     end
     return
end 
return {

  description = "Will tag all ppl with a msg.",
usage = {
    "/tagall [msg]."
  },
  patterns = {
    "^[!/]tagall +(.+)$"
  },
  run = run
}
