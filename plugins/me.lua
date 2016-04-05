do

local function run(msg, matches)
  if matches[1]:lower() == 'me' or "wai" then
    if is_sudo(msg) then
    send_document(get_receiver(msg), "./data/sudo.webp", ok_cb, false)
      return "Your : SuDo"
    elseif is_admin(msg) then
    send_document(get_receiver(msg), "./data/admins.webp", ok_cb, false)
      return "Your : Admins"
    elseif is_owner(msg) then
    send_document(get_receiver(msg), "./data/owner.webp", ok_cb, false)
      return "Your : Owner"
    elseif is_momod(msg) then
    send_document(get_receiver(msg), "./data/mods.webp", ok_cb, false)
      return "Your : Mods"
    else
      send_document(get_receiver(msg), "./data/member.webp", ok_cb, false)
      return "You : member"
  end
end
end

return {
  patterns = {
    "^[!/]([Mm]e)$",
    "^([Mm]e)$",
    "^([Ww]ai)$",
    },
  run = run
}
end




--  -_-_-_-_-_-_-_-_-_-   ||-_-_-_-_-_   ||             ||-_-_-_-_-_
--           ||           ||             ||             ||
--           ||           ||             ||             ||
--           ||           ||             ||             ||
--           ||           ||-_-_-_-_-_   ||             ||-_-_-_-_-_
--           ||           ||             ||             ||
--           ||           ||             ||             ||
--           ||           ||             ||             ||
--           ||           ||-_-_-_-_-_   ||-_-_-_-_-_   ||-_-_-_-_-_
--
--
--                               /\                              /\             /-_-_-_-_-_    ||-_-_-_-_-_   ||-_-_-_-_-_
--  ||\\            //||        //\\        ||      //||        //\\           //              ||             ||         //
--  || \\          // ||       //  \\       ||     // ||       //  \\         //               ||             ||       //
--  ||  \\        //  ||      //    \\      ||    //  ||      //    \\       ||                ||             ||    //
--  ||   \\      //   ||     //______\\     ||   //   ||     //______\\      ||      -_-_-_-   ||-_-_-_-_-_   || //
--  ||    \\    //    ||    //        \\    ||  //    ||    //        \\     ||           ||   ||             ||  \\ 
--  ||     \\  //     ||   //          \\   || //     ||   //          \\     \\          ||   ||             ||     \\
--  ||      \\//      ||  //            \\  ||//      ||  //            \\     \\-_-_-_-_-||   ||-_-_-_-_-_   ||        \\
--
--
--  ||-_-_-_-    ||           ||           ||               //-_-_-_-_-_-
--  ||     ||    ||           ||           ||              //
--  ||_-_-_||    ||           ||           ||             //
--  ||           ||           ||           ||             \\
--  ||           ||           \\           //              \\
--  ||           ||            \\         //               //
--  ||           ||-_-_-_-_     \\-_-_-_-//    -_-_-_-_-_-//
--
--By @ali_ghoghnoos
--@telemanager_ch
