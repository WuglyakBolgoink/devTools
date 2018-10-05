# Настройки автоматического форматирования #

В репозитории находится файл, который надо подключить в ваш проект.

## Как это сделать? ##

Самый, как по мне, лучший вариант - подключение с использованием подмодулей git.
В корне вашего проекта выполняем следующие команды:

- Подключаем подмодуль git

```bash
git submodule add https://master_www:3000gtnhjdbx@git.ria.com:4455/node/editor-config.git editor-config
```

- Инициализируем подмодуль и обновляем его

```bash
git submodule init && git submodule update
```

- Добавляем в .gitignore файлы настроек

```bash
sed -i -e '$a\' .gitignore  && echo 'editor-config/*' >> .gitignore
```

После этого в проекте нажимаете `Alt`+`Shift`+`F`

# Полезные ссылки #

- [bash-команды](https://git.ria.com/docker-compose/bu-auto-ria-devel/wikis/%D0%BF%D0%BE%D0%BB%D0%B5%D0%B7%D0%BD%D1%8B%D0%B5-bash-%D0%BA%D0%BE%D0%BC%D0%B0%D0%BD%D0%B4%D1%8B)
- [Настройка автоматического форматирования в IDE](https://git.ria.com/docker-compose/bu-auto-ria-devel/wikis/%D0%9A%D0%B0%D0%BA-%D0%BD%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B8%D1%82%D1%8C-IDE-%D0%B4%D0%BB%D1%8F-%D0%B0%D0%B2%D1%82%D0%BE%D0%BC%D0%B0%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B3%D0%BE-%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F-%D0%BA%D0%BE%D0%B4%D0%B0%3F)