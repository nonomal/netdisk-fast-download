@echo off
setlocal

rem 获取当前 Java 版本信息并搜索是否包含 "17."
java -version 2>&1 | find "17." >nul

rem 如果找不到 JDK 17.x，则下载并安装
if errorlevel 1 (
    echo JDK 17.x not found. Downloading and installing...

    REM 这里添加下载和安装 JDK 的代码

    rem 验证安装
    java -version

    echo JDK 17.x installation complete.
) else (
    echo JDK 17.x is already installed.
)

endlocal
pause