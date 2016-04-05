local function run(msg, matches,success)
local about = matches[2]
local chat = 'channel#id'..msg.to.id
        if msg.to.type == 'channel' and matches[1] == 'توضیحات' then
        local about = matches[2]
        channel_set_about(chat, about, ok_cb, false)
        return '♠توضیحات با موفقیت ثبت شد♠'
    end
end
  return {
    patterns = {
      "^(توضیحات) (.+)$",
    }, 
    run = run 
  }
