version := 1.46
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
URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/ourfamily.png?raw=true, %A_ScriptDir%\assets\ourfamily.png
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

IfnotExist, %A_ScriptDir%\assets\ourfamily.png
	URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/ourfamily.png?raw=true, %A_ScriptDir%\assets\ourfamily.png

IfnotExist, %A_ScriptDir%\assets\tencode.png
	URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/tencode.png?raw=true, %A_ScriptDir%\assets\tencode.png

IfnotExist, %A_ScriptDir%\assets\cidhelp.png
	URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/cidhelp.png?raw=true, %A_ScriptDir%\assets\cidhelp.png

IfnotExist, %A_ScriptDir%\assets\logo.png
	URLDownloadToFile, https://github.com/my0kul/RPHUB/blob/main/assets/logo.png?raw=true, %A_ScriptDir%\assets\logo.png

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
;Gui, Настройки: Add, Edit, x370 y10 w70 h21 vtype, %type%
;Gui, Настройки: Add, Text, x443 y12 w20 h18, на
;Gui, Настройки: Add, Edit, x465 y10 w70 h21 vplace, %place%
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

;Gui, ГенераторИсков: Add, Button, x305 y175 w140 h20 gMakeScreenshot, Скриншот экрана

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
Run, https://discord.gg/gyY28sdrc7
return

MakeScreenshot:
screenshot:=(A_ScriptDir . "\screenshot.png")
SaveScreenshotToFile(0, 0, A_ScreenWidth, A_ScreenHeight, screenshot)
imgur := SendImageToImgur(screenshot,ClientID:="b43407a79b2308a")
GuiControl,, i_pass, %imgur%
i_pass = %imgur%
Filedelete, %A_ScriptDir%\screenshot.png
return

SaveScreenshotToFile(x, y, w, h, filePath)
{
	hBitmap := GetHBitmapFromScreen(x, y, w, h)
	gdip := new GDIplus
	pBitmap := gdip.BitmapFromHBitmap(hBitmap)
	DllCall("DeleteObject", Ptr, hBitmap)
	gdip.SaveBitmapToFile(pBitmap, filePath)
	gdip.DisposeImage(pBitmap)
}

GetHBitmapFromScreen(x, y, w, h)
{
	hDC := DllCall("GetDC", Ptr, 0, Ptr)
	hBM := DllCall("CreateCompatibleBitmap", Ptr, hDC, Int, w, Int, h, Ptr)
	pDC := DllCall("CreateCompatibleDC", Ptr, hDC, Ptr)
	oBM := DllCall("SelectObject", Ptr, pDC, Ptr, hBM, Ptr)
	DllCall("BitBlt", Ptr, pDC, Int, 0, Int, 0, Int, w, Int, h, Ptr, hDC, Int, x, Int, y, UInt, 0x00CC0020)
	DllCall("SelectObject", Ptr, pDC, Ptr, oBM)
	DllCall("DeleteDC", Ptr, pDC)
	DllCall("ReleaseDC", Ptr, 0, Ptr, hDC)
	Return hBM
}

SendImageToImgur(imagePath, ClientID, JpegQuality := "")  
{
	oFile := FileOpen(imagePath, "r")
	oFile.Pos := 0
	oFile.RawRead(buff, size := oFile.length)
	oFile.Close()
	strBase64 := CryptBinaryToStringBASE64(&buff, size, true)
	http := ComObjCreate("Msxml2.XMLHTTP")
	http.open("POST", "https://api.imgur.com/3/image", true)
	http.SetRequestHeader("authorization", "Client-ID " . ClientID)
	http.send(strBase64)
	VarSetCapacity(strBase64, 0), VarSetCapacity(buff, 0)
	while !(http.readyState = 4)
		Continue
	json:=http.responseText
	RegExMatch(json, """link"":""(.*?)""", match)
	link := StrReplace(match1, "\")
	return link
}

CryptBinaryToStringBASE64(pData, Bytes, NOCRLF = "")  {
	static CRYPT_STRING_BASE64 := 1, CRYPT_STRING_NOCRLF := 0x40000000
	CRYPT := CRYPT_STRING_BASE64 | (NOCRLF ? CRYPT_STRING_NOCRLF : 0)
	DllCall("Crypt32\CryptBinaryToString", Ptr, pData, UInt, Bytes, UInt, CRYPT, Ptr, 0, UIntP, Chars)
	VarSetCapacity(OutData, Chars * (A_IsUnicode ? 2 : 1))
	DllCall("Crypt32\CryptBinaryToString", Ptr, pData, UInt, Bytes, UInt, CRYPT, Str, OutData, UIntP, Chars)
	Return OutData
}

class GDIplus   {
	__New()  {
		if !DllCall("GetModuleHandle", Str, "gdiplus", Ptr)
			DllCall("LoadLibrary", Str, "gdiplus")
		VarSetCapacity(si, A_PtrSize = 8 ? 24 : 16, 0), si := Chr(1)
		DllCall("gdiplus\GdiplusStartup", PtrP, pToken, Ptr, &si, Ptr, 0)
		this.token := pToken
	}
	__Delete()  {
		DllCall("gdiplus\GdiplusShutdown", Ptr, this.token)
		if hModule := DllCall("GetModuleHandle", Str, "gdiplus", Ptr)
			DllCall("FreeLibrary", Ptr, hModule)
	}
	BitmapFromHBitmap(hBitmap, Palette := 0)  {
		DllCall("gdiplus\GdipCreateBitmapFromHBITMAP", Ptr, hBitmap, Ptr, Palette, PtrP, pBitmap)
		return pBitmap
	}
	SaveBitmapToFile(pBitmap, sOutput, Quality=75)  {
		SplitPath, sOutput,,, Extension
		if Extension not in BMP,DIB,RLE,JPG,JPEG,JPE,JFIF,GIF,TIF,TIFF,PNG
			return -1
		DllCall("gdiplus\GdipGetImageEncodersSize", UIntP, nCount, UIntP, nSize)
		VarSetCapacity(ci, nSize)
		DllCall("gdiplus\GdipGetImageEncoders", UInt, nCount, UInt, nSize, Ptr, &ci)
		if !(nCount && nSize)
			return -2
		Loop, % nCount  {
			sString := StrGet(NumGet(ci, (idx := (48+7*A_PtrSize)*(A_Index-1))+32+3*A_PtrSize), "UTF-16")
			if !InStr(sString, "*." Extension)
				continue
			pCodec := &ci+idx
			break
		}
		if !pCodec
			return -3
		if RegExMatch(Extension, "i)^J(PG|PEG|PE|FIF)$") && Quality != 75  {
			DllCall("gdiplus\GdipGetEncoderParameterListSize", Ptr, pBitmap, Ptr, pCodec, UintP, nSize)
			VarSetCapacity(EncoderParameters, nSize, 0)
			DllCall("gdiplus\GdipGetEncoderParameterList", Ptr, pBitmap, Ptr, pCodec, UInt, nSize, Ptr, &EncoderParameters)
			Loop, % NumGet(EncoderParameters, "UInt")  {
				elem := (24+A_PtrSize)*(A_Index-1) + 4 + (pad := A_PtrSize = 8 ? 4 : 0)
				if (NumGet(EncoderParameters, elem+16, "UInt") = 1) && (NumGet(EncoderParameters, elem+20, "UInt") = 6)  {
					p := elem+&EncoderParameters-pad-4
					NumPut(Quality, NumGet(NumPut(4, NumPut(1, p+0)+20, "UInt")), "UInt")
					break
				}
			}
		}
		if A_IsUnicode
			pOutput := &sOutput
		else  {
			VarSetCapacity(wOutput, StrPut(sOutput, "UTF-16")*2, 0)
			StrPut(sOutput, &wOutput, "UTF-16")
			pOutput := &wOutput
		}
		E := DllCall("gdiplus\GdipSaveImageToFile", Ptr, pBitmap, Ptr, pOutput, Ptr, pCodec, UInt, p ? p : 0)
		return E ? -5 : 0
	}
	DisposeImage(pBitmap)  {
		return DllCall("gdiplus\GdipDisposeImage", Ptr, pBitmap)
	}
}

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
	Clipboard = %msg%
	sleep 300
	Send ^v
	sleep 300
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

;======================================================================================================================Команды

;MISC
:?:..сп::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me включил%gender% музыку на колонке{enter}
return

:?:..взятьсумку::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /do В шкафчике лежит вместительная сумка и пачка зип-пакетов.{enter}
ChatOpen()
SendInput, /me открыл%gender% шкафчик{enter}
ChatOpen()
SendInput, /me достал%gender% вместительную сумку и пачку зип-пакетов из шкафчика{enter}
ChatOpen()
SendInput, /do На плече висит вместительная сумка.{enter}
ChatOpen()
SendInput, /do Пачка зип-пакетов лежит в подсумке.{enter}
return

:?:..рейдобыск::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /do Сумка висит на плече.{enter}
ChatOpen()
SendInput, /me снял%gender% сумку с плеча и положил%gender% её на пол{enter}
ChatOpen()
SendInput, /me движением руки открыл%gender% сумку{enter}
ChatOpen()
SendInput, /do Сумка открыта.{enter}
ChatOpen()
SendInput, /me осмотрел%gender% склад{enter}
ChatOpen()
SendInput, /me начал%gender% складывать в сумку все нелегальные предметы{enter}
ChatOpen()
SendInput, /do Сумка заполнена.{enter}
ChatOpen()
SendInput, /me движением руки повесил%gender% сумку на плечо{enter}
ChatOpen()
SendInput, /do Сумка, заполненная нелегалом, висит на плече.{enter}
ChatOpen()
SendInput, /do Зип-пакеты лежат в подсумке.{enter}
ChatOpen()
SendInput, /me движением руки достал%gender% зип-пакет из подсумка{enter}
ChatOpen()
SendInput, /do Зип-пакет в руке.{enter}
ChatOpen()
SendInput, /me открыл%gender% зип-пакет и начал%gender% складывать в него все мелкие нелегальные вещества{enter}
ChatOpen()
SendInput, /do Зип-пакет заполнен.{enter}
ChatOpen()
SendInput, /me движением руки закрыл%gender% зип-пакет и положил%gender% его в подсумок{enter}
ChatOpen()
SendInput, /do Заполненный зип-пакет в подсумке.{enter}
ChatOpen()
SendInput, /me движением руки достал%gender% еще один пустой зип-пакет из подсумка{enter}
ChatOpen()
SendInput, /do Зип-пакет в руке.{enter}
ChatOpen()
SendInput, /me открыл%gender% зип-пакет и начал%gender% складывать в него все мелкие нелегальные вещества{enter}
ChatOpen()
SendInput, /do Зип-пакет заполнен.{enter}
ChatOpen()
SendInput, /me движением руки закрыл%gender% зип-пакет и положил%gender% его в подсумок{enter}
ChatOpen()
SendInput, /do Заполненные нелегальными веществами зип-пакеты лежат в подсумке.{enter}
return

:?:..склад::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /do Сумка с нелегалом висит на плече.{enter}
ChatOpen()
SendInput, /me достал%gender% зип-пакеты из подсумка и положил%gender% их на полку{enter}
ChatOpen()
SendInput, /do Зип-пакеты на полке.{enter}
ChatOpen()
SendInput, /me снял%gender% сумку с плеча и положил%gender% её на полку{enter}
ChatOpen()
SendInput, /do Сумка с нелегалом лежит на полке.{enter}
return

:?:..багажник::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /do Сумка с нелегалом висит на плече.{enter}
ChatOpen()
SendInput, /me достал%gender% зип-пакеты из подсумка и положил%gender% их в багажник{enter}
ChatOpen()
SendInput, /do Зип-пакеты в багажнике.{enter}
ChatOpen()
SendInput, /me снял%gender% сумку с плеча и положил%gender% её в багажник{enter}
ChatOpen()
SendInput, /do Сумка с нелегалом лежит в багажнике.{enter}
return

:?:..взятьполиграф::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /do В рюкзаке находится ноутбук, измерительные устройства и полиграф для проведения допроса.{enter}
ChatOpen()
SendInput, /me открыл%gender% рюкзак, затем взял%gender% ноутбук, измерительные устройства и полиграф в руки{enter}
return

:?:..подключитьполиграф::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /do В руках агента ноутбук, полиграф и измерительные устройства для проведения допроса.{enter}
ChatOpen()
SendInput, /me поставил%gender% на стол ноутбук и подключил%gender% к нему с помощью проводов полиграф{enter}
ChatOpen()
SendInput, /me открыл%gender% экран ноутбука, затем нажал%gender% кнопку включения и ввел%gender% пароль{enter}
ChatOpen()
SendInput, /do Вход в систему выполнен.{enter}
ChatOpen()
SendInput, /me включил%gender% специальную программу для работы с полиграфом{enter}
ChatOpen()
SendInput, /me нажал%gender% на небольшую красную кнопочку на полиграфе{enter}
ChatOpen()
SendInput, /do Полиграф включен.{enter}
ChatOpen()
SendInput, /me надел%gender% на правую руку человека напротив датчик артериального давления и частоты пульса{enter}
ChatOpen()
SendInput, /me надел%gender% на два пальца левой руки два датчика потоотделения{enter}
ChatOpen()
SendInput, /me надел%gender% на человека опоясывающий грудь датчик глубины дыхания{enter}
ChatOpen()
SendInput, /me подключил%gender% измерительные устройства к полиграфу при помощи проводов{enter}
ChatOpen()
SendInput, /do Полиграф готов к проведению измерений.{enter}
ChatOpen()
SendInput, /do На экране ноутбука начали рисоваться графики согласно полученным данным.{enter}
return

:?:..отключитьполиграф::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me снял%gender% с правой руки человека напротив датчик давления и частоты пульса, после чего положил%gender% его на стол{enter}
ChatOpen()
SendInput, /me снял%gender% с пальцев левой руки человека датчики потоотделения и положил%gender% их на стол{enter}
ChatOpen()
SendInput, /me снял%gender% с груди человека датчик глубины дыхания и положил%gender% его на стол{enter}
ChatOpen()
SendInput, /do На столе лежат несколько датчиков, стоит включенный ноутбук, а также полиграф.{enter}
ChatOpen()
SendInput, /me нажал%gender% на кнопку выключения полиграфа и ноутбука{enter}
ChatOpen()
SendInput, /do Полиграф и ноутбук выключены.{enter}
return

:?:..датьконтракт::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /do Контракт “О конфиденциальном сотрудничестве с %frac%” лежит на столе.{enter}
ChatOpen()
SendInput, /me взял%gender% контракт “О конфиденциальном сотрудничестве с %frac%” и положил%gender% его ближе к человеку{enter}
ChatOpen()
SendInput, /do Шариковая ручка на столе.{enter}
return

:?:..взятьконтракт::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me взял%gender% Контракт “О конфиденциальном сотрудничестве с %frac%” и шариковую ручку со стола в руки{enter}
ChatOpen()
SendInput, /do Контракт “О конфиденциальном сотрудничестве с %frac%” и шариковая ручка в руках.{enter}
ChatOpen()
SendInput, /me подписал%gender% Контракт “О конфиденциальном сотрудничестве с %frac%”, затем передал%gender% его обратно человеку напротив{enter}
return

:?:..датьбоди::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /do На столе лежит боди-камера и комплект звукозаписывающих устройств.{enter}
ChatOpen()
SendInput, /me взял%gender% боди-камеру и комплект звукозаписывающих устройств со стола, передал%gender% их человеку напротив{enter}
return

:?:..взятьбоди::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me взял%gender% боди-камеру и комплект звукозаписывающих устройств у человека напротив, затем положил%gender% их к себе{enter}
ChatOpen()
SendInput, /do Боди-камера и комплект звукозаписывающих устройств лежат у агента.{enter}
return

:?:..бардачок::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me достал%gender% боди-камеру и комплект звукозаписывающих устройств, сложил%gender% их в бардачок автомобиля{enter}
ChatOpen()
SendInput, /do Боди-камера и комплект звукозаписывающих устройств в бардачке.{enter}
return

:?:..бодиавто::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me открыл%gender% бардачок автомобиля, достал%gender% оттуда боди-камеру и комплект звукозаписывающих устройств{enter}
ChatOpen()
SendInput, /me сложил%gender% боди-камеру и комплект звукозаписывающих устройств в рюкзак{enter}
ChatOpen()
SendInput, /do Боди-камера и коплект звукозаписывающих устройств в рюкзаке.{enter}
return

:?:..вкл::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /do В рюкзаке лежит боди-камера и комплект звукозаписывающих устройств.{enter}
ChatOpen()
SendInput, /me достал%gender% боди-камеру и комплект звукозаписывающих устройств из рюкзака{enter}
ChatOpen()
SendInput, /do Боди-камера и комплект звукозаписывающих устройств в руках.{enter}
ChatOpen()
SendInput, /me скрытно установил%gender% на одежду боди-камеру и устройства звукозаписи, после чего включил%gender% их нажатием на кнопку питания{enter}
ChatOpen()
SendInput, /do Боди-камера и звукозаписывающие устройства активированы и записывают все происходящее.{enter}
return

:?:..выкл::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me скрытно нажал%gender% на кнопку “save” боди-камеры{enter}
ChatOpen()
SendInput, /do Запись с боди-камеры сохранена на microSD FlashCard.{enter}
return

:?:..датьматы::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /do MicroSD FlashCard с видеоматериалом находится у агента.{enter}
ChatOpen()
SendInput, /me неспешно достал%gender% из кармана microSD FlashCard с видеоматериалами, затем передал%gender% их человеку напротив{enter}
return

:?:..взятьматы::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me взял%gender% microSD FlashCard с видеоматериалами у человека напротив, затем положил%gender% их к себе{enter}
ChatOpen()
SendInput, /do MicroSD FlashCard с видеоматериалами у агента.{enter}
return

:?:..армия::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me взял%gender% из ящика с инструментами швабру{enter}
ChatOpen()
SendInput, /do Швабра в руках.{enter}
ChatOpen()
SendInput, /me протянул%gender% руку за ведром, которое стояло рядом{enter}
ChatOpen()
SendInput, /me аккуратно взял%gender% ведро в руки{enter}
ChatOpen()
SendInput, /do Ведро находится в руках.{enter}
ChatOpen()
SendInput, /me поставил%gender% ведро на пол, намочил%gender% швабру и начал%gender% вытирать пол{enter}
ChatOpen()
SendInput, /do Пол чист.{enter}
ChatOpen()
SendInput, /me взял%gender% в руки тряпку, начал%gender% протирать шкафчики{enter}
ChatOpen()
SendInput, /do Шкафы полностью убраны.{enter}
ChatOpen()
SendInput, /me достал%gender% большой мусорный пакет и стал%gender% убирать мусор с пола{enter}
ChatOpen()
SendInput, /me подобрал%gender% надкусанное яблоко, закинул%gender% его в пакет{enter}
ChatOpen()
SendInput, /me подобрал%gender% смятые бумаги и так же сложил%gender% всё в мусорку{enter}
ChatOpen()
SendInput, /do Весь мусор сложен в пакет.{enter}
return

:?:..закрыто::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /do Окна в автомобиле закрыты.
return

:?:.зштп::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /ping{enter}
return

:?:.пинг::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /ping{enter}
return

:?:.ц::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /w{space}
return

:?:.и::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /b{space}
return

:?:.б::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /b{space}
return

:?:.а::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /f{space}
return

:?:.ф::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /f{space}
return

:?:.аи::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /fb{space}
return

:?:.фб::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /fb{space}
return

:?:.с::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /c{space}
return

:?:.си::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /cb{space}
return

:?:.сб::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /cb{space}
return

:?:.вуз::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep{space}
return

:?:.деп::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep{space}
return

:?:.кузщке::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /report{space}
return

:?:.репорт::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /report{space}
return

:?:.ьу::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me{space}
return

:?:.вщ::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /do{space}
return

:?:.екн::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /try{space}
return

:?:.зфн::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pay{space}
return

:?:.зге::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /put{space}
return

:?:.згдд::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /pull{space}
return

:?:.ызфцтсфкы::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /spawncars
return

:?:..воркпд::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to LSPD: Работайте.
return

:?:..ворксд::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to LSCSD: Работайте.
return

:?:..воркфиб::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to FIB: Работайте.
return

:?:..ворксанг::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to SANG: Работайте.
return

:?:..спавн::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /spawncars
return

:?:..адвокат::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to GOV: Требуется адвокат в допросную{space}
return

:?:..рация::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /do to GOV: Требуется адвокат в допросную{space}
return

:?:..пруфы::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /do В ориентировке указано: "Совершён угон авто марки . Цвет: . Номер:"{left 1}
return

:?:..прокурор::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to GOV: Требуется прокурор в допросную{space}
return

:?:..запросак::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to LSPD/LSCSD: Разрешите работать по АК и ДК.
return

:?:..запросфиб::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to FIB: Разрешите работать по  УК.{left 4}
return

:?:..юрсд::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to LSCSD: Разрешите нарушить юрисдикцию для комфортного патруля.
return

:?:..юрпд::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to LSPD: Разрешите нарушить юрисдикцию для комфортного патруля.
return

:?:..миранда::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Вы задержаны и имеете право хранить молчание. Всё, что вы скажете, может и будет использовано против Вас. Вы имеете право на один телефонный разговор до 2х минут и на одного адвоката. Если вы не можете оплатить услуги адвоката, он будет предоставлен вам государством бесплатно. Ваш адвокат имеет право присутствовать и представлять ваши интересы до и во время допроса. Вы понимаете свои права?
return

:?:..похитка::
IniRead, frac, assets/Settings.ini, USER, frac
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to ALL: %frac% займётся похищением.
return

:?:..банк::
IniRead, frac, assets/Settings.ini, USER, frac
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to ALL: %frac% займётся банком.
return

:?:..адекват::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to ALL: Требования похитителей адекватные.
return

:?:..неадекват::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to ALL: Требования похитителей неадекватные, требуется помощь всех гос. структур.
return

:?:..коридор::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to ALL: Запрашиваю *** зелёного коридора для машин *** цвета.
return

:?:..заложники::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to ALL: Заложники в безопасности.
return

:?:..снятьденьги::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me открыл%gender% сумку, положил%gender% в неё деньги, закрыл%gender% её и закинул%gender% на плечо{enter}
ChatOpen()
SendInput, /do Сумка на плече.{enter}
ChatOpen()
SendInput, /do В сумке лежит $.{left 2}
return

:?:..напол::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me поставил%gender% сумку на землю{enter}
ChatOpen()
SendInput, /do Сумка на земле.{enter}
ChatOpen()
SendInput, /do В сумке лежит $.{left 2}
return

:?:..взятка::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me прохлопал%gender% верхние и нижние карманы человека напротив{enter}
ChatOpen()
SendInput, /do Имеется ли у @ аудио или видеозаписывающее устройство?{left 40}
return

:?:..опз::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me посмотрел%gender% на опознавательный знак человека{enter}
ChatOpen()
SendInput, /do Какая государственная структура, отдел и должность указаны на опознавательном знаке у @?{left 1}
return

:?:..сел::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me запрыгнул%gender% в автомобиль через открытое окно{enter}
return

:?:..вылез::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me выпрыгнул%gender% из автомобиля через открытое окно{enter}
return

:?:..дог::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me обнюхал%gender% человека напротив{enter}
ChatOpen()
SendInput, /do Имеются ли у @ наркотические или взрывчатые вещества?{left 39}
return

:?:..ошейник::
SendMessage, 0x50,, 0x4190419,, A
IniRead, frac, assets/Settings.ini, USER, frac
IniRead, otdel, assets/Settings.ini, USER, otdel

SendInput, /do На ошейнике закреплён жетон: [%frac% | %otdel%].
return

:?:..нарко::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /do На столе лежит сумка с мед. приборами.{enter}
ChatOpen()
SendInput, /me достал%gender% резиновые перчатки из тактического пояса и надел%gender% их на руки{enter}
ChatOpen()
SendInput, /me достал%gender% медицинские ножницы и пробирку с раствором{enter}
ChatOpen()
SendInput, /me достал%gender% из зип-лока пакетик с порошком, насыпал%gender% порошок в пробирку с раствором{enter}
ChatOpen()
SendInput, /do Тест будет готов через 3 секунды.{enter}
sleep 3000
SendInput, {t}
sleep 200
SendInput, /do Результат готов. Раствор изменился в цвете.{enter}
ChatOpen()
SendInput, /do Анализ показал содержание наркотических веществ.{enter}
return

:?:..весы::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /do Весы лежат на столе.{enter}
ChatOpen()
SendInput, /me включил%gender% весы и положил%gender% на них пакет с наркотическим веществом{enter}
ChatOpen()
SendInput, /do Весы показали{space}{space}грамм.{left 7}
return

;FUCK NO VOICE
:?:..номера::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me взял%gender% телефон в руки, сфотографировал%gender% номера транспорта и отправил%gender% фотографию диспетчеру{enter}
ChatOpen()
SendInput, /do Фотография успешно отправлена.{enter}
ChatOpen()
SendInput, /do Диспетчер прислал ответ.{enter}
ChatOpen()
SendInput, /do В ориентировке указано: "Совершён угон авто марки . Цвет: . Номер:"{left 1}
return

:?:..пред::
IniRead, frac, assets/Settings.ini, USER, frac
IniRead, otdel, assets/Settings.ini, USER, otdel
IniRead, rank, assets/Settings.ini, USER, rank
IniRead, place, assets/Settings.ini, USER, place

SendMessage, 0x50,, 0x4190419,, A
SendInput, Здравствуйте, являюсь сотрудником %frac%, опознавательный знак на мне находится{enter}
ChatOpen()
rank_text:= TransformRank(frac, rank)
SendInput, /do На %place% находится %type%: [%frac% | %otdel% ].{enter}
return

:?:..вавто::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me открыл%gender% дверь патрульного автомобиля, посадил%gender% туда задержанного{enter}
ChatOpen()
SendInput, /me пристегнул%gender% его ремнём безопасности{enter}
ChatOpen()
SendInput, /do Задержанный надёжно пристёгнут ремнём безопасности.{enter}
ChatOpen()
SendInput, /me закрыл%gender% дверь автомобиля{enter}
ChatOpen()
SendInput, /put{space}
return

:?:..изавто::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me открыл%gender% дверь патрульного автомобиля{enter}
ChatOpen()
SendInput, /me отстегнул%gender% ремень безопасности{enter}
ChatOpen()
SendInput, /do Задержанный не пристёгнут ремнём безопасности{enter}
ChatOpen()
SendInput, /me достал%gender% задержанного из транспорта{enter}
ChatOpen()
SendInput, /pull{space}
return

:?:..грим::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me взял%gender% в руки мокрую тряпочку, убрал%gender% грим с лица человека{enter}
return

:?:..очки::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me приподнял%gender% очки у человека напротив{enter}
return

:?:..фоторобот::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me взял%gender% в руки телефон, включил%gender% приложение "Камера"{enter}
ChatOpen()
SendInput, /me сфотографировал%gender% лицо человека напротив{enter}
ChatOpen()
SendInput, /do Диспетчер прислал ответ, что человек  находится в розыске.{left 21}
return

:?:..видеозапись::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Требую у вас показать видеофиксацию правонарушения задержанного на основании статьи 5.1 Закона "О деятельности Коллегии Адвокатов", а так же 2.1 Закона "О деятельности Коллегии Адвокатов"
return

:?:..апрокурор::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Требую у вас вызвать прокурора на основании статьи 2.1.9 Процессуального кодекса
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
SendInput, /dep to LSPD: Вызов принят.
return
:?:..асд::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to LSCSD: Вызов принят.
return
:?:..афиб::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to FIB: Вызов принят.
return
:?:..асанг::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to SANG: Вызов принят.
return
:?:..агов::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to GOV: Вызов принят.
return

:?:/apd::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to LSPD: Вызов принят.
return
:?:/asd::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to LSCSD: Вызов принят.
return
:?:/afib::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to FIB: Вызов принят.
return
:?:/asang::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to SANG: Вызов принят.
return
:?:/agov::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to GOV: Вызов принят.
return


:?:..все::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to ALL:{space}
return

:?:..пд::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to LSPD:{space}
return

:?:..сд::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to SD:{space}
return

:?:..фиб::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to FIB:{space}
return

:?:..санг::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to SANG:{space}
return

:?:..емс::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to EMS:{space}
return

:?:..вн::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to WN:{space}
return

:?:..гов::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to GOV:{space}
return

:?:/all::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to ALL:{space}
return

:?:/pd::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to LSPD:{space}
return

:?:/sd::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to SD:{space}
return

:?:/fib::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to FIB:{space}
return

:?:/sang::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to SANG:{space}
return

:?:/ems::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to EMS:{space}
return

:?:/wn::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to WN:{space}
return

:?:/gov::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /dep to GOV:{space}
return

:?:..клин::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /clearchat
return

:?:..трусы::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /mark 10-20 [Рвут трусы]
return

:?:..чтонаписано::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /do Что написано в ориентировке у @?{left 1}
return

:?:..фрей::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /me наклеил%gender% на поверхность листовку: "Молодая семья FREY ищет таланты! Почта для связи: mansela, myokul"
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

:?:.умуте::/event
:?:.ивент::/event