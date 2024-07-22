﻿version := 1.251

SetWorkingDir %A_ScriptDir%

IfnotExist, %A_ScriptDir%\assets
{
FileCreateDir, %A_ScriptDir%\assets
}

IniRead, v, assets/Settings.ini, USER, v
if v != %version%
{
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/help.png?raw=true, %A_ScriptDir%\assets\help.png
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/help2.png?raw=true, %A_ScriptDir%\assets\help2.png
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/help3.png?raw=true, %A_ScriptDir%\assets\help3.png
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/help4.png?raw=true, %A_ScriptDir%\assets\help4.png
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/help5.png?raw=true, %A_ScriptDir%\assets\help5.png
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/help6.png?raw=true, %A_ScriptDir%\assets\help6.png
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/tencode.png?raw=true, %A_ScriptDir%\assets\tencode.png
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/filatov.png?raw=true, %A_ScriptDir%\assets\filatov.png
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/cidhelp.png?raw=true, %A_ScriptDir%\assets\cidhelp.png
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/logo.png?raw=true, %A_ScriptDir%\assets\logo.png
IniWrite, %version%, assets/Settings.ini, USER, v
}

IfnotExist, %A_ScriptDir%\update.ahk
	URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/update.ahk?raw=true, %A_ScriptDir%\update.ahk

IfnotExist, %A_ScriptDir%\assets\help.png
	URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/help.png?raw=true, %A_ScriptDir%\assets\help.png

IfnotExist, %A_ScriptDir%\assets\help2.png
	URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/help2.png?raw=true, %A_ScriptDir%\assets\help2.png

IfnotExist, %A_ScriptDir%\assets\help3.png
	URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/help3.png?raw=true, %A_ScriptDir%\assets\help3.png

IfnotExist, %A_ScriptDir%\assets\help4.png
	URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/help4.png?raw=true, %A_ScriptDir%\assets\help4.png

IfnotExist, %A_ScriptDir%\assets\help5.png
	URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/help5.png?raw=true, %A_ScriptDir%\assets\help5.png

IfnotExist, %A_ScriptDir%\assets\help6.png
	URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/help6.png?raw=true, %A_ScriptDir%\assets\help6.png

IfnotExist, %A_ScriptDir%\assets\filatov.png
	URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/filatov.png?raw=true, %A_ScriptDir%\assets\filatov.png

IfnotExist, %A_ScriptDir%\assets\tencode.png
	URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/tencode.png?raw=true, %A_ScriptDir%\assets\tencode.png

IfnotExist, %A_ScriptDir%\assets\cidhelp.png
	URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/cidhelp.png?raw=true, %A_ScriptDir%\assets\cidhelp.png

IfnotExist, %A_ScriptDir%\assets\logo.png
	URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/logo.png?raw=true, %A_ScriptDir%\assets\logo.png

IniRead, frac, assets/Settings.ini, USER, frac, Фракция
IniRead, otdel, assets/Settings.ini, USER, otdel, Отдел
IniRead, sid, assets/Settings.ini, USER, sid, Статик
IniRead, place, assets/Settings.ini, USER, place, поясе
IniRead, type, assets/Settings.ini, USER, type, бейджик
IniRead, resolution, assets/Settings.ini, USER, resolution, 0

;======================================================================================================================Кнопки

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

;=================================================================================== гендер
IniRead, Radio1, assets/Settings.ini, User, Gender1
IniRead, Radio2, assets/Settings.ini, User, Gender2
if (Radio1 = "ERROR")
{
    if (Radio2 = "ERROR")
    {
        Radio1 = 1
        gender = 
    }
}
if (Radio1 = "1")
{
Radio2= 0
gender = 
}
if (Radio2 = "1")
{
Radio1 = 0
gender = а
}
;===================================================================================

;======================================================================================================================Основное GUI
Gui, Color, 191919
Gui, Font, S20 CWhite, Calibri
Gui, Add, Text, x20 y20 w820 h40 +BackgroundTrans, Бинды
Gui, Add, Picture, x885 y-5 w170 h170 +BackgroundTrans, assets\logo.png
Gui, Add, Picture, x480 y-65 w359 h566 gDiscord, assets\filatov.png
Gui, Font, S10 CWhite, Calibri
Gui, Add, Text, x902 y445 w250 h30 +BackgroundTrans, by #110378 | San Diego
Gui, Font, S15 CWhite, Calibri

Gui, Add, Text, x130 y62 w500 h30 +BackgroundTrans, Бейджик
Gui, Add, Text, x130 y102 w240 h30 +BackgroundTrans, Памятка Общая
Gui, Add, Text, x130 y142 w240 h30 +BackgroundTrans, Памятка Угонки
Gui, Add, Text, x130 y182 w330 h30 +BackgroundTrans, Памятка установки личности
Gui, Add, Text, x130 y222 w330 h30 +BackgroundTrans, ТЕН-КОДЫ
Gui, Add, Text, x130 y262 w330 h30 +BackgroundTrans, Памятка Задержание Госника
Gui, Add, Text, x130 y302 w330 h30 +BackgroundTrans, Памятка CID/DB
Gui, Add, Text, x130 y342 w330 h30 +BackgroundTrans, Памятка Похищения
Gui, Add, Text, x130 y382 w330 h30 +BackgroundTrans, Памятка Адвокатов
;=Gui, Add, Text, x130 y422 w330 h30 +BackgroundTrans, .

;Gui, Add, Text, x580 y82 w500 h30 +BackgroundTrans,  .
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

;Gui, Add, Hotkey, x472 y80 w95 h30 vKey11, %Key11%
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
Gui, Настройки: Add, Text, x220 y10 w50 h18 +0x200 +0x1, Статик:
Gui, Настройки: Add, Edit, x275 y10 w70 h21 vsid, %sid%
Gui, Настройки: Add, Edit, x370 y10 w70 h21 vtype, %type%
Gui, Настройки: Add, Text, x443 y12 w20 h18, на
Gui, Настройки: Add, Edit, x465 y10 w70 h21 vplace, %place%
Gui, Настройки: Add, Text, x2 y36 w70 h18 +0x200 +0x1, Ваш пол:
Gui, Настройки: Add, Radio, x70 y33 w80 h23 Group vRadio1 Checked%Radio1%, Мужчина
Gui, Настройки: Add, Radio, x150 y33 w80 h23 vRadio2 Checked%Radio2%, Женщина
Gui, Настройки: Add, Checkbox, x240 y33 w100 h23 gHighResolution Checked%resolution%, 4К Монитор
Gui, Настройки: Add, Button, x360 y36 w70 h20 gSave, Сохранить	
Gui, Настройки: submit
return

;======================================================================================================================Кнопки

GuiClose:
ExitApp

settings:
Gui, Настройки: Show, w575 h60, Настройки
return

Update:
Run,%A_ScriptDir%\update.ahk
IfWinExist, RPHUB %version%
    WinClose
return

Discord:
Run, https://discord.gg/h2XQhFVDeM
return

WIKI:
Run, https://maximealexeev.gitbook.io/rphub
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
IniWrite, %sid%, assets/Settings.ini, USER, sid

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

IniWrite, %Key16%, assets/Settings.ini, USER, Key11
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

Key1:
SendMessage, 0x50,, 0x4190419,, A
IniRead, frac, assets/Settings.ini, USER, frac
IniRead, otdel, assets/Settings.ini, USER, otdel
IniRead, sid, assets/Settings.ini, USER, sid
IniRead, place, assets/Settings.ini, USER, place

SendInput, {T}
sleep 50
SendPlay, /do На %place% находится %type%: [%frac% | %otdel% | %sid%].{Enter}
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
		Gui %GuiNum%: Show, x1 y1, Gui %GuiNum%
	}
}

Key2: 
GuiManager(2, "assets/help.png", (resolution = 0 ? 574 : 861), (resolution = 0 ? 1268 : 1902))
return

Key3: 
GuiManager(3, "assets/help2.png", (resolution = 0 ? 212 : 318), (resolution = 0 ? 550 : 825))
return


Key4:
GuiManager(4, "assets/help3.png", (resolution = 0 ? 330 : 916), (resolution = 0 ? 611 : 916))
return

Key5:
GuiManager(5, "assets/tencode.png", (resolution = 0 ? 452 : 678), (resolution = 0 ? 367 : 550))
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

;======================================================================================================================Команды

;MISC
:?:..сп::
SendMessage, 0x50,, 0x4190419,, A
Send, /me включил%gender% музыку на колонке{enter}
return

:?:..взятьсумку::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Send, /do В шкафчике лежит вместительная сумка и пачка зип-пакетов.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me открыл%gender% шкафчик{enter}
sleep 400
Send, {t}
sleep 200
Send, /me достал%gender% вместительную сумку и пачку зип-пакетов из шкафчика{enter}
sleep 400
Send, {t}
sleep 200
Send, /do На плече висит вместительная сумка.{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Пачка зип-пакетов лежит в подсумке.{enter}
sleep 400
return

:?:..рейдобыск::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Send, /do Сумка висит на плече.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me снял%gender% сумку с плеча и положил%gender% её на пол{enter}
sleep 400
Send, {t}
sleep 200
Send, /me движением руки открыл%gender% сумку{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Сумка открыта.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me осмотрел%gender% склад{enter}
sleep 400
Send, {t}
sleep 200
Send, /me начал%gender% складывать в сумку все нелегальные предметы{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Сумка заполнена.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me движением руки повесил%gender% сумку на плечо{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Сумка, заполненная нелегалом, висит на плече.{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Зип-пакеты лежат в подсумке.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me движением руки достал%gender% зип-пакет из подсумка{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Зип-пакет в руке.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me открыл%gender% зип-пакет и начал%gender% складывать в него все мелкие нелегальные вещества{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Зип-пакет заполнен.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me движением руки закрыл%gender% зип-пакет и положил%gender% его в подсумок{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Заполненный зип-пакет в подсумке.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me движением руки достал%gender% еще один пустой зип-пакет из подсумка{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Зип-пакет в руке.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me открыл%gender% зип-пакет и начал%gender% складывать в него все мелкие нелегальные вещества{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Зип-пакет заполнен.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me движением руки закрыл%gender% зип-пакет и положил%gender% его в подсумок{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Заполненные нелегальными веществами зип-пакеты лежат в подсумке.{enter}
sleep 400
return

:?:..склад::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Send, /do Сумка с нелегалом висит на плече.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me достал%gender% зип-пакеты из подсумка и положил%gender% их на полку{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Зип-пакеты на полке.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me снял%gender% сумку с плеча и положил%gender% её на полку{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Сумка с нелегалом лежит на полке.{enter}
sleep 400
return

:?:..багажник::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Send, /do Сумка с нелегалом висит на плече.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me достал%gender% зип-пакеты из подсумка и положил%gender% их в багажник{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Зип-пакеты в багажнике.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me снял%gender% сумку с плеча и положил%gender% её в багажник{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Сумка с нелегалом лежит в багажнике.{enter}
sleep 400
return

:?:..взятьполиграф::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Send, /do В рюкзаке находится ноутбук, измерительные устройства и полиграф для проведения допроса.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me открыл%gender% рюкзак, затем взял%gender% ноутбук, измерительные устройства и полиграф в руки{enter}
sleep 400
return

:?:..подключитьполиграф::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Send, /do В руках агента ноутбук, полиграф и измерительные устройства для проведения допроса.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me поставил%gender% на стол ноутбук и подключил%gender% к нему с помощью проводов полиграф{enter}
sleep 400
Send, {t}
sleep 200
Send, /me открыл%gender% экран ноутбука, затем нажал%gender% кнопку включения и ввел%gender% пароль{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Вход в систему выполнен.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me включил%gender% специальную программу для работы с полиграфом{enter}
sleep 400
Send, {t}
sleep 200
Send, /me нажал%gender% на небольшую красную кнопочку на полиграфе{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Полиграф включен.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me надел%gender% на правую руку человека напротив датчик артериального давления и частоты пульса{enter}
sleep 400
Send, {t}
sleep 200
Send, /me надел%gender% на два пальца левой руки два датчика потоотделения{enter}
sleep 400
Send, {t}
sleep 200
Send, /me надел%gender% на человека опоясывающий грудь датчик глубины дыхания{enter}
sleep 400
Send, {t}
sleep 200
Send, /me подключил%gender% измерительные устройства к полиграфу при помощи проводов{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Полиграф готов к проведению измерений.{enter}
sleep 400
Send, {t}
sleep 200
Send, /do На экране ноутбука начали рисоваться графики согласно полученным данным.{enter}
sleep 400
return

:?:..отключитьполиграф::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Send, /me снял%gender% с правой руки человека напротив датчик давления и частоты пульса, после чего положил%gender% его на стол{enter}
sleep 400
Send, {t}
sleep 200
Send, /me снял%gender% с пальцев левой руки человека датчики потоотделения и положил%gender% их на стол{enter}
sleep 400
Send, {t}
sleep 200
Send, /me снял%gender% с груди человека датчик глубины дыхания и положил%gender% его на стол{enter}
sleep 400
Send, {t}
sleep 200
Send, /do На столе лежат несколько датчиков, стоит включенный ноутбук, а также полиграф.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me нажал%gender% на кнопку выключения полиграфа и ноутбука{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Полиграф и ноутбук выключены.{enter}
sleep 400
return

:?:..датьконтракт::
SendMessage, 0x50,, 0x4190419,, A
Send, /do Контракт “О конфиденциальном сотрудничестве с FIB” лежит в закрытом ящике письменного стола.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me открыл%gender% ящик письменного стола, достал%gender% Контракт “О конфиденциальном сотрудничестве с FIB” и положил%gender% его на стол{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Шариковая ручка на столе.{enter}
sleep 400
return

:?:..взятьконтракт::
SendMessage, 0x50,, 0x4190419,, A
Send, /me взял%gender% Контракт “О конфиденциальном сотрудничестве с FIB” и шариковую ручку со стола в руки{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Контракт “О конфиденциальном сотрудничестве с FIB” и шариковая ручка в руках.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me подписал%gender% Контракт “О конфиденциальном сотрудничестве с FIB”, затем передал%gender% его обратно человеку напротив{enter}
sleep 400
return

:?:..датьбоди::
SendMessage, 0x50,, 0x4190419,, A
Send, /do В рюкзаке лежит боди-камера и комплект звукозаписывающих устройств.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me снял%gender% рюкзак, затем открыл%gender% его{enter}
sleep 400
Send, {t}
sleep 200
Send, /me достал%gender% боди-камеру и комплект звукозаписывающих устройств из рюкзака, затем передал%gender% их человеку напротив{enter}
sleep 400
return

:?:..взятьбоди::
SendMessage, 0x50,, 0x4190419,, A
Send, /me взял%gender% боди-камеру и комплект звукозаписывающих устройств у человека напротив, затем положил%gender% их к себе{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Боди-камера и комплект звукозаписывающих устройств лежат у агента.{enter}
sleep 400
return

:?:..бардачок::
SendMessage, 0x50,, 0x4190419,, A
Send, /me достал%gender% боди-камеру и комплект звукозаписывающих устройств, сложил%gender% их в бардачок автомобиля{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Боди-камера и комплект звукозаписывающих устройств в бардачке.{enter}
sleep 400
return

:?:..бодиавто::
SendMessage, 0x50,, 0x4190419,, A
Send, /me открыл%gender% бардачок автомобиля, достал%gender% оттуда боди-камеру и комплект звукозаписывающих устройств{enter}
sleep 400
Send, {t}
sleep 200
Send, /me сложил%gender% боди-камеру и комплект звукозаписывающих устройств в рюкзак{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Боди-камера и коплект звукозаписывающих устройств в рюкзаке.{enter}
sleep 400
return

:?:..вкл::
SendMessage, 0x50,, 0x4190419,, A
Send, /do В рюкзаке лежит боди-камера и комплект звукозаписывающих устройств.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me достал%gender% боди-камеру и комплект звукозаписывающих устройств из рюкзака{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Боди-камера и комплект звукозаписывающих устройств в руках.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me скрытно установил%gender% на одежду боди-камеру и устройства звукозаписи, после чего включил%gender% их нажатием на кнопку питания{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Боди-камера и звукозаписывающие устройства активированы и записывают все происходящее.{enter}
sleep 400
return

:?:..выкл::
SendMessage, 0x50,, 0x4190419,, A
Send, /me скрытно нажал%gender% на кнопку “save” боди-камеры{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Запись с боди-камеры сохранена на microSD FlashCard.{enter}
sleep 400
return

:?:..датьматы::
SendMessage, 0x50,, 0x4190419,, A
Send, /do MicroSD FlashCard с видеоматериалом находится у агента.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me неспешно достал%gender% из кармана microSD FlashCard с видеоматериалами, затем передал%gender% их человеку напротив{enter}
sleep 400
return

:?:..взятьматы::
SendMessage, 0x50,, 0x4190419,, A
Send, /me взял%gender% microSD FlashCard с видеоматериалами у человека напротив, затем положил%gender% их к себе{enter}
sleep 400
Send, {t}
sleep 200
Send, /do MicroSD FlashCard с видеоматериалами у агента.{enter}
sleep 400
return

:?:..армия::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Send, /me взял%gender% из ящика с инструментами швабру{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Швабра в руках.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me протянул%gender% руку за ведром, которое стояло рядом{enter}
sleep 400
Send, {t}
sleep 200
Send, /me аккуратно взял%gender% ведро в руки{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Ведро находится в руках.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me поставил%gender% ведро на пол, намочил%gender% швабру и начал%gender% вытирать пол{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Пол чист.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me взял%gender% в руки тряпку, начал%gender% протирать шкафчики{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Шкафы полностью убраны.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me достал%gender% большой мусорный пакет и стал%gender% убирать мусор с пола{enter}
sleep 400
Send, {t}
sleep 200
Send, /me подобрал%gender% надкусанное яблоко, закинул%gender% его в пакет{enter}
sleep 400
Send, {t}
sleep 200
Send, /me подобрал%gender% смятые бумаги и так же сложил%gender% всё в мусорку{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Весь мусор сложен в пакет.{enter}
sleep 400
return

:?:..закрыто::
SendMessage, 0x50,, 0x4190419,, A
Send, /do Окна в автомобиле закрыты.
return

:?:.зштп::
SendMessage, 0x50,, 0x4190419,, A
Send, /ping{enter}
return

:?:.пинг::
SendMessage, 0x50,, 0x4190419,, A
Send, /ping{enter}
return

:?:.ц::
SendMessage, 0x50,, 0x4190419,, A
Send, /w{space}
return

:?:.и::
SendMessage, 0x50,, 0x4190419,, A
Send, /b{space}
return

:?:.б::
SendMessage, 0x50,, 0x4190419,, A
Send, /b{space}
return

:?:.а::
SendMessage, 0x50,, 0x4190419,, A
Send, /f{space}
return

:?:.ф::
SendMessage, 0x50,, 0x4190419,, A
Send, /f{space}
return

:?:.аи::
SendMessage, 0x50,, 0x4190419,, A
Send, /fb{space}
return

:?:.фб::
SendMessage, 0x50,, 0x4190419,, A
Send, /fb{space}
return

:?:.с::
SendMessage, 0x50,, 0x4190419,, A
Send, /c{space}
return

:?:.си::
SendMessage, 0x50,, 0x4190419,, A
Send, /cb{space}
return

:?:.сб::
SendMessage, 0x50,, 0x4190419,, A
Send, /cb{space}
return

:?:.вуз::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep{space}
return

:?:.деп::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep{space}
return

:?:.кузщке::
SendMessage, 0x50,, 0x4190419,, A
Send, /report{space}
return

:?:.репорт::
SendMessage, 0x50,, 0x4190419,, A
Send, /report{space}
return

:?:.ьу::
SendMessage, 0x50,, 0x4190419,, A
Send, /me{space}
return

:?:.вщ::
SendMessage, 0x50,, 0x4190419,, A
Send, /do{space}
return

:?:.екн::
SendMessage, 0x50,, 0x4190419,, A
Send, /try{space}
return

:?:.зфн::
SendMessage, 0x50,, 0x4190419,, A
Send, /pay{space}
return

:?:.зге::
SendMessage, 0x50,, 0x4190419,, A
Send, /put{space}
return

:?:.згдд::
SendMessage, 0x50,, 0x4190419,, A
Send, /pull{space}
return

:?:.ызфцтсфкы::
SendMessage, 0x50,, 0x4190419,, A
Send, /spawncars
return

:?:..воркпд::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to LSPD: Работайте.
return

:?:..ворксд::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to LSCSD: Работайте.
return

:?:..воркфиб::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to FIB: Работайте.
return

:?:..ворксанг::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to SANG: Работайте.
return

:?:..спавн::
SendMessage, 0x50,, 0x4190419,, A
Send, /spawncars
return

:?:..адвокат::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to GOV: Требуется адвокат в допросную{space}
return

:?:..рация::
SendMessage, 0x50,, 0x4190419,, A
Send, /do to GOV: Требуется адвокат в допросную{space}
return

:?:..пруфы::
SendMessage, 0x50,, 0x4190419,, A
Send, /do В ориентировке указано: "Совершён угон авто марки . Цвет: . Номер:"{left 1}
return

:?:..прокурор::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to GOV: Требуется прокурор в допросную{space}
return

:?:..запросак::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to LSPD/LSCSD: Разрешите работать по АК и ДК.
return

:?:..запросфиб::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to FIB: Разрешите работать по  УК.{left 4}
return

:?:..юрсд::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to LSCSD: Разрешите нарушить юрисдикцию для комфортного патруля.
return

:?:..юрпд::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to LSPD: Разрешите нарушить юрисдикцию для комфортного патруля.
return

:?:..миранда::
SendMessage, 0x50,, 0x4190419,, A
Send, Вы задержаны и имеете право хранить молчание. Всё, что вы скажете, может и будет использовано против Вас. Вы имеете право на один телефонный разговор до 2х минут и на одного адвоката. Если вы не можете оплатить услуги адвоката, он будет предоставлен вам государством бесплатно. Ваш адвокат имеет право присутствовать и представлять ваши интересы до и во время допроса. Вы понимаете свои права?
return

:?:..похитка::
IniRead, frac, assets/Settings.ini, USER, frac
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to ALL: %frac% займётся похищением.
return

:?:..адекват::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to ALL: Требования похитителей адекватные.
return

:?:..неадекват::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to ALL: Требования похитителей неадекватные, требуется помощь всех гос. структур.
return

:?:..коридор::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to ALL: Запрашиваю *** зелёного коридора для машин *** цвета.
return

:?:..заложники::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to ALL: Заложники в безопасности.
return

:?:..банк::
SendMessage, 0x50,, 0x4190419,, A
Send, /me открыл%gender% сумку, положил%gender% в неё деньги, закрыл%gender% её и закинул%gender% на плечо{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Сумка на плече.{enter}
sleep 400
Send, {t}
sleep 200
Send, /do В сумке лежит $.{left 2}
sleep 400
return

:?:..напол::
SendMessage, 0x50,, 0x4190419,, A
Send, /me поставил%gender% сумку на землю{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Сумка на земле.{enter}
sleep 400
Send, {t}
sleep 200
Send, /do В сумке лежит $.{left 2}
sleep 400
return

:?:..взятка::
SendMessage, 0x50,, 0x4190419,, A
Send, /me прохлопал%gender% верхние и нижние карманы человека напротив{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Имеется ли у @ аудио или видеозаписывающее устройство?{left 40}
sleep 400
return

:?:..опз::
SendMessage, 0x50,, 0x4190419,, A
Send, /me посмотрел%gender% на опознавательный знак человека{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Какая государственная структура, отдел и номер удостоверения указан на опознавательном знаке у @?{left 1}
sleep 400
return

:?:..сел::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Send, /me запрыгнул%gender% в автомобиль через открытое окно{enter}
sleep 400
return

:?:..вылез::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Send, /me выпрыгнул%gender% из автомобиля через открытое окно{enter}
sleep 400
return

:?:..нарко::
SendMessage, 0x50,, 0x4190419,, A
Send, /do На столе лежит сумка с мед. приборами.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me достал%gender% резиновые перчатки из тактического пояса и надел%gender% их на руки{enter}
sleep 400
Send, {t}
sleep 200
Send, /me достал%gender% медицинские ножницы и пробирку с раствором{enter}
sleep 400
Send, {t}
sleep 200
Send, /me достал%gender% из зип-лока пакетик с порошком, насыпал%gender% порошок в пробирку с раствором{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Тест будет готов через 3 секунды.{enter}
sleep 3000
Send, {t}
sleep 200
Send, /do Результат готов. Раствор изменился в цвете.{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Анализ показал содержание наркотических веществ.{enter}
sleep 400
return

:?:..весы::
SendMessage, 0x50,, 0x4190419,, A
Send, /do Весы лежат на столе.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me включил%gender% весы и положил%gender% на них пакет с наркотическим веществом{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Весы показали{space}{space}грамм.{left 7}
sleep 400
return

;FUCK NO VOICE
:?:..номера::
SendMessage, 0x50,, 0x4190419,, A
Send, /me взял%gender% телефон в руки, сфотографировал%gender% номера транспорта и отправил%gender% фотографию диспетчеру{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Фотография успешно отправлена.{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Диспетчер прислал ответ.{enter}
sleep 400
Send, {t}
sleep 200
Send, /do В ориентировке указано: "Совершён угон авто марки . Цвет: . Номер:"{left 1}
sleep 400
return

:?:..пред::
IniRead, frac, assets/Settings.ini, USER, frac
IniRead, otdel, assets/Settings.ini, USER, otdel
IniRead, sid, assets/Settings.ini, USER, sid
IniRead, place, assets/Settings.ini, USER, place

SendMessage, 0x50,, 0x4190419,, A
Send, Здравствуйте, являюсь сотрудником %frac%, опознавательный знак на мне находится{enter}
sleep 400
Send, {t}
sleep 200
Send, /do На %place% находится %type%: [%frac% | %otdel% | %sid%]{Enter}.{enter}
sleep 400
return

:?:..вавто::
SendMessage, 0x50,, 0x4190419,, A
Send, /me открыл%gender% дверь патрульного автомобиля, посадил%gender% туда задержанного{enter}
sleep 400
Send, {t}
sleep 200
Send, /me пристегнул%gender% его ремнём безопасности{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Задержанный надёжно пристёгнут ремнём безопасности.{enter}
sleep 400
Send, {t}
sleep 200
Send, /me закрыл%gender% дверь автомобиля{enter}
sleep 400
Send, {t}
sleep 200
Send, /put{space}
sleep 400
return

:?:..изавто::
SendMessage, 0x50,, 0x4190419,, A
Send, /me открыл%gender% дверь патрульного автомобиля{enter}
sleep 400
Send, {t}
sleep 200
Send, /me отстегнул%gender% ремень безопасности{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Задержанный не пристёгнут ремнём безопасности{enter}
sleep 400
Send, {t}
sleep 200
Send, /me достал%gender% задержанного из транспорта{enter}
sleep 400
Send, {t}
sleep 200
Send, /pull{space}
sleep 400
return

:?:..грим::
SendMessage, 0x50,, 0x4190419,, A
Send, /me взял%gender% в руки мокрую тряпочку, убрал%gender% грим с лица человека{enter}
return

:?:..очки::
SendMessage, 0x50,, 0x4190419,, A
Send, /me приподнял%gender% очки у человека напротив{enter}
return

:?:..фоторобот::
SendMessage, 0x50,, 0x4190419,, A
Send, /me взял%gender% в руки телефон, включил%gender% приложение "Камера"{enter}
sleep 400
Send, {t}
sleep 200
Send, /me сфотографировал%gender% лицо человека напротив{enter}
sleep 400
Send, {t}
sleep 200
Send, /do Диспетчер прислал ответ, что человек  находится в розыске.{left 21}
sleep 400
return

:?:..видеозапись::
SendMessage, 0x50,, 0x4190419,, A
Send, Требую у вас показать видеофиксацию правонарушения задержанного на основании статьи 5.1 Закона "О деятельности Коллегии Адвокатов", а так же 2.1 Закона "О деятельности Коллегии Адвокатов"
return

:?:..апрокурор::
SendMessage, 0x50,, 0x4190419,, A
Send, Требую у вас вызвать прокурора на основании статьи 2.1.9 Процессуального кодекса
return


:?:..20::/mark 10-20
:?:..7::/mark CODE-7
:?:..4::/mark CODE-4
:?:..2::/mark CODE-2
:?:..0::/mark CODE-0

:?:/20::/mark 10-20
:?:/7::/mark CODE-7
:?:/4::/mark CODE-4
:?:/2::/mark CODE-2
:?:/0::/mark CODE-0

:?:..апд::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to LSPD: Вызов принят.
return
:?:..асд::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to LSCSD: Вызов принят.
return
:?:..афиб::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to FIB: Вызов принят.
return
:?:..асанг::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to SANG: Вызов принят.
return
:?:..агов::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to GOV: Вызов принят.
return

:?:/apd::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to LSPD: Вызов принят.
return
:?:/asd::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to LSCSD: Вызов принят.
return
:?:/afib::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to FIB: Вызов принят.
return
:?:/asang::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to SANG: Вызов принят.
return
:?:/agov::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to GOV: Вызов принят.
return


:?:..все::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to ALL:{space}
return

:?:..пд::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to LSPD:{space}
return

:?:..сд::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to SD:{space}
return

:?:..фиб::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to FIB:{space}
return

:?:..санг::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to SANG:{space}
return

:?:..емс::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to EMS:{space}
return

:?:..вн::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to WN:{space}
return

:?:..гов::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to GOV:{space}
return

:?:/all::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to ALL:{space}
return

:?:/pd::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to LSPD:{space}
return

:?:/sd::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to SD:{space}
return

:?:/fib::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to FIB:{space}
return

:?:/sang::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to SANG:{space}
return

:?:/ems::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to EMS:{space}
return

:?:/wn::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to WN:{space}
return

:?:/gov::
SendMessage, 0x50,, 0x4190419,, A
Send, /dep to GOV:{space}
return

:?:..клин::
SendMessage, 0x50,, 0x4190419,, A
Send, /clearchat
return

:?:..трусы::
SendMessage, 0x50,, 0x4190419,, A
Send, /mark 10-20 [Рвут трусы]
return

:?:..чтонаписано::
SendMessage, 0x50,, 0x4190419,, A
Send, /do Что написано в ориентировке у @?{left 1}
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

:?:.умуте::/event
:?:.ивент::/event