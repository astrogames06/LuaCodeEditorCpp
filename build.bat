setlocal enabledelayedexpansion
set IMGUI_SRC=
for /R include/ %%f in (*.cpp) do (
    set "IMGUI_SRC=!IMGUI_SRC! %%f"
)

g++ src/main.cpp %IMGUI_SRC% -o app.exe -I"include/sol" -I include/ -L lib/ lib\libraylib.win.a -llua54 -lglfw3 -lopengl32 -lgdi32 -lwinmm
app