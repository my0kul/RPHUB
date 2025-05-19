; Удаляем старый файл, если он существует
FileDelete, RPHUB.ahk

; Проверяем, существует ли файл после удаления
IfNotExist, RPHUB.ahk
{
    DownloadFile("https://raw.githubusercontent.com/my0kul/RPHUB/main/RPHUB.ahk", "RPHUB.ahk")
}

; Запускаем скачанный скрипт
Run, "%A_ScriptDir%\RPHUB.ahk"

ExitApp

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
    oStream.Close()
    return true
}