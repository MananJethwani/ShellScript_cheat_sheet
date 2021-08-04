source ./bin/activate

kiwix-build kiwix-lib --skip-source-prepare

sudo -u manan bleachbit --clean firefox.*
sudo -u manan firefox "http://localhost:8000" &

LD_LIBRARY_PATH=$(pwd)/BUILD_native_dyn/INSTALL/lib/x86_64-linux-gnu ./BUILD_native_dyn/INSTALL/bin/kiwix-serve -p 8000 --library ./library.xml --verbose

