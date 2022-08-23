# skeleton_neovim
This is a repository for having skeletons in neovim

# demo

![](demo_skeleton.gif)

# requirements
 This vim plugin comes packages with water linux
 
 [UltiSnips](https://github.com/SirVer/ultisnips)
 
 # Installation
  ```
 Plug 'Virgilio-AI/skeleton_neovim'
 ```
 
 # quick start

 Now configure the commands
 ```
 " example with .json files
 " in init.vim
 augroup json_skeleton
	autocmd!
	autocmd BufEnter *.json :ExpandSkeleton sk
augroup END
 ```
 
 
 in /vimconfig/folder/UltiSnips/json.snippets
 ```
 snippet sk
// Date: `date +%d/%B/%Y\ -\ %A`
// Author: Virgilio Murillo Ochoa
// personal github: Virgilio-AI
// linkedin: https://www.linkedin.com/in/virgilio-murillo-ochoa-b29b59203
// contact: virgiliomurilloochoa1@gmail.com
// web: virgiliomurillo.com
endsnippet
```


