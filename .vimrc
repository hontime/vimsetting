set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'valloric/youcompleteme'
Plugin 'vim-airline/vim-airline'

call vundle#end()
filetype plugin indent on 

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

"---------------------- vim �⺻���� --------------------"

set hlsearch " �˻��� ���̶�����
set nu " �ٹ�ȣ
set autoindent " �ڵ� �鿩����
set scrolloff=2
set wildmode=longest,list
set ts=4 "tag select
set sts=4 "st select
set sw=1 " ��ũ�ѹ� �ʺ�
set autowrite " �ٸ� ���Ϸ� �Ѿ �� �ڵ� ����
set autoread " �۾� ���� ���� �ܺο��� ������� ��� �ڵ����� �ҷ���
set cindent " C��� �ڵ� �鿩����
set bs=eol,start,indent
set history=256
set laststatus=2 " ���¹� ǥ�� �׻�
"set paste " �ٿ��ֱ� ������� ���ֱ�
set shiftwidth=4 " �ڵ� �鿩���� �ʺ� ����
set showmatch " ��ġ�ϴ� ��ȣ ���̶�����
set smartcase " �˻��� ��ҹ��� ����
set smarttab
set smartindent
set softtabstop=4
set tabstop=4
set ruler " ���� Ŀ�� ��ġ ǥ��
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
" ���������� ������ ���� Ŀ���� ��ġ��
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
" ���� ���ڵ��� �ѱ����
if $LANG[0]=='k' && $LANG[1]=='o'
set fileencoding=korea
endif
" ���� ���� ���
if has("syntax")
 syntax on
endif
" �÷� ��Ŵ ���
colorscheme jellybeans
