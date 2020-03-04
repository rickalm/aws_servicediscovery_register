FROM sgreben/awscli:1.18.13
copy register.sh
cmd [ '/register.sh' ]
