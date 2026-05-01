#!/bin/bash

SCRIPT_NAME="cleansort"

if [ "$EUID" -ne 0 ]; then 
  echo "Пожалуйста, запустите установку через sudo: sudo ./install.sh"
  exit
fi

if [ ! -f "$SCRIPT_NAME" ]; then
    echo "Ошибка: Файл $SCRIPT_NAME не найден в текущей директории!"
    exit 1
fi

echo "Установка $SCRIPT_NAME..."

cp "$SCRIPT_NAME" /usr/local/bin/cleansort

chmod +x /usr/local/bin/cleansort

echo "Готово! Теперь вы можете использовать команду 'cleansort' в любом месте."
