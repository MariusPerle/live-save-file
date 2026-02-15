set root=C:\Users\...
CD /D %root%
git pull
find "myself" playing.md >nul 2>&1
if %errorlevel%==0 (
    del playing.md
    git add .
    git commit -m "update save"
    git push
) else (
    echo Merge error incoming cased by another player
    type playing.md
    pause
)
