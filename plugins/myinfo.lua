do
function run(msg, matches)
  return "شناسه گروه 🌟 "..msg.from.id.."\nنام گروه 🌟 "..msg.to.title.."\nنام شما 🌟 "..(msg.from.first_name or '').."\nنام اول 🌟 "..(msg.from.first_name or '').."\nنام آخر 🌟 "..(msg.from.last_name or '').."\nآیدی 🌟 "..msg.from.id.."\n#یوزرنیم 🌟 @"..(msg.from.username or '').."\nشماره تلفن 🌟+"..(msg.from.phone or '')
end
return {
  description = "", 
  usage = "",
  patterns = {
    "^(اطلاعات)$",
  },
  run = run
}
end
