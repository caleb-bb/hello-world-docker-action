# Container image that runs your code
FROM debian:10 

RUN apt update -y && apt upgrade -y && apt-get install git -y && git clone https://github.com/hlissner/doom-emacs.git .emacs.d && grep -irl "2.23" .emacs.d | xargs sed -i 's/2.23/2.20/g' && .emacs.d/bin/doom install 

ENV PATH="~/.emacs.d/bin:$PATH"
 
CMD ["emacs"]
