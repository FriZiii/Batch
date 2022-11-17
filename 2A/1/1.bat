@echo off
forfiles /p %1 /m *.%2 /d -3 /c "cmd /c copy @file E:\Studia\Batch-kolosy\2A\1\skopiowane_@file"