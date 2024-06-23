version := 1.237

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
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/filatov.png?raw=true, %A_ScriptDir%\assets\filatov.png
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/cidhelp.png?raw=true, %A_ScriptDir%\assets\cidhelp.png
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/logo.png?raw=true, %A_ScriptDir%\assets\logo.png
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/cmds.txt?raw=true, %A_ScriptDir%\assets\cmds.txt
IniWrite, %version%, assets/Settings.ini, USER, v
}

IfnotExist, %A_ScriptDir%\update.ahk
{
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/update.ahk?raw=true, %A_ScriptDir%\update.ahk
}
IfnotExist, %A_ScriptDir%\assets\cmds.txt
{
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/cmds.txt?raw=true, %A_ScriptDir%\assets\cmds.txt
}
IfnotExist, %A_ScriptDir%\assets\help.png
{
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/help.png?raw=true, %A_ScriptDir%\assets\help.png
}
IfnotExist, %A_ScriptDir%\assets\help2.png
{
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/help2.png?raw=true, %A_ScriptDir%\assets\help2.png
}
IfnotExist, %A_ScriptDir%\assets\help3.png
{
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/help3.png?raw=true, %A_ScriptDir%\assets\help3.png
}
IfnotExist, %A_ScriptDir%\assets\help4.png
{
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/help4.png?raw=true, %A_ScriptDir%\assets\help4.png
}
IfnotExist, %A_ScriptDir%\assets\help5.png
{
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/help5.png?raw=true, %A_ScriptDir%\assets\help5.png
}
IfnotExist, %A_ScriptDir%\assets\filatov.png
{
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/filatov.png?raw=true, %A_ScriptDir%\assets\filatov.png
}
IfnotExist, %A_ScriptDir%\assets\cidhelp.png
{
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/cidhelp.png?raw=true, %A_ScriptDir%\assets\cidhelp.png
}
IfnotExist, %A_ScriptDir%\assets\logo.png
{
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/logo.png?raw=true, %A_ScriptDir%\assets\logo.png
}

IniRead, frac, assets/Settings.ini, USER, frac
IniRead, otdel, assets/Settings.ini, USER, otdel
IniRead, sid, assets/Settings.ini, USER, sid
IniRead, place, assets/Settings.ini, USER, place
IniRead, type, assets/Settings.ini, USER, type

smthwrong = 0
if type=ERROR
    {
	smthwrong = 1
    IniWrite, бейджик, assets/Settings.ini, USER, type
}

if place=ERROR
    {
	smthwrong = 1
    IniWrite, поясе, assets/Settings.ini, USER, place
}

if otdel=ERROR
    {
	smthwrong = 1
    IniWrite, Отдел, assets/Settings.ini, USER, otdel
}

if sid=ERROR
    {
	smthwrong = 1
    IniWrite, Статик, assets/Settings.ini, USER, sid
}
if frac=ERROR
    {
	smthwrong = 1
    IniWrite, FIB, assets/Settings.ini, USER, frac
}
if smthwrong = 1
{
Reload
}
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

Gui, Add, Text, x130 y82 w500 h30 +BackgroundTrans, Бейджик
Gui, Add, Text, x130 y122 w240 h30 +BackgroundTrans, Памятка Общая
Gui, Add, Text, x130 y162 w240 h30 +BackgroundTrans, Памятка Угонки
Gui, Add, Text, x130 y202 w330 h30 +BackgroundTrans, Памятка установки личности
Gui, Add, Text, x130 y242 w330 h30 +BackgroundTrans, ТЕН-КОДЫ
Gui, Add, Text, x130 y282 w330 h30 +BackgroundTrans, Памятка Задержание Госника
Gui, Add, Text, x130 y322 w330 h30 +BackgroundTrans, Памятка CID
Gui, Add, Text, x130 y362 w330 h30 +BackgroundTrans, Памятка Похищения
;=Gui, Add, Text, x130 y402 w330 h30 +BackgroundTrans, .
;=Gui, Add, Text, x130 y442 w330 h30 +BackgroundTrans, .

;=Gui, Add, Text, x580 y82 w500 h30 +BackgroundTrans,  .
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

Gui, Add, Button, x902 y149 w150 h30 gCommand, Команды
Gui, Add, Button, x902 y209 w150 h30 gSettings, Настройки
Gui, Add, Button, x22 y400 w150 h30 gSave, Сохранить
Gui, Add, Button, x902 y409 w150 h30 gUpdate, Последняя версия

;==== Бейджик ==== 
Gui, Add, Hotkey, x22 y80 w95 h30 vKey1, %Key1%
;==== Памятка общая ==== 
Gui, Add, Hotkey, x22 y120 w95 h30 vKey2, %Key2%
;==== Памятка угонки ==== 
Gui, Add, Hotkey, x22 y160 w95 h30 vKey3, %Key3%
;==== Памятка установки личности ==== 
Gui, Add, Hotkey, x22 y200 w95 h30 vKey4, %Key4%
;==== ТЕН-КОДЫ ==== 
Gui, Add, Hotkey, x22 y240 w95 h30 vKey5, %Key5%
Gui, Add, Hotkey, x22 y280 w95 h30 vKey6, %Key6%
Gui, Add, Hotkey, x22 y320 w95 h30 vKey7, %Key7%

Gui, Add, Hotkey, x22 y360 w95 h30 vKey8, %Key8%
;=Gui, Add, Hotkey, x22 y400 w95 h30 vKey9, %Key9%
;=Gui, Add, Hotkey, x22 y440 w95 h30 vKey10, %Key10%

;=Gui, Add, Hotkey, x472 y80 w95 h30 vKey11, %Key11%
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
Gui, Настройки: Add, Button, x320 y36 w70 h20 gSave, Сохранить	
Gui, Настройки: submit
return

;======================================================================================================================Кнопки

GuiClose:
ExitApp

Command:
FileEncoding, UTF-8
FileRead, allcmds, *t assets\cmds.txt
MsgBox, 0, Команды, Для использования сокращённых команд, введите в чат указанную команду, а затем нажмите ПРОБЕЛ `n %allcmds%
return

settings:
Gui, Настройки: Show, w575 h60, Настройки
return

Update:
Run,%A_ScriptDir%\update.ahk

IfWinExist, RPHUB %version%
    WinClose
return

Discord:
Run, https://discord.gg/ptBaYHpSRG
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
sleep 200
SendInput, /do На %place% находится %type%: [%frac% | %otdel% | %sid%].{Enter}
return

Key2: 
State2:=!State2
If state2
{ 
Gui 2: +LastFound +AlwaysOnTop -Caption +ToolWindow 
Gui 2: Color, black 
gui 2: add, picture, h574 w1268, assets/help.png

Winset, ExStyle, +0x20
WinSet, TransColor, 0 1000
Gui 2: Show, x1 y1 NoActivate, window.
 }
Else
Gui 2: Destroy
return

Key3: 
State3:=!State3
If state3
{
Gui 3: +LastFound +AlwaysOnTop -Caption +ToolWindow 
Gui 3: Color, black 
gui 3: add, picture, h177 w459, assets/help2.png           

Winset, ExStyle, +0x20                                                                   
WinSet, TransColor, 0 1000
Gui 3: Show, x1 y1 NoActivate, window.
 }
Else
Gui 3: Destroy
return

Key4: 
State4:=!State4
If state4
{
Gui 4: +LastFound +AlwaysOnTop -Caption +ToolWindow 
Gui 4: Color, black 
gui 4: add, picture, w611 h330, assets/help3.png                                                                               

Winset, ExStyle, +0x20
WinSet, TransColor, 0 1000
Gui 4: Show, x1 y1 NoActivate, window.
 }
Else
Gui 4: Destroy
return

Key5:
State5:=!State5
If state5
{
CustomColor3 = EEAA99
Gui 5: +LastFound +AlwaysOnTop -Caption +ToolWindow 
Gui 5: Color, black
Gui 5: Font, s9
Gui 5: Font, cWhite
Gui 5: Font, w1000
Gui 5: ADD, TEXT, cYellow, ===========================================ТЭН-КОДЫ===========================================                                                                                                                                     
Gui 5: ADD, TEXT,, 10-0    Отмена 
Gui 5: ADD, TEXT,, 10-4    Понял-принял    
Gui 5: ADD, TEXT,, 10-5    Повторите
Gui 5: ADD, TEXT,, 10-6    Не принято (отказ)
Gui 5: ADD, TEXT,, 10-7    Начал патруль
Gui 5: ADD, TEXT,, 10-7R   Закончил патруль
Gui 5: ADD, TEXT,, 10-70   Требуется подкрепление
Gui 5: ADD, TEXT,, 10-71   Требуется медик
Gui 5: ADD, TEXT,, 10-75   Провожу задержание
Gui 5: ADD, TEXT,, 10-9    Состояние стабильное (В патруле)
Gui 5: ADD, TEXT,, 10-10    Провожу задержание
Gui 5: ADD, TEXT,, 10-20    Текущее местоположение 
Gui 5: ADD, TEXT,, 10-33    Требуется эвакуация
Gui 5: ADD, TEXT,, 10-70    Требуется поддержка
Gui 5: ADD, TEXT,, 10-99     Ситуация урегулирована                  
Gui 5: ADD, TEXT, cYellow, ========================================Коды для /mark========================================                      
Gui 5: ADD, TEXT,, CODE-0 - Офицер/агент ранен/убит
Gui 5: ADD, TEXT,, CODE-1 - По офицеру/агенту открыт огонь
Gui 5: ADD, TEXT,, CODE-2 - Вызов без сирен.
Gui 5: ADD, TEXT,, CODE-3 - Вызов с проблесковыми маячками и сиреной 
Gui 5: ADD, TEXT,, CODE-4 - Ситуация урегулирована, все спокойно
Gui 5: ADD, TEXT,, CODE-5 - Ложная тревога
Gui 5: ADD, TEXT,, CODE-6 - Массовые беспорядки 
Gui 5: ADD, TEXT,, CODE-7 - Большое скопление вооруженных лиц

Winset, ExStyle, +0x20
WinSet, TransColor, %CustomColor3% 200
Gui 5: Show, x1 y1 NoActivate, window. 
}
Else
Gui 5: Destroy
return

Key6:
State6:=!State6
If state6
{
Gui 6: +LastFound +AlwaysOnTop -Caption +ToolWindow 
Gui 6: Color, black 
gui 6: add, picture, w613 h286, assets/help5.png                                                                               

Winset, ExStyle, +0x20
WinSet, TransColor, 0 1000
Gui 6: Show, x1 y1 NoActivate, window.
}
Else
Gui 6: Destroy
return

Key7: 
State7:=!State7
If state7
{ 
Gui 7: +LastFound +AlwaysOnTop -Caption +ToolWindow 
Gui 7: Color, black 
gui 7: add, picture, h384 w326, assets/cidhelp.png

Winset, ExStyle, +0x20
WinSet, TransColor, 0 1000
Gui 7: Show, x1 y1 NoActivate, window.
 }
Else
Gui 7: Destroy
return

Key8: 
State8:=!State8
If state8
{ 
Gui 8: +LastFound +AlwaysOnTop -Caption +ToolWindow 
Gui 8: Color, black 
gui 8: add, picture, h393 w459, assets/help4.png

Winset, ExStyle, +0x20
WinSet, TransColor, 0 1000
Gui 8: Show, x1 y1 NoActivate, window.
 }
Else
Gui 8: Destroy
return

;======================================================================================================================Команды

;MISC
:?:..сп::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /me включил%gender% музыку на колонке{enter}
sleep 400
return

:?:..взятьсумку::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do В шкафчике лежит вместительная сумка и пачка зип-пакетов.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me открыл%gender% шкафчик{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% вместительную сумку и пачку зип-пакетов из шкафчика{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do На плече висит вместительная сумка.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Пачка зип-пакетов лежит в подсумке.{enter}
sleep 400
return

:?:..рейдобыск::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do Сумка висит на плече.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me снял%gender% сумку с плеча и положил%gender% её на пол{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me движением руки открыл%gender% сумку{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Сумка открыта.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me осмотрел%gender% склад{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me начал%gender% складывать в сумку все нелегальные предметы{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Сумка заполнена.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me движением руки повесил%gender% сумку на плечо{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Сумка, заполненная нелегалом, висит на плече.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Зип-пакеты лежат в подсумке.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me движением руки достал%gender% зип-пакет из подсумка{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Зип-пакет в руке.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me открыл%gender% зип-пакет и начал%gender% складывать в него все мелкие нелегальные вещества{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Зип-пакет заполнен.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me движением руки закрыл%gender% зип-пакет и положил%gender% его в подсумок{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Заполненный зип-пакет в подсумке.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me движением руки достал%gender% еще один пустой зип-пакет из подсумка{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Зип-пакет в руке.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me открыл%gender% зип-пакет и начал%gender% складывать в него все мелкие нелегальные вещества{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Зип-пакет заполнен.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me движением руки закрыл%gender% зип-пакет и положил%gender% его в подсумок{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Заполненные нелегальными веществами зип-пакеты лежат в подсумке.{enter}
sleep 400
return

:?:..склад::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do Сумка с нелегалом висит на плече.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% зип-пакеты из подсумка и положил%gender% их на полку{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Зип-пакеты на полке.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me снял%gender% сумку с плеча и положил%gender% её на полку{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Сумка с нелегалом лежит на полке.{enter}
sleep 400
return

:?:..багажник::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do Сумка с нелегалом висит на плече.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% зип-пакеты из подсумка и положил%gender% их в багажник{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Зип-пакеты в багажнике.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me снял%gender% сумку с плеча и положил%gender% её в багажник{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Сумка с нелегалом лежит в багажнике.{enter}
sleep 400
return

:?:..взятьполиграф::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do В рюкзаке находится ноутбук, измерительные устройства и полиграф для проведения допроса.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me открыл%gender% рюкзак, затем взял%gender% ноутбук, измерительные устройства и полиграф в руки{enter}
sleep 400
return

:?:..подключитьполиграф::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do В руках агента ноутбук, полиграф и измерительные устройства для проведения допроса.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me поставил%gender% на стол ноутбук и подключил%gender% к нему с помощью проводов полиграф{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me открыл%gender% экран ноутбука, затем нажал%gender% кнопку включения и ввел%gender% пароль{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Вход в систему выполнен.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me включил%gender% специальную программу для работы с полиграфом{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me нажал%gender% на небольшую красную кнопочку на полиграфе{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Полиграф включен.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me надел%gender% на правую руку человека напротив датчик артериального давления и частоты пульса{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me надел%gender% на два пальца левой руки два датчика потоотделения{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me надел%gender% на человека опоясывающий грудь датчик глубины дыхания{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me подключил%gender% измерительные устройства к полиграфу при помощи проводов{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Полиграф готов к проведению измерений.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do На экране ноутбука начали рисоваться графики согласно полученным данным.{enter}
sleep 400
return

:?:..отключитьполиграф::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /me снял%gender% с правой руки человека напротив датчик давления и частоты пульса, после чего положил%gender% его на стол{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me снял%gender% с пальцев левой руки человека датчики потоотделения и положил%gender% их на стол{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me снял%gender% с груди человека датчик глубины дыхания и положил%gender% его на стол{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do На столе лежат несколько датчиков, стоит включенный ноутбук, а также полиграф.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me нажал%gender% на кнопку выключения полиграфа и ноутбука{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Полиграф и ноутбук выключены.{enter}
sleep 400
return

:?:..датьконтракт::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /do Контракт “О конфиденциальном сотрудничестве с FIB” лежит в закрытом ящике письменного стола.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me открыл%gender% ящик письменного стола, достал%gender% Контракт “О конфиденциальном сотрудничестве с FIB” и положил%gender% его на стол{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Шариковая ручка на столе.{enter}
sleep 400
return

:?:..взятьконтракт::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me взял%gender% Контракт “О конфиденциальном сотрудничестве с FIB” и шариковую ручку со стола в руки{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Контракт “О конфиденциальном сотрудничестве с FIB” и шариковая ручка в руках.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me подписал%gender% Контракт “О конфиденциальном сотрудничестве с FIB”, затем передал%gender% его обратно человеку напротив{enter}
sleep 400
return

:?:..датьбоди::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /do В рюкзаке лежит боди-камера и комплект звукозаписывающих устройств.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me снял%gender% рюкзак, затем открыл%gender% его{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% боди-камеру и комплект звукозаписывающих устройств из рюкзака, затем передал%gender% их человеку напротив{enter}
sleep 400
return

:?:..взятьбоди::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me взял%gender% боди-камеру и комплект звукозаписывающих устройств у человека напротив, затем положил%gender% их к себе{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Боди-камера и комплект звукозаписывающих устройств лежат у агента.{enter}
sleep 400
return

:?:..бардачок::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me достал%gender% боди-камеру и комплект звукозаписывающих устройств, сложил%gender% их в бардачок автомобиля{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Боди-камера и комплект звукозаписывающих устройств в бардачке.{enter}
sleep 400
return

:?:..бодиавто::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me открыл%gender% бардачок автомобиля, достал%gender% оттуда боди-камеру и комплект звукозаписывающих устройств{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me сложил%gender% боди-камеру и комплект звукозаписывающих устройств в рюкзак{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Боди-камера и коплект звукозаписывающих устройств в рюкзаке.{enter}
sleep 400
return

:?:..вкл::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /do В рюкзаке лежит боди-камера и комплект звукозаписывающих устройств.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% боди-камеру и комплект звукозаписывающих устройств из рюкзака{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Боди-камера и комплект звукозаписывающих устройств в руках.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me скрытно установил%gender% на одежду боди-камеру и устройства звукозаписи, после чего включил%gender% их нажатием на кнопку питания{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Боди-камера и звукозаписывающие устройства активированы и записывают все происходящее.{enter}
sleep 400
return

:?:..выкл::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me скрытно нажал%gender% на кнопку “save” боди-камеры{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Запись с боди-камеры сохранена на microSD FlashCard.{enter}
sleep 400
return

:?:..датьматы::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /do MicroSD FlashCard с видеоматериалом находится у агента.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me неспешно достал%gender% из кармана microSD FlashCard с видеоматериалами, затем передал%gender% их человеку напротив{enter}
sleep 400
return

:?:..взятьматы::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me взял%gender% microSD FlashCard с видеоматериалами у человека напротив, затем положил%gender% их к себе{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do MicroSD FlashCard с видеоматериалами у агента.{enter}
sleep 400
return

:?:..армия::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /me взял%gender% из ящика с инструментами швабру{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Швабра в руках.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me протянул%gender% руку за ведром, которое стояло рядом{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me аккуратно взял%gender% ведро в руки{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Ведро находится в руках.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me поставил%gender% ведро на пол, намочил%gender% швабру и начал%gender% вытирать пол{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Пол чист.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me взял%gender% в руки тряпку, начал%gender% протирать шкафчики{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Шкафы полностью убраны.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% большой мусорный пакет и стал%gender% убирать мусор с пола{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me подобрал%gender% надкусанное яблоко, закинул%gender% его в пакет{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me подобрал%gender% смятые бумаги и так же сложил%gender% всё в мусорку{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Весь мусор сложен в пакет.{enter}
sleep 400
return

:?:..закрыто::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /do Окна в автомобиле закрыты.
return

:?:.зштп::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /ping{enter}
return

:?:.пинг::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /ping{enter}
return

:?:.ц::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /w{space}
return

:?:.и::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /b{space}
return

:?:.б::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /b{space}
return

:?:.а::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /f{space}
return

:?:.ф::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /f{space}
return

:?:.аи::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /fb{space}
return

:?:.фб::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /fb{space}
return

:?:.с::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /c{space}
return

:?:.си::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /cb{space}
return

:?:.сб::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /cb{space}
return

:?:.вуз::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep{space}
return

:?:.деп::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep{space}
return

:?:.кузщке::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /report{space}
return

:?:.репорт::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /report{space}
return

:?:.ьу::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me{space}
return

:?:.вщ::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /do{space}
return

:?:.екн::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /try{space}
return

:?:.зфн::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /pay{space}
return

:?:.зге::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /put{space}
return

:?:.згдд::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /pull{space}
return

:?:.ызфцтсфкы::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /spawncars
return

:?:..воркпд::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to LSPD: Работайте.
return

:?:..ворксд::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to LSCSD: Работайте.
return

:?:..воркфиб::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to FIB: Работайте.
return

:?:..ворксанг::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to SANG: Работайте.
return

:?:..спавн::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /spawncars
return

:?:..адвокат::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to GOV: Требуется адвокат в допросную{space}
return

:?:..ду::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /do to GOV: Требуется адвокат в допросную{space}
return

:?:..пруфы::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /do В ориентировке указано: "Совершён угон авто марки . Цвет: . Номер:"{left 1}
return

:?:..прокурор::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to GOV: Требуется прокурор в допросную{space}
return

:?:..запросак::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to LSPD/LSCSD: Разрешите работать по АК и ДК.
return

:?:..запросфиб::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to FIB: Разрешите работать по 13.4 УК.
return

:?:..юрсд::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to LSCSD: Разрешите нарушить юрисдикцию для комфортного патруля.
return

:?:..юрпд::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to LSPD: Разрешите нарушить юрисдикцию для комфортного патруля.
return

:?:..миранда::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, Вы задержаны и имеете право хранить молчание. Всё, что вы скажете, может и будет использовано против Вас. Вы имеете право на один телефонный разговор до 2х минут и на одного адвоката. Если вы не можете оплатить услуги адвоката, он будет предоставлен вам государством бесплатно. Ваш адвокат имеет право присутствовать и представлять ваши интересы до и во время допроса. Вы понимаете свои права?
return

:?:..похитка::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to ALL: FIB займётся похищением.
return

:?:..адекват::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to ALL: Требования похитителей адекватные.
return

:?:..неадекват::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to ALL: Требования похитителей неадекватные, требуется помощь всех гос. структур.
return

:?:..коридор::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to ALL: Запрашиваю *** зелёного коридора для машин *** цвета.
return

:?:..заложники::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to ALL: Заложники в безопасности.
return

:?:..банк::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me открыл%gender% сумку, положил%gender% в неё деньги, закрыл%gender% её и закинул%gender% на плечо{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Сумка на плече.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do В сумке лежит $.{left 2}
sleep 400
return

:?:..напол::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me поставил%gender% сумку на землю{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Сумка на земле.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do В сумке лежит $.{left 2}
sleep 400
return

:?:..взятка::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me прохлопал%gender% верхние и нижние карманы человека напротив{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Имеется ли у @ аудио или видеозаписывающее устройство?{left 40}
sleep 400
return

:?:..опз::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me посмотрел%gender% на опознавательный знак человека.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Что написано на опознавательном знаке у @?{left 1}
sleep 400
return

:?:..сел::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /me запрыгнул%gender% в автомобиль через открытое окно{enter}
sleep 400
return

:?:..вылез::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /me выпрыгнул%gender% из автомобиля через открытое окно{enter}
sleep 400
return

:?:..нарко::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /do На столе лежит сумка с мед. приборами.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% резиновые перчатки из тактического пояса и надел%gender% их на руки{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% медицинские ножницы и пробирку с раствором{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% из зип-лока пакетик с порошком, насыпал%gender% порошок в пробирку с раствором{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Тест будет готов через 3 секунды.{enter}
sleep 3000
Sendinput, {t}
sleep 200
Sendinput, /do Результат готов. Раствор изменился в цвете.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Анализ показал содержание наркотических веществ.{enter}
sleep 400
return

:?:..весы::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /do Весы лежат на столе.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me включил%gender% весы и положил%gender% на них пакет с наркотическим веществом{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Весы показали{space}{space}грамм.{left 7}
sleep 400
return

;FUCK NO VOICE
:?:..номера::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me взял%gender% телефон в руки, сфотографировал%gender% номера транспорта и отправил%gender% фотографию диспетчеру{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Фотография успешно отправлена.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Диспетчер прислал ответ.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do В ориентировке указано: "Совершён угон авто марки . Цвет: . Номер:"{left 1}
sleep 400
return

:?:..пред::
IniRead, frac, assets/Settings.ini, USER, frac
IniRead, otdel, assets/Settings.ini, USER, otdel
IniRead, sid, assets/Settings.ini, USER, sid
IniRead, place, assets/Settings.ini, USER, place

SendMessage, 0x50,, 0x4190419,, A
Sendinput, Здравствуйте, являюсь сотрудником %frac%, опознавательный знак на мне находится{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do На %place% находится %type%: [%frac% | %otdel% | %sid%]{Enter}.{enter}
sleep 400
return

:?:..вавто::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me открыл%gender% дверь патрульного автомобиля, посадил%gender% туда задержанного{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me пристегнул%gender% его ремнём безопасности{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Задержанный надёжно пристёгнут ремнём безопасности.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me закрыл%gender% дверь автомобиля{enter}
sleep 400
return

:?:..изавто::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me открыл%gender% дверь патрульного автомобиля{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me отстегнул%gender% ремень безопасности{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Задержанный не пристёгнут ремнём безопасности{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me достал%gender% задержанного из транспорта{enter}
sleep 400
return

:?:..грим::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me взял%gender% в руки мокрую тряпочку, убрал%gender% грим с лица человека{enter}
return

:?:..очки::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me приподнял%gender% очки у человека напротив{enter}
return

:?:..фоторобот::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /me взял%gender% в руки телефон, включил%gender% приложение "Камера"{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me сфотографировал%gender% лицо человека напротив{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Диспетчер прислал ответ, что человек  находится в розыске.{left 21}
sleep 400
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
Sendinput, /dep to LSPD: Вызов принят.
return
:?:..асд::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to LSCSD: Вызов принят.
return
:?:..афиб::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to FIB: Вызов принят.
return

:?:/apd::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to LSPD: Вызов принят.
return
:?:/asd::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to LSCSD: Вызов принят.
return
:?:/afib::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to FIB: Вызов принят.
return


:?:..все::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to ALL:{space}
return

:?:..пд::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to LSPD:{space}
return

:?:..сд::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to SD:{space}
return

:?:..фиб::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to FIB:{space}
return

:?:..санг::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to SANG:{space}
return

:?:..емс::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to EMS:{space}
return

:?:..вн::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to WN:{space}
return

:?:..гов::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /dep to GOV:{space}
return

:?:..клин::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /clearchat
return

:?:..трусы::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /mark 10-20 [Рвут трусы]
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