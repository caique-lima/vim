# vim
My vim configuration

#Run the follow command

```
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git

cd ~/.vim/bundle
git clone git://github.com/tpope/vim-fugitive.git
vim -u NONE -c "helptags vim-fugitive/doc" -c q

curl -LSso ~/.vim/colors/phd.vim https://raw.githubusercontent.com/vim-scripts/phd/master/colors/phd.vim

curl -LSso ~/.vimrc https://raw.githubusercontent.com/fxdx/vim/master/.vimrc
```
