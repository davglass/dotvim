" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
"set compatible
" Dav's Custom VIM Settings
" -------------------------
" Set no wrapping of lines
set nowrap
set number
let g:explVertical=1
colors ron

syn on
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"set gfn=-bitstream-charter-medium-r-normal-*-*-150-*-*-c-*-iso646.1991-irv
set showmatch
"set ignorecase
set undolevels=100



" Press <F2> to JSLint the current file
map <F2> :w<CR> :!jslint % <CR>
" Press <F3> to git update the current file
map <F3> :!git log % <CR><CR>
" Press <F4> to git add the current file
map <F4> :!git add % <CR><CR>
" Press <F5> to git commit the current file without comment
map <F5> :!git commit <CR><CR>
map <F6> :set noautoindent<CR>
map <F7> :set autoindent<CR>
iab YDATE <C-R>=strftime("%a %b %d %T %Y")
"map <F8> i Last Changed by davglass on YDATE<CR><ESC>:w<CR>
map <F8> :syntax sync fromstart<CR>
map <F10> :%s/<C-v><C-m>/<C-v><C-m>/g<CR>
map <F12> <c-HOME>:%s/}/}<C-v><C-m>/g<CR>:%s/;\/*#*\//;<C-v><C-m>/g<CR>:%s/{/{<C-v><C-m>/g<CR>
map <F11> 0<INSERT>/*<CR><ESC>$a<CR>*/<ESC>0
map <S-F11> ddjdd0
map <S-F5> i<TAB><TAB><TAB>/**<CR>* @config<CR>* @description<CR>* @type<CR>*/
map <S-F6> i<TAB><TAB>* @private
map <S-F7> i<TAB><TAB>/**<CR>* @method<CR>* @description<CR>* @param<CR>* @return<CR>*/
map <S-F8> i<TAB><TAB>/**<CR>* @property<CR>* @description<CR>* @type<CR>*/

" Make a Gist of this file..
map <S-F9> :w<CR> :!gist %<CR>

" -------------------------
set wildmode=longest,list

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set autoindent          " always set autoindenting on
if has("vms")
  set nobackup          " do not keep a backup file, use versions instead
else
"  set backup           " keep a backup file
"  set backupdir="~/backup"
endif
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
"set showcmd             " display incomplete commands
set incsearch           " do incremental searching
set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4


" {{{ Abbreviations
abbreviate methos method
abbreviate vra var
abbreviate ehco echo
abbreviate GLBOASL GLOBALS
abbreviate GLBOALS GLOBALS
abbreviate GLoBALS GLOBALS
abbreviate teh the
abbreviate strDtat strData
abbreviate accesories accessories
abbreviate accomodate accommodate
abbreviate acheive achieve
abbreviate acheiving achieving
abbreviate acn can
abbreviate acommodate accommodate
abbreviate acomodate accommodate
abbreviate acommodated accommodated
abbreviate acomodated accommodated
abbreviate adn and
abbreviate agian again
abbreviate ahppen happen
abbreviate ahve have
abbreviate ahve have
abbreviate allready already
abbreviate almsot almost
abbreviate alos also
abbreviate alot a lot
abbreviate alreayd already
abbreviate alwasy always
abbreviate amke make
abbreviate anbd and
abbreviate andthe and the
abbreviate appeares appears
abbreviate aplyed applied
abbreviate artical article
abbreviate aslo also
abbreviate audeince audience
abbreviate audiance audience
abbreviate awya away
abbreviate bakc back
abbreviate balence balance
abbreviate baout about
abbreviate bcak back
abbreviate beacuse because
abbreviate becasue because
abbreviate becomeing becoming
abbreviate becuase because
abbreviate becuse because
abbreviate befoer before
abbreviate begining beginning
abbreviate beleive believe
abbreviate bianry binary
abbreviate bianries binaries
abbreviate boxs boxes
abbreviate bve be
abbreviate changeing changing
abbreviate charachter character
abbreviate charcter character
abbreviate charcters characters
abbreviate charecter character
abbreviate charector character
abbreviate cheif chief
abbreviate circut circuit
abbreviate claer clear
abbreviate claerly clearly
abbreviate cna can
abbreviate colection collection
abbreviate comany company
abbreviate comapny company
abbreviate comittee committee
abbreviate commitee committee
abbreviate committe committee
abbreviate committy committee
abbreviate compair compare
abbreviate compleated completed
abbreviate completly completely
abbreviate comunicate communicate
abbreviate comunity community
abbreviate conected connected
abbreviate cotten cotton
abbreviate coudl could
abbreviate cpoy copy
abbreviate cxan can
abbreviate danceing dancing
abbreviate definately definitely
abbreviate develope develop
abbreviate developement development
abbreviate differant different
abbreviate differnt different
abbreviate diffrent different
abbreviate disatisfied dissatisfied
abbreviate doese does
abbreviate doign doing
abbreviate doller dollars
abbreviate donig doing
abbreviate driveing driving
abbreviate drnik drink
abbreviate ehr her
abbreviate embarass embarrass
abbreviate equippment equipment
abbreviate esle else
abbreviate excitment excitement
abbreviate exmaple example
abbreviate exmaples examples
abbreviate eyt yet
abbreviate familar familiar
abbreviate feild field
abbreviate fianlly finally
abbreviate fidn find
abbreviate firts first
abbreviate follwo follow
abbreviate follwoing following
abbreviate foriegn foreign
abbreviate fro for
abbreviate foudn found
abbreviate foward forward
abbreviate freind friend
abbreviate frmo from
abbreviate fwe few
abbreviate gerat great
abbreviate geting getting
abbreviate giveing giving
abbreviate goign going
abbreviate gonig going
abbreviate govenment government
abbreviate gruop group
abbreviate grwo grow
abbreviate haev have
abbreviate happend happened
abbreviate haveing having
abbreviate hda had
abbreviate helpfull helpful
abbreviate herat heart
abbreviate hge he
abbreviate hismelf himself
abbreviate hsa has
abbreviate hsi his
abbreviate hte the
abbreviate htere there
abbreviate htey they
abbreviate hting thing
abbreviate htink think
abbreviate htis this
abbreviate hvae have
abbreviate hvaing having
abbreviate idae idea
abbreviate idaes ideas
abbreviate ihs his
abbreviate immediatly immediately
abbreviate indecate indicate
abbreviate insted intead
abbreviate inthe in the
abbreviate iwll will
abbreviate iwth with
abbreviate jsut just
abbreviate knwo know
abbreviate knwos knows
abbreviate konw know
abbreviate konws knows
abbreviate levle level
abbreviate libary library
abbreviate librarry library
abbreviate librery library
abbreviate librarry library
abbreviate liek like
abbreviate liekd liked
abbreviate liev live
abbreviate likly likely
abbreviate littel little
abbreviate liuke like
abbreviate liveing living
abbreviate loev love
abbreviate lonly lonely
abbreviate makeing making
abbreviate mkae make
abbreviate mkaes makes
abbreviate mkaing making
abbreviate moeny money
abbreviate mroe more
abbreviate mysefl myself
abbreviate myu my
abbreviate neccessary necessary
abbreviate necesary necessary
abbreviate nkow know
abbreviate nwe new
abbreviate nwo now
abbreviate ocasion occasion
abbreviate occassion occasion
abbreviate occurence occurrence
abbreviate occurrance occurrence
abbreviate ocur occur
abbreviate oging going
abbreviate ohter other
abbreviate omre more
abbreviate onyl only
abbreviate optoin option
abbreviate optoins options
abbreviate opperation operation
abbreviate orginized organized
abbreviate otehr other
abbreviate otu out
abbreviate owrk work
abbreviate peopel people
abbreviate perhasp perhaps
abbreviate perhpas perhaps
abbreviate pleasent pleasant
abbreviate poeple people
abbreviate porblem problem
abbreviate preceed precede
abbreviate preceeded preceded
abbreviate probelm problem
abbreviate protoge protege
abbreviate puting putting
abbreviate pwoer power
abbreviate quater quarter
abbreviate questoin question
abbreviate reccomend recommend
abbreviate reccommend recommend
abbreviate receieve receive
abbreviate recieve receive
abbreviate recieved received
abbreviate recomend recommend
abbreviate reconize recognize
abbreviate recrod record
abbreviate religous religious
abbreviate rwite write
abbreviate rythm rhythm
abbreviate selectoin selection
abbreviate sentance sentence
abbreviate seperate separate
abbreviate shineing shining
abbreviate shiped shipped
abbreviate shoudl should
abbreviate similiar similar
abbreviate smae same
abbreviate smoe some
abbreviate soem some
abbreviate sohw show
abbreviate soudn sound
abbreviate soudns sounds
abbreviate statment statement
abbreviate stnad stand
abbreviate stopry story
abbreviate stoyr story
abbreviate stpo stop
abbreviate strentgh strength
abbreviate struggel struggle
abbreviate sucess success
abbreviate swiming swimming
abbreviate tahn than
abbreviate taht that
abbreviate talekd talked
abbreviate tath that
abbreviate teh the
abbreviate tehy they
abbreviate tghe the
abbreviate thansk thanks
abbreviate themselfs themselves
abbreviate theri their
abbreviate thgat that
abbreviate thge the
abbreviate thier their
abbreviate thme them
abbreviate thna than
abbreviate thne then
abbreviate thnig thing
abbreviate thnigs things
abbreviate thsi this
abbreviate thsoe those
abbreviate thta that
abbreviate tihs this
abbreviate timne time
abbreviate tje the
abbreviate tjhe the
abbreviate tkae take
abbreviate tkaes takes
abbreviate tkaing taking
abbreviate tlaking talking
abbreviate todya today
abbreviate tongiht tonight
abbreviate tonihgt tonight
abbreviate towrad toward
abbreviate tpyo typo
abbreviate truely truly
abbreviate tyhat that
abbreviate tyhe the
abbreviate useing using
abbreviate veyr very
abbreviate vrey very
abbreviate waht what
abbreviate watn want
abbreviate wehn when
abbreviate whcih which
abbreviate whic which
abbreviate whihc which
abbreviate whta what
abbreviate wief wife
abbreviate wierd weird
abbreviate wihch which
abbreviate wiht with
abbreviate windoes windows
abbreviate withe with
abbreviate wiull will
abbreviate wnat want
abbreviate wnated wanted
abbreviate wnats wants
abbreviate woh who
abbreviate wohle whole
abbreviate wokr work
abbreviate woudl would
abbreviate wriet write
abbreviate wrod word
abbreviate wroking working
abbreviate wtih with
abbreviate wya way
abbreviate yera year
abbreviate yeras years
abbreviate ytou you
abbreviate yuo you
abbreviate yuor your
abbreviate monday Monday
abbreviate tuesday Tuesday
abbreviate wednesday Wednesday
abbreviate thursday Thursday
abbreviate friday Friday
abbreviate saturday Saturday
abbreviate sunday Sunday

" }}}


" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" Make p in Visual mode replace the selected text with the "" register.
vnoremap p <Esc>:let current_reg = @"<CR>gvs<C-R>=current_reg<CR><Esc>

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
"if &t_Co > 2 || has("gui_running")
"	syntax on
"	syntax sync fromstart
"	set hlsearch
"endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
"  filetype plugin indent on

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

endif " has("autocmd")
