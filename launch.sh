
 @@ -6,6 +6,87 @@ cd $THIS_DIR
  update() {
    git pull
    git submodule update --init --recursive
 +  install_rocks
 +}
 +
 +# Will install luarocks on THIS_DIR/.luarocks
 +install_luarocks() {
 +  git clone https://github.com/keplerproject/luarocks.git
 +  cd luarocks
 +  git checkout tags/v2.3.0-rc2 # Release Candidate
 +
 +  PREFIX="$THIS_DIR/.luarocks"
 +
 +  ./configure --prefix=$PREFIX --sysconfdir=$PREFIX/luarocks --force-config
 +
 +  RET=$?; if [ $RET -ne 0 ];
 +    then echo "Error. Exiting."; exit $RET;
 +  fi
 +
 +  make build && make install
 +  RET=$?; if [ $RET -ne 0 ];
 +    then echo "Error. Exiting.";exit $RET;
 +  fi
 +
 +  cd ..
 +  rm -rf luarocks
 +}
 +
 +install_rocks() {
 +  ./.luarocks/bin/luarocks install luasec
 +  RET=$?; if [ $RET -ne 0 ];
 +    then echo "Error. Exiting."; exit $RET;
 +  fi
 +
 +  ./.luarocks/bin/luarocks install lbase64 20120807-3
 +  RET=$?; if [ $RET -ne 0 ];
 +    then echo "Error. Exiting."; exit $RET;
 +  fi
 +
 +  ./.luarocks/bin/luarocks install luafilesystem
 +  RET=$?; if [ $RET -ne 0 ];
 +    then echo "Error. Exiting."; exit $RET;
 +  fi
 +
 +  ./.luarocks/bin/luarocks install lub
 +  RET=$?; if [ $RET -ne 0 ];
 +    then echo "Error. Exiting."; exit $RET;
 +  fi
 +
 +  ./.luarocks/bin/luarocks install luaexpat
 +  RET=$?; if [ $RET -ne 0 ];
 +    then echo "Error. Exiting."; exit $RET;
 +  fi
 +
 +  ./.luarocks/bin/luarocks install redis-lua
 +  RET=$?; if [ $RET -ne 0 ];
 +    then echo "Error. Exiting."; exit $RET;
 +  fi
 +
 +  ./.luarocks/bin/luarocks install lua-cjson
 +  RET=$?; if [ $RET -ne 0 ];
 +    then echo "Error. Exiting."; exit $RET;
 +  fi
 +
 +  ./.luarocks/bin/luarocks install fakeredis
 +  RET=$?; if [ $RET -ne 0 ];
 +    then echo "Error. Exiting."; exit $RET;
 +  fi
 +
 +  ./.luarocks/bin/luarocks install xml
 +  RET=$?; if [ $RET -ne 0 ];
 +    then echo "Error. Exiting."; exit $RET;
 +  fi
 +
 +  ./.luarocks/bin/luarocks install feedparser
 +  RET=$?; if [ $RET -ne 0 ];
 +    then echo "Error. Exiting."; exit $RET;
 +  fi
 +
 +  ./.luarocks/bin/luarocks install serpent
 +  RET=$?; if [ $RET -ne 0 ];
 +    then echo "Error. Exiting."; exit $RET;
 +  fi
  }
  
  install() {
 @@ -24,6 +105,8 @@ install() {
      echo "Error. Exiting."; exit $RET;
    fi
    cd ..
 +  install_luarocks
 +  install_rocks
  }
  
  if [ "$1" = "install" ]; then
 @@ -42,6 +125,16 @@ else
      echo "Run $0 install"
      exit 1
    fi
 -  rm -r ../.telegram-cli/state #Prevent tg from crash
 +  
 +  chmod 777 devpoint.sh
 +  
 +  #Adding some color. By @MehdiHS
 +   echo -e "\033[38;5;208m"
 +   echo -e "     > Channel : @DevPointTeam                        "
 +   echo -e "     > Developer : @TH3_GHOST                       "
 +   echo -e "     > Bot ID : @SuperDevPoint                        "
 +   echo -e "     > Github : github.com/xxMRXxx/mrx     "
 +   echo -e "                                              \033[0;00m"
 +   echo -e "\e[36m"
    ./tg/bin/telegram-cli -k ./tg/tg-server.pub -s ./bot/devpoint.lua -l 1 -E $@
  fi
