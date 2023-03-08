@echo off
title webhook sender
set /p webhook=webhook: 
:msg
cls
set /p message=message: 
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"%message%\"}" %webhook%
goto msg
