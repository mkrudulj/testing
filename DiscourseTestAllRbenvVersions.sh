for i in `rbenv versions`; do echo "Version:$i";rbenv global $i;echo "------------Restart discourse now---------";echo "-------------Check status--------"; done ;
