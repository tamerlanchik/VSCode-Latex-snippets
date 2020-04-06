# VSCode-Latex-snippets
Полезные файлы для налаживания Latex под VSCode.

### Расширенное построение
Для внедрения шаблонов на основе самописного скрипта (см. project/scripts/expand.py) налажена кастомная команда, 
описанная в файле tasks.json. Она запускает скрипт latex.sh, который, в свою очередь, сначала запускает скрипт-экспандер шаблона,
затем pdflatex для непосредственной генерации pdf, а затем переименовывает выходной файл так, чтобы base-name соответствовал 
исходному. Питон-скрипт по умолчанию должен находиться в папке scripts, расположенной на одном уровне с обрабатываемым шаблоном. 
Можно передать дополнительный путь к этой папке в качестве третьего аргумента latex.sh.

комбинации клавиш (описаны в keybindings.json):
  - alt+W - запуск вышеописанного пайплайна для генерации пдф-файлы
  - alt+R - запуск встроенной в LatexWorkshop операции latex-workshop.refresh-viewer, которая
    обновляет пдф-документ во встроенном в плагин просмотрщике
    
Объединить две команды в одну, увы, пока не вышло.