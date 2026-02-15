set root=C:\Users\...
CD /D %root%
git pull
if exist playing.md (
    echo Soneone is already playing
    type playing.md
    pause
) else (
    echo myself > playing.md
    git add .
    git commit -m "updated playing"
    git push
)
