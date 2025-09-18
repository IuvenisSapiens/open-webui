@echo off
chcp 65001
cd /d %~dp0backend
.\runtime\python.exe .\runtime\Scripts\uvicorn.exe open_webui.main:app --host "127.0.0.1" --port "8080"
@REM start .\runtime\python.exe .\runtime\Scripts\uvicorn.exe open_webui.main:app --host "127.0.0.1" --port "8080"
@REM start .\runtime\python.exe .\runtime\Scripts\uvicorn.exe open_webui.main:app --host "127.0.0.1" --port "8080" --reload
@REM --reload 是 Uvicorn 提供的一个命令行选项，用于启用自动重载功能。当你的应用代码发生变化时，Uvicorn 会自动检测这些变化并重新启动服务器，这样你就不需要手动重启服务器来应用代码的更改。这对于开发阶段非常有用，因为它可以加快开发速度，因为每次修改代码后，你不需要手动重启服务器，而是可以立即看到更改的效果。
@REM 但是，--reload 选项并不适合用于生产环境，因为它会导致服务器频繁重启，可能会影响性能和稳定性。在生产环境中，通常建议关闭 --reload 选项，以确保服务器稳定运行。
@REM timeout /t 10 /nobreak
@REM start http://127.0.0.1:8080