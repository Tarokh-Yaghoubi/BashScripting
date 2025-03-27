
!#/bin/bash

for n in /var/log/*.log
do
	tar -czvf $n.tar.gz $n

done

