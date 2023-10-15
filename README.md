# Конфигурация NVIM на базе NvChad

Включает:
1. Базовые настройки ui так, как мне нравится
2. Переключение буферов по "H" и "L" 
3. Настройка LSP для Python и что-то еще

## Простая установка
Положить все файлы в папку ~/.config/nvim/lua/custom/ после установки NvChad

## Установка из GIT
Опция `--bare` создаёт "пустой" репозиторий, без возможности обновлять и отслеживать ветки, без папки .git, только копия актуального состояния.

    rm -rf ~/.config/nvim
    rm -rf ~/.local/share/nvim
    git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
    git clone https://github.com/Draniev/nvim_nvchad_config.git ~/.config/nvim/lua/custom/
