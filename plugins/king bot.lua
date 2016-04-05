do

function run(msg, matches)
  if matches[1]:lower() == 'king bot' then -- Put everything you like :)
    send_document(get_receiver(msg), "./data/king bot.webp", ok_cb, false)
    return 'sticker$$photos'
  end
end
return {
  patterns = {
    "^king bot$"
  }, 
  run = run 
}

end
--Made a folder names files
--upload a picture with webp format
--change file name to sticker.webp
--enjoy
--special thank to mehr pouya and gamer team
