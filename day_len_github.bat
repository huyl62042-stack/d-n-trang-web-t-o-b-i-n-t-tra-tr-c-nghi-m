@echo off
chcp 65001 >nul
echo ====================================================================
echo   ĐẨY TRANG WEB LÊN GITHUB PAGES ĐỂ MỞ TRÊN IPHONE (SAFARI/GOOGLE)
echo ====================================================================
echo.
set /p REPO_URL="Nhập đường link GitHub Repository của bạn (VD: https://github.com/ten-ban/on-thi.git): "
if "%REPO_URL%"=="" (
  echo Bạn chưa nhập đường link GitHub Repository!
  pause
  exit /b
)
git remote remove origin >nul 2>&1
git remote add origin %REPO_URL%
git branch -M main
git add -A
git commit -m "Update web on tap trac nghiem DOCX + PDF iOS ready" >nul 2>&1
git push -u origin main
echo.
echo ====================================================================
echo   HOÀN TẤT! Hãy vào mục Settings -> Pages trên GitHub, chọn nhánh
echo   'main' và bấm Save để nhận đường link mở trên iPhone!
echo ====================================================================
pause
