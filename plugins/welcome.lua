do
    
local function axis(msg,matches)
    if matches[1] == "chat_add_user"  then 
local text = 'اهلا 😊👋 بك يالمعة عيني في المجموعة 👥🔕'..'\n'..'\n'
     ..'المعلومات 📜 الخاصة بك حياتي 👇 ❤️'..'\n'
    ..'🖋 اسمك حياتي هو :  '..msg.action.user.print_name..'\n'
    ..'💳 معرفك حياتي هو : @'..(msg.action.user.username or "لا يوجد")..'\n'
    ..'📡 الايدي : '..msg.action.user.id..'\n'
    ..'☎️رقم الهاتف : '..(msg.action.user.phone or "لا يوجد")..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'🖊 اسم المجموعة حياتي هو : '..msg.to.title..'\n'
    ..'🗂 ايدي المجموعة حبي : '..msg.to.id..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'💮 ضافك : '..msg.from.print_name..'\n'
    ..'⚡️ معرفة : @'..(msg.from.username or "لا يوجد")..'\n'
    ..' ايدية ⚡️ : '..msg.from.id..'\n'
    ..'☎️ رقم هاتفةة يالمعة عيني : '..(msg.from.phone or "لا يوجد")..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'📅 التاريخ : '..os.date('!%A, %B %d, %Y*\n', timestamp)
    ..'🕚 الوقت : '..os.date(' %T*', os.time())..'\n'  
     ..'➖➖➖➖➖ـ'..'\n'
     return reply_msg(msg.id, text, ok_cb, false)
     end
    if matches[1] == "chat_add_user"  then 
local text = 'اهلا 😊👋 بك يالمعة عيني في المجموعة 👥🔕'..'\n'..'\n'
    ..'المعلومات 📜 الخاصة بك حياتي 👇 ❤️'..'\n'
    ..'🖋 اسمك حياتي هو :  '..msg.action.user.print_name..'\n'
    ..'💳 معرفك حياتي هو : @'..(msg.action.user.username or "لا يوجد")..'\n'
    ..'📡 الايدي : '..msg.action.user.id..'\n'
    ..'☎️رقم الهاتف : '..(msg.action.user.phone or "لا يوجد")..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'🖊 اسم المجموعة حياتي هو : '..msg.to.title..'\n'
    ..'🗂 ايدي المجموعة حبي : '..msg.to.id..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'💮 ضافك : '..msg.from.print_name..'\n'
    ..'⚡️ معرفة : @'..(msg.from.username or "لا يوجد")..'\n'
    ..' ايدية ⚡️ : '..msg.from.id..'\n'
    ..'☎️ رقم هاتفةة يالمعة عيني : '..(msg.from.phone or "لا يوجد")..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'📅 التاريخ : '..os.date('!%A, %B %d, %Y*\n', timestamp)
    ..'🕚 الوقت : '..os.date(' %T*', os.time())..'\n'  
     ..'➖➖➖➖➖ـ'..'\n'
   
        return reply_msg(msg.id, text, ok_cb, false)
  end
end
return {
    patterns = {
        "^!!tgservice (chat_add_user)$",
        "^!!tgservice (chat_add_user_link)$",
    },
 run = axis
}
end

