<h1 align="center">Russian warship, go fuck yourself!</h1>
<p align="center">
   <a href="./README.md">Українське README</a> |
   <a href="./README_EN.md">English README</a>
</p>

## 🤔 Що це?

- В репі лежить [Python 3](https://python.org) [скрипт](./attack.py), який використовує російські проксі та залучає сайти для атаки через наш API, який сканує нікчемні веб-сайти.
- ⚠ Скрипт використовує проксі, але будьте обережні, бажано захистити себе за допомогою VPN.

## 🚀 Швидкий старт

### Windows 

- Ставимо [Python 3.8](https://python.org) або новіший ([інструкція](https://python-scripts.com/install-python-windows))
  > ⚠ Обов'язково ставимо галочку навпроти `Add Python to PATH` ([скрін](http://wind10.ru/wp-content/uploads/2020/02/pp_image_4620_v0cz5agbht0001_add_Python_to_Path.png))

- Зтягуємо репу:
  ```shell
  git clone https://github.com/Luzhnuy/attacker.git
  ```

- Запускаємо `install.bat` шоб встановити всі необхідні депенденсі

- Через термінал (командну строку чи PowerShell) запускаємо скрипт:
  ```shell
  python attack.py
  ```

### Linux та MacOS

- Ставимо [Python 3.8](https://python.org) або новіший
  > ⚠ В Linux ваша система може мати попередньо встановлений Python версії 2, і це означає, що вам потрібно запустити цю програму за допомогою команди `python3` і встановити вимоги до встановлення за допомогою команди `pip3`

- Зтягуємо репу:
  ```shell
  git clone https://github.com/Luzhnuy/attacker.git
  ```

- Встановлюємо всі необхідні депенденсі:
  ```shell
  pip install -r requirements.txt
  ```

- Запускаємо скрипт:
  ```shell
  python attack.py
  ```

### Docker
- Ставимо [Docker](https://docker.com): 
  - Docker for Windows: https://ravesli.com/ustanovka-docker-v-windows/
  - Docker for MacOS: https://docs.docker.com/desktop/mac/install/
  - Linux: https://docs.docker.com/engine/install/

- Зтягуємо докер імейдж:

  ```shell
  docker pull ghcr.io/luzhnuy/attacker:latest
  ```

- Запускаємо контейнер для 500 тредів:

  ```shell
  docker run --rm ghcr.io/luzhnuy/attacker:latest 500
  ```

### Docker Compose

`docker-compose` дозволяє легко запускати контейнери параллельно без необхідності тримати відкритими декілька терминалів. Для запуску на серверах - саме те що треба.

- Зтягуємо репу:

  ```shell
  git clone https://github.com/Luzhnuy/attacker.git
  ```

- Збираємо та запускаємо **параллельно** `5` контейнерів (по `500` коннектів на кожному):

  ```shell
  docker-compose up --build --scale attacker=5
  ```

- Зупинити всі контейнери з компоуз файлу: `Ctrl + C`

---

### Для людей, не дуже обізнаних в інформатиці, користувачів Windows

1. Скачайте архів https://drive.google.com/file/d/1aQR53fcbvkGY-bY0V4YhzLY6obh8H6Ln/view?usp=sharing

2. Розрархівуйте кудись.
   > ⚠ ВАЖЛИВО! НЕ на робочий стіл, та не в папку з іменем кирилицею, краще всього в корінь диску `D:` скажімо.

3. Знайдіть файл `install.bat` (можливо він буде у вас відображатися як просто install).
   
   Відмітьте його та натиснувши праву кнопку мишки на ньому, виберіть з меню `Запустить от Администратора`.

4. Виконайте по порядку крок за кроком все, що побачите в чорному вікні (натисніть цифру відповідного пункту, нажміть Ентер, дозвольте програмам встановитися, по закінченню выберіть слідуючий пункт.
   <i>Наприклад "Встановити python (step1)" - Вам потрібно ввести цифру 1 і натиснути enter</i>

5. Коли процесс встановлення всього потрібного буде закінчено, відкриється провідник, в якому ви можете запустити файл Attack.bat (можливо буде просто Attack).

В майбутньому, не потрібно більше запускати install, для початку роботи достатньо запускати хіба Attack.bat. Також не треба провіряти обновлення, цей процес відбувається автоматично.

> ⚠ Якщо ви вже встановили `bash` на своїй машині з Windows - не використовуйте `bash`, використовуйте `PowerShell` або `cmd`
