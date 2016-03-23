## OpenTemplate.vim

##何をするプラグインか
プログラミング言語ごとの自作テンプレートを展開するプラグインです。 

##使い方
````
:OpenTemplate
````
とすれば拡張子からテンプレートを展開してくれる。
テンプレートはOpenTemplate/autoload/TemplateFileに
template.+拡張子
という名前で保存すれば使える.
とりあえずC++,Texだけ置いておいた。他の言語で必要になりしだい追加するかもしれない

## installation
```
NeoBundle 'chakku000/OpenTemplate.vim'
```
