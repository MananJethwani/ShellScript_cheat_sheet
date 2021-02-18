npm start -- --mwUrl="https://ru.wikipedia.org/" --adminEmail="mananjethwani02@gmail.com" --articleList="mwo-test-10.tsv"

sudo -u manan bleachbit --clean firefox.*

sudo -u manan firefox "http://localhost:8080" &

./mwo-test-kiwix-serve --port=8080 ./out/wikipedia_ru_mwo-test-10_2021-02.zim