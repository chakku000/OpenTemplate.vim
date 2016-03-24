## OpenTemplate.vim

##何をするプラグインか
プログラミング言語ごとの自作テンプレートを展開するプラグインです。 

##使い方
```
:OpenTemplate
```
とすれば拡張子からテンプレートを展開してくれる。
テンプレートはOpenTemplate/autoload/TemplateFileに
template.+拡張子
という名前で保存すれば使える.
とりあえずC++,Texだけ置いておいた。他の言語で必要になりしだい追加するかもしれない。 

##使い方(追記)
最新版に置いてテンプレートファイルを置いておくディレクトリを指定できるようにした。 
まず、最新版にする(NeoBundleを使用しているなら:NeoBundleUpdateなどで). 

テンプレートファイルを置いておくディレクトリを指定する方法.例えば 
$HOME/Template/template.cpp 
$HOME/Template/template.c 
のように配置するなら.vimrc(neovimの場合はinit.vim)に 
```
let g:OpenTemplate#Template_dir = '~/Template'
````
のように記せばよい

##インストール方法 
```
NeoBundle 'chakku000/OpenTemplate.vim'
```
