--Dev:> ṂṜẌ .. @memo_cool
do 

local function run(msg, matches) 
if matches[1] == 'دي' and is_momod(msg) then 
         if type(msg.reply_id) ~= "nil" then 
            local cbreply_extra = { 
               get_cmd = 'channel_block', 
               msg = msg 
            } 
            get_message(msg.reply_id, get_message_callback, cbreply_extra) 
         elseif matches[1] == 'de' and string.match(matches[2], '^%d+$') then 
            local   get_cmd = 'channel_block' 
            local   msg = msg 
            local user_id = matches[2] 
            channel_get_users (receiver, in_channel_cb, {get_cmd=get_cmd, receiver=receiver, msg=msg, user_id=user_id}) 
         elseif msg.text:match("@[%a%d]") then 
         local get_cmd = 'channel_block' 
         local msg = msg 
         local username = matches[2] 
         local username = string.gsub(matches[2], '@', '') 
         channel_get_users (receiver, in_channel_cb, {get_cmd=get_cmd, receiver=receiver, msg=msg, username=username}) 
end 
end 
end 

return { 
  patterns = { 
       "^(دي)$",
       "^[!/#]kick"
  }, 
  run = run, 
} 

end 
--By @JALAL_ALDON