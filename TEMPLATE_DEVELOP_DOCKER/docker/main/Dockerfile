FROM ubuntu:22.04
WORKDIR /app
ENV LANG=C.UTF-8
ENV LANGUAGE=en_US
RUN apt update && \
  apt upgrade -y && \
  apt install -y curl vim git&& \
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash && \
  export NVM_DIR="$HOME/.nvm" && \
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && \
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  && \
  nvm install 20 && \
  mkdir -p "$HOME"/.vim/dein && \
  mkdir -p "$HOME"/.vim/bundle && \
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ADD ./vimrc.example /home/root/.vimrc
EXPOSE 8080
VOLUME /app
CMD ["tail", "-F", "/dev/null"]
