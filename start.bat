@echo off
chcp 65001 >nul
echo ====================================
echo   SpkASR-Frontend 启动脚本
echo ====================================
echo.

cd /d %~dp0

echo 检查node_modules...
if not exist "node_modules" (
    echo [1/2] 安装依赖...
    npm install
)

echo.
echo [2/2] 启动开发服务器...
echo 访问地址: http://localhost:3000
echo.

npm run dev
