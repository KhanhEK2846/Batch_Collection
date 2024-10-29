@echo OFF

del profile.txt

for /f "tokens=4,* skip=4" %%a in ('netsh wlan show profile') do (

    for /f "tokens=*" %%c in ('netsh wlan show profile "%%b" key^=clear') do (

        for /f "tokens=3,*" %%d in ('echo %%c^| find /i "Key Content"') do (

            echo [WIFI-NAME: %%b] [CURRENT-PASSWORD: %%e] >> profile.txt

        )
    )
)

