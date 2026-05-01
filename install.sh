#!/bin/bash

# Название основного файла скрипта в твоем репозитории
SCRIPT_NAME="cleansort"

# Проверка на права суперпользователя (нужны для записи в /usr/local/bin)
if [ "$EUID" -ne 0 ]; then 
  echo "Пожалуйста, запустите установку через sudo: sudo ./install.sh"
  exit
fi

# Проверяем, существует ли файл скрипта в текущей папке
if [ ! -f "$SCRIPT_NAME" ]; then
    echo "Ошибка: Файл $SCRIPT_NAME не найден в текущей директории!"
    exit 1
fi

echo "Установка $SCRIPT_NAME..."

# 1. Копируем скрипт в /usr/local/bin и переименовываем, если нужно
cp "$SCRIPT_NAME" /usr/local/bin/cleansort

# 2. Даем права на исполнение
chmod +x /usr/local/bin/cleansort

echo "Готово! Теперь вы можете использовать команду 'cleansort' в любом месте."
