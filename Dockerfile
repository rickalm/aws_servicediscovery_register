FROM sgreben/awscli:1.18.13
RUN apk add curl
copy register.sh /register.sh
cmd [ '/register.sh' ]
