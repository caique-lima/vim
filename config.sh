rm -r -f ~/.vim/
rm ~/.vimrc

mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git

git clone git://github.com/tpope/vim-fugitive.git
vim -u NONE -c "helptags vim-fugitive/doc" -c q

wget https://raw.githubusercontent.com/caique-lima/vim/master/.vimrc -P ~/

wget https://raw.githubusercontent.com/sentientmachine/Pretty-Vim-Python/master/colors/molokai.vim -P ~/.vim/colors/
wget  https://raw.githubusercontent.com/sentientmachine/Pretty-Vim-Python/master/syntax/python.vim -P ~/.vim/syntax/

mkdir -p ~/.vim/{ftdetect,indent,syntax} && for d in ftdetect indent syntax ; do wget -O ~/.vim/$d/scala.vim https://raw.githubusercontent.com/derekwyatt/vim-scala/master/$d/scala.vim; done
