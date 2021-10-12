# Container image that runs your code
FROM debian:10 

RUN apt update -y && apt upgrade -y && apt-get install git -y && git clone https://github.com/hlissner/doom-emacs.git && grep -irl doom-emacs "2.23" | xargs sed -i 's/2.23/2.20/g' && /doom-emacs/install -y

ENV PATH="~/.emacs.d/bin:$PATH"
 
CMD ["emacs"]
