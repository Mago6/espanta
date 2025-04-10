@echo off
:: Esperar 3 segundos
ping 127.0.0.1 -n 600 > nul

:: Crear archivo VBS en temp (ruta segura) para el mensaje repetitivo
set rutaContador=%TEMP%\contactar.vbs
:: Crear el archivo hola.txt con el texto "Hola Mundo"
echo Hola admin > %USERPROFILE%\Desktop\hola.txt
echo Hola wamsonware > %USERPROFILE%\Desktop\hola2.txt
echo Hola Mddundo > %USERPROFILE%\Desktop\hola3.txt


:: Crear el archivo VBS con un mensaje repetitivo
echo Do >> "%rutaContador%"
echo MsgBox "Contacta al administrador.", vbCritical + vbOKOnly, "¡Alerta!" >> "%rutaContador%"
echo Loop >> "%rutaContador%"

:: Ejecutar el VBS con WScript (modo ventana)
start wscript.exe "%rutaContador%"

pause
exit
