version := 1.165

SetWorkingDir %A_ScriptDir%

IfnotExist, %A_ScriptDir%\assets
{
FileCreateDir, %A_ScriptDir%\assets
}
;======================================================================================================================Бейджик

IniRead, v, assets/Settings.ini, USER, v
if v != %version%
{
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/Assets/help.png?raw=true, %A_ScriptDir%\assets\help.png
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/Assets/help2.png?raw=true, %A_ScriptDir%\assets\help2.png
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/Assets/help3.png?raw=true, %A_ScriptDir%\assets\help3.png
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/Assets/logo.png?raw=true, %A_ScriptDir%\assets\logo.png
IniWrite, %version%, assets/Settings.ini, USER, v
}

IfnotExist, %A_ScriptDir%\assets\help.png
{
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/Assets/help.png?raw=true, %A_ScriptDir%\assets\help.png
}
IfnotExist, %A_ScriptDir%\assets\help2.png
{
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/Assets/help2.png?raw=true, %A_ScriptDir%\assets\help2.png
}
IfnotExist, %A_ScriptDir%\assets\help3.png
{
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/Assets/help3.png?raw=true, %A_ScriptDir%\assets\help3.png
}
IfnotExist, %A_ScriptDir%\assets\logo.png
{
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/Assets/logo.png?raw=true, %A_ScriptDir%\assets\logo.png
}

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
    IniWrite, Ваш отдел, assets/Settings.ini, USER, otdel
}

if sid=ERROR
    {
	smthwrong = 1
    IniWrite, Ваш статик, assets/Settings.ini, USER, sid
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
;Gui 99: +LastFound +AlwaysOnTop -Caption +ToolWindow 
;Gui 99: Color, black 
;Gui 99: Font, s10
;Gui 99: Font, w1000
;Gui 99: Font, cFFFFFF
;Gui 99: Add, Text, x20 y600 w250, RPHUB %version%
;Gui 99: Add, Text, x20 y620 w250, [%key6%] - Помощь
;WinSet, TransColor, 0
;Gui 99: Show, x1 y1 NoActivate, window.


Gui, Color, 191919
Gui, Font, S20 CWhite, Calibri
Gui, Add, Text, x20 y20 w820 h40 +BackgroundTrans, Бинды
Gui, Add, Picture, x885 y-5 w170 h170 +BackgroundTrans, assets\logo.png
Gui, Font, S10 CWhite, Calibri
Gui, Add, Text, x902 y445 w250 h30 +BackgroundTrans, by #110378 | San Diego
Gui, Font, S15 CWhite, Calibri

Gui, Add, Text, x130 y82 w500 h30 +BackgroundTrans, Бейджик
Gui, Add, Text, x130 y122 w240 h30 +BackgroundTrans, Памятка Общая
Gui, Add, Text, x130 y162 w240 h30 +BackgroundTrans, Памятка Угонки
Gui, Add, Text, x130 y202 w330 h30 +BackgroundTrans, Памятка установки личности
Gui, Add, Text, x130 y242 w330 h30 +BackgroundTrans, ТЕН-КОДЫ
Gui, Add, Text, x130 y282 w330 h30 +BackgroundTrans, Информация о биндах и командах
;=Gui, Add, Text, x130 y322 w330 h30 +BackgroundTrans, .
;=Gui, Add, Text, x130 y362 w330 h30 +BackgroundTrans, .
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
Gui, Add, Button, x902 y269 w150 h30 gSave, Сохранить
Gui, Add, Button, x902 y409 w150 h30 gUpdate, Обновления

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

;=Gui, Add, Hotkey, x22 y320 w95 h30 vKey7, %Key7%
;=Gui, Add, Hotkey, x22 y360 w95 h30 vKey8, %Key8%
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

Gui, 3: -MaximizeBox
Gui, 3: -SysMenu
Gui, 3: Font, S10 CWhite, Calibri
Gui, 3: Color, c4c4c4
Gui, 3: Font, c0x000000
Gui, 3: Add, Text, x2 y10 w70 h18 +0x200 +0x1, Отдел:
Gui, 3: Add, Edit, x65 y10 w70 h21 votdel, %otdel%
Gui, 3: Add, Text, x150 y10 w70 h18 +0x200 +0x1, Статик:
Gui, 3: Add, Edit, x225 y10 w70 h21 vsid, %sid%
Gui, 3: Add, Edit, x320 y10 w70 h21 vtype, %type%
Gui, 3: Add, Text, x393 y12 w70 h18, на
Gui, 3: Add, Edit, x415 y10 w70 h21 vplace, %place%
Gui, 3: Add, Text, x9 y36 w70 h18 +0x200 +0x1, Ваш пол:
Gui, 3: Add, Radio, x70 y33 w80 h23 Group vRadio1 Checked%Radio1%, Мужчина
Gui, 3: Add, Radio, x150 y33 w80 h23 vRadio2 Checked%Radio2%, Женщина
Gui, 3: Add, Button, x320 y36 w70 h20 gSave, Сохранить	
Gui, 3: submit
return

;======================================================================================================================Кнопки

GuiClose:
ExitApp

Command:
MsgBox, 0, Команды, Для использования сокращённых команд, введите в чат указанную команду, а затем нажмите ПРОБЕЛ `n`n===== Общие =====`n..адвокат - Вызов адвоката `n..прокурор - Вызов прокурора `n..запросак - Запрос АК и ДК `n..запросфиб - Запрос 13.4 УК `n..юр - Нарушить юрисдикцию `n..опз - ОПЗ в /do `n..миранда - Миранда `n===== Обращение ===== `n..все - Всем `n..пд - LSPD `n..сд - LSCSD `n..фиб - FIB `n..санг - SANG `n..емс - EMS `n..вн - Weazel News `n..гов - GOV `n===== К-9 ===== `n..нарко - проверка вещества на наркотики `n..весы - проверка сколько вещества на весах `n..запах - [СОБАКА] - проверка на наркотики у игрока `n..сел - [СОБАКА] - запрыгнул в авто `n..вылез - [СОБАКА] - вылез из авто
return

settings:
Gui, 3: Show, w505 h60, Настройки
return

Update:
Run, https://github.com/my0kul/RPHUB/releases ; update git
return

Save:
Gui, submit, NoHide
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
IniRead, otdel, assets/Settings.ini, USER, otdel
IniRead, sid, assets/Settings.ini, USER, sid
IniRead, place, assets/Settings.ini, USER, place

SendInput, {T}
sleep 200
SendInput, /do На %place% находится %type%: [FIB | %otdel% | %sid%]{Enter}.
return

Key2: 
State2:=!State2
If state2
{ 
Gui 2: +LastFound +AlwaysOnTop -Caption +ToolWindow 
Gui 2: Color, black 
Gui 2: Font, s10
Gui 2: Font, w1000
Gui 2: Font, cFFFFFF
gui 2: add, picture, h575 w961, assets/help.png
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
Gui 2: +LastFound +AlwaysOnTop -Caption +ToolWindow 
Gui 2: Color, black 
Gui 2: Font, s10
Gui 2: Font, w1000
Gui 2: Font, cFFFFFF
gui 2: add, picture, h284 w611, assets/help2.png                                                                              
WinSet, TransColor, 0 1000
Gui 2: Show, x1 y1 NoActivate, window.
 }
Else
Gui 2: Destroy
return

Key4: 
State4:=!State4
If state4
{
Gui 2: +LastFound +AlwaysOnTop -Caption +ToolWindow 
Gui 2: Color, black 
Gui 2: Font, s10
Gui 2: Font, w1000
Gui 2: Font, cFFFFFF
gui 2: add, picture, w611 h332, assets/help3.png                                                                               

WinSet, TransColor, 0 1000
Gui 2: Show, x1 y1 NoActivate, window.
 }
Else
Gui 2: Destroy
return

Key5:
State5:=!State5
If state5
{
CustomColor3 = EEAA99
Gui 4: +LastFound +AlwaysOnTop -Caption +ToolWindow 
Gui 4: Color, black
Gui 4: Font, s9
Gui 4: Font, cWhite
Gui 4: Font, w1000
Gui 4: ADD, TEXT, cYellow, ===========================================ТЭН-КОДЫ===========================================                                                                                                                                     
Gui 4: ADD, TEXT,, 10-0    Отмена 
Gui 4: ADD, TEXT,, 10-4    Понял-принял    
Gui 4: ADD, TEXT,, 10-5    Повторите
Gui 4: ADD, TEXT,, 10-6    Не принято (отказ)
Gui 4: ADD, TEXT,, 10-7    Начал патруль
Gui 4: ADD, TEXT,, 10-7R   Закончил патруль
Gui 4: ADD, TEXT,, 10-70   Требуется подкрепление
Gui 4: ADD, TEXT,, 10-71   Требуется медик
Gui 4: ADD, TEXT,, 10-75   Провожу задержание
Gui 4: ADD, TEXT,, 10-9    Состояние стабильное (В патруле)
Gui 4: ADD, TEXT,, 10-10    Провожу задержание
Gui 4: ADD, TEXT,, 10-20    Текущее местоположение 
GUI 4: ADD, TEXT,, 10-33    Требуется эвакуация
GUI 4: ADD, TEXT,, 10-70    Требуется поддержка
GUI 4: ADD, TEXT,, 10-99     Ситуация урегулирована                  
GUI 4: ADD, TEXT, cYellow, ========================================Коды для /mark========================================                      
GUI 4: ADD, TEXT,, CODE-0 - Офицер/агент ранен/убит
GUI 4: ADD, TEXT,, CODE-1 - По офицеру/агенту открыт огонь
GUI 4: ADD, TEXT,, CODE-2 - Вызов без сирен.
GUI 4: ADD, TEXT,, CODE-3 - Вызов с проблесковыми маячками и сиреной 
GUI 4: ADD, TEXT,, CODE-4 - Ситуация урегулирована, все спокойно
GUI 4: ADD, TEXT,, CODE-5 - Ложная тревога
GUI 4: ADD, TEXT,, CODE-6 - Массовые беспорядки 
GUI 4: ADD, TEXT,, CODE-7 - Большое скопление вооруженных лиц
WinSet, TransColor, %CustomColor3% 200
Gui 4: Show, x1 y1 NoActivate, window. 
}
Else
Gui 4: Destroy
return

Key6:
State6:=!State6

If state6
{
CustomColor1 = EEAA99
Gui 5: +LastFound +AlwaysOnTop -Caption +ToolWindow
Gui 5: Color, black
Gui 5: Font, cWhite
Gui 5: Font, s9
Gui 5: Font, w1000
Gui 5: Font,, MS sans serif

Gui 5: Add, Text, c8FBC8F,[БИНДЫ]                 [ОТЫГРОВКИ]
Gui 5: Add, Text,, [%key1%]    |          Бейджик
Gui 5: Add, Text,, [%key2%]    |          Памятка общая
Gui 5: Add, Text,, [%key3%]    |          Памятка угонки
Gui 5: Add, Text,, [%key4%]    |          Памятка определение личности
Gui 5: Add, Text,, [%key5%]    |          ТЕН-КОДЫ
Gui 5: Add, Text,, [%key6%]    |          Отключить подсказку
Gui 5: Add, Text, c8FBC8F,[КОМАНДЫ]
Gui 5: Add, Text,, ..адвокат - Вызов адвоката
Gui 5: Add, Text,, ..прокурор - Вызов прокурора
Gui 5: Add, Text,, ..запросак - Работу по АК и ДК
Gui 5: Add, Text,, ..запросфиб - Работу по 13.4 УК
Gui 5: Add, Text,, ..юр - Запросить юрисдикцию
Gui 5: Add, Text,, ..миранда - (Только если фулл без звука)
Gui 5: Add, Text,, ..опз - Проверка ОПЗ на госнике
Gui 5: Add, Text,, ..нарко - Проверка вещества на наркотики
Gui 5: Add, Text,, ..весы - Весы для наркотиков
Gui 5: Add, Text, c8FBC8F,[K-9 DOG]
Gui 5: Add, Text,, ..запах - проверка на нарко
Gui 5: Add, Text,, ..сел - запрыгнуть в авто
Gui 5: Add, Text,, ..вылез - выпрыгнул из авто
WinSet, TransColor, %CustomColor1% 200
Gui 5: Show, x1 y1 w300 NoActivate, window.
}
Else
Gui 5: Destroy
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
Sendinput, /me снял%gender% сумку с плеча и положил%gender% ее на пол{enter}
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
Sendinput, /me движением руки повесил%gender% сумку на плече{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Сумка заполненная нелегалом висит на плече.{enter}
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
Sendinput, /do Заполненный нелегальными веществами зип-пакеты лежат в подсумке.{enter}
sleep 400
return

:?:..положитьсумку::
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
Sendinput, /me снял%gender% сумку с плеча и положил%gender% ее на полку{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /do Сумка с нелегалом лежит на полке.{enter}
sleep 400
return

:?:..взятьполиграф::
SendMessage, 0x50,, 0x4190419,, A
sleep 200
Sendinput, /do В шкафчике находится ноутбук, измерительные устройства и полиграф для проведения допроса.{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, /me открыл%gender% шкафчик, затем взял%gender% ноутбук, измерительные устройства и полиграф в руки{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, ЗАГОТОВКА{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, ЗАГОТОВКА{enter}
sleep 400
Sendinput, {t}
sleep 200
Sendinput, ЗАГОТОВКА{enter}
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
Sendinput, /do Вход успешен.{enter}
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
Sendinput, /me снял%gender% с правой руки человека напротив датчик давления и частоты пульса после чего положил%gender% его на стол{enter}
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

:?:..закрыто::/do Окна в автомобиле закрыты.

:?:.зштп::/ping{enter}

:?:.ц::/w

:?:.и::/b
:?:.б::/b

:?:.а::/f
:?:.ф::/f

:?:.аи::/fb
:?:.фб::/fb

:?:.с::/c
:?:.си::/cb
:?:.сб::/cb

:?:.вуз::/dep
:?:.деп::/dep

:?:.кузщке::/report
:?:.репорт::/report

:?:.ьу::/me
:?:.вщ::/do
:?:.екн::/try

:?:..взятка::/do Имеется ли у собеседника аудио или видеозаписывающее устройство? ; ПАСХАЛКО
:?:..адвокат::/dep to GOV: Требуется адвокат в допросную
:?:..прокурор::/dep to GOV: Требуется прокурор в допросную
:?:..запросак::/dep to LSPD/LSCSD: Разрешите работать по АК и ДК.
:?:..запросфиб::/dep to FIB: Разрешите работать по 13.4 УК.
:?:..юр::/dep to LSCSD: Разрешите нарушить юрисдикцию для комфотного патруля.
:?:..миранда::Вы задержаны и имеете право хранить молчание. Всё, что вы скажете, может и будет использовано против Вас. Вы имеете право на один телефонный разговор до 2х минут и на одного адвоката. Если вы не можете оплатить услуги адвоката, он будет предоставлен вам государством бесплатно. Ваш адвокат имеет право присутствовать и представлять ваши интересы до и во время допроса. Вы понимаете свои права?
:?:..опз::/do Что написано на опознавательном знаке @?{left 1}
:?:..запах::/do Имеются ли наркотические вещества у @?{left 1}

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

:?:..7::/mark CODE-7
:?:..4::/mark CODE-4
:?:..0::/mark CODE-0

:?:..все::/dep to ALL:
:?:..пд::/dep to LSPD:--
:?:..сд::/dep to SD:
:?:..фиб::/dep to FIB:
:?:..санг::/dep to SANG:
:?:..емс::/dep to EMS:
:?:..вн::/dep to WN:
:?:..гов::/dep to GOV: