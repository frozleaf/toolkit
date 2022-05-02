@echo off&(PUSHD "%~DP0")
taskkill /f /im rolan.exe
start rolan.exe