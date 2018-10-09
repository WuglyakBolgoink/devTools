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
Теперь у Вас есть 2 пути :
### Путь 1, ручной ###
 
 В проекте нажимаете `<магическую_комбинацию_клавиш>`. Когда в следующий раз будете комитить изменения просто заливайте новосозданные файлы.

### Путь 2, автоформатирование ###
Используйте Prettier. Файл конфига уже есть в подмодуле.
- Установите Prettier 
    - в свой проект 
        + `yarn`

        ```bash
        yarn add prettier --dev --exact
        ```
        
        + `npm`
        
        ```bash
        npm install --save-dev --save-exact prettier
        ```
        
    - или глобально
    
        + `yarn`
        
        ```bash
        yarn global add prettier
        ```
        
        + `npm`
        
        ```bash
        npm install --global prettier
        ```
        
- Установите Husky
    + `yarn`
    
    ```bash
    yarn add pretty-quick husky --dev
    ```
    
    + `npm`
    
    ```bash
    npm i -D pretty-quick husky
    ```
    
- Добавьте хук в `package.json` Вашего проекта

    ```json
    {
      "husky": {
        "hooks": {
          "pre-commit": "pretty-quick --staged"
        }
      }
    }
    ```
    
## Обновление уже подключенных конфигов ##

В корне проекта выполняем команду:

```bash
cd editor-config && git checkout master && git pull && cd ..
```

## Для леньтяев - всё одной командой (@popadiuk) ##

В корне проекта выполните следующее:

```bash
sh -c "git submodule add https://master_www:3000gtnhjdbx@git.ria.com:4455/node/editor-config.git editor-config && \
git submodule init && git submodule update && \
sed -i -e '$a\' .gitignore  && echo 'editor-config/*' >> .gitignore && \
npm install --save-dev --save-exact prettier && \
npm i -D pretty-quick husky && \
cat package.json | jq '. + { "husky": {"hooks": {"pre-commit": "pretty-quick --staged"}} }' -M > package.bak && \
cat package.bak > package.json && \
rm -f package.bak"
```

# Полезные ссылки #

- [bash-команды](https://git.ria.com/docker-compose/bu-auto-ria-devel/wikis/%D0%BF%D0%BE%D0%BB%D0%B5%D0%B7%D0%BD%D1%8B%D0%B5-bash-%D0%BA%D0%BE%D0%BC%D0%B0%D0%BD%D0%B4%D1%8B)
- [Настройка автоматического форматирования в IDE](https://git.ria.com/docker-compose/bu-auto-ria-devel/wikis/%D0%9A%D0%B0%D0%BA-%D0%BD%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B8%D1%82%D1%8C-IDE-%D0%B4%D0%BB%D1%8F-%D0%B0%D0%B2%D1%82%D0%BE%D0%BC%D0%B0%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B3%D0%BE-%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F-%D0%BA%D0%BE%D0%B4%D0%B0%3F)
- [Плагин Prettier для шторма](https://github.com/JetBrains/intellij-plugins/tree/master/prettierJS)
- [Настройка шторма для автоформатирования](https://prettier.io/docs/en/webstorm.html)
- [Настройка конфига Prettier](https://prettier.io/docs/en/options.html)
