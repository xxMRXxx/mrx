--Dev:> ṂṜẌ .. @memo_cool

do

local function run(msg, matches)
if is_momod(msg) and matches[1]== "m2" then
return [[
اوامر المجوعة العامة ☠
ـَـَــَـَـَــَـَـَــَـَـَــَـَـَــَـَـَــَـَـَــَـَـَــَـَـَــَـَـَــَـَـَــَـَـَــَ

ضع اسم + الاسم 💥
ضع صورة 💥
ضع قوانين 💥
ضع وصف 💥
ضع معرف 💥
ضع الرابط 💥
ضع التكرار [5-20]💥
*******************
مسح+ (القوانين+الوصف+الادمنية….  )💥
القوانين_لعوض القوانين 💥
معلوماتي_معلوماتك 💥
موقعي _ موقعك 💥
اشارة للكل + كلمة_لعمل تاك للكل 💥
اعدادات الوسائط _ 💥
اعدادات المجموعة _💥

****************
اي شي تحتاجة راسل المطورين 
--Dev:> ṂṜẌ .. @memo_cool
--Dev:> @K_R_A_l_J


]]
end

if not is_momod(msg) then
return "Only managers 😐⛔️"
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"(m2)"
},
run = run 
}
end

--Dev:> ṂṜẌ .. @memo_cool