#!/bin/bash

# Populate array with post links
links=( "https://micro-bit-final-project.github.io/groundwork/2020/12/13/groundwork.html"
	"https://micro-bit-final-project.github.io/groundwork/2020/12/15/microbit-receives.html"
	"https://micro-bit-final-project.github.io/groundwork/2020/12/16/more-flexibility-more-communication.html"
	"https://micro-bit-final-project.github.io/groundwork/2020/12/17/decoding-data.html"
	"https://micro-bit-final-project.github.io/groundwork/2020/12/18/main-breakdown.html"
	"https://micro-bit-final-project.github.io/game/2020/12/20/first-milestone.html"
	"https://micro-bit-final-project.github.io/game/2020/12/26/hello-game.html"
	"https://micro-bit-final-project.github.io/game/2020/12/27/first-minigame.html"
	"https://micro-bit-final-project.github.io/game/2020/12/28/complete-wheelie.html"
	"https://micro-bit-final-project.github.io/game/2021/01/15/initial-engine.html"
	"https://micro-bit-final-project.github.io/game/2021/01/18/further-engine.html"
	"https://micro-bit-final-project.github.io/game/2021/01/18/complete-engine.html"
	"https://micro-bit-final-project.github.io/game/2021/01/23/connection-directions.html"
	"https://micro-bit-final-project.github.io/game/2021/02/10/initial-coin.html"
	"https://micro-bit-final-project.github.io/game/2021/02/19/pretty-menu.html"
	"https://micro-bit-final-project.github.io/game/2021/02/22/overcook-minigame.html"
	"https://micro-bit-final-project.github.io/game/2021/02/23/match-minigame.html"
	"https://micro-bit-final-project.github.io/game/2021/03/02/guard-disconnection.html"
	"https://micro-bit-final-project.github.io/game/2021/03/19/dinorun-minigame.html"
	"https://micro-bit-final-project.github.io/game/2021/04/05/flashy-li(ves)ghts.html"
	"https://micro-bit-final-project.github.io/game/2021/04/13/volume-slider.html"
	"https://micro-bit-final-project.github.io/game/2021/04/17/credits.html" );

# Iterate through each link
counter=0
for i in "${links[@]}"
do
	echo "$i";
	$(wkhtmltopdf $i tmp.pdf);
	if ((counter==6)) || ((counter==10)) || ((counter==19)); then
		$(mv tmp.pdf mu-tmp.pdf);
	else
		if ((counter==7)); then
			$(mutool poster -y 2 tmp.pdf mu-tmp.pdf);
		else
			$(mutool poster -y 5 tmp.pdf mu-tmp.pdf);
		fi
	fi
	$(pdftk mu-tmp.pdf cat 1 output $counter.pdf);
	$(rm tmp.pdf mu-tmp.pdf 2> /dev/null);
	counter=$((counter+1));
	sleep 5;
done

counter=$((counter-1));
# Iterate through each file to create the final document
for i in $(seq 0 $counter)
do
        if ((i==0)); then
                $(cp $i.pdf tmp.pdf);
        else
                $(pdfunite $i.pdf tmp.pdf TMP.pdf);
        fi

        if ((i==21)); then
                $(mv TMP.pdf blog.pdf);
                $(rm tmp.pdf 2> /dev/null);
        else
                $(mv TMP.pdf tmp.pdf 2> /dev/null);
        fi
done
