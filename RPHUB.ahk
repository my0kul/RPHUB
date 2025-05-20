version := 1.49
SetWorkingDir %A_ScriptDir%
IfnotExist, %A_ScriptDir%\assets
{
FileCreateDir, %A_ScriptDir%\assets
}
IniRead, v, assets/Settings.ini, USER, v
if v != %version%
{
DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/update.ahk", "update.ahk")
DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/assets/help.png", "assets\help.png")
DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/assets/help2.png", "assets\help2.png")
DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/assets/help3.png", "assets\help3.png")
DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/assets/help4.png", "assets\help4.png")
DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/assets/help5.png", "assets\help5.png")
DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/assets/help6.png", "assets\help6.png")
DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/assets/ourfamily.png", "assets\ourfamily.png")
DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/assets/tencode.png", "assets\tenocode.png")
DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/assets/cidhelp.png", "assets\cidhelp.png")
DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/assets/logo.png", "assets\logo.png")
IniWrite, %version%, assets/Settings.ini, USER, v
}

IfnotExist, %A_ScriptDir%\update.ahk
	DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/update.ahk", "update.ahk")

IfnotExist, %A_ScriptDir%\assets\help.png
	DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/assets/help.png", "assets\help.png")

IfnotExist, %A_ScriptDir%\assets\help2.png
	DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/assets/help2.png", "assets\help2.png")

IfnotExist, %A_ScriptDir%\assets\help3.png
	DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/assets/help.png", "assets\help3.png")

IfnotExist, %A_ScriptDir%\assets\help4.png
	DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/assets/help.png", "assets\help4.png")

IfnotExist, %A_ScriptDir%\assets\help5.png
	DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/assets/help.png", "assets\help5.png")

IfnotExist, %A_ScriptDir%\assets\help6.png
	DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/assets/help.png", "assets\help6.png")

IfnotExist, %A_ScriptDir%\assets\ourfamily.png
	DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/assets/ourfamily.png", "assets\ourfamily.png")

IfnotExist, %A_ScriptDir%\assets\tencode.png
	DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/assets/tencode.png", "assets\tenocode.png")

IfnotExist, %A_ScriptDir%\assets\cidhelp.png
	DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/assets/cidhelp.png", "assets\cidhelp.png")

IfnotExist, %A_ScriptDir%\assets\logo.png
	DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/refs/heads/main/assets/logo.png", "assets\logo.png")


DownloadFile(Url, FilePath)
{
    static WinHttp := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    WinHttp.Open("GET", Url, false) ; Синхронный запрос
    WinHttp.SetRequestHeader("User-Agent", "AutoHotkey v1")
    WinHttp.Send()
    
    ; Сохраняем статус в переменную
    Status := WinHttp.Status
    
    ; Удаляем старый файл, если он существует
    FileDelete, %FilePath%
    
    ; Создаём поток для записи файла
    oStream := ComObjCreate("ADODB.Stream")
    oStream.Type := 1 ; adTypeBinary
    oStream.Open()
    oStream.Write(WinHttp.ResponseBody)
    oStream.SaveToFile(FilePath, 2) ; adSaveCreateOverWrite
}

IniRead, frac, assets/Settings.ini, USER, frac, Фракция
IniRead, otdel, assets/Settings.ini, USER, otdel, Отдел
IniRead, rank, assets/Settings.ini, USER, rank, Ранг
IniRead, place, assets/Settings.ini, USER, place, поясе
IniRead, type, assets/Settings.ini, USER, type, бейджик
IniRead, resolution, assets/Settings.ini, USER, resolution, 0

;Кнопки

IniRead, Key1, assets/Settings.ini, USER, Key1, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey1, off, UseErrorLevel
Hotkey, % PrKey1 := Key1, Key1, on, UseErrorLevel
IniWrite, %Key1%, %A_ScriptDir%\ assets\Settings.ini, Hotkey, Key1

IniRead, Key2, assets/Settings.ini, USER, Key2, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey2, off, UseErrorLevel
Hotkey, % PrKey2 := Key2, Key2, on, UseErrorLevel
IniWrite, %Key2%, %A_ScriptDir%\ assets\Settings.ini, Hotkey, Key2

IniRead, Key3, assets/Settings.ini, USER, Key3, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey3, off, UseErrorLevel
Hotkey, % PrKey3 := Key3, Key3, on, UseErrorLevel
IniWrite, %Key3%, %A_ScriptDir%\ assets\Settings.ini, Hotkey, Key3

IniRead, Key4, assets/Settings.ini, USER, Key4, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey4, off, UseErrorLevel
Hotkey, % PrKey4 := Key4, Key4, on, UseErrorLevel
IniWrite, %Key4%, %A_ScriptDir%\ assets\Settings.ini, Hotkey, Key4

IniRead, Key5, assets/Settings.ini, USER, Key5, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey5, off, UseErrorLevel
Hotkey, % PrKey5 := Key5, Key5, on, UseErrorLevel
IniWrite, %Key5%, %A_ScriptDir%\ assets\Settings.ini, Hotkey, Key5

IniRead, Key6, assets/Settings.ini, USER, Key6, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey6, off, UseErrorLevel
Hotkey, % PrKey6 := Key6, Key6, on, UseErrorLevel
IniWrite, %Key6%, %A_ScriptDir%\ assets\Settings.ini, Hotkey, Key6

IniRead, Key7, assets/Settings.ini, USER, Key7, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey7, off, UseErrorLevel
Hotkey, % PrKey7 := Key7, Key7, on, UseErrorLevel
IniWrite, %Key7%, %A_ScriptDir%\ assets\Settings.ini, Hotkey, Key7

IniRead, Key8, assets/Settings.ini, USER, Key8, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey8, off, UseErrorLevel
Hotkey, % PrKey8 := Key8, Key8, on, UseErrorLevel
IniWrite, %Key8%, %A_ScriptDir%\ assets\Settings.ini, Hotkey, Key8

IniRead, Key9, assets/Settings.ini, USER, Key9, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey9, off, UseErrorLevel
Hotkey, % PrKey9 := Key9, Key9, on, UseErrorLevel
IniWrite, %Key9%, %A_ScriptDir%\ assets\Settings.ini, Hotkey, Key9

IniRead, Key10, assets/Settings.ini, USER, Key10, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey10, off, UseErrorLevel
Hotkey, % PrKey10 := Key10, Key10, on, UseErrorLevel
IniWrite, %Key10%, %A_ScriptDir%\ assets\Settings.ini, Hotkey, Key10

IniRead, Key11, assets/Settings.ini, USER, Key11, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey11, off, UseErrorLevel
Hotkey, % PrKey11 := Key11, Key11, on, UseErrorLevel
IniWrite, %Key11%, %A_ScriptDir%\ assets\Settings.ini, Hotkey, Key11

IniRead, Key12, assets/Settings.ini, USER, Key12, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey12, off, UseErrorLevel
Hotkey, % PrKey12 := Key12, Key12, on, UseErrorLevel
IniWrite, %Key12%, %A_ScriptDir%\ assets\Settings.ini, Hotkey, Key12

IniRead, Key13, assets/Settings.ini, USER, Key13, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey13, off, UseErrorLevel
Hotkey, % PrKey13 := Key13, Key13, on, UseErrorLevel
IniWrite, %Key13%, %A_ScriptDir%\ assets\Settings.ini, Hotkey, Key13

IniRead, Key14, assets/Settings.ini, USER, Key14, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey14, off, UseErrorLevel
Hotkey, % PrKey14 := Key14, Key14, on, UseErrorLevel
IniWrite, %Key14%, %A_ScriptDir%\ assets\Settings.ini, Hotkey, Key14

IniRead, Key15, assets/Settings.ini, USER, Key15, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey15, off, UseErrorLevel
Hotkey, % PrKey15 := Key15, Key15, on, UseErrorLevel
IniWrite, %Key15%, %A_ScriptDir%\ assets\Settings.ini, Hotkey, Key15

IniRead, Key16, assets/Settings.ini, USER, Key16, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey16, off, UseErrorLevel
Hotkey, % PrKey16 := Key16, Key16, on, UseErrorLevel
IniWrite, %Key16%, %A_ScriptDir%\ assets\Settings.ini, Hotkey, Key16

IniRead, Key17, assets/Settings.ini, USER, Key17, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey17, off, UseErrorLevel
Hotkey, % PrKey17 := Key17, Key17, on, UseErrorLevel
IniWrite, %Key17%, %A_ScriptDir%\ assets\Settings.ini, Hotkey, Key17

IniRead, Key18, assets/Settings.ini, USER, Key18, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey18, off, UseErrorLevel
Hotkey, % PrKey18 := Key18, Key18, on, UseErrorLevel
IniWrite, %Key18%, %A_ScriptDir%\ assets\Settings.ini, Hotkey, Key18

IniRead, Key19, assets/Settings.ini, USER, Key19, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey19, off, UseErrorLevel
Hotkey, % PrKey19 := Key19, Key19, on, UseErrorLevel
IniWrite, %Key19%, %A_ScriptDir%\ assets\Settings.ini, Hotkey, Key19

IniRead, Key20, assets/Settings.ini, USER, Key20, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey20, off, UseErrorLevel
Hotkey, % PrKey20 := Key20, Key20, on, UseErrorLevel
IniWrite, %Key20%, %A_ScriptDir%\ assets\Settings.ini, Hotkey, Key20

IniRead, Key21, assets/Settings.ini, USER, Key21, % A_Space
Gui, Submit, NoHide
Hotkey, % PrKey21, off, UseErrorLevel
Hotkey, % PrKey21 := Key21, Key21, on, UseErrorLevel
IniWrite, %Key21%, %A_ScriptDir%\ assets\Settings.ini, Hotkey, Key21

;======================================================================================================================Основное GUI
Gui, Color, 191919
Gui, Font, S20 CWhite, Calibri
Gui, Add, Text, x20 y20 w820 h40 +BackgroundTrans, Бинды
Gui, Add, Picture, x885 y-5 w170 h170 +BackgroundTrans, assets\logo.png
Gui, Add, Picture, x480 y-65 w359 h566 gDiscord, assets\ourfamily.png
Gui, Font, S10 CWhite, Calibri
Gui, Add, Text, x902 y445 w250 h30 +BackgroundTrans, by #110378 | San Diego
Gui, Font, S15 CWhite, Calibri

Gui, Add, Text, x130 y62 w500 h30 +BackgroundTrans, Бейджик
Gui, Add, Text, x130 y102 w240 h30 +BackgroundTrans, Общая
Gui, Add, Text, x130 y142 w240 h30 +BackgroundTrans, Угонки
Gui, Add, Text, x130 y182 w330 h30 +BackgroundTrans, Установка личности
Gui, Add, Text, x130 y222 w330 h30 +BackgroundTrans, Команды и Тен-Коды
Gui, Add, Text, x130 y262 w330 h30 +BackgroundTrans, Задержание Госника
Gui, Add, Text, x130 y302 w330 h30 +BackgroundTrans, CID/DB
Gui, Add, Text, x130 y342 w330 h30 +BackgroundTrans, Похищения
Gui, Add, Text, x130 y382 w330 h30 +BackgroundTrans, Адвокаты
;=Gui, Add, Text, x130 y422 w330 h30 +BackgroundTrans, .

Gui, Add, Text, x380 y62 w500 h30 +BackgroundTrans,  CODE-7
;=Gui, Add, Text, x580 y122 w240 h30 +BackgroundTrans, .
;=Gui, Add, Text, x580 y162 w240 h30 +BackgroundTrans, .
;=Gui, Add, Text, x580 y202 w330 h30 +BackgroundTrans, .
;=Gui, Add, Text, x580 y242 w330 h30 +BackgroundTrans, .
;=Gui, Add, Text, x580 y282 w330 h30 +BackgroundTrans, .
;=Gui, Add, Text, x580 y322 w330 h30 +BackgroundTrans, .
;=Gui, Add, Text, x580 y362 w330 h30 +BackgroundTrans, .
;=Gui, Add, Text, x580 y402 w330 h30 +BackgroundTrans, .
;=Gui, Add, Text, x580 y442 w330 h30 +BackgroundTrans, .

Gui, Font, S13 CBlack, Calibri

Gui, Add, Button, x902 y149 w150 h30 gWIKI, WIKI
Gui, Add, Button, x902 y189 w150 h30 gSettings, Настройки
Gui, Add, Button, x902 y229 w150 h30 gLawsuit, Генератор исков
Gui, Add, Button, x22 y430 w150 h30 gSave, Сохранить
Gui, Add, Button, x902 y409 w150 h30 gUpdate, Последняя версия

;==== Бейджик ==== 
Gui, Add, Hotkey, x22 y60 w95 h30 vKey1, %Key1%
;==== Памятка общая ==== 
Gui, Add, Hotkey, x22 y100 w95 h30 vKey2, %Key2%
;==== Памятка угонки ==== 
Gui, Add, Hotkey, x22 y140 w95 h30 vKey3, %Key3%
;==== Памятка установки личности ==== 
Gui, Add, Hotkey, x22 y180 w95 h30 vKey4, %Key4%
;==== ТЕН-КОДЫ ==== 
Gui, Add, Hotkey, x22 y220 w95 h30 vKey5, %Key5%

Gui, Add, Hotkey, x22 y260 w95 h30 vKey6, %Key6%
Gui, Add, Hotkey, x22 y300 w95 h30 vKey7, %Key7%

Gui, Add, Hotkey, x22 y340 w95 h30 vKey8, %Key8%
Gui, Add, Hotkey, x22 y380 w95 h30 vKey9, %Key9%
;=Gui, Add, Hotkey, x22 y440 w95 h30 vKey10, %Key10%

Gui, Add, Hotkey, x272 y60 w95 h30 vKey11, %Key11%
;=Gui, Add, Hotkey, x472 y120 w95 h30 vKey12, %Key12%
;=Gui, Add, Hotkey, x472 y160 w95 h30 vKey13, %Key13%
;=Gui, Add, Hotkey, x472 y200 w95 h30 vKey14, %Key14%
;=Gui, Add, Hotkey, x472 y240 w95 h30 vKey15, %Key15%
;=Gui, Add, Hotkey, x472 y280 w95 h30 vKey16, %Key16%
;=Gui, Add, Hotkey, x472 y320 w95 h30 vKey17, %Key17%
;=Gui, Add, Hotkey, x472 y360 w95 h30 vKey18, %Key18%
;=Gui, Add, Hotkey, x472 y400 w95 h30 vKey19, %Key19%
;=Gui, Add, Hotkey, x472 y440 w95 h30 vKey20, %Key20%

Gui, Show, w1080 h489, RPHUB %version%

Gui, Настройки: -MaximizeBox
Gui, Настройки: -SysMenu
Gui, Настройки: Font, S10 CWhite, Calibri
Gui, Настройки: Color, c4c4c4
Gui, Настройки: Font, c0x000000
Gui, Настройки: Add, Text, x2 y10 w70 h18 +0x200 +0x1, Фракция:
Gui, Настройки: Add, Edit, x65 y10 w50 h21 vfrac, %frac%
Gui, Настройки: Add, Text, x120 y10 w50 h18 +0x200 +0x1, Отдел:
Gui, Настройки: Add, Edit, x165 y10 w50 h21 votdel, %otdel%
Gui, Настройки: Add, Text, x230 y10 w50 h18 +0x200 +0x1, Ранг:
Gui, Настройки: Add, Edit, x275 y10 w40 h21 vrank, %rank%
Gui, Настройки: Add, Text, x2 y36 w70 h18 +0x200 +0x1, Ваш пол:
Gui, Настройки: Add, Radio, x70 y33 w80 h23 Group vRadio1 Checked%Radio1%, Мужчина
Gui, Настройки: Add, Radio, x150 y33 w80 h23 vRadio2 Checked%Radio2%, Женщина
Gui, Настройки: Add, Checkbox, x240 y33 w100 h23 gHighResolution Checked%resolution%, 4К Монитор
Gui, Настройки: Add, Button, x12 y56 w70 h20 gSave, Сохранить
Gui, Настройки: submit


i_name = 
i_what = 
i_gos = 
i_frac = 
i_jeton = 
i_ds = -
i_phone = -
i_pass = -
i_proof = -
prosecutor = 0

Gui, ГенераторИсков: -MaximizeBox
Gui, ГенераторИсков: Font, S10 CWhite, Calibri
Gui, ГенераторИсков: Color, c4c4c4
Gui, ГенераторИсков: Font, c0x000000
Gui, ГенераторИсков: Add, Text, x2 y10 w140 h18 +0x200 +0x1, Ваше Имя Фамилия:
Gui, ГенераторИсков: Add, Edit, x135 y10 w120 h21 vi_name, %i_name%

Gui, ГенераторИсков: Add, Text, x2 y35 w140 h18 +0x200 +0x1, Описание ситуации:
Gui, ГенераторИсков: Add, Edit, x15 y55 w270 h205 vi_what, %i_what%

Gui, ГенераторИсков: Add, Text, x295 y10 w160 h18 +0x200 +0x1, Имя Фамилия на кого иск:
Gui, ГенераторИсков: Add, Edit, x455 y10 w120 h21 vi_gos, %i_gos%

Gui, ГенераторИсков: Add, Text, x295 y35 w160 h18 +0x200 +0x1, Жетон (если есть):
Gui, ГенераторИсков: Add, Edit, x455 y35 w120 h21 vi_jeton, %i_jeton%

Gui, ГенераторИсков: Add, Text, x295 y65 w160 h18 +0x200 +0x1, Его фракция:
Gui, ГенераторИсков: Add, Edit, x455 y65 w120 h21 vi_frac, %i_frac%

Gui, ГенераторИсков: Add, Text, x295 y95 w160 h18 +0x200 +0x1, Ваш ДС:
Gui, ГенераторИсков: Add, Edit, x455 y95 w120 h21 vi_ds, %i_ds%

Gui, ГенераторИсков: Add, Text, x295 y125 w160 h18 +0x200 +0x1, Ваш Телефон:
Gui, ГенераторИсков: Add, Edit, x455 y125 w120 h21 vi_phone, %i_phone%

Gui, ГенераторИсков: Add, Text, x295 y155 w160 h18 +0x200 +0x1, Паспорт (imgur):
Gui, ГенераторИсков: Add, Edit, x455 y155 w120 h21 vi_pass, %i_pass%

Gui, ГенераторИсков: Add, Text, x295 y200 w160 h18 +0x200 +0x1, Док-ва (imgur/youtube):
Gui, ГенераторИсков: Add, Edit, x455 y200 w120 h21 vi_proof, %i_proof%

Gui, ГенераторИсков: Add, Button, x455 y225 w140 h20 gCopy, Скопировать результат

Gui, ГенераторИсков: Add, Button, x295 y225 w140 h20 gForumSud, Окружной суд
Gui, ГенераторИсков: Add, Button, x295 y250 w140 h20 gForumProc, Прокуратура
Gui, ГенераторИсков: Add, Checkbox, x455 y250 w170 h23 vprosecutor Checked%prosecutor%, Шаблон прокуратура
Gui, ГенераторИсков: submit
return

;======================================================================================================================Кнопки

GuiClose:
ExitApp

settings:
Gui, Настройки: Show, w365 h80, Настройки
return

Update:
Run,%A_ScriptDir%\update.ahk
IfWinExist, RPHUB %version%
    WinClose
return

Discord:
Run, https://discord.gg/2t8twWgfZJ
Run, https://www.youtube.com/@myokulx
return

WIKI:
Run, https://maximealexeev.gitbook.io/rphub
return

ForumSud:
Run, https://forum.majestic-rp.ru/forums/okruzhnoj-sud.557/
return

ForumProc:
Run, https://forum.majestic-rp.ru/forums/prokuratura.631/
return

Lawsuit:
Gui, ГенераторИсков: Show, w615 h275, Генератор исков
return

Copy:
Gui, submit, NoHide
TimeString := A_NowUTC
TimeString += 3, h
FormatTime, TimeString,, Shortdate
if prosecutor = 0
{
clipboard = ЛИЧНЫЕ ДАННЫЕ`nИстец:`nИмя Фамилия: %i_name%`nid карта, номер и ксерокопия: [URL='%i_pass%']паспорт[/URL]`nНомер телефона: %i_phone%`nСпец. связь: %i_ds%`n`nОтветчик №1:`nИмя фамилия: %i_gos%`nID карта либо служебное удостоверение или опознавательный знак, номер: %i_jeton%`nМесто работы и должность: %i_frac%`n`nИСКОВОЕ ЗАЯВЛЕНИЕ`n`nЯ Гражданин/Гражданка штата Сан-Андреас подаю исковое заявление в Окружной суд, объясняя всю ситуацию`n%i_what%`n`nДОКАЗАТЕЛЬНАЯ БАЗА`n[URL='%i_proof%']доказательства[/URL]`n`nПРАВОВАЯ ПОЗИЦИЯ, ПРОСЬБЫ К СУДУ`n1. Выплатить мне, истцу %i_name%, моральную компенсацию в размере 100.000$.`n2. Привлечь к ответственности %i_gos% c номером жетона %i_jeton% согласно законодательству штата.`n`nДАТА: %TimeString%`nПодпись: %i_name%
}
else
{
clipboard = Заявление в прокуратуру №0000`n`nЯ, гражданин штата San-Andreas %i_name%, подаю заявление в прокуратуру на сотрудника %i_frac% %i_gos% с номером жетона %i_jeton%.`n`nК заявлению в прокуратуру прилагаю:`n`n1. Копия паспорта: [URL='%i_pass%']паспорт[/URL]`n2. Контактные данные: номер телефона: %i_phone%, почта: %i_ds%`n3. Подробное описание правонарушения: %i_what%`n4. Доказательства, подтверждающие правонарушение: [URL='%i_proof%']доказательства[/URL]`n5. Дата и время подачи заявления: %TimeString%`n6.Подпись: %i_name%
}


return

HighResolution:
IniRead, resolution, assets/Settings.ini, USER, resolution
resolution := !resolution
IniWrite, %resolution%, assets/Settings.ini, USER, resolution
return

Save:
Gui, submit, NoHide
IniWrite, %frac%, assets/Settings.ini, USER, frac
IniWrite, %type%, assets/Settings.ini, USER, type
IniWrite, %place%, assets/Settings.ini, USER, place
IniWrite, %otdel%, assets/Settings.ini, USER, otdel
IniWrite, %rank%, assets/Settings.ini, USER, rank

IniWrite, %Key1%, assets/Settings.ini, USER, Key1
IniWrite, %Key2%, assets/Settings.ini, USER, Key2
IniWrite, %Key3%, assets/Settings.ini, USER, Key3
IniWrite, %Key4%, assets/Settings.ini, USER, Key4
IniWrite, %Key5%, assets/Settings.ini, USER, Key5
IniWrite, %Key6%, assets/Settings.ini, USER, Key6
IniWrite, %Key7%, assets/Settings.ini, USER, Key7
IniWrite, %Key8%, assets/Settings.ini, USER, Key8
IniWrite, %Key9%, assets/Settings.ini, USER, Key9
IniWrite, %Key10%, assets/Settings.ini, USER, Key10

IniWrite, %Key11%, assets/Settings.ini, USER, Key11
IniWrite, %Key12%, assets/Settings.ini, USER, Key12
IniWrite, %Key13%, assets/Settings.ini, USER, Key13
IniWrite, %Key14%, assets/Settings.ini, USER, Key14
IniWrite, %Key15%, assets/Settings.ini, USER, Key15
IniWrite, %Key16%, assets/Settings.ini, USER, Key16
IniWrite, %Key17%, assets/Settings.ini, USER, Key17
IniWrite, %Key18%, assets/Settings.ini, USER, Key18
IniWrite, %Key19%, assets/Settings.ini, USER, Key19
IniWrite, %Key20%, assets/Settings.ini, USER, Key20
IniWrite, %Key21%, assets/Settings.ini, USER, Key21

IniWrite, %Radio1%, assets/Settings.ini, USER, Gender1
IniWrite, %Radio2%, assets/Settings.ini, USER, Gender2
Reload
return

Close:
ExitApp
return
;======================================================================================================================Хоткии
ChatOpen()
{
sleep 300
SendInput, {t}
sleep 250
}

FastSend(msg)
{
    clipboard := msg
    Sleep 100
    Send, ^v
    Sleep 100
}

SendMsgFast(text, goEnter = True) {
	IniRead, Gender2, assets/Settings.ini, USER, Gender2
	gender = 
	if Gender2 = 1
		gender = а
	msg := Fmt(text, gender)
    FastSend(msg)
    if (goEnter = True)
	{
		SendInput {Enter}
	}
    return
}

Fmt(msg, gender) {
    return StrReplace(msg, "%gender%", gender)
}

TransformRank(f, r)
{
	if f = LSCSD
		{
			switch r
			{
				case 13: return "Assistant Sheriff"
				case 14: return "Undersheriff"
				case 15: return "Sheriff"
				default: return "Должность"
			}
		}
		if f = FIB
			{
				switch r
				{
					case 13: return "Assistant Director"
					case 14: return "Deputy of Director"
					case 15: return "Director"
					default: return "Должность"
				}
			}
		
		if f = LSPD
			{
				switch r
				{
					case 13: return "Assistant Chief"
					case 14: return "Deputy Chief"
					case 15: return "Chief"
					default: return "Должность"
				}
			}
			return "Должность"
}

Key1:
SendMessage, 0x50,, 0x4190419,, A
IniRead, frac, assets/Settings.ini, USER, frac
IniRead, otdel, assets/Settings.ini, USER, otdel
IniRead, rank, assets/Settings.ini, USER, rank
IniRead, place, assets/Settings.ini, USER, place

ChatOpen()
if rank > 12
{
otdel:= TransformRank(frac, rank)
}
temp_msg = /do [%frac% | %otdel%].
FastSend(temp_msg)
SendInput {Enter}

return

GuiManager(GuiNum, PictureFile, Height, Width) {
	IfWinExist, Gui %GuiNum%
	{
		Gui %GuiNum%: Destroy
	}
	else
	{	
		Gui %GuiNum%: +LastFound +AlwaysOnTop -Caption +ToolWindow 
		Gui %GuiNum%: Color, black 
		Gui %GuiNum%: add, picture, h%Height% w%Width%, %PictureFile%
		Winset, ExStyle, +0x20
		WinSet, TransColor, 0 1000
		Gui %GuiNum%: Show, x1 y1 NoActivate, Gui %GuiNum%
	}
}

Key2: 
GuiManager(2, "assets/help.png", (resolution = 0 ? 574 : 861), (resolution = 0 ? 1268 : 1902))
return

Key3: 
GuiManager(3, "assets/help2.png", (resolution = 0 ? 188 : 376), (resolution = 0 ? 611 : 1222))
return


Key4:
GuiManager(4, "assets/help3.png", (resolution = 0 ? 330 : 916), (resolution = 0 ? 611 : 916))
return

Key5:
GuiManager(5, "assets/tencode.png", (resolution = 0 ? 452 : 678), (resolution = 0 ? 734 : 1100))
return

Key6:
GuiManager(6, "assets/help5.png", (resolution = 0 ? 343 : 514), (resolution = 0 ? 735 : 1102))
return

Key7:
GuiManager(7, "assets/cidhelp.png", (resolution = 0 ? 460 : 690), (resolution = 0 ? 391 : 586))
return

Key8:
GuiManager(8, "assets/help4.png", (resolution = 0 ? 432 : 648), (resolution = 0 ? 504 : 756))
return

Key9: 
GuiManager(9, "assets/help6.png", (resolution = 0 ? 679 : 1018), (resolution = 0 ? 578 : 867))
return

Key11: 
ChatOpen()
temp_msg = /mark CODE-7
FastSend(temp_msg)
SendInput {Enter}
return

RunScenario(messages) {
    for _, msg in messages {
        SendMsgFast(msg, True)
        if (messages.Length() > 1)
			{
			ChatOpen()
			Sleep, 300 ; Необязательная пауза между действиями
		}
    }
}

GetMessageArray(type) {
    if (type = "взятьсумку") {
        messages := Object()
        messages[1] := "/do Пачка зип-пакетов лежит в подсумке.",
        messages[2] :="/me достал%gender% зип-пакеты из подсумка и положил%gender% их на полку",
        messages[3] :="/do Зип-пакеты на полке.",
        messages[4] :="/me снял%gender% сумку с плеча и положил%gender% её на полку",
        messages[5] :="/do Сумка с нелегалом лежит на полке."
		return messages
    }
	else if (type = "сп") {
        messages := Object()
        messages[1] := "/me включил%gender% музыку на колонке",
		return messages
    }
	else if (type = "багажник") {
        messages := Object()
        messages[1] := "/do Сумка с нелегалом висит на плече.",
		messages[2] := "/me достал%gender% зип-пакеты из подсумка и положил%gender% их в багажник",
		messages[3] := "/do Зип-пакеты в багажнике.",
		messages[4] := "/me снял%gender% сумку с плеча и положил%gender% её в багажник",
		messages[5] := "/do Сумка с нелегалом лежит в багажнике.",
		return messages
    }
	else if (type = "багажник") {
        messages := Object()
        messages[1] := "/do Сумка с нелегалом висит на плече.",
		messages[2] := "/me достал%gender% зип-пакеты из подсумка и положил%gender% их в багажник",
		messages[3] := "/do Зип-пакеты в багажнике.",
		messages[4] := "/me снял%gender% сумку с плеча и положил%gender% её в багажник",
		messages[5] := "/do Сумка с нелегалом лежит в багажнике.",
		return messages
    }
	else if (type = "взятьполиграф") {
        messages := Object()
        messages[1] := "/do В рюкзаке находится ноутбук, измерительные устройства и полиграф для проведения допроса."
		messages[2] := "/me открыл%gender% рюкзак, затем взял%gender% ноутбук, измерительные устройства и полиграф в руки"
		return messages
    }
	else if (type = "подключитьполиграф") {
        messages := Object()
        messages[1] := "/do В руках агента ноутбук, полиграф и измерительные устройства для проведения допроса."
		messages[2] := "/me поставил%gender% на стол ноутбук и подключил%gender% к нему с помощью проводов полиграф"
		messages[3] := "/me открыл%gender% экран ноутбука, затем нажал%gender% кнопку включения и ввел%gender% пароль"
		messages[4] := "/do Вход в систему выполнен."
		messages[5] := "/me включил%gender% специальную программу для работы с полиграфом"
		messages[6] := "/me нажал%gender% на небольшую красную кнопочку на полиграфе"
		messages[7] := "/do Полиграф включен."
		messages[8] := "/me надел%gender% на правую руку человека напротив датик артериального давления и частоты пульса"
		messages[9] := "/me надел%gender% на два пальца левой руки два датчика потоотделения"
		messages[10] := "/me надел%gender% на человека опоясывающий грудь датчик глубины дыхания"
		messages[11] := "/me подключил%gender% измерительные устройства к полиграфу при помощи проводов"
		messages[12] := "/do Полиграф готов к проведению измерений."
		messages[13] := "/do На экране ноутбука начали рисоваться графики согласно полученным данным."
		return messages
    }
	else if (type = "отключитьполиграф") {
        messages := Object()
        messages[1] := "/me снял%gender% с правой руки человека напротив датчик давления и частоты пульса, после чего положил%gender% его на стол"
		messages[2] := "/me снял%gender% с пальцев левой руки человека датчики потоотделения и положил%gender% их на стол"
		messages[3] := "/me снял%gender% с груди человека датчик глубины дыхания и положил%gender% его на стол"
		messages[4] := "/do На столе лежат несколько датчиков, стоит включенный ноутбук, а также полиграф."
		messages[5] := "/me нажал%gender% на кнопку выключения полиграфа и ноутбука"
		messages[6] := "/do Полиграф и ноутбук выключены."
		return messages
    }
	else if (type = "датьконтракт") {
        messages := Object()
        messages[1] := "/do Контракт “О конфиденциальном сотрудничестве с %frac%” лежит на столе."
		messages[2] := "/me взял%gender% контракт “О конфиденциальном сотрудничестве с %frac%” и положил%gender% его ближе к человеку"
		messages[3] := "/do Шариковая ручка на столе."
		return messages
    }
	else if (type = "взятьконтракт") {
        messages := Object()
        messages[1] := "/me взял%gender% Контракт “О конфиденциальном сотрудничестве с %frac%” и шариковую ручку со стола в руки"
		messages[2] := "/do Контракт “О конфиденциальном сотрудничестве с %frac%” и шариковая ручка в руках."
		messages[3] := "/me подписал%gender% Контракт “О конфиденциальном сотрудничестве с %frac%”, затем передал%gender% его обратно человеку напротив"
		return messages
    }
	else if (type = "датьбоди") {
        messages := Object()
        messages[1] := "/do На столе лежит боди-камера и комплект звукозаписывающих устройств."
		messages[2] := "/me взял%gender% боди-камеру и комплект звукозаписывающих устройств со стола, передал%gender% их человеку напротив"
		return messages
    }
	else if (type = "взятьбоди") {
        messages := Object()
        messages[1] := "/me взял%gender% боди-камеру и комплект звукозаписывающих устройств у человека напротив, затем положил%gender% их к себе"
		messages[2] := "/do Боди-камера и комплект звукозаписывающих устройств лежат у агента."
		return messages
    }
	else if (type = "бардачок") {
        messages := Object()
        messages[1] := "/me достал%gender% боди-камеру и комплект звукозаписывающих устройств, сложил%gender% их в бардачок автомобиля"
		messages[2] := "/do Боди-камера и комплект звукозаписывающих устройств в бардачке."
		return messages
    }
	else if (type = "бодиавто") {
        messages := Object()
        messages[1] := "/me открыл%gender% бардачок автомобиля, достал%gender% оттуда боди-камеру и комплект звукозаписывающих устройств"
		messages[2] := "/me сложил%gender% боди-камеру и комплект звукозаписывающих устройств в рюкзак"
		messages[3] := "/do Боди-камера и комплект звукозаписывающих устройств в рюкзаке."
		return messages
    }
	else if (type = "вкл") {
        messages := Object()
        messages[1] := "/do В рюкзаке лежит боди-камера и комплект звукозаписывающих устройств."
		messages[2] := "/me достал%gender% боди-камеру и комплект звукозаписывающих устройств из рюкзака"
		messages[3] := "/do Боди-камера и комплект звукозаписывающих устройств в руках."
		messages[4] := "/me скрытно установил%gender% на одежду боди-камеру и устройства звукозаписи, после чего включил%gender% их нажатием на кнопку питания"
		messages[5] := "/do Боди-камера и звукозаписывающие устройства активированы и записывают все происходящее."
		return messages
    }
	else if (type = "выкл") {
        messages := Object()
        messages[1] := "/me скрытно нажал%gender% на кнопку “save” боди-камеры"
		messages[2] := "/do Запись с боди-камеры сохранена на microSD FlashCard."
		return messages
    }
	else if (type = "датьматы") {
        messages := Object()
        messages[1] := "/do MicroSD FlashCard с видеоматериалом находится у агента."
		messages[2] := "/me неспешно достал%gender% из кармана microSD FlashCard с видеоматериалами, затем передал%gender% их человеку напротив"
		return messages
    }
	else if (type = "взять маты") {
        messages := Object()
        messages[1] := "/me взял%gender% microSD FlashCard с видеоматериалами у человека напротив, затем положил%gender% их к себе"
		messages[2] := "/do MicroSD FlashCard с видеоматериалами у агента."
		return messages
    }
	else if (type = "армия") {
		messages := Object()
		messages[1] := "/me взял%gender% из ящика с инструментами швабру"
		messages[2] := "/do Швабра в руках."
		messages[3] := "/me протянул%gender% руку за ведром, которое стояло рядом"
		messages[4] := "/me аккуратно взял%gender% ведро в руки"
		messages[5] := "/do Ведро находится в руках."
		messages[6] := "/me поставил%gender% ведро на пол, намочил%gender% швабру и начал%gender% вытирать пол"
		messages[7] := "/do Пол чист."
		messages[8] := "/me взял%gender% в руки тряпку, начал%gender% протирать шкафчики"
		messages[9] := "/do Шкафы полностью убраны."
		messages[10] := "/me достал%gender% большой мусорный пакет и стал%gender% убирать мусор с пола"
		messages[11] := "/me подобрал%gender% надкусанное яблоко, закинул%gender% его в пакет"
		messages[12] := "/me подобрал%gender% смятые бумаги и так же сложил%gender% всё в мусорку"
		messages[13] := "/do Весь мусор сложен в пакет."
		return messages
	}
	else if (type = "снятьденьги") {
		messages := Object()
		messages[1] := "/me открыл%gender% сумку, положил%gender% в неё деньги, закрыл%gender% её и закинул%gender% на плечо"
		messages[2] := "/do Сумка на плече."
		return messages
	}
	else if (type = "напол") {
		messages := Object()
		messages[1] := "/me поставил%gender% сумку на землю"
		messages[2] := "/do Сумка на земле."
		return messages
	}
	else if (type = "нарко") {
		messages := Object()
		messages[1] := "/do На столе лежит сумка с мед. приборами."
		messages[2] := "/me достал%gender% резиновые перчатки из тактического пояса и надел%gender% их на руки"
		messages[3] := "/me достал%gender% медицинские ножницы и пробирку с раствором"
		messages[4] := "/me достал%gender% из зип-лока пакетик с порошком, насыпал%gender% порошок в пробирку с раствором"
		messages[5] := "/do Тест будет готов через 3 секунды."
		messages[6] := "/do Результат готов. Раствор изменился в цвете."
		messages[7] := "/do Анализ показал содержание наркотических веществ."
		return messages
	}
	else if (type = "весы") {
		messages := Object()
		messages[1] := "/do Весы лежат на столе."
		messages[2] := "/me включил%gender% весы и положил%gender% на них пакет с наркотическим веществом"
		return messages
	}
	else if (type = "вавто") {
		messages := Object()
		messages[1] := "/me открыл%gender% дверь патрульного автомобиля, посадил%gender% туда задержанного"
		messages[2] := "/me пристегнул%gender% его ремнём безопасности"
		messages[3] := "/do Задержанный надёжно пристёгнут ремнём безопасности."
		messages[4] := "/me закрыл%gender% дверь автомобиля"
		messages[5] := "/put "
		return messages
	}
	else if (type = "изавто") {
		messages := Object()
		messages[1] := "/me открыл%gender% дверь патрульного автомобиля"
		messages[2] := "/me отстегнул%gender% ремень безопасности"
		messages[3] := "/do Задержанный не пристёгнут ремнём безопасности"
		messages[4] := "/me достал%gender% задержанного из транспорта"
		messages[5] := "/pull"
		return messages
	}
}

;======================================================================================================================Команды

;MISC
:?:..сп::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("сп")
RunScenario(messages)
return

:?:..взятьсумку::
messages := GetMessageArray("взятьсумку")
RunScenario(messages)
return

:?:..багажник::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("багажник")
RunScenario(messages)
return

:?:..взятьполиграф::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("багажник")
RunScenario(messages)
return

:?:..подключитьполиграф::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("багажник")
RunScenario(messages)
return

:?:..отключитьполиграф::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("отключитьполиграф")
RunScenario(messages)
return

:?:..датьконтракт::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("датьконтракт")
RunScenario(messages)
return

:?:..взятьконтракт::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("взятьконтракт")
RunScenario(messages)
return

:?:..датьбоди::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("датьбоди")
RunScenario(messages)
return

:?:..взятьбоди::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("взятьбоди")
RunScenario(messages)
return

:?:..бардачок::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("бардачок")
RunScenario(messages)
return

:?:..бодиавто::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("бодиавто")
RunScenario(messages)
return

:?:..вкл::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("вкл")
RunScenario(messages)
return

:?:..выкл::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("выкл")
RunScenario(messages)
return

:?:..датьматы::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("датьматы")
RunScenario(messages)
return

:?:..взятьматы::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("взятьматы")
RunScenario(messages)
return

:?:..армия::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("армия")
RunScenario(messages)
return

:?:..снятьденьги::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("снятьденьги")
RunScenario(messages)
SendMsgFast("/do В сумке лежит $.", False)
return

:?:..напол::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("напол")
RunScenario(messages)
SendMsgFast("/do В сумке лежит $.", False)
return

:?:..взятка::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/me прохлопал%gender% верхние и нижние карманы человека напротив", True)
ChatOpen()
SendMsgFast("/do Имеется ли у @ аудио или видеозаписывающее устройство?", False)
return

:?:..опз::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/me посмотрел%gender% на опознавательный знак человека", True)
ChatOpen()
SendMsgFast("/do Какая государственная структура, отдел и должность указаны на опознавательном знаке у @?", False)
return

:?:..сел::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/me запрыгнул%gender% в автомобиль через открытое окно", True)
return

:?:..вылез::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/me выпрыгнул%gender% из автомобиля через открытое окно", True)
return

:?:..дог::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/me обнюхал%gender% человека напротив", True)
ChatOpen()
SendMsgFast("/do Имеются ли у @ наркотические или взрывчатые вещества?", True)
return

:?:..ошейник::
SendMessage, 0x50,, 0x4190419,, A
IniRead, frac, assets/Settings.ini, USER, frac
IniRead, otdel, assets/Settings.ini, USER, otdel

msg = /do На ошейнике закреплён жетон: [%frac% | %otdel%].
SendMsgFast(msg, True)
return

:?:..нарко::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("нарко")
RunScenario(messages)
return

:?:..весы::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("весы")
RunScenario(messages)
SendMsgFast("/do Весы показали  грамм.", False)
return

:?:..пред::
IniRead, frac, assets/Settings.ini, USER, frac
IniRead, otdel, assets/Settings.ini, USER, otdel
IniRead, rank, assets/Settings.ini, USER, rank
IniRead, place, assets/Settings.ini, USER, place

SendMessage, 0x50,, 0x4190419,, A
msg = Здравствуйте, являюсь сотрудником %frac%, опознавательный знак на мне находится
SendMsgFast(msg, True)
ChatOpen()
rank_text:= TransformRank(frac, rank)
msg = /do На %place% находится %type%: [%frac% | %otdel% ]
SendMsgFast(msg, True)
return

:?:..вавто::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("вавто")
RunScenario(messages)
return

:?:..изавто::
SendMessage, 0x50,, 0x4190419,, A
messages := GetMessageArray("изавто")
RunScenario(messages)
return

:?:..закрыто::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/do Окна в автомобиле закрыты.", True)
return

:?:.пинг::
:?:.зштп::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/ping", True)
return

:?:.ц::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/w ", False)
return

:?:.б::
:?:.и::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/b ", False)
return

:?:.ф::
:?:.а::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/f ", False)
return

:?:.фб::
:?:.аи::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/fb ", False)
return

:?:.с::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/c ", False)
return

:?:.сб::
:?:.си::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/cb ", False)
return

:?:.деп::
:?:.вуз::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep ", False)
return

:?:.репорт::
:?:.кузщке::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/report ", False)
return

:?:.вщ::
:?:.ьу::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/me ", False)
return

:?:.зфн::
:?:.екн::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/try ", False)
return

:?:.зге::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/put ", False)
return

:?:.згдд::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/pull ", False)
return

:?:.ызфцтсфкы::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/spawncars", False)
return

:?:..воркпд::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to LSPD: Работайте.", False)
return

:?:..ворксд::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to LSCSD: Работайте.", False)
return

:?:..воркфиб::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to FIB: Работайте.", False)
return

:?:..ворксанг::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to SANG: Работайте.", False)
return

:?:..спавн::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /spawncars
SendMsgFast("/spawncars", False)
return

:?:..адвокат::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("dep to GOV: Требуется адвокат в допросную ", False)
return

:?:..рация::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/do Требуется адвокат в допросную ", False)
return

:?:..прокурор::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to GOV: Требуется прокурор в допросную ", False)
return

:?:..запросак::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to LSPD/LSCSD: Разрешите работать по АК и ДК.", False)
return

:?:..запросфиб::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to FIB: Разрешите работать федеральной статье ", False)
return

:?:..юрсд::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to LSCSD: Разрешите нарушить юрисдикцию для комфортного патруля.", False)
return

:?:..юрпд::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to LSPD: Разрешите нарушить юрисдикцию для комфортного патруля.", False)
return

:?:..миранда::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("Вы задержаны и имеете право хранить молчание. Всё, что вы скажете, может и будет использовано против Вас. Вы имеета право на одного государственного адвоката. Вы понимаете свои права?", False)
return

:?:..похитка::
IniRead, frac, assets/Settings.ini, USER, frac
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to ALL: " . frac . " займётся похищением.", False)
return

:?:..банк::
IniRead, frac, assets/Settings.ini, USER, frac
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to ALL: " . frac . " займётся банком.", False)
return

:?:..адекват::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to ALL: Требования похитителей адекватные.", False)
return

:?:..неадекват::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to ALL: Требования похитителей неадекватные, требуется помощь всех гос. структур.", False)
return

:?:..коридор::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to ALL: Запрашиваю *** зелёного коридора для машин *** цвета.", False)
return

:?:..заложники::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to ALL: Заложники в безопасности.", False)
return

:?:..видеозапись::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("Требую у вас показать видеофиксацию правонарушения задержанного на основании статьи 5.1 Закона 'О деятельности Коллегии Адвокатов', а так же 2.1 Закона 'О деятельности Коллегии Адвокатов'", False)
return

:?:..апрокурор::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("Требую у вас вызвать прокурора на основании статьи 2.1.9 Процессуального кодекса", False)
return


:?:..20::SendMsgFast("/mark CODE-20", True)
:?:..7::SendMsgFast("/mark CODE-7", True)
:?:..4::SendMsgFast("/mark CODE-4", True)
:?:..2::SendMsgFast("/mark CODE-2", True)
:?:..0::SendMsgFast("/mark CODE-0", True)

:?:/20::SendMsgFast("/mark CODE-20", True)
:?:/7::SendMsgFast("/mark CODE-7", True)
:?:/4::SendMsgFast("/mark CODE-4", True)
:?:/2::SendMsgFast("/mark CODE-2", True)
:?:/0::/SendMsgFast("/mark CODE-0", True)

:?:/apd::
:?:..апд::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to LSPD: Вызов принят.", False)
return

:?:/asd::
:?:..асд::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to LSCSD: Вызов принят.", False)
return

:?:/afib::
:?:..афиб::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to FIB: Вызов принят.", False)
return

:?:/asang::
:?:..асанг::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to SANG: Вызов принят.", False)
return

:?:/agov::
:?:..агов::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to GOV: Вызов принят.", False)
return

:?:/all::
:?:..все::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to ALL:  ", False)
return

:?:/pd::
:?:..пд::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to LSPD: ", False)
return

:?:/sd::
:?:..сд::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to SD: ", False)
return

:?:/fib::
:?:..фиб::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to FIB: ", False)
return

:?:/sang::
:?:..санг::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to SANG: ", False)
return

:?:/ems::
:?:..емс::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to EMS: ", False)
return

:?:/wn::
:?:..вн::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to WN: ", False)
return

:?:/gov::
:?:..гов::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/dep to GOV: ", False)
return

:?:..клин::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/clearchat", False)
return

:?:..трусы::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/mark 10-20 [Рвут трусы]", False)
return

:?:..чтонаписано::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/do Что написано в ориентировке у @?", False)
return

:?:..фрей::
SendMessage, 0x50,, 0x4190419,, A
SendMsgFast("/me наклеил%gender% на поверхность листовку: 'Молодая семья FREY ищет таланты! Почта для связи: mansela, myokul'", False)
return

:?:.да::👍
:?:.нет::👎
:?:.ок::👌
:?:.лол::😂
:?:.сэд::😢
:?:.демон::😈
:?:.огонь::🔥
:?:.банан::🍌
:?:.пуп::💩
:?:.лайк::❤️
:?:.фрик::🤡

:?:.умуте::SendMsgFast("/event", False)
:?:.ивент::SendMsgFast("/event", False)