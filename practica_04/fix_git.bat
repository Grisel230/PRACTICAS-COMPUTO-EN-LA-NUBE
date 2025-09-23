@echo off
echo Arreglando Git...

REM Eliminar carpeta de rebase
if exist ".git\rebase-merge" (
    rmdir /s /q ".git\rebase-merge"
    echo Carpeta de rebase eliminada
) else (
    echo No se encontro carpeta de rebase
)

REM Cambiar mensaje del commit
git commit --amend -m "Primera subida del proyecto"

REM Verificar el cambio
git log --oneline

echo Proceso completado
pause
