€
gE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Repositories\v1\UserValidationRepository.cs
	namespace

 	

AslaveCare


 
.

 
Infra

 
.

 
Data

 
.

  
Repositories

  ,
.

, -
v1

- /
{ 
public 

class $
UserValidationRepository )
:* +
RepositoryBase, :
<: ;
BaseContext; F
,F G
UserValidationH V
,V W
GuidX \
>\ ]
,] ^%
IUserValidationRepository_ x
{ 
public $
UserValidationRepository '
(' (
BaseContext( 3
context4 ;
,; <
IRepositoryContext= O
repositoryContextP a
)a b
: 
base 
( 
context 
, 
repositoryContext -
)- .
{ 	
} 	
public 
override 
Task 
< 
UserValidation +
>+ , 
GetCompleteByIdAsync- A
(A B
GuidB F
idG I
,I J
CancellationTokenK \
cancellationToken] n
=o p
defaultq x
)x y
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
} 
} ìV
]E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Repositories\v1\UserRepository.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Repositories  ,
., -
v1- /
{ 
public 

class 
UserRepository 
:  !
RepositoryBase" 0
<0 1
BaseContext1 <
,< =
User> B
,B C
GuidD H
>H I
,I J
IUserRepositoryK Z
{ 
public 
UserRepository 
( 
BaseContext )
context* 1
,1 2
IRepositoryContext3 E
repositoryContextF W
)W X
: 
base 
( 
context 
, 
repositoryContext -
)- .
{ 	
} 	
public 
async 
Task 
< 
User 
> !
GetByPhoneNumberAsync  5
(5 6
string6 <
phoneNumber= H
)H I
{ 	
return 
await 
_context !
.! "
Users" '
. 
Include 
( 
x 
=> 
x 
.  
UserValidation  .
). /
. 
Include 
( 
ur 
=> 
ur !
.! "
	UserRoles" +
)+ ,
. 
ThenInclude  
(  !
r! "
=># %
r& '
.' (
Role( ,
), -
.   
AsNoTracking   
(   
)   
.!! 
Where!! 
(!! 
u!! 
=>!! 
u!! 
.!! 
PhoneNumber!! )
==!!* ,
phoneNumber!!- 8
)!!8 9
.!!9 :
FirstOrDefaultAsync!!: M
(!!M N
)!!N O
;!!O P
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
User$$ 
>$$ 
GetByEmailAsync$$  /
($$/ 0
string$$0 6
email$$7 <
)$$< =
{%% 	
return&& 
await&& 
_context&& !
.&&! "
Users&&" '
.'' 
Include'' 
('' 
x'' 
=>'' 
x'' 
.''  
UserValidation''  .
)''. /
.(( 
Include(( 
((( 
ur(( 
=>(( 
ur(( !
.((! "
	UserRoles((" +
)((+ ,
.)) 
ThenInclude))  
())  !
r))! "
=>))# %
r))& '
.))' (
Role))( ,
))), -
.** 
AsNoTracking** 
(** 
)** 
.++ 
Where++ 
(++ 
u++ 
=>++ 
u++ 
.++ 
Email++ #
==++$ &
email++' ,
)++, -
.++- .
FirstOrDefaultAsync++. A
(++A B
)++B C
;++C D
},, 	
public.. 
override.. 
async.. 
Task.. "
<.." #
User..# '
>..' ( 
GetCompleteByIdAsync..) =
(..= >
Guid..> B
id..C E
,..E F
CancellationToken..G X
cancellationToken..Y j
=..k l
default..m t
)..t u
{// 	
return00 
await00 
_context00 !
.00! "
Users00" '
.11 
Include11 
(11 
x11 
=>11 
x11 
.11  
UserValidation11  .
)11. /
.22 
Include22 
(22 
ur22 
=>22 
ur22 !
.22! "
	UserRoles22" +
)22+ ,
.33 
ThenInclude33  
(33  !
r33! "
=>33# %
r33& '
.33' (
Role33( ,
)33, -
.44 
AsNoTracking44 
(44 
)44 
.55 
Where55 
(55 
u55 
=>55 
u55 
.55 
Id55  
==55! #
id55$ &
)55& '
.55' (
FirstOrDefaultAsync55( ;
(55; <
)55< =
;55= >
}66 	
public88 
async88 
Task88 
<88 
User88 
>88  
AddUserWithRoleAsync88  4
(884 5
User885 9
user88: >
,88> ?
UserType88@ H
userType88I Q
)88Q R
{99 	
user:: 
.:: 
	UserRoles:: 
=:: 
new::  
List::! %
<::% &
UserRole::& .
>::. /
(::/ 0
)::0 1
;::1 2
var<< 
roleId<< 
=<< 
ConstantSeederRole<< +
.<<+ ,
Roles<<, 1
.<<1 2
FirstOrDefault<<2 @
(<<@ A
x<<A B
=><<C E
x<<F G
.<<G H
Type<<H L
==<<M O
userType<<P X
)<<X Y
.<<Y Z
Id<<Z \
;<<\ ]
user>> 
.>> 
	UserRoles>> 
.>> 
Add>> 
(>> 
new>> "
UserRole>># +
{?? 
RoleId@@ 
=@@ 
roleId@@ 
,@@  
UserIdAA 
=AA 
userAA 
.AA 
IdAA  
,AA  !
RoleBB 
=BB 
awaitBB 
_contextBB %
.BB% &
RolesBB& +
.BB+ ,
WhereBB, 1
(BB1 2
xBB2 3
=>BB4 6
xBB7 8
.BB8 9
IdBB9 ;
==BB< >
roleIdBB? E
)BBE F
.BBF G
FirstOrDefaultAsyncBBG Z
(BBZ [
)BB[ \
}CC 
)CC 
;CC 
awaitEE 
AddOrUpdateAsyncEE "
(EE" #
userEE# '
)EE' (
;EE( )
returnGG 
userGG 
;GG 
}HH 	
publicJJ 
asyncJJ 
SystemJJ 
.JJ 
	ThreadingJJ %
.JJ% &
TasksJJ& +
.JJ+ ,
TaskJJ, 0
UpdateLastLoginJJ1 @
(JJ@ A
GuidJJA E
IdJJF H
)JJH I
{KK 	
varLL 
userLL 
=LL 
awaitLL 
_contextLL %
.LL% &
UsersLL& +
.LL+ ,
	FindAsyncLL, 5
(LL5 6
IdLL6 8
)LL8 9
;LL9 :
userMM 
.MM 
	LastLoginMM 
=MM 
DateTimeMM %
.MM% &
UtcNowMM& ,
;MM, -
_contextNN 
.NN 
UsersNN 
.NN 
UpdateNN !
(NN! "
userNN" &
)NN& '
;NN' (
}OO 	
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
UserQQ 
>QQ !
GetByAppleUserIdAsyncQQ  5
(QQ5 6
stringQQ6 <
appleUserIdQQ= H
,QQH I
CancellationTokenQQJ [
cancellationTokenQQ\ m
)QQm n
{RR 	
returnSS 
awaitSS 
_contextSS !
.SS! "
UsersSS" '
.TT 
IncludeTT 
(TT 
xTT 
=>TT 
xTT 
.TT  
UserValidationTT  .
)TT. /
.UU 
IncludeUU 
(UU 
urUU 
=>UU 
urUU !
.UU! "
	UserRolesUU" +
)UU+ ,
.VV 
ThenIncludeVV  
(VV  !
rVV! "
=>VV# %
rVV& '
.VV' (
RoleVV( ,
)VV, -
.WW 
WhereWW 
(WW 
xWW 
=>WW 
xWW 
.WW 
AppleUserIdWW )
==WW* ,
appleUserIdWW- 8
)WW8 9
.XX 
AsNoTrackingXX 
(XX 
)XX 
.YY 
FirstOrDefaultAsyncYY $
(YY$ %
cancellationTokenYY% 6
)YY6 7
;YY7 8
}ZZ 	
public\\ 
async\\ 
Task\\ 
<\\ 
List\\ 
<\\ 
User\\ #
>\\# $
>\\$ %
GetByParameters\\& 5
(\\5 6$
UserGetByParametersModel\\6 N

parameters\\O Y
,\\Y Z
CancellationToken\\[ l
cancellation\\m y
=\\z {
default	\\| É
)
\\É Ñ
{]] 	
return^^ 
await^^ 
_context^^ !
.^^! "
Users^^" '
.__ 
AsNoTracking__ 
(__ 
)__ 
.`` 
Where`` 
(`` 
x`` 
=>`` 
!`` 

parameters`` '
.``' (
Id``( *
.``* +
HasValue``+ 3
?``4 5
true``6 :
:``; <
x``= >
.``> ?
Id``? A
==``B D

parameters``E O
.``O P
Id``P R
)``R S
.aa 
Whereaa 
(aa 
xaa 
=>aa 
stringaa "
.aa" #
IsNullOrEmptyaa# 0
(aa0 1

parametersaa1 ;
.aa; <
Nameaa< @
)aa@ A
?aaB C
trueaaD H
:aaI J
xaaK L
.aaL M
NameaaM Q
==aaR T

parametersaaU _
.aa_ `
Nameaa` d
)aad e
.bb 
Wherebb 
(bb 
xbb 
=>bb 
stringbb "
.bb" #
IsNullOrEmptybb# 0
(bb0 1

parametersbb1 ;
.bb; <
PhoneNumberbb< G
)bbG H
?bbI J
truebbK O
:bbP Q
xbbR S
.bbS T
PhoneNumberbbT _
==bb` b

parametersbbc m
.bbm n
PhoneNumberbbn y
)bby z
.cc 
Wherecc 
(cc 
xcc 
=>cc 
stringcc "
.cc" #
IsNullOrEmptycc# 0
(cc0 1

parameterscc1 ;
.cc; <
Emailcc< A
)ccA B
?ccC D
trueccE I
:ccJ K
xccL M
.ccM N
EmailccN S
==ccT V

parametersccW a
.cca b
Emailccb g
)ccg h
.dd 
Wheredd 
(dd 
xdd 
=>dd 
!dd 

parametersdd '
.dd' (
Disabledd( /
.dd/ 0
HasValuedd0 8
?dd9 :
truedd; ?
:dd@ A
xddB C
.ddC D
DisableddD K
==ddL N

parametersddO Y
.ddY Z
DisableddZ a
)dda b
.ee 
ToListAsyncee 
(ee 
cancellationee )
)ee) *
;ee* +
}ff 	
}gg 
}hh ÿ
aE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Repositories\v1\TaskNoteRepository.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Repositories  ,
{ 
public 

class 
TaskNoteRepository #
:$ %
RepositoryBase& 4
<4 5
BaseContext5 @
,@ A
TaskNoteB J
,J K
GuidL P
>P Q
,Q R
ITaskNoteRepositoryS f
{ 
public 
TaskNoteRepository !
(! "
BaseContext" -
context. 5
,5 6
IRepositoryContext7 I
repositoryContextJ [
)[ \
: 
base 
( 
context 
, 
repositoryContext -
)- .
{ 	
} 	
public 
override 
async 
Task "
<" #
TaskNote# +
>+ , 
GetCompleteByIdAsync- A
(A B
GuidB F
idG I
,I J
CancellationTokenK \
cancellationToken] n
=o p
defaultq x
)x y
{ 	
return 
await 
GetByIdAsync %
(% &
id& (
,( )
cancellationToken* ;
); <
;< =
} 	
public 
async 
Task 
< 
List 
< 
TaskNote '
>' (
>( )
GetToListAsync* 8
(8 9
Guid9 =
userId> D
,D E
CancellationTokenF W
cancellationX d
)d e
{ 	
return 
await 
_context !
.! "
	TaskNotes" +
. 
Where 
( 
x 
=> 
x 
. 
DeletionDate *
==+ -
null. 2
)2 3
. 
Where 
( 
x 
=> 
x 
. 
Done "
!=# %
true& *
)* +
.   
Where   
(   
x   
=>   
x   
.   
UserId   $
==  % '
userId  ( .
)  . /
.!! 
OrderByDescending!! "
(!!" #
x!!# $
=>!!% '
x!!( )
.!!) *
CreationDate!!* 6
)!!6 7
."" 
ToListAsync"" 
("" 
cancellation"" )
)"") *
;""* +
}## 	
}$$ 
}%% ÛG
aE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Repositories\v1\SupplierRepository.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Repositories  ,
., -
v1- /
{ 
public 

class 
SupplierRepository #
:$ %
RepositoryBase& 4
<4 5
BaseContext5 @
,@ A
SupplierB J
,J K
GuidL P
>P Q
,Q R
ISupplierRepositoryS f
{ 
public 
SupplierRepository !
(! "
BaseContext" -
context. 5
,5 6
IRepositoryContext7 I
repositoryContextJ [
)[ \
: 
base 
( 
context 
, 
repositoryContext -
)- .
{ 	
} 	
public 
override 
async 
Task "
<" #
Supplier# +
>+ , 
GetCompleteByIdAsync- A
(A B
GuidB F
idG I
,I J
CancellationTokenK \
cancellationToken] n
=o p
defaultq x
)x y
{ 	
return 
await 
GetByIdAsync %
(% &
id& (
,( )
cancellationToken* ;
); <
;< =
} 	
public 
async 
Task 
< 
Supplier "
>" #
GetByEmailAsync$ 3
(3 4
string4 :
email; @
,@ A
CancellationTokenB S
cancellationT `
=a b
defaultc j
)j k
{ 	
return 
await 
_context !
.! "
	Suppliers" +
. 
AsNoTracking 
( 
) 
.   
FirstOrDefaultAsync   $
(  $ %
x  % &
=>  ' )
x  * +
.  + ,
Email  , 1
.  1 2
Equals  2 8
(  8 9
email  9 >
)  > ?
,  ? @
cancellation  A M
)  M N
;  N O
}!! 	
public## 
async## 
Task## 
<## 
List## 
<## 
Supplier## '
>##' (
>##( )
GetToListAsync##* 8
(##8 9
CancellationToken##9 J
cancellation##K W
=##X Y
default##Z a
)##a b
{$$ 	
return%% 
await%% 
_context%% !
.%%! "
	Suppliers%%" +
.&& 
AsNoTracking&& 
(&& 
)&& 
.'' 
Where'' 
('' 
x'' 
=>'' 
x'' 
.'' 
DeletionDate'' *
.''* +
Equals''+ 1
(''1 2
null''2 6
)''6 7
)''7 8
.(( 
ToListAsync(( 
((( 
cancellation(( )
)(() *
;((* +
})) 	
public++ 
async++ 
Task++ 
<++ 
List++ 
<++ 
Supplier++ '
>++' (
>++( )
GetByParameters++* 9
(++9 :(
SupplierGetByParametersModel++: V

parameters++W a
,++a b
CancellationToken++c t
cancellation	++u Å
=
++Ç É
default
++Ñ ã
)
++ã å
{,, 	
return-- 
await-- 
_context-- !
.--! "
	Suppliers--" +
... 
AsNoTracking.. 
(.. 
).. 
.// 
Where// 
(// 
x// 
=>// 
!// 

parameters// '
.//' (
Id//( *
.//* +
HasValue//+ 3
?//4 5
true//6 :
://; <
x//= >
.//> ?
Id//? A
==//B D

parameters//E O
.//O P
Id//P R
)//R S
.00 
Where00 
(00 
x00 
=>00 
string00 "
.00" #
IsNullOrEmpty00# 0
(000 1

parameters001 ;
.00; <
Name00< @
)00@ A
?00B C
true00D H
:00I J
x00K L
.00L M
Name00M Q
==00R T

parameters00U _
.00_ `
Name00` d
)00d e
.11 
Where11 
(11 
x11 
=>11 
string11 "
.11" #
IsNullOrEmpty11# 0
(110 1

parameters111 ;
.11; <
PhoneNumber11< G
)11G H
?11I J
true11K O
:11P Q
x11R S
.11S T
PhoneNumber11T _
==11` b

parameters11c m
.11m n
PhoneNumber11n y
)11y z
.22 
Where22 
(22 
x22 
=>22 
string22 "
.22" #
IsNullOrEmpty22# 0
(220 1

parameters221 ;
.22; <
Email22< A
)22A B
?22C D
true22E I
:22J K
x22L M
.22M N
Email22N S
==22T V

parameters22W a
.22a b
Email22b g
)22g h
.33 
Where33 
(33 
x33 
=>33 
!33 

parameters33 '
.33' (
Disable33( /
.33/ 0
HasValue330 8
?339 :
true33; ?
:33@ A
x33B C
.33C D
Disable33D K
==33L N

parameters33O Y
.33Y Z
Disable33Z a
)33a b
.44 
ToListAsync44 
(44 
cancellation44 )
)44) *
;44* +
}55 	
public77 
async77 
Task77 
<77 
List77 
<77 
Supplier77 '
>77' (
>77( )(
GetMonthTopDonorsReportAsync77* F
(77F G
CancellationToken77G X
cancellation77Y e
)77e f
{88 	
return99 
await99 
_context99 !
.99! "
RegisterInStocks99" 2
.:: 
AsNoTracking:: 
(:: 
):: 
.;; 
Include;; 
(;; 
x;; 
=>;; 
x;; 
.;;  
Stock;;  %
);;% &
.<< 
Include<< 
(<< 
x<< 
=><< 
x<< 
.<<  

RegisterIn<<  *
)<<* +
.== 
ThenInclude==  
(==  !
x==! "
=>==# %
x==& '
.==' (
Supplier==( 0
)==0 1
.>> 
Where>> 
(>> 
x>> 
=>>> 
x>> 
.>> 

RegisterIn>> (
.>>( )
Apply>>) .
)>>. /
.?? 
Where?? 
(?? 
x?? 
=>?? 
x?? 
.?? 

RegisterIn?? (
.??( )
DeletionDate??) 5
==??6 8
null??9 =
)??= >
.@@ 
Where@@ 
(@@ 
x@@ 
=>@@ 
x@@ 
.@@ 

RegisterIn@@ (
.@@( )
Donation@@) 1
)@@1 2
.AA 
WhereAA 
(AA 
xAA 
=>AA 
xAA 
.AA 

RegisterInAA (
.AA( )
	ApplyDateAA) 2
.AA2 3
ValueAA3 8
.AA8 9
MonthAA9 >
==AA? A
DateTimeAAB J
.AAJ K
UtcNowAAK Q
.AAQ R
MonthAAR W
)AAW X
.BB 
GroupByBB 
(BB 
xBB 
=>BB 
xBB 
.BB  

RegisterInBB  *
.BB* +

SupplierIdBB+ 5
)BB5 6
.CC 
SelectCC 
(CC 
xCC 
=>CC 
newCC  
SupplierCC! )
{DD 
NameEE 
=EE 
xEE 
.EE 
FirstOrDefaultEE +
(EE+ ,
)EE, -
.EE- .

RegisterInEE. 8
.EE8 9
SupplierEE9 A
.EEA B
NameEEB F
,EEF G
RegistersInFF 
=FF  !
newFF" %
ListFF& *
<FF* +

RegisterInFF+ 5
>FF5 6
{GG 
newHH 

RegisterInHH &
{II 
RegisterInStocksJJ ,
=JJ- .
newJJ/ 2
ListJJ3 7
<JJ7 8
RegisterInStockJJ8 G
>JJG H
{KK 
newLL  #
RegisterInStockLL$ 3
{MM  !
QuantityNN$ ,
=NN- .
xNN/ 0
.NN0 1
SumNN1 4
(NN4 5
xNN5 6
=>NN7 9
xNN: ;
.NN; <
QuantityNN< D
)NND E
}OO  !
}PP 
}QQ 
}RR 
}SS 
)SS 
.TT 
ToListAsyncTT 
(TT 
cancellationTT )
)TT) *
;TT* +
}UU 	
}VV 
}WW ·
bE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Repositories\v1\StockTypeRepository.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Repositories  ,
., -
v1- /
{ 
public 

class 
StockTypeRepository $
:% &
RepositoryBase' 5
<5 6
BaseContext6 A
,A B
	StockTypeC L
,L M
stringN T
>T U
,U V 
IStockTypeRepositoryW k
{ 
public 
StockTypeRepository "
(" #
BaseContext# .
context/ 6
,6 7
IRepositoryContext8 J
repositoryContextK \
)\ ]
: 
base 
( 
context 
, 
repositoryContext -
)- .
{ 	
} 	
public 
override 
async 
Task "
<" #
	StockType# ,
>, - 
GetCompleteByIdAsync. B
(B C
stringC I
idJ L
,L M
CancellationTokenN _
cancellationToken` q
=r s
defaultt {
){ |
{ 	
return 
await 
GetByIdAsync %
(% &
id& (
,( )
cancellationToken* ;
); <
;< =
} 	
public 
async 
Task 
< 
List 
< 
	StockType (
>( )
>) *
GetToListAsync+ 9
(9 :
CancellationToken: K
cancellationL X
=Y Z
default[ b
)b c
{ 	
return 
await 
_context !
.! "

StockTypes" ,
. 
AsNoTracking 
( 
) 
. 
Where 
( 
x 
=> 
x 
. 
DeletionDate *
.* +
Equals+ 1
(1 2
null2 6
)6 7
)7 8
. 
ToListAsync 
( 
cancellation )
)) *
;* +
}   	
}!! 
}"" ÆT
^E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Repositories\v1\StockRepository.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Repositories  ,
., -
v1- /
{ 
public 

class 
StockRepository  
:! "
RepositoryBase# 1
<1 2
BaseContext2 =
,= >
Stock? D
,D E
GuidF J
>J K
,K L
IStockRepositoryM ]
{ 
public 
StockRepository 
( 
BaseContext *
context+ 2
,2 3
IRepositoryContext4 F
repositoryContextG X
)X Y
: 
base 
( 
context 
, 
repositoryContext -
)- .
{ 	
} 	
public 
async 
Task 
< 
List 
< 
Stock $
>$ %
>% &
GetByParameters' 6
(6 7%
StockGetByParametersModel7 P

parametersQ [
,[ \
CancellationToken] n
cancellationo {
=| }
default	~ Ö
)
Ö Ü
{ 	
return 
await 
_context !
.! "
Stocks" (
. 
AsNoTracking 
( 
) 
. 
Where 
( 
x 
=> 
! 

parameters '
.' (
Id( *
.* +
HasValue+ 3
?4 5
true6 :
:; <
x= >
.> ?
Id? A
==B D

parametersE O
.O P
IdP R
)R S
. 
Where 
( 
x 
=> 
string "
." #
IsNullOrEmpty# 0
(0 1

parameters1 ;
.; <
Name< @
)@ A
?B C
trueD H
:I J
xK L
.L M
NameM Q
==R T

parametersU _
._ `
Name` d
)d e
. 
Where 
( 
x 
=> 
string "
." #
IsNullOrEmpty# 0
(0 1

parameters1 ;
.; <
Description< G
)G H
?I J
trueK O
:P Q
xR S
.S T
DescriptionT _
==` b

parametersc m
.m n
Descriptionn y
)y z
. 
Where 
( 
x 
=> 
! 

parameters '
.' (
Disable( /
./ 0
HasValue0 8
?9 :
true; ?
:@ A
xB C
.C D
DisableD K
==L N

parametersO Y
.Y Z
DisableZ a
)a b
.   
Where   
(   
x   
=>   
!   

parameters   '
.  ' (
Quantity  ( 0
.  0 1
HasValue  1 9
?  : ;
true  < @
:  A B
x  C D
.  D E
Quantity  E M
==  N P

parameters  Q [
.  [ \
Quantity  \ d
)  d e
.!! 
ToListAsync!! 
(!! 
cancellation!! )
)!!) *
;!!* +
}"" 	
public$$ 
override$$ 
async$$ 
Task$$ "
<$$" #
Stock$$# (
>$$( ) 
GetCompleteByIdAsync$$* >
($$> ?
Guid$$? C
id$$D F
,$$F G
CancellationToken$$H Y
cancellationToken$$Z k
=$$l m
default$$n u
)$$u v
{%% 	
return&& 
await&& 
GetByIdAsync&& %
(&&% &
id&&& (
,&&( )
cancellationToken&&* ;
)&&; <
;&&< =
}'' 	
public)) 
async)) 
Task)) 
<)) 
List)) 
<)) 
Stock)) $
>))$ %
>))% &
GetLowerStocks))' 5
())5 6
int))6 9
number)): @
,))@ A
CancellationToken))B S
cancellation))T `
)))` a
{** 	
return++ 
await++ 
_context++ !
.++! "
Stocks++" (
.,, 
AsNoTracking,, 
(,, 
),, 
.-- 
Where-- 
(-- 
x-- 
=>-- 
x-- 
.-- 
Quantity-- &
<--' (
x--) *
.--* +
QuantityLowWarning--+ =
)--= >
... 
Where.. 
(.. 
x.. 
=>.. 
x.. 
... 
Disable.. %
!=..& (
true..) -
)..- .
.// 
Where// 
(// 
x// 
=>// 
x// 
.// 
DeletionDate// *
.//* +
Equals//+ 1
(//1 2
null//2 6
)//6 7
)//7 8
.00 
OrderBy00 
(00 
x00 
=>00 
x00 
.00  
Quantity00  (
)00( )
.11 
Take11 
(11 
number11 
)11 
.22 
ToListAsync22 
(22 
cancellation22 )
)22) *
;22* +
}33 	
public55 
async55 
Task55 
<55 
List55 
<55 
Stock55 $
>55$ %
>55% &
GetToListAsync55' 5
(555 6
CancellationToken556 G
cancellation55H T
=55U V
default55W ^
)55^ _
{66 	
return77 
await77 
_context77 !
.77! "
Stocks77" (
.88 
AsNoTracking88 
(88 
)88 
.99 
Where99 
(99 
x99 
=>99 
x99 
.99 
DeletionDate99 *
.99* +
Equals99+ 1
(991 2
null992 6
)996 7
)997 8
.:: 
ToListAsync:: 
(:: 
cancellation:: )
)::) *
;::* +
};; 	
public== 
async== 
Task== 
<== 
int== 
>== )
GetTotalStocksQuantityWarning== <
(==< =
CancellationToken=== N
cancellation==O [
)==[ \
{>> 	
return?? 
await?? 
_context?? !
.??! "
Stocks??" (
.@@ 
AsNoTracking@@ 
(@@ 
)@@ 
.AA 
WhereAA 
(AA 
xAA 
=>AA 
xAA 
.AA 
QuantityAA &
<AA' (
xAA) *
.AA* +
QuantityLowWarningAA+ =
)AA= >
.BB 
WhereBB 
(BB 
xBB 
=>BB 
xBB 
.BB 
DisableBB %
!=BB& (
trueBB) -
&&CC  "
xCC# $
.CC$ %
DeletionDateCC% 1
.CC1 2
EqualsCC2 8
(CC8 9
nullCC9 =
)CC= >
)CC> ?
.DD 

CountAsyncDD 
(DD 
cancellationDD (
)DD( )
;DD) *
}EE 	
publicGG 
asyncGG 
TaskGG 
<GG 
ListGG 
<GG 
StockGG $
>GG$ %
>GG% &!
GetRestockReportAsyncGG' <
(GG< =
CancellationTokenGG= N
cancellationGGO [
)GG[ \
{HH 	
returnII 
awaitII 
_contextII !
.II! "
StocksII" (
.JJ 
AsNoTrackingJJ 
(JJ 
)JJ 
.KK 
IncludeKK 
(KK 
xKK 
=>KK 
xKK 
.KK  
RegisterInStocksKK  0
)KK0 1
.LL 
ThenIncludeLL  
(LL  !
xLL! "
=>LL# %
xLL& '
.LL' (

RegisterInLL( 2
)LL2 3
.MM 
ThenIncludeMM $
(MM$ %
xMM% &
=>MM' )
xMM* +
.MM+ ,
SupplierMM, 4
)MM4 5
.NN 
WhereNN 
(NN 
xNN 
=>NN 
xNN 
.NN 
QuantityNN &
<NN' (
xNN) *
.NN* +
QuantityLowWarningNN+ =
&&OO  "
xOO# $
.OO$ %
DisableOO% ,
!=OO- /
trueOO0 4
&&PP  "
xPP# $
.PP$ %
DeletionDatePP% 1
.PP1 2
EqualsPP2 8
(PP8 9
nullPP9 =
)PP= >
&&QQ  "
(QQ# $
xQQ$ %
.QQ% &
RegisterInStocksQQ& 6
.QQ6 7
OrderByQQ7 >
(QQ> ?
yQQ? @
=>QQA C
yQQD E
.QQE F
PriceQQF K
)QQK L
.QQL M
TakeQQM Q
(QQQ R
$numQQR S
)QQS T
.QQT U
AnyQQU X
(QQX Y
)QQY Z
||RR$ &
!RR' (
xRR( )
.RR) *
RegisterInStocksRR* :
.RR: ;
AnyRR; >
(RR> ?
)RR? @
)RR@ A
)RRA B
.SS 
ToListAsyncSS 
(SS 
cancellationSS )
)SS) *
;SS* +
}TT 	
publicVV 
asyncVV 
TaskVV 
<VV 
ListVV 
<VV 
StockVV $
>VV$ %
>VV% &
GetStockReportAsyncVV' :
(VV: ;
CancellationTokenVV; L
cancellationVVM Y
)VVY Z
{WW 	
returnXX 
awaitXX 
_contextXX !
.XX! "
StocksXX" (
.YY 
AsNoTrackingYY 
(YY 
)YY 
.ZZ 
IncludeZZ 
(ZZ 
xZZ 
=>ZZ 
xZZ 
.ZZ  
RegisterInStocksZZ  0
)ZZ0 1
.[[ 
Where[[ 
([[ 
x[[ 
=>[[ 
x[[ 
.[[ 
Quantity[[ &
>=[[' )
$num[[* +
)[[+ ,
.\\ 
Where\\ 
(\\ 
x\\ 
=>\\ 
!\\ 
x\\ 
.\\ 
Disable\\ &
)\\& '
.]] 
ToListAsync]] 
(]] 
cancellation]] )
)]]) *
;]]* +
}^^ 	
}__ 
}`` ≤
]E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Repositories\v1\RoleRepository.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Repositories  ,
., -
v1- /
{ 
public 

class 
RoleRepository 
:  !
RepositoryBase" 0
<0 1
BaseContext1 <
,< =
Role> B
,B C
GuidD H
>H I
,I J
IRoleRepositoryK Z
{ 
public 
RoleRepository 
( 
BaseContext )
context* 1
,1 2
IRepositoryContext3 E
repositoryContextF W
)W X
: 
base 
( 
context 
, 
repositoryContext -
)- .
{ 	
} 	
public 
override 
async 
Task "
<" #
Role# '
>' ( 
GetCompleteByIdAsync) =
(= >
Guid> B
idC E
,E F
CancellationTokenG X
cancellationTokenY j
=k l
defaultm t
)t u
{ 	
return 
await 
base 
. 
GetByIdAsync *
(* +
id+ -
,- .
cancellationToken/ @
)@ A
;A B
} 	
public 
async 
Task 
< 
List 
< 
Role #
># $
>$ %
GetToListAsync& 4
(4 5
CancellationToken5 F
cancellationG S
=T U
defaultV ]
)] ^
{ 	
return 
await 
_context !
.! "
Roles" '
. 
AsNoTracking 
( 
) 
.   
Where   
(   
x   
=>   
x   
.   
DeletionDate   *
.  * +
Equals  + 1
(  1 2
null  2 6
)  6 7
)  7 8
.!! 
Where!! 
(!! 
x!! 
=>!! 
x!! 
.!! 
UserType!! &
!=!!' )
UserType!!* 2
.!!2 3
Master!!3 9
)!!9 :
."" 
ToListAsync"" 
("" 
cancellation"" )
)"") *
;""* +
}## 	
}$$ 
}%% ˘B
iE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Repositories\v1\RegisterOutStockRepository.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Repositories  ,
., -
v1- /
{ 
public 

class &
RegisterOutStockRepository +
:, -
MtMRepositoryBase. ?
<? @
BaseContext@ K
,K L
RegisterOutStockM ]
,] ^
Guid_ c
,c d
Guide i
>i j
,j k(
IRegisterOutStockRepository	l á
{ 
public &
RegisterOutStockRepository )
() *
BaseContext* 5
context6 =
,= >
IRepositoryContext? Q
repositoryContextR c
)c d
: 
base 
( 
context 
, 
repositoryContext -
)- .
{ 	
} 	
public 
override 
async 
Task "
<" #
RegisterOutStock# 3
>3 4
GetByIdsAsync5 B
(B C
GuidC G
registerOutIdH U
,U V
GuidW [
stockId\ c
,c d
CancellationTokene v
cancellationToken	w à
=
â ä
default
ã í
)
í ì
{ 	
return 
await 
_context !
.! "
RegisterOutStocks" 3
. 
Where 
( 
x 
=> 
x 
. 
RegisterOutId +
.+ ,
Equals, 2
(2 3
registerOutId3 @
)@ A
&&B D
xE F
.F G
StockIdG N
.N O
EqualsO U
(U V
stockIdV ]
)] ^
)^ _
. 
AsNoTracking 
( 
) 
. 
FirstOrDefaultAsync $
($ %
cancellationToken% 6
)6 7
;7 8
} 	
public 
override 
async 
Task "
<" #
IEnumerable# .
<. /
RegisterOutStock/ ?
>? @
>@ A
GetByStrongIdAsyncB T
(T U
GuidU Y
registerOutIdZ g
,g h
CancellationTokeni z
cancellationToken	{ å
=
ç é
default
è ñ
)
ñ ó
{ 	
return   
await   
_context   !
.  ! "
RegisterOutStocks  " 3
.!! 
Include!! 
(!! 
x!! 
=>!! 
x!! 
.!!  
Stock!!  %
)!!% &
."" 
Where"" 
("" 
x"" 
=>"" 
x"" 
."" 
RegisterOutId"" +
=="", .
registerOutId""/ <
)""< =
.## 
AsNoTracking## 
(## 
)## 
.$$ 
ToListAsync$$ 
($$ 
cancellationToken$$ .
)$$. /
;$$/ 0
}%% 	
public'' 
override'' 
async'' 
Task'' "
<''" #
IEnumerable''# .
<''. /
RegisterOutStock''/ ?
>''? @
>''@ A
GetByWeakIdAsync''B R
(''R S
Guid''S W
stockId''X _
,''_ `
CancellationToken''a r
cancellationToken	''s Ñ
=
''Ö Ü
default
''á é
)
''é è
{(( 	
return)) 
await)) 
_context)) !
.))! "
RegisterOutStocks))" 3
.** 
Include** 
(** 
x** 
=>** 
x** 
.**  
RegisterOut**  +
)**+ ,
.++ 
Where++ 
(++ 
x++ 
=>++ 
x++ 
.++ 
StockId++ %
==++& (
stockId++) 0
)++0 1
.,, 
AsNoTracking,, 
(,, 
),, 
.-- 
ToListAsync-- 
(-- 
cancellationToken-- .
)--. /
;--/ 0
}.. 	
public00 
async00 
Task00 
<00 
IEnumerable00 %
<00% &
RegisterOutStock00& 6
>006 7
>007 8%
GetConsumptionReportAsync009 R
(00R S
DateTime00S [
initialDate00\ g
,00g h
DateTime00i q
	finalDate00r {
,00{ |
CancellationToken	00} é
cancellation
00è õ
)
00õ ú
{11 	
return22 
await22 
_context22 !
.22! "
RegisterOutStocks22" 3
.33 
Include33 
(33 
x33 
=>33 
x33 
.33  
Stock33  %
)33% &
.44 
Include44 
(44 
x44 
=>44 
x44 
.44  
RegisterOut44  +
)44+ ,
.55 
Where55 
(55 
x55 
=>55 
x55 
.55 
RegisterOut55 )
.55) *
Apply55* /
)55/ 0
.66 
Where66 
(66 
x66 
=>66 
x66 
.66 
RegisterOut66 )
.66) *
DeletionDate66* 6
==667 9
null66: >
)66> ?
.77 
Where77 
(77 
x77 
=>77 
x77 
.77 
RegisterOut77 )
.77) *
	ApplyDate77* 3
>=774 6
initialDate777 B
&&77C E
x77F G
.77G H
RegisterOut77H S
.77S T
	ApplyDate77T ]
<=77^ `
	finalDate77a j
)77j k
.88 
GroupBy88 
(88 
x88 
=>88 
x88 
.88  
StockId88  '
)88' (
.99 
Select99 
(99 
x99 
=>99 
new99  
RegisterOutStock99! 1
{:: 
Stock;; 
=;; 
x;; 
.;; 
FirstOrDefault;; ,
(;;, -
);;- .
.;;. /
Stock;;/ 4
,;;4 5
Quantity<< 
=<< 
x<<  
.<<  !
Sum<<! $
(<<$ %
x<<% &
=><<' )
x<<* +
.<<+ ,
Quantity<<, 4
)<<4 5
,<<5 6
}== 
)== 
.>> 
AsNoTracking>> 
(>> 
)>> 
.?? 
ToListAsync?? 
(?? 
cancellation?? )
)??) *
;??* +
}@@ 	
publicBB 
overrideBB 
asyncBB 
TaskBB "
<BB" #
IEnumerableBB# .
<BB. /
RegisterOutStockBB/ ?
>BB? @
>BB@ A
UpdateAsyncBBB M
(BBM N
IEnumerableBBN Y
<BBY Z
RegisterOutStockBBZ j
>BBj k
entitiesMtMBBl w
)BBw x
{CC 	
foreachDD 
(DD 
varDD 
	entityMtMDD "
inDD# %
entitiesMtMDD& 1
)DD1 2
{EE 
varFF 
entityFF 
=FF 
_contextFF %
.FF% &
SetFF& )
<FF) *
RegisterOutStockFF* :
>FF: ;
(FF; <
)FF< =
.FF= >
FindFF> B
(FFB C
	entityMtMFFC L
.FFL M
RegisterOutIdFFM Z
,FFZ [
	entityMtMFF\ e
.FFe f
StockIdFFf m
)FFm n
;FFn o
ifGG 
(GG 
entityGG 
==GG 
defaultGG %
)GG% &
returnGG' -
nullGG. 2
;GG2 3
varHH 
attachedEntryHH !
=HH" #
_contextHH$ ,
.HH, -
EntryHH- 2
(HH2 3
entityHH3 9
)HH9 :
;HH: ;
attachedEntryII 
.II 
CurrentValuesII +
.II+ ,
	SetValuesII, 5
(II5 6
	entityMtMII6 ?
)II? @
;II@ A
}JJ 
awaitKK 
_contextKK 
.KK 
SaveChangesAsyncKK +
(KK+ ,
)KK, -
;KK- .
returnLL 
entitiesMtMLL 
;LL 
}MM 	
}NN 
}OO ÆM
dE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Repositories\v1\RegisterOutRepository.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Repositories  ,
., -
v1- /
{ 
public 

class !
RegisterOutRepository &
:' (
RepositoryBase) 7
<7 8
BaseContext8 C
,C D
RegisterOutE P
,P Q
GuidR V
>V W
,W X"
IRegisterOutRepositoryY o
{ 
public !
RegisterOutRepository $
($ %
BaseContext% 0
context1 8
,8 9
IRepositoryContext: L
repositoryContextM ^
)^ _
: 
base 
( 
context 
, 
repositoryContext -
)- .
{ 	
} 	
public 
override 
async 
Task "
<" #
RegisterOut# .
>. /
AddAsync0 8
(8 9
RegisterOut9 D
entityE K
)K L
{ 	
var 

lastNumber 
= 
await "
GetLastNumber# 0
(0 1
)1 2
;2 3
entity 
. 
Number 
= 

lastNumber &
+' (
$num) *
;* +
if 
( 
entity 
. 
Apply 
) 
entity $
.$ %
	ApplyDate% .
=/ 0
DateTime1 9
.9 :
UtcNow: @
;@ A
return 
await 
base 
. 
AddAsync &
(& '
entity' -
)- .
;. /
} 	
public 
override 
async 
Task "
<" #
RegisterOut# .
>. /
UpdateAsync0 ;
(; <
RegisterOut< G
entityH N
)N O
{ 	
var   
entityfromdb   
=   
_context   '
.  ' (
RegistersOut  ( 4
.  4 5
Find  5 9
(  9 :
entity  : @
.  @ A
Id  A C
)  C D
;  D E
if!! 
(!! 
entityfromdb!! 
==!! 
default!!  '
)!!' (
return!!) /
null!!0 4
;!!4 5
if## 
(## 
entity## 
.## 
Apply## 
)## 
entity## $
.##$ %
	ApplyDate##% .
=##/ 0
DateTime##1 9
.##9 :
UtcNow##: @
;##@ A
entity$$ 
.$$ 
LastChangeDate$$ !
=$$" #
DateTime$$$ ,
.$$, -
UtcNow$$- 3
;$$3 4
entity%% 
.%% 
CreationDate%% 
=%%  !
entityfromdb%%" .
.%%. /
CreationDate%%/ ;
;%%; <
entity&& 
.&& 
Number&& 
=&& 
entityfromdb&& (
.&&( )
Number&&) /
;&&/ 0
var(( 
attachedEntry(( 
=(( 
_context((  (
.((( )
Entry(() .
(((. /
entityfromdb((/ ;
)((; <
;((< =
attachedEntry** 
.** 
CurrentValues** '
.**' (
	SetValues**( 1
(**1 2
entity**2 8
)**8 9
;**9 :
await,, 
_context,, 
.,, 
SaveChangesAsync,, +
(,,+ ,
),,, -
;,,- .
return.. 
entity.. 
;.. 
}// 	
public11 
override11 
async11 
Task11 "
<11" #
RegisterOut11# .
>11. / 
GetCompleteByIdAsync110 D
(11D E
Guid11E I
id11J L
,11L M
CancellationToken11N _
cancellationToken11` q
=11r s
default11t {
)11{ |
{22 	
return33 
await33 
GetByIdAsync33 %
(33% &
id33& (
,33( )
cancellationToken33* ;
)33; <
;33< =
}44 	
public66 
async66 
Task66 
<66 
List66 
<66 
RegisterOut66 *
>66* +
>66+ ,
GetToListAsync66- ;
(66; <
CancellationToken66< M
cancellation66N Z
)66Z [
{77 	
return88 
await88 
_context88 !
.88! "
RegistersOut88" .
.99 
AsNoTracking99 
(99 
)99 
.:: 
Where:: 
(:: 
x:: 
=>:: 
x:: 
.:: 
DeletionDate:: *
.::* +
Equals::+ 1
(::1 2
null::2 6
)::6 7
)::7 8
.;; 
ToListAsync;; 
(;; 
cancellation;; )
);;) *
;;;* +
}<< 	
public>> 
async>> 
Task>> 
<>> 

Dictionary>> $
<>>$ %
DateTime>>% -
,>>- .
decimal>>/ 6
>>>6 7
>>>7 8#
GetConsumptionsPerMonth>>9 P
(>>P Q
CancellationToken>>Q b
cancellation>>c o
)>>o p
{?? 	
return@@ 
await@@ 
_context@@ !
.@@! "
RegistersOut@@" .
.AA 
IncludeAA 
(AA 
xAA 
=>AA 
xAA 
.AA  
RegisterOutStocksAA  1
)AA1 2
.BB 
ThenIncludeBB  
(BB  !
xBB! "
=>BB# %
xBB& '
.BB' (
StockBB( -
)BB- .
.CC 
AsNoTrackingCC 
(CC 
)CC 
.DD 
WhereDD 
(DD 
xDD 
=>DD 
xDD 
.DD 
DeletionDateDD *
.DD* +
EqualsDD+ 1
(DD1 2
nullDD2 6
)DD6 7
&&DD8 :
xDD; <
.DD< =
ApplyDD= B
)DDB C
.EE 
OrderByDescendingEE "
(EE" #
xEE# $
=>EE% '
xEE( )
.EE) *
CreationDateEE* 6
)EE6 7
.FF 
GroupByFF 
(FF 
xFF 
=>FF 
newFF !
{FF" #
xFF$ %
.FF% &
CreationDateFF& 2
.FF2 3
YearFF3 7
,FF7 8
xFF9 :
.FF: ;
CreationDateFF; G
.FFG H
MonthFFH M
}FFN O
)FFO P
.GG 
TakeGG 
(GG 
$numGG 
)GG 
.HH 
SelectHH 
(HH 
xHH 
=>HH 
newHH  
{II 
	MonthYearJJ 
=JJ 
newJJ  #
DateTimeJJ$ ,
(JJ, -
xJJ- .
.JJ. /
KeyJJ/ 2
.JJ2 3
YearJJ3 7
,JJ7 8
xJJ9 :
.JJ: ;
KeyJJ; >
.JJ> ?
MonthJJ? D
,JJD E
$numJJF G
)JJG H
,JJH I
TotalKK 
=KK 
xKK 
.KK 
SumKK !
(KK! "
yKK" #
=>KK$ &
yKK' (
.KK( )
RegisterOutStocksKK) :
.KK: ;
SumKK; >
(KK> ?
wKK? @
=>KKA C
wKKD E
.KKE F
QuantityKKF N
)KKN O
)KKO P
}LL 
)LL 
.MM 
ToDictionaryAsyncMM "
(MM" #
xMM# $
=>MM% '
xMM( )
.MM) *
	MonthYearMM* 3
,MM3 4
xMM5 6
=>MM7 9
xMM: ;
.MM; <
TotalMM< A
,MMA B
cancellationMMC O
)MMO P
;MMP Q
}NN 	
publicPP 
asyncPP 
TaskPP 
<PP 
RegisterOutPP %
>PP% & 
GetByIdToUpdateAsyncPP' ;
(PP; <
GuidPP< @
idPPA C
,PPC D
CancellationTokenPPE V
cancellationPPW c
)PPc d
{QQ 	
returnRR 
awaitRR 
_contextRR !
.RR! "
RegistersOutRR" .
.SS 
IncludeSS 
(SS 
xSS 
=>SS 
xSS 
.SS  
RegisterOutStocksSS  1
)SS1 2
.TT 
ThenIncludeTT  
(TT  !
xTT! "
=>TT# %
xTT& '
.TT' (
StockTT( -
)TT- .
.UU 
AsNoTrackingUU 
(UU 
)UU 
.VV 
FirstOrDefaultAsyncVV $
(VV$ %
xVV% &
=>VV' )
xVV* +
.VV+ ,
IdVV, .
.VV. /
EqualsVV/ 5
(VV5 6
idVV6 8
)VV8 9
)VV9 :
;VV: ;
}WW 	
publicYY 
asyncYY 
TaskYY 
<YY 
intYY 
>YY 
GetLastNumberYY ,
(YY, -
)YY- .
{ZZ 	
return[[ 
await[[ 
_context[[ !
.[[! "
RegistersOut[[" .
.\\ 
AsNoTracking\\ 
(\\ 
)\\ 
.]] 
OrderByDescending]] "
(]]" #
x]]# $
=>]]% '
x]]( )
.]]) *
Number]]* 0
)]]0 1
.^^ 
Select^^ 
(^^ 
x^^ 
=>^^ 
x^^ 
.^^ 
Number^^ %
)^^% &
.__ 
FirstOrDefaultAsync__ $
(__$ %
)__% &
;__& '
}`` 	
}aa 
}bb ùF
hE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Repositories\v1\RegisterInStockRepository.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Repositories  ,
., -
v1- /
{ 
public 

class %
RegisterInStockRepository *
:+ ,
MtMRepositoryBase- >
<> ?
BaseContext? J
,J K
RegisterInStockL [
,[ \
Guid] a
,a b
Guidc g
>g h
,h i'
IRegisterInStockRepository	j Ñ
{ 
public %
RegisterInStockRepository (
(( )
BaseContext) 4
context5 <
,< =
IRepositoryContext> P
repositoryContextQ b
)b c
: 
base 
( 
context 
, 
repositoryContext -
)- .
{ 	
} 	
public 
override 
async 
Task "
<" #
RegisterInStock# 2
>2 3
GetByIdsAsync4 A
(A B
GuidB F
registerInIdG S
,S T
GuidU Y
StockIdZ a
,a b
CancellationTokenc t
cancellationToken	u Ü
=
á à
default
â ê
)
ê ë
{ 	
return 
await 
_context !
.! "
RegisterInStocks" 2
. 
Where 
( 
x 
=> 
x 
. 
RegisterInId *
.* +
Equals+ 1
(1 2
registerInId2 >
)> ?
&&@ B
xC D
.D E
StockIdE L
.L M
EqualsM S
(S T
StockIdT [
)[ \
)\ ]
. 
AsNoTracking 
( 
) 
. 
FirstOrDefaultAsync $
($ %
cancellationToken% 6
)6 7
;7 8
} 	
public 
override 
async 
Task "
<" #
IEnumerable# .
<. /
RegisterInStock/ >
>> ?
>? @
GetByStrongIdAsyncA S
(S T
GuidT X
registerInIdY e
,e f
CancellationTokeng x
cancellationToken	y ä
=
ã å
default
ç î
)
î ï
{ 	
return   
await   
_context   !
.  ! "
RegisterInStocks  " 2
.!! 
Include!! 
(!! 
x!! 
=>!! 
x!! 
.!!  
Stock!!  %
)!!% &
."" 
Where"" 
("" 
x"" 
=>"" 
x"" 
."" 
RegisterInId"" *
==""+ -
registerInId"". :
)"": ;
.## 
AsNoTracking## 
(## 
)## 
.$$ 
ToListAsync$$ 
($$ 
cancellationToken$$ .
)$$. /
;$$/ 0
}%% 	
public'' 
override'' 
async'' 
Task'' "
<''" #
IEnumerable''# .
<''. /
RegisterInStock''/ >
>''> ?
>''? @
GetByWeakIdAsync''A Q
(''Q R
Guid''R V
stockId''W ^
,''^ _
CancellationToken''` q
cancellationToken	''r É
=
''Ñ Ö
default
''Ü ç
)
''ç é
{(( 	
return)) 
await)) 
_context)) !
.))! "
RegisterInStocks))" 2
.** 
Include** 
(** 
x** 
=>** 
x** 
.**  

RegisterIn**  *
)*** +
.++ 
Where++ 
(++ 
x++ 
=>++ 
x++ 
.++ 
StockId++ %
==++& (
stockId++) 0
)++0 1
.,, 
AsNoTracking,, 
(,, 
),, 
.-- 
ToListAsync-- 
(-- 
cancellationToken-- .
)--. /
;--/ 0
}.. 	
public00 
override00 
async00 
Task00 "
<00" #
IEnumerable00# .
<00. /
RegisterInStock00/ >
>00> ?
>00? @
UpdateAsync00A L
(00L M
IEnumerable00M X
<00X Y
RegisterInStock00Y h
>00h i
entitiesMtM00j u
)00u v
{11 	
foreach22 
(22 
var22 
	entityMtM22 "
in22# %
entitiesMtM22& 1
)221 2
{33 
var44 
entity44 
=44 
_context44 %
.44% &
Set44& )
<44) *
RegisterInStock44* 9
>449 :
(44: ;
)44; <
.44< =
Find44= A
(44A B
	entityMtM44B K
.44K L
RegisterInId44L X
,44X Y
	entityMtM44Z c
.44c d
StockId44d k
)44k l
;44l m
if55 
(55 
entity55 
==55 
default55 %
)55% &
return55' -
null55. 2
;552 3
var66 
attachedEntry66 !
=66" #
_context66$ ,
.66, -
Entry66- 2
(662 3
entity663 9
)669 :
;66: ;
attachedEntry77 
.77 
CurrentValues77 +
.77+ ,
	SetValues77, 5
(775 6
	entityMtM776 ?
)77? @
;77@ A
}88 
await99 
_context99 
.99 
SaveChangesAsync99 +
(99+ ,
)99, -
;99- .
return:: 
entitiesMtM:: 
;:: 
};; 	
public== 
async== 
Task== 
<== 
List== 
<== 
RegisterInStock== .
>==. /
>==/ 0#
GetDonationsReportAsync==1 H
(==H I
DateTime==I Q
initialDate==R ]
,==] ^
DateTime==_ g
	finalDate==h q
,==q r
CancellationToken	==s Ñ
cancellation
==Ö ë
)
==ë í
{>> 	
return?? 
await?? 
_context?? !
.??! "
RegisterInStocks??" 2
.@@ 
Include@@ 
(@@ 
x@@ 
=>@@ !
x@@" #
.@@# $
Stock@@$ )
)@@) *
.AA 
IncludeAA 
(AA 
xAA 
=>AA !
xAA" #
.AA# $

RegisterInAA$ .
)AA. /
.BB 
WhereBB 
(BB 
xBB 
=>BB 
xBB 
.BB 

RegisterInBB (
.BB( )
ApplyBB) .
)BB. /
.CC 
WhereCC 
(CC 
xCC 
=>CC 
xCC 
.CC 

RegisterInCC (
.CC( )
DonationCC) 1
)CC1 2
.DD 
WhereDD 
(DD 
xDD 
=>DD 
xDD 
.DD 

RegisterInDD (
.DD( )
DeletionDateDD) 5
==DD6 8
nullDD9 =
)DD= >
.EE 
WhereEE 
(EE 
xEE 
=>EE 
xEE 
.EE 

RegisterInEE (
.EE( )
	ApplyDateEE) 2
>=EE3 5
initialDateEE6 A
&&EEB D
xEEE F
.EEF G

RegisterInEEG Q
.EEQ R
	ApplyDateEER [
<=EE\ ^
	finalDateEE_ h
)EEh i
.FF 
GroupByFF 
(FF 
xFF 
=>FF 
xFF 
.FF  
StockIdFF  '
)FF' (
.GG 
SelectGG 
(GG 
xGG 
=>GG 
newGG  
RegisterInStockGG! 0
{HH 
StockII 
=II 
xII 
.II 
FirstOrDefaultII ,
(II, -
)II- .
.II. /
StockII/ 4
,II4 5
QuantityJJ 
=JJ 
xJJ  
.JJ  !
SumJJ! $
(JJ$ %
xJJ% &
=>JJ' )
xJJ* +
.JJ+ ,
QuantityJJ, 4
)JJ4 5
,JJ5 6
PriceKK 
=KK 
xKK 
.KK 
SumKK !
(KK! "
xKK" #
=>KK$ &
xKK' (
.KK( )
PriceKK) .
*KK/ 0
xKK1 2
.KK2 3
QuantityKK3 ;
)KK; <
,KK< =
}LL 
)LL 
.MM 
AsNoTrackingMM 
(MM 
)MM 
.NN 
ToListAsyncNN 
(NN 
cancellationNN )
)NN) *
;NN* +
}OO 	
}PP 
}QQ ´c
cE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Repositories\v1\RegisterInRepository.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Repositories  ,
., -
v1- /
{ 
public 

class  
RegisterInRepository %
:& '
RepositoryBase( 6
<6 7
BaseContext7 B
,B C

RegisterInD N
,N O
GuidP T
>T U
,U V!
IRegisterInRepositoryW l
{ 
public  
RegisterInRepository #
(# $
BaseContext$ /
context0 7
,7 8
IRepositoryContext9 K
repositoryContextL ]
)] ^
: 
base 
( 
context 
, 
repositoryContext -
)- .
{ 	
} 	
public 
override 
async 
Task "
<" #

RegisterIn# -
>- . 
GetCompleteByIdAsync/ C
(C D
GuidD H
idI K
,K L
CancellationTokenM ^
cancellationToken_ p
=q r
defaults z
)z {
{ 	
return 
await 
GetByIdAsync %
(% &
id& (
,( )
cancellationToken* ;
); <
;< =
} 	
public 
async 
Task 
< 
List 
< 

RegisterIn )
>) *
>* +
GetToListAsync, :
(: ;
CancellationToken; L
cancellationM Y
=Z [
default\ c
)c d
{ 	
return 
await 
_context !
.! "
RegistersIn" -
. 
AsNoTracking 
( 
) 
. 
Include 
( 
x 
=> 
x 
.  
Supplier  (
)( )
.   
Where   
(   
x   
=>   
x   
.   
DeletionDate   *
.  * +
Equals  + 1
(  1 2
null  2 6
)  6 7
)  7 8
.!! 
ToListAsync!! 
(!! 
cancellation!! )
)!!) *
;!!* +
}"" 	
public$$ 
override$$ 
async$$ 
Task$$ "
<$$" #

RegisterIn$$# -
>$$- .
AddAsync$$/ 7
($$7 8

RegisterIn$$8 B
entity$$C I
)$$I J
{%% 	
var&& 

lastNumber&& 
=&& 
await&& "
GetLastNumber&&# 0
(&&0 1
)&&1 2
;&&2 3
entity'' 
.'' 
Number'' 
='' 

lastNumber'' &
+''' (
$num'') *
;''* +
return(( 
await(( 
base(( 
.(( 
AddAsync(( &
(((& '
entity((' -
)((- .
;((. /
})) 	
public++ 
override++ 
async++ 
Task++ "
<++" #

RegisterIn++# -
>++- .
UpdateAsync++/ :
(++: ;

RegisterIn++; E
entity++F L
)++L M
{,, 	
var-- 
entityfromdb-- 
=-- 
_context-- '
.--' (
RegistersIn--( 3
.--3 4
Find--4 8
(--8 9
entity--9 ?
.--? @
Id--@ B
)--B C
;--C D
if.. 
(.. 
entityfromdb.. 
==.. 
default..  '
)..' (
return..) /
null..0 4
;..4 5
entity00 
.00 
LastChangeDate00 !
=00" #
DateTime00$ ,
.00, -
UtcNow00- 3
;003 4
entity11 
.11 
CreationDate11 
=11  !
entityfromdb11" .
.11. /
CreationDate11/ ;
;11; <
entity22 
.22 
Number22 
=22 
entityfromdb22 (
.22( )
Number22) /
;22/ 0
var44 
attachedEntry44 
=44 
_context44  (
.44( )
Entry44) .
(44. /
entityfromdb44/ ;
)44; <
;44< =
attachedEntry66 
.66 
CurrentValues66 '
.66' (
	SetValues66( 1
(661 2
entity662 8
)668 9
;669 :
await88 
_context88 
.88 
SaveChangesAsync88 +
(88+ ,
)88, -
;88- .
return:: 
entity:: 
;:: 
};; 	
public== 
async== 
Task== 
<== 

RegisterIn== $
>==$ % 
GetByIdToUpdateAsync==& :
(==: ;
Guid==; ?
id==@ B
,==B C
CancellationToken==D U
cancellation==V b
)==b c
{>> 	
return?? 
await?? 
_context?? !
.??! "
RegistersIn??" -
.@@ 
Include@@ 
(@@ 
x@@ 
=>@@ 
x@@ 
.@@  
Supplier@@  (
)@@( )
.AA 
IncludeAA 
(AA 
xAA 
=>AA 
xAA 
.AA  
RegisterInStocksAA  0
)AA0 1
.BB 
ThenIncludeBB  
(BB  !
xBB! "
=>BB# %
xBB& '
.BB' (
StockBB( -
)BB- .
.CC 
AsNoTrackingCC 
(CC 
)CC 
.DD 
FirstOrDefaultAsyncDD $
(DD$ %
xDD% &
=>DD' )
xDD* +
.DD+ ,
IdDD, .
.DD. /
EqualsDD/ 5
(DD5 6
idDD6 8
)DD8 9
)DD9 :
;DD: ;
}EE 	
publicGG 
asyncGG 
TaskGG 
<GG 

DictionaryGG $
<GG$ %
DateTimeGG% -
,GG- .
decimalGG/ 6
>GG6 7
>GG7 8 
GetDonationsPerMonthGG9 M
(GGM N
CancellationTokenGGN _
cancellationGG` l
)GGl m
{HH 	
returnII 
awaitII 
_contextII !
.II! "
RegistersInII" -
.JJ 
IncludeJJ 
(JJ 
xJJ 
=>JJ 
xJJ 
.JJ  
RegisterInStocksJJ  0
)JJ0 1
.KK 
ThenIncludeKK  
(KK  !
xKK! "
=>KK# %
xKK& '
.KK' (
StockKK( -
)KK- .
.LL 
AsNoTrackingLL 
(LL 
)LL 
.MM 
WhereMM 
(MM 
xMM 
=>MM 
xMM 
.MM 
DeletionDateMM *
.MM* +
EqualsMM+ 1
(MM1 2
nullMM2 6
)MM6 7
&&MM8 :
xMM; <
.MM< =
DonationMM= E
&&MMF H
xMMI J
.MMJ K
ApplyMMK P
)MMP Q
.NN 
OrderByDescendingNN "
(NN" #
xNN# $
=>NN% '
xNN( )
.NN) *
CreationDateNN* 6
)NN6 7
.OO 
GroupByOO 
(OO 
xOO 
=>OO 
newOO !
{OO" #
xOO$ %
.OO% &
CreationDateOO& 2
.OO2 3
YearOO3 7
,OO7 8
xOO9 :
.OO: ;
CreationDateOO; G
.OOG H
MonthOOH M
}OON O
)OOO P
.PP 
TakePP 
(PP 
$numPP 
)PP 
.QQ 
SelectQQ 
(QQ 
xQQ 
=>QQ 
newQQ  
{RR 
	MonthYearSS 
=SS 
newSS  #
DateTimeSS$ ,
(SS, -
xSS- .
.SS. /
KeySS/ 2
.SS2 3
YearSS3 7
,SS7 8
xSS9 :
.SS: ;
KeySS; >
.SS> ?
MonthSS? D
,SSD E
$numSSF G
)SSG H
,SSH I
TotalTT 
=TT 
xTT 
.TT 
SumTT !
(TT! "
yTT" #
=>TT$ &
yTT' (
.TT( )
RegisterInStocksTT) 9
.TT9 :
SumTT: =
(TT= >
wTT> ?
=>TT@ B
wTTC D
.TTD E
QuantityTTE M
)TTM N
)TTN O
}UU 
)UU 
.VV 
ToDictionaryAsyncVV "
(VV" #
xVV# $
=>VV% '
xVV( )
.VV) *
	MonthYearVV* 3
,VV3 4
xVV5 6
=>VV7 9
xVV: ;
.VV; <
TotalVV< A
,VVA B
cancellationVVC O
)VVO P
;VVP Q
}WW 	
publicYY 
asyncYY 
TaskYY 
<YY 

DictionaryYY $
<YY$ %
DateTimeYY% -
,YY- .
decimalYY/ 6
>YY6 7
>YY7 8
GetShoppingPerMonthYY9 L
(YYL M
CancellationTokenYYM ^
cancellationYY_ k
)YYk l
{ZZ 	
return[[ 
await[[ 
_context[[ !
.[[! "
RegistersIn[[" -
.\\ 
Include\\ 
(\\ 
x\\ 
=>\\ 
x\\ 
.\\  
RegisterInStocks\\  0
)\\0 1
.]] 
ThenInclude]]  
(]]  !
x]]! "
=>]]# %
x]]& '
.]]' (
Stock]]( -
)]]- .
.^^ 
AsNoTracking^^ 
(^^ 
)^^ 
.__ 
Where__ 
(__ 
x__ 
=>__ 
x__ 
.__ 
DeletionDate__ *
.__* +
Equals__+ 1
(__1 2
null__2 6
)__6 7
&&__8 :
!__; <
x__< =
.__= >
Donation__> F
&&__G I
x__J K
.__K L
Apply__L Q
)__Q R
.`` 
OrderByDescending`` "
(``" #
x``# $
=>``% '
x``( )
.``) *
CreationDate``* 6
)``6 7
.aa 
GroupByaa 
(aa 
xaa 
=>aa 
newaa !
{aa" #
xaa$ %
.aa% &
CreationDateaa& 2
.aa2 3
Yearaa3 7
,aa7 8
xaa9 :
.aa: ;
CreationDateaa; G
.aaG H
MonthaaH M
}aaN O
)aaO P
.bb 
Takebb 
(bb 
$numbb 
)bb 
.cc 
Selectcc 
(cc 
xcc 
=>cc 
newcc  
{dd 
	MonthYearee 
=ee 
newee  #
DateTimeee$ ,
(ee, -
xee- .
.ee. /
Keyee/ 2
.ee2 3
Yearee3 7
,ee7 8
xee9 :
.ee: ;
Keyee; >
.ee> ?
Monthee? D
,eeD E
$numeeF G
)eeG H
,eeH I
Totalff 
=ff 
xff 
.ff 
Sumff !
(ff! "
yff" #
=>ff$ &
yff' (
.ff( )
RegisterInStocksff) 9
.ff9 :
Sumff: =
(ff= >
wff> ?
=>ff@ B
wffC D
.ffD E
QuantityffE M
)ffM N
)ffN O
}gg 
)gg 
.hh 
ToDictionaryAsynchh "
(hh" #
xhh# $
=>hh% '
xhh( )
.hh) *
	MonthYearhh* 3
,hh3 4
xhh5 6
=>hh7 9
xhh: ;
.hh; <
Totalhh< A
,hhA B
cancellationhhC O
)hhO P
;hhP Q
}ii 	
publickk 
asynckk 
Taskkk 
<kk 
intkk 
>kk 
GetLastNumberkk ,
(kk, -
)kk- .
{ll 	
returnmm 
awaitmm 
_contextmm !
.mm! "
RegistersInmm" -
.nn 
AsNoTrackingnn 
(nn 
)nn 
.oo 
OrderByDescendingoo "
(oo" #
xoo# $
=>oo% '
xoo( )
.oo) *
Numberoo* 0
)oo0 1
.pp 
Selectpp 
(pp 
xpp 
=>pp 
xpp 
.pp 
Numberpp %
)pp% &
.qq 
FirstOrDefaultAsyncqq $
(qq$ %
)qq% &
;qq& '
}rr 	
}ss 
}tt Ê(
`E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Repositories\v1\ManagerRepository.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Repositories  ,
., -
v1- /
{ 
public 

class 
ManagerRepository "
:# $
RepositoryBase% 3
<3 4
BaseContext4 ?
,? @
ManagerA H
,H I
GuidJ N
>N O
,O P
IManagerRepositoryQ c
{ 
public 
ManagerRepository  
(  !
BaseContext! ,
context- 4
,4 5
IRepositoryContext6 H
repositoryContextI Z
)Z [
: 
base 
( 
context 
, 
repositoryContext ,
), -
{ 	
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Manager& -
>- .
>. /
GetAnyToListAsync0 A
(A B
CancellationTokenB S
cancellationTokenT e
)e f
{ 	
return 
await 
_context !
.! "
Managers" *
. 
Include 
( 
x 
=> 
x 
.  
User  $
)$ %
. 
ThenInclude  
(  !
x! "
=># %
x& '
.' (
	UserRoles( 1
)1 2
. 
ThenInclude $
($ %
x% &
=>' )
x* +
.+ ,
Role, 0
)0 1
. 
Where 
( 
x 
=> 
x 
. 
DeletionDate *
==+ -
null. 2
)2 3
. 
AsNoTracking 
( 
) 
. 
ToListAsync 
( 
) 
; 
} 	
public!! 
async!! 
Task!! 
<!! 
Manager!! !
>!!! " 
GetByIdToUpdateAsync!!# 7
(!!7 8
Guid!!8 <
id!!= ?
,!!? @
CancellationToken!!A R
cancellationToken!!S d
)!!d e
{"" 	
return## 
await## 
_context## !
.##! "
Managers##" *
.$$ 
Include$$ 
($$ 
x$$ 
=>$$ 
x$$ 
.$$  
User$$  $
)$$$ %
.%% 
ThenInclude%%  
(%%  !
x%%! "
=>%%# %
x%%& '
.%%' (
	UserRoles%%( 1
)%%1 2
.&& 
ThenInclude&& $
(&&$ %
x&&% &
=>&&' )
x&&* +
.&&+ ,
Role&&, 0
)&&0 1
.'' 
Where'' 
('' 
x'' 
=>'' 
x'' 
.'' 
Id''  
==''! #
id''$ &
)''& '
.(( 
AsNoTracking(( 
((( 
)(( 
.)) 
FirstOrDefaultAsync)) $
())$ %
cancellationToken))% 6
)))6 7
;))7 8
}** 	
public,, 
async,, 
Task,, 
<,, 
Manager,, !
>,,! "
GetByUserIdAsync,,# 3
(,,3 4
Guid,,4 8
userId,,9 ?
,,,? @
CancellationToken,,A R
cancellationToken,,S d
=,,e f
default,,g n
),,n o
{-- 	
return.. 
await.. 
_context.. !
...! "
Managers.." *
.// 
Include// 
(// 
x// 
=>// 
x// 
.//  
User//  $
)//$ %
.00 
Where00 
(00 
x00 
=>00 
x00 
.00 
UserId00 $
==00% '
userId00( .
)00. /
.11 
AsNoTracking11 
(11 
)11 
.22 
FirstOrDefaultAsync22 $
(22$ %
cancellationToken22% 6
)226 7
;227 8
}33 	
public55 
override55 
async55 
Task55 "
<55" #
Manager55# *
>55* + 
GetCompleteByIdAsync55, @
(55@ A
Guid55A E
id55F H
,55H I
CancellationToken55J [
cancellationToken55\ m
=55n o
default55p w
)55w x
{66 	
return77 
await77 
_context77 !
.77! "
Managers77" *
.88 
Where88 
(88 
x88 
=>88 
x88 
.88 
Id88  
==88! #
id88$ &
)88& '
.99 
AsNoTracking99 
(99 
)99 
.:: 
FirstOrDefaultAsync:: $
(::$ %
cancellationToken::% 6
)::6 7
;::7 8
};; 	
}<< 
}== Ö*
bE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Repositories\v1\EmployeeRespository.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Repositories  ,
., -
v1- /
{ 
public 

class 
EmployeeRepository #
:$ %
RepositoryBase& 4
<4 5
BaseContext5 @
,@ A
EmployeeB J
,J K
GuidL P
>P Q
,Q R
IEmployeeRepositoryS f
{ 
public 
EmployeeRepository !
(! "
BaseContext" -
context. 5
,5 6
IRepositoryContext7 I
repositoryContextJ [
)[ \
: 
base 
( 
context 
, 
repositoryContext -
)- .
{ 	
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Employee& .
>. /
>/ 0
GetAnyToListAsync1 B
(B C
CancellationTokenC T
cancellationTokenU f
)f g
{ 	
return 
await 
_context !
.! "
	Employees" +
. 
Include 
( 
x 
=> 
x 
.  
User  $
)$ %
. 
ThenInclude  
(  !
x! "
=># %
x& '
.' (
	UserRoles( 1
)1 2
. 
ThenInclude $
($ %
x% &
=>' )
x* +
.+ ,
Role, 0
)0 1
. 
Where 
( 
x 
=> 
x 
. 
DeletionDate *
==+ -
null. 2
)2 3
. 
AsNoTracking 
( 
) 
. 
ToListAsync 
( 
) 
; 
} 	
public!! 
async!! 
Task!! 
<!! 
Employee!! "
>!!" # 
GetByIdToUpdateAsync!!$ 8
(!!8 9
Guid!!9 =
id!!> @
,!!@ A
CancellationToken!!B S
cancellationToken!!T e
)!!e f
{"" 	
return## 
await## 
_context## !
.##! "
	Employees##" +
.$$ 
Include$$ 
($$ 
x$$ 
=>$$ 
x$$ 
.$$  
User$$  $
)$$$ %
.%% 
ThenInclude%%  
(%%  !
x%%! "
=>%%# %
x%%& '
.%%' (
	UserRoles%%( 1
)%%1 2
.&& 
ThenInclude&& $
(&&$ %
x&&% &
=>&&' )
x&&* +
.&&+ ,
Role&&, 0
)&&0 1
.'' 
Where'' 
('' 
x'' 
=>'' 
x'' 
.'' 
Id''  
==''! #
id''$ &
)''& '
.(( 
AsNoTracking(( 
((( 
)(( 
.)) 
FirstOrDefaultAsync)) $
())$ %
cancellationToken))% 6
)))6 7
;))7 8
}** 	
public++ 
async++ 
Task++ 
<++ 
Employee++ "
>++" #
GetByUserIdAsync++$ 4
(++4 5
Guid++5 9
userId++: @
,++@ A
CancellationToken++B S
cancellationToken++T e
=++f g
default++h o
)++o p
{,, 	
return-- 
await-- 
_context-- !
.--! "
	Employees--" +
... 
Include.. 
(.. 
x.. 
=>.. 
x.. 
...  
User..  $
)..$ %
.// 
Where// 
(// 
x// 
=>// 
x// 
.// 
UserId// $
==//% '
userId//( .
)//. /
.00 
AsNoTracking00 
(00 
)00 
.11 
FirstOrDefaultAsync11 $
(11$ %
cancellationToken11% 6
)116 7
;117 8
}22 	
public44 
override44 
async44 
Task44 "
<44" #
Employee44# +
>44+ , 
GetCompleteByIdAsync44- A
(44A B
Guid44B F
id44G I
,44I J
CancellationToken44K \
cancellationToken44] n
=44o p
default44q x
)44x y
{55 	
return66 
await66 
_context66 !
.66! "
	Employees66" +
.77 
Include77 
(77 
x77 
=>77 
x77 
.77  
User77  $
)77$ %
.88 
Where88 
(88 
x88 
=>88 
x88 
.88 
Id88  
==88! #
id88$ &
)88& '
.99 
AsNoTracking99 
(99 
)99 
.:: 
FirstOrDefaultAsync:: $
(::$ %
cancellationToken::% 6
)::6 7
;::7 8
};; 	
}<< 
}== îﬁ
_E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Repositories\Base\RepositoryBase.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Repositories  ,
., -
Base- 1
{ 
public 

abstract 
class 
RepositoryBase (
<( )
TContext) 1
,1 2
TEntity3 :
,: ;
TKey< @
>@ A
:B C
IRepositoryBaseD S
<S T
TEntityT [
,[ \
TKey] a
>a b
,b c
IDisposabled o
where 
TEntity 
: 
Entity 
< 
TKey #
># $
,$ %
IEntity& -
<- .
TKey. 2
>2 3
,3 4
new5 8
(8 9
)9 :
where 
TContext 
: 
BaseContext $
{ 
	protected 
TContext 
_context #
;# $
	protected 
RepositoryBase  
(  !
TContext! )
context* 1
,1 2
IRepositoryContext3 E
repositoryContextF W
)W X
{ 	
_context 
= 
context 
; 
} 	
public 
virtual 
async 
Task !
<! "
TEntity" )
>) *
AddAsync+ 3
(3 4
TEntity4 ;
entity< B
)B C
{ 	
try 
{   
entity!! 
.!! 
CreationDate!! #
=!!$ %
DateTime!!& .
.!!. /
UtcNow!!/ 5
;!!5 6
await"" 
_context"" 
."" 
Set"" "
<""" #
TEntity""# *
>""* +
(""+ ,
)"", -
.""- .
AddAsync"". 6
(""6 7
entity""7 =
)""= >
;""> ?
await## 
_context## 
.## 
SaveChangesAsync## /
(##/ 0
)##0 1
;##1 2
return%% 
entity%% 
;%% 
}&& 
catch'' 
('' 
	Exception'' 
ex'' 
)''  
{(( 
throw)) 
new)) 
DefaultException)) *
())* +
ConstantMessages))+ ;
.)); <
CRUD_CREATE_FAIL))< L
,))L M
ex))N P
)))P Q
;))Q R
}** 
}++ 	
public-- 
virtual-- 
async-- 
Task-- !
<--! "
IEnumerable--" -
<--- .
TEntity--. 5
>--5 6
>--6 7
AddAsync--8 @
(--@ A
IEnumerable--A L
<--L M
TEntity--M T
>--T U
entities--V ^
)--^ _
{.. 	
try// 
{00 
var11 
list11 
=11 
new11 
List11 #
<11# $
TEntity11$ +
>11+ ,
(11, -
)11- .
;11. /
entities22 
.22 
ToList22 
(22  
)22  !
.22! "
ForEach22" )
(22) *
entity22* 0
=>221 3
entity224 :
.22: ;
CreationDate22; G
=22H I
DateTime22J R
.22R S
UtcNow22S Y
)22Y Z
;22Z [
await33 
_context33 
.33 
Set33 "
<33" #
TEntity33# *
>33* +
(33+ ,
)33, -
.33- .
AddRangeAsync33. ;
(33; <
entities33< D
)33D E
;33E F
await44 
_context44 
.44 
SaveChangesAsync44 /
(44/ 0
)440 1
;441 2
return66 
list66 
;66 
}77 
catch88 
(88 
	Exception88 
ex88 
)88  
{99 
throw:: 
new:: 
DefaultException:: *
(::* +
ConstantMessages::+ ;
.::; <
CRUD_CREATE_FAIL::< L
,::L M
ex::N P
)::P Q
;::Q R
};; 
}<< 	
public>> 
virtual>> 
async>> 
Task>> !
<>>! "
TEntity>>" )
>>>) *
UpdateAsync>>+ 6
(>>6 7
TEntity>>7 >
entity>>? E
)>>E F
{?? 	
try@@ 
{AA 
entityBB 
.BB 
LastChangeDateBB %
=BB& '
DateTimeBB( 0
.BB0 1
UtcNowBB1 7
;BB7 8
varCC 
entityfromdbCC  
=CC! "
_contextCC# +
.CC+ ,
SetCC, /
<CC/ 0
TEntityCC0 7
>CC7 8
(CC8 9
)CC9 :
.CC: ;
FindCC; ?
(CC? @
entityCC@ F
.CCF G
IdCCG I
)CCI J
;CCJ K
ifDD 
(DD 
entityfromdbDD  
==DD! #
defaultDD$ +
)DD+ ,
returnDD- 3
nullDD4 8
;DD8 9
entityEE 
.EE 
CreationDateEE #
=EE$ %
entityfromdbEE& 2
.EE2 3
CreationDateEE3 ?
;EE? @
varFF 
attachedEntryFF !
=FF" #
_contextFF$ ,
.FF, -
EntryFF- 2
(FF2 3
entityfromdbFF3 ?
)FF? @
;FF@ A
attachedEntryHH 
.HH 
CurrentValuesHH +
.HH+ ,
	SetValuesHH, 5
(HH5 6
entityHH6 <
)HH< =
;HH= >
awaitJJ 
_contextJJ 
.JJ 
SaveChangesAsyncJJ /
(JJ/ 0
)JJ0 1
;JJ1 2
returnKK 
entityKK 
;KK 
}LL 
catchMM 
(MM 
	ExceptionMM 
exMM 
)MM  
{NN 
throwOO 
newOO 
DefaultExceptionOO *
(OO* +
ConstantMessagesOO+ ;
.OO; <
CRUD_UPDATE_FAILOO< L
,OOL M
exOON P
)OOP Q
;OOQ R
}PP 
}QQ 	
publicSS 
asyncSS 
TaskSS 
UpdateAsyncSS %
(SS% &
IEnumerableSS& 1
<SS1 2
TEntitySS2 9
>SS9 :
entitiesSS; C
)SSC D
{TT 	
_contextUU 
.UU 
SetUU 
<UU 
TEntityUU  
>UU  !
(UU! "
)UU" #
.UU# $
UpdateRangeUU$ /
(UU/ 0
entitiesUU0 8
)UU8 9
;UU9 :
entitiesVV 
.VV 
ToListVV 
(VV 
)VV 
.VV 
ForEachVV %
(VV% &
entityVV& ,
=>VV- /
{WW 
entityXX 
.XX 
LastChangeDateXX %
=XX& '
DateTimeXX( 0
.XX0 1
UtcNowXX1 7
;XX7 8
_contextYY 
.YY 
EntryYY 
(YY 
entityYY %
)YY% &
.YY& '
PropertyYY' /
(YY/ 0
xYY0 1
=>YY2 4
xYY5 6
.YY6 7
CreationDateYY7 C
)YYC D
.YYD E

IsModifiedYYE O
=YYP Q
falseYYR W
;YYW X
}ZZ 
)ZZ 
;ZZ 
await[[ 
_context[[ 
.[[ 
SaveChangesAsync[[ +
([[+ ,
)[[, -
;[[- .
}\\ 	
public^^ 
virtual^^ 
async^^ 
Task^^ !
<^^! "
TEntity^^" )
>^^) *
AddOrUpdateAsync^^+ ;
(^^; <
TEntity^^< C
entity^^D J
)^^J K
{__ 	
if`` 
(`` 
entity`` 
.`` 
Id`` 
.`` 
Equals``  
(``  !
default``! (
(``( )
TKey``) -
)``- .
)``. /
||``0 2
entity``3 9
.``9 :
Id``: <
.``< =
GetType``= D
(``D E
)``E F
!=``G I
typeof``J P
(``P Q
TKey``Q U
)``U V
)``V W
entityaa 
=aa 
awaitaa 
AddAsyncaa '
(aa' (
entityaa( .
)aa. /
;aa/ 0
elsebb 
entitycc 
=cc 
awaitcc 
UpdateAsynccc *
(cc* +
entitycc+ 1
)cc1 2
;cc2 3
returnee 
entityee 
;ee 
}ff 	
publichh 
virtualhh 
asynchh 
Taskhh !
<hh! "
IEnumerablehh" -
<hh- .
TEntityhh. 5
>hh5 6
>hh6 7
AddOrUpdateAsynchh8 H
(hhH I
IEnumerablehhI T
<hhT U
TEntityhhU \
>hh\ ]
entitieshh^ f
)hhf g
{ii 	
varjj 
entitiesToAddjj 
=jj 
entitiesjj  (
.jj( )
Wherejj) .
(jj. /
xjj/ 0
=>jj1 3
xjj4 5
.jj5 6
Idjj6 8
.jj8 9
Equalsjj9 ?
(jj? @
defaultjj@ G
(jjG H
TKeyjjH L
)jjL M
)jjM N
)jjN O
.jjO P
ToListjjP V
(jjV W
)jjW X
;jjX Y
varkk 
entitiesToUpdatekk  
=kk! "
entitieskk# +
.kk+ ,
Wherekk, 1
(kk1 2
xkk2 3
=>kk4 6
!kk7 8
xkk8 9
.kk9 :
Idkk: <
.kk< =
Equalskk= C
(kkC D
defaultkkD K
(kkK L
TKeykkL P
)kkP Q
)kkQ R
)kkR S
.kkS T
ToListkkT Z
(kkZ [
)kk[ \
;kk\ ]
entitiesToAddmm 
.mm 
ForEachmm !
(mm! "
xmm" #
=>mm$ &
xmm' (
.mm( )
CreationDatemm) 5
=mm6 7
DateTimemm8 @
.mm@ A
UtcNowmmA G
)mmG H
;mmH I
entitiesToUpdatenn 
.nn 
ForEachnn $
(nn$ %
xnn% &
=>nn' )
xnn* +
.nn+ ,
LastChangeDatenn, :
=nn; <
DateTimenn= E
.nnE F
UtcNownnF L
)nnL M
;nnM N
ifpp 
(pp 
(pp 
entitiesToAddpp 
?pp 
.pp  
Countpp  %
??pp& (
$numpp) *
)pp* +
>pp, -
$numpp. /
)pp/ 0
awaitqq 
AddAsyncqq 
(qq 
entitiesToAddqq ,
)qq, -
;qq- .
ifss 
(ss 
(ss 
entitiesToUpdatess !
?ss! "
.ss" #
Countss# (
??ss) +
$numss, -
)ss- .
>ss/ 0
$numss1 2
)ss2 3
awaittt 
UpdateAsynctt !
(tt! "
entitiesToUpdatett" 2
)tt2 3
;tt3 4
returnvv 
entitiesvv 
;vv 
}ww 	
publicyy 
virtualyy 
asyncyy 
Taskyy !
<yy! "
IEnumerableyy" -
<yy- .
TEntityyy. 5
>yy5 6
>yy6 7
GetAllAsyncyy8 C
(yyC D

ExpressionyyD N
<yyN O
FuncyyO S
<yyS T
TEntityyyT [
,yy[ \
boolyy] a
>yya b
>yyb c
	predicateyyd m
=yyn o
nullyyp t
,yyt u
CancellationToken	yyv á
cancellationToken
yyà ô
=
yyö õ
default
yyú £
)
yy£ §
{zz 	
var{{ 
query{{ 
={{ 
_context{{  
.{{  !
Set{{! $
<{{$ %
TEntity{{% ,
>{{, -
({{- .
){{. /
.{{/ 0
AsQueryable{{0 ;
({{; <
){{< =
;{{= >
if}} 
(}} 
	predicate}} 
!=}} 
null}} !
)}}! "
query~~ 
=~~ 
query~~ 
.~~ 
Where~~ #
(~~# $
	predicate~~$ -
)~~- .
;~~. /
foreach
ÄÄ 
(
ÄÄ 
var
ÄÄ 
property
ÄÄ !
in
ÄÄ" $
_context
ÄÄ% -
.
ÄÄ- .
Model
ÄÄ. 3
.
ÄÄ3 4
FindEntityType
ÄÄ4 B
(
ÄÄB C
typeof
ÄÄC I
(
ÄÄI J
TEntity
ÄÄJ Q
)
ÄÄQ R
)
ÄÄR S
.
ÄÄS T
GetNavigations
ÄÄT b
(
ÄÄb c
)
ÄÄc d
)
ÄÄd e
query
ÅÅ 
=
ÅÅ 
query
ÅÅ 
.
ÅÅ 
Include
ÅÅ %
(
ÅÅ% &
property
ÅÅ& .
.
ÅÅ. /
Name
ÅÅ/ 3
)
ÅÅ3 4
;
ÅÅ4 5
var
ÉÉ 
retorno
ÉÉ 
=
ÉÉ 
await
ÉÉ 
query
ÉÉ  %
.
ÉÉ% &
AsNoTracking
ÉÉ& 2
(
ÉÉ2 3
)
ÉÉ3 4
.
ÉÉ4 5
ToListAsync
ÉÉ5 @
(
ÉÉ@ A
cancellationToken
ÉÉA R
)
ÉÉR S
;
ÉÉS T
return
ÖÖ 
retorno
ÖÖ 
;
ÖÖ 
}
ÜÜ 	
public
àà 
virtual
àà 
async
àà 
Task
àà !
<
àà! "
IEnumerable
àà" -
<
àà- .
TEntity
àà. 5
>
àà5 6
>
àà6 7
GetAllPagedAsync
àà8 H
(
ààH I
int
ààI L
?
ààL M
page
ààN R
=
ààS T
null
ààU Y
,
ààY Z
int
àà[ ^
?
àà^ _
pageSize
àà` h
=
àài j
null
ààk o
,
àào p 
CancellationTokenààq Ç!
cancellationTokenààÉ î
=ààï ñ
defaultààó û
)ààû ü
{
ââ 	
var
ää 
query
ää 
=
ää 
_context
ää  
.
ää  !
Set
ää! $
<
ää$ %
TEntity
ää% ,
>
ää, -
(
ää- .
)
ää. /
.
ää/ 0
AsQueryable
ää0 ;
(
ää; <
)
ää< =
;
ää= >
if
åå 
(
åå 
page
åå 
.
åå 
HasValue
åå 
&&
åå  
pageSize
åå! )
.
åå) *
HasValue
åå* 2
)
åå2 3
query
çç 
=
çç 
query
çç 
.
çç 
Skip
çç "
(
çç" #
page
çç# '
.
çç' (
Value
çç( -
*
çç. /
pageSize
çç0 8
.
çç8 9
Value
çç9 >
)
çç> ?
.
éé 
Take
éé "
(
éé" #
pageSize
éé# +
.
éé+ ,
Value
éé, 1
)
éé1 2
;
éé2 3
return
êê 
await
êê 
query
êê 
.
êê 
AsNoTracking
êê +
(
êê+ ,
)
êê, -
.
ëë 
ToListAsync
ëë *
(
ëë* +
cancellationToken
ëë+ <
)
ëë< =
;
ëë= >
}
íí 	
public
îî 

IQueryable
îî 
<
îî 
TEntity
îî !
>
îî! "
InsertAllIncludes
îî# 4
(
îî4 5

IQueryable
îî5 ?
<
îî? @
TEntity
îî@ G
>
îîG H
query
îîI N
)
îîN O
{
ïï 	
foreach
ññ 
(
ññ 
var
ññ 
property
ññ !
in
ññ" $
_context
ññ% -
.
ññ- .
Model
ññ. 3
.
ññ3 4
FindEntityType
ññ4 B
(
ññB C
typeof
ññC I
(
ññI J
TEntity
ññJ Q
)
ññQ R
)
ññR S
.
ññS T
GetNavigations
ññT b
(
ññb c
)
ññc d
)
ññd e
query
óó 
=
óó 
query
óó 
.
óó 
Include
óó %
(
óó% &
property
óó& .
.
óó. /
Name
óó/ 3
)
óó3 4
;
óó4 5
return
ôô 
query
ôô 
;
ôô 
}
öö 	
public
úú 
virtual
úú 
async
úú 
Task
úú !
<
úú! "
TEntity
úú" )
>
úú) *
GetByIdAsync
úú+ 7
(
úú7 8
TKey
úú8 <
id
úú= ?
,
úú? @
CancellationToken
úúA R
cancellationToken
úúS d
=
úúe f
default
úúg n
)
úún o
{
ùù 	
var
ûû 
entity
ûû 
=
ûû 
await
ûû 
_context
ûû '
.
ûû' (
Set
ûû( +
<
ûû+ ,
TEntity
ûû, 3
>
ûû3 4
(
ûû4 5
)
ûû5 6
.
ûû6 7
	FindAsync
ûû7 @
(
ûû@ A
new
ûûA D
object
ûûE K
[
ûûK L
]
ûûL M
{
ûûN O
id
ûûP R
}
ûûS T
,
ûûT U
cancellationToken
ûûV g
)
ûûg h
;
ûûh i
return
†† 
entity
†† 
;
†† 
}
°° 	
public
££ 
virtual
££ 
void
££ 
Delete
££ "
(
££" #
TEntity
££# *
entity
££+ 1
)
££1 2
{
§§ 	
if
•• 
(
•• 
entity
•• 
is
•• "
IPhysicallyDeletable
•• .
)
••. /
_context
¶¶ 
.
¶¶ 
Set
¶¶ 
<
¶¶ 
TEntity
¶¶ $
>
¶¶$ %
(
¶¶% &
)
¶¶& '
.
¶¶' (
Remove
¶¶( .
(
¶¶. /
entity
¶¶/ 5
)
¶¶5 6
;
¶¶6 7
else
ßß 
{
®® 
entity
©© 
=
©© 
_context
©© !
.
©©! "
Set
©©" %
<
©©% &
TEntity
©©& -
>
©©- .
(
©©. /
)
©©/ 0
.
©©0 1
Where
©©1 6
(
©©6 7
x
©©7 8
=>
©©9 ;
x
©©< =
.
©©= >
Id
©©> @
.
©©@ A
Equals
©©A G
(
©©G H
entity
©©H N
.
©©N O
Id
©©O Q
)
©©Q R
)
©©R S
.
©©S T
FirstOrDefault
©©T b
(
©©b c
)
©©c d
;
©©d e
if
™™ 
(
™™ 
entity
™™ 
==
™™ 
null
™™ "
)
™™" #
return
™™$ *
;
™™* +
entity
´´ 
.
´´ 
DeletionDate
´´ #
=
´´$ %
DateTime
´´& .
.
´´. /
UtcNow
´´/ 5
;
´´5 6
_context
¨¨ 
.
¨¨ 
Set
¨¨ 
<
¨¨ 
TEntity
¨¨ $
>
¨¨$ %
(
¨¨% &
)
¨¨& '
.
¨¨' (
Update
¨¨( .
(
¨¨. /
entity
¨¨/ 5
)
¨¨5 6
;
¨¨6 7
}
≠≠ 
_context
ØØ 
.
ØØ 
SaveChanges
ØØ  
(
ØØ  !
)
ØØ! "
;
ØØ" #
}
∞∞ 	
public
≤≤ 
virtual
≤≤ 
void
≤≤ 
Delete
≤≤ "
(
≤≤" #
IEnumerable
≤≤# .
<
≤≤. /
TEntity
≤≤/ 6
>
≤≤6 7
entities
≤≤8 @
)
≤≤@ A
{
≥≥ 	
var
¥¥ 
trackedEntities
¥¥ 
=
¥¥  !
new
¥¥" %
List
¥¥& *
<
¥¥* +
TEntity
¥¥+ 2
>
¥¥2 3
(
¥¥3 4
)
¥¥4 5
;
¥¥5 6
if
∂∂ 
(
∂∂ 
entities
∂∂ 
.
∂∂ 
FirstOrDefault
∂∂ '
(
∂∂' (
)
∂∂( )
is
∂∂* ,"
IPhysicallyDeletable
∂∂- A
)
∂∂A B
_context
∑∑ 
.
∑∑ 
Set
∑∑ 
<
∑∑ 
TEntity
∑∑ $
>
∑∑$ %
(
∑∑% &
)
∑∑& '
.
∑∑' (
RemoveRange
∑∑( 3
(
∑∑3 4
entities
∑∑4 <
)
∑∑< =
;
∑∑= >
else
∏∏ 
{
ππ 
entities
∫∫ 
.
∫∫ 
ToList
∫∫ 
(
∫∫  
)
∫∫  !
.
∫∫! "
ForEach
∫∫" )
(
∫∫) *
e
∫∫* +
=>
∫∫, .
{
ªª 
var
ºº 
entity
ºº 
=
ºº  
_context
ºº! )
.
ºº) *
Set
ºº* -
<
ºº- .
TEntity
ºº. 5
>
ºº5 6
(
ºº6 7
)
ºº7 8
.
ºº8 9
Where
ºº9 >
(
ºº> ?
x
ºº? @
=>
ººA C
x
ººD E
.
ººE F
Id
ººF H
.
ººH I
Equals
ººI O
(
ººO P
e
ººP Q
.
ººQ R
Id
ººR T
)
ººT U
)
ººU V
.
ººV W
FirstOrDefault
ººW e
(
ººe f
)
ººf g
;
ººg h
if
ΩΩ 
(
ΩΩ 
entity
ΩΩ 
==
ΩΩ !
null
ΩΩ" &
)
ΩΩ& '
return
ΩΩ( .
;
ΩΩ. /
entity
ææ 
.
ææ 
DeletionDate
ææ '
=
ææ( )
DateTime
ææ* 2
.
ææ2 3
UtcNow
ææ3 9
;
ææ9 :
trackedEntities
øø #
.
øø# $
Add
øø$ '
(
øø' (
entity
øø( .
)
øø. /
;
øø/ 0
}
¿¿ 
)
¿¿ 
;
¿¿ 
if
¬¬ 
(
¬¬ 
!
¬¬ 
trackedEntities
¬¬ $
.
¬¬$ %
Any
¬¬% (
(
¬¬( )
)
¬¬) *
)
¬¬* +
_context
¬¬, 4
.
¬¬4 5
Set
¬¬5 8
<
¬¬8 9
TEntity
¬¬9 @
>
¬¬@ A
(
¬¬A B
)
¬¬B C
.
¬¬C D
UpdateRange
¬¬D O
(
¬¬O P
trackedEntities
¬¬P _
)
¬¬_ `
;
¬¬` a
}
√√ 
_context
≈≈ 
.
≈≈ 
SaveChanges
≈≈  
(
≈≈  !
)
≈≈! "
;
≈≈" #
}
∆∆ 	
public
»» 
virtual
»» 
void
»» 
Delete
»» "
(
»»" #
TKey
»»# '
id
»»( *
)
»»* +
{
…… 	
var
   
entity
   
=
   
_context
   !
.
  ! "
Set
  " %
<
  % &
TEntity
  & -
>
  - .
(
  . /
)
  / 0
.
  0 1
Where
  1 6
(
  6 7
x
  7 8
=>
  9 ;
x
  < =
.
  = >
Id
  > @
.
  @ A
Equals
  A G
(
  G H
id
  H J
)
  J K
)
  K L
.
  L M
FirstOrDefault
  M [
(
  [ \
)
  \ ]
;
  ] ^
if
ÀÀ 
(
ÀÀ 
entity
ÀÀ 
==
ÀÀ 
null
ÀÀ 
)
ÀÀ 
return
ÀÀ  &
;
ÀÀ& '
entity
ÃÃ 
.
ÃÃ 
DeletionDate
ÃÃ 
=
ÃÃ  !
DateTime
ÃÃ" *
.
ÃÃ* +
UtcNow
ÃÃ+ 1
;
ÃÃ1 2
if
ŒŒ 
(
ŒŒ 
entity
ŒŒ 
is
ŒŒ "
IPhysicallyDeletable
ŒŒ .
)
ŒŒ. /
_context
œœ 
.
œœ 
Set
œœ 
<
œœ 
TEntity
œœ $
>
œœ$ %
(
œœ% &
)
œœ& '
.
œœ' (
Remove
œœ( .
(
œœ. /
entity
œœ/ 5
)
œœ5 6
;
œœ6 7
else
–– 
_context
—— 
.
—— 
Set
—— 
<
—— 
TEntity
—— $
>
——$ %
(
——% &
)
——& '
.
——' (
Update
——( .
(
——. /
entity
——/ 5
)
——5 6
;
——6 7
_context
”” 
.
”” 
SaveChanges
””  
(
””  !
)
””! "
;
””" #
}
‘‘ 	
public
÷÷ 
virtual
÷÷ 
void
÷÷ 
Delete
÷÷ "
(
÷÷" #
IEnumerable
÷÷# .
<
÷÷. /
TKey
÷÷/ 3
>
÷÷3 4
ids
÷÷5 8
)
÷÷8 9
{
◊◊ 	
var
ÿÿ 
trackedEntities
ÿÿ 
=
ÿÿ  !
new
ÿÿ" %
List
ÿÿ& *
<
ÿÿ* +
TEntity
ÿÿ+ 2
>
ÿÿ2 3
(
ÿÿ3 4
)
ÿÿ4 5
;
ÿÿ5 6
ids
ŸŸ 
.
ŸŸ 
ToList
ŸŸ 
(
ŸŸ 
)
ŸŸ 
.
ŸŸ 
ForEach
ŸŸ  
(
ŸŸ  !
id
ŸŸ! #
=>
ŸŸ$ &
{
⁄⁄ 
var
€€ 
entity
€€ 
=
€€ 
_context
€€ %
.
€€% &
Set
€€& )
<
€€) *
TEntity
€€* 1
>
€€1 2
(
€€2 3
)
€€3 4
.
€€4 5
Where
€€5 :
(
€€: ;
x
€€; <
=>
€€= ?
x
€€@ A
.
€€A B
Id
€€B D
.
€€D E
Equals
€€E K
(
€€K L
id
€€L N
)
€€N O
)
€€O P
.
€€P Q
FirstOrDefault
€€Q _
(
€€_ `
)
€€` a
;
€€a b
if
‹‹ 
(
‹‹ 
entity
‹‹ 
==
‹‹ 
null
‹‹ "
)
‹‹" #
return
‹‹$ *
;
‹‹* +
entity
›› 
.
›› 
DeletionDate
›› #
=
››$ %
DateTime
››& .
.
››. /
UtcNow
››/ 5
;
››5 6
trackedEntities
ﬁﬁ 
.
ﬁﬁ  
Add
ﬁﬁ  #
(
ﬁﬁ# $
entity
ﬁﬁ$ *
)
ﬁﬁ* +
;
ﬁﬁ+ ,
}
ﬂﬂ 
)
ﬂﬂ 
;
ﬂﬂ 
if
·· 
(
·· 
!
·· 
trackedEntities
··  
.
··  !
Any
··! $
(
··$ %
)
··% &
)
··& '
return
··( .
;
··. /
if
„„ 
(
„„ 
trackedEntities
„„ 
.
„„  
FirstOrDefault
„„  .
(
„„. /
)
„„/ 0
is
„„1 3"
IPhysicallyDeletable
„„4 H
)
„„H I
_context
‰‰ 
.
‰‰ 
Set
‰‰ 
<
‰‰ 
TEntity
‰‰ $
>
‰‰$ %
(
‰‰% &
)
‰‰& '
.
‰‰' (
RemoveRange
‰‰( 3
(
‰‰3 4
trackedEntities
‰‰4 C
)
‰‰C D
;
‰‰D E
else
ÂÂ 
_context
ÊÊ 
.
ÊÊ 
Set
ÊÊ 
<
ÊÊ 
TEntity
ÊÊ $
>
ÊÊ$ %
(
ÊÊ% &
)
ÊÊ& '
.
ÊÊ' (
UpdateRange
ÊÊ( 3
(
ÊÊ3 4
trackedEntities
ÊÊ4 C
)
ÊÊC D
;
ÊÊD E
_context
ËË 
.
ËË 
SaveChanges
ËË  
(
ËË  !
)
ËË! "
;
ËË" #
}
ÈÈ 	
public
ÎÎ 
Task
ÎÎ 
<
ÎÎ 
bool
ÎÎ 
>
ÎÎ 
HasAny
ÎÎ  
(
ÎÎ  !
TKey
ÎÎ! %
id
ÎÎ& (
)
ÎÎ( )
{
ÏÏ 	
return
ÌÌ 
_context
ÌÌ 
.
ÓÓ 
Set
ÓÓ 
<
ÓÓ 
TEntity
ÓÓ 
>
ÓÓ 
(
ÓÓ 
)
ÓÓ 
.
ÔÔ 
AnyAsync
ÔÔ 
(
ÔÔ 
x
ÔÔ 
=>
ÔÔ 
x
ÔÔ  
.
ÔÔ  !
Id
ÔÔ! #
.
ÔÔ# $
Equals
ÔÔ$ *
(
ÔÔ* +
id
ÔÔ+ -
)
ÔÔ- .
)
ÔÔ. /
;
ÔÔ/ 0
}
 	
public
ÚÚ 
virtual
ÚÚ 
void
ÚÚ 
Dispose
ÚÚ #
(
ÚÚ# $
)
ÚÚ$ %
{
ÛÛ 	
Task
ÙÙ 
.
ÙÙ 
Run
ÙÙ 
(
ÙÙ 
async
ÙÙ 
(
ÙÙ 
)
ÙÙ 
=>
ÙÙ  
{
ıı 
await
ˆˆ 
_context
ˆˆ 
.
ˆˆ 
DisposeAsync
ˆˆ +
(
ˆˆ+ ,
)
ˆˆ, -
;
ˆˆ- .
GC
˜˜ 
.
˜˜ 
SuppressFinalize
˜˜ #
(
˜˜# $
this
˜˜$ (
)
˜˜( )
;
˜˜) *
}
¯¯ 
)
¯¯ 
;
¯¯ 
}
˘˘ 	
public
˚˚ 
abstract
˚˚ 
Task
˚˚ 
<
˚˚ 
TEntity
˚˚ $
>
˚˚$ %"
GetCompleteByIdAsync
˚˚& :
(
˚˚: ;
TKey
˚˚; ?
id
˚˚@ B
,
˚˚B C
CancellationToken
˚˚D U
cancellationToken
˚˚V g
=
˚˚h i
default
˚˚j q
)
˚˚q r
;
˚˚r s
}
¸¸ 
}˝˝ ≠.
bE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Repositories\Base\MtMRepositoryBase.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Repositories  ,
., -
Base- 1
{ 
public 

abstract 
class 
MtMRepositoryBase +
<+ ,
TContext, 4
,4 5

TEntityMtM6 @
,@ A

TStrongKeyB L
,L M
TWeakKeyN V
>V W
:X Y
IMtMRepositoryBaseZ l
<l m

TEntityMtMm w
,w x

TStrongKey	y É
,
É Ñ
TWeakKey
Ö ç
>
ç é
where 

TEntityMtM 
: 
	EntityMtM $
,$ %

IMtMEntity& 0
,0 1
new2 5
(5 6
)6 7
where 
TContext 
: 
BaseContext $
{ 
	protected 
TContext 
_context #
;# $
public 
MtMRepositoryBase  
(  !
TContext! )
context* 1
,1 2
IRepositoryContext3 E
repositoryContextF W
)W X
{ 	
_context 
= 
context 
; 
} 	
private 
async 
Task 
AddAsync #
(# $
IEnumerable$ /
</ 0

TEntityMtM0 :
>: ;
entities< D
,D E
IEnumerableF Q
<Q R

TEntityMtMR \
>\ ]
oldEntities^ i
)i j
{ 	
var 
ToAdd 
= 
entities  
.  !
Except! '
(' (
oldEntities( 3
)3 4
;4 5
foreach 
( 
var 
item 
in  
ToAdd! &
)& '
{ 
_context 
. 
Entry 
( 
item #
)# $
.$ %
State% *
=+ ,
EntityState- 8
.8 9
Added9 >
;> ?
} 
await!! 
_context!! 
.!! 
SaveChangesAsync!! +
(!!+ ,
)!!, -
;!!- .
}"" 	
private$$ 
async$$ 
Task$$ 
DeleteAsync$$ &
($$& '
IEnumerable$$' 2
<$$2 3

TEntityMtM$$3 =
>$$= >
entities$$? G
,$$G H
IEnumerable$$I T
<$$T U

TEntityMtM$$U _
>$$_ `
oldEntities$$a l
)$$l m
{%% 	
var&& 
ToDelete&& 
=&& 
oldEntities&& &
.&&& '
Except&&' -
(&&- .
entities&&. 6
)&&6 7
;&&7 8
foreach(( 
((( 
var(( 
item(( 
in((  
ToDelete((! )
)(() *
{)) 
_context** 
.** 
Entry** 
(** 
item** #
)**# $
.**$ %
State**% *
=**+ ,
EntityState**- 8
.**8 9
Deleted**9 @
;**@ A
}++ 
await-- 
_context-- 
.-- 
SaveChangesAsync-- +
(--+ ,
)--, -
;--- .
}.. 	
public00 
async00 
Task00 
<00 
IEnumerable00 %
<00% &

TEntityMtM00& 0
>000 1
>001 2
AddOrDeleteAsync003 C
(00C D
IEnumerable00D O
<00O P

TEntityMtM00P Z
>00Z [
entities00\ d
,00d e
IEnumerable00f q
<00q r

TEntityMtM00r |
>00| }
oldEntities	00~ â
)
00â ä
{11 	
await22 
DeleteAsync22 
(22 
entities22 &
,22& '
oldEntities22( 3
)223 4
;224 5
await44 
AddAsync44 
(44 
entities44 #
,44# $
oldEntities44% 0
)440 1
;441 2
return66 
entities66 
;66 
}77 	
public99 
abstract99 
Task99 
<99 
IEnumerable99 (
<99( )

TEntityMtM99) 3
>993 4
>994 5
UpdateAsync996 A
(99A B
IEnumerable99B M
<99M N

TEntityMtM99N X
>99X Y
entitiesMtM99Z e
)99e f
;99f g
public;; 
abstract;; 
Task;; 
<;; 

TEntityMtM;; '
>;;' (
GetByIdsAsync;;) 6
(;;6 7

TStrongKey;;7 A
strongId;;B J
,;;J K
TWeakKey;;L T
weakId;;U [
,;;[ \
CancellationToken;;] n
cancellationToken	;;o Ä
=
;;Å Ç
default
;;É ä
)
;;ä ã
;
;;ã å
public== 
abstract== 
Task== 
<== 
IEnumerable== (
<==( )

TEntityMtM==) 3
>==3 4
>==4 5
GetByStrongIdAsync==6 H
(==H I

TStrongKey==I S
id==T V
,==V W
CancellationToken==X i
cancellationToken==j {
===| }
default	==~ Ö
)
==Ö Ü
;
==Ü á
public?? 
abstract?? 
Task?? 
<?? 
IEnumerable?? (
<??( )

TEntityMtM??) 3
>??3 4
>??4 5
GetByWeakIdAsync??6 F
(??F G
TWeakKey??G O
id??P R
,??R S
CancellationToken??T e
cancellationToken??f w
=??x y
default	??z Å
)
??Å Ç
;
??Ç É
}@@ 
}AA ä-
mE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Migrations\20250812142721_StockQuantityDecimal.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  

Migrations  *
{ 
public 

partial 
class  
StockQuantityDecimal -
:. /
	Migration0 9
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
AlterColumn (
<( )
decimal) 0
>0 1
(1 2
name 
: 
$str *
,* +
table 
: 
$str 
,  
type 
: 
$str $
,$ %
nullable 
: 
false 
,  

oldClrType 
: 
typeof "
(" #
decimal# *
)* +
,+ ,
oldType 
: 
$str '
)' (
;( )
migrationBuilder 
. 
AlterColumn (
<( )
decimal) 0
>0 1
(1 2
name 
: 
$str  
,  !
table 
: 
$str 
,  
type 
: 
$str $
,$ %
nullable 
: 
false 
,  

oldClrType 
: 
typeof "
(" #
decimal# *
)* +
,+ ,
oldType 
: 
$str '
)' (
;( )
migrationBuilder 
. 
AlterColumn (
<( )
decimal) 0
>0 1
(1 2
name 
: 
$str  
,  !
table 
: 
$str *
,* +
type   
:   
$str   $
,  $ %
nullable!! 
:!! 
false!! 
,!!  

oldClrType"" 
:"" 
typeof"" "
(""" #
decimal""# *
)""* +
,""+ ,
oldType## 
:## 
$str## '
)##' (
;##( )
migrationBuilder%% 
.%% 
AlterColumn%% (
<%%( )
decimal%%) 0
>%%0 1
(%%1 2
name&& 
:&& 
$str&&  
,&&  !
table'' 
:'' 
$str'' )
,'') *
type(( 
:(( 
$str(( $
,(($ %
nullable)) 
:)) 
false)) 
,))  

oldClrType** 
:** 
typeof** "
(**" #
decimal**# *
)*** +
,**+ ,
oldType++ 
:++ 
$str++ '
)++' (
;++( )
},, 	
	protected// 
override// 
void// 
Down//  $
(//$ %
MigrationBuilder//% 5
migrationBuilder//6 F
)//F G
{00 	
migrationBuilder11 
.11 
AlterColumn11 (
<11( )
decimal11) 0
>110 1
(111 2
name22 
:22 
$str22 *
,22* +
table33 
:33 
$str33 
,33  
type44 
:44 
$str44 $
,44$ %
nullable55 
:55 
false55 
,55  

oldClrType66 
:66 
typeof66 "
(66" #
decimal66# *
)66* +
,66+ ,
oldType77 
:77 
$str77 '
)77' (
;77( )
migrationBuilder99 
.99 
AlterColumn99 (
<99( )
decimal99) 0
>990 1
(991 2
name:: 
::: 
$str::  
,::  !
table;; 
:;; 
$str;; 
,;;  
type<< 
:<< 
$str<< $
,<<$ %
nullable== 
:== 
false== 
,==  

oldClrType>> 
:>> 
typeof>> "
(>>" #
decimal>># *
)>>* +
,>>+ ,
oldType?? 
:?? 
$str?? '
)??' (
;??( )
migrationBuilderAA 
.AA 
AlterColumnAA (
<AA( )
decimalAA) 0
>AA0 1
(AA1 2
nameBB 
:BB 
$strBB  
,BB  !
tableCC 
:CC 
$strCC *
,CC* +
typeDD 
:DD 
$strDD $
,DD$ %
nullableEE 
:EE 
falseEE 
,EE  

oldClrTypeFF 
:FF 
typeofFF "
(FF" #
decimalFF# *
)FF* +
,FF+ ,
oldTypeGG 
:GG 
$strGG '
)GG' (
;GG( )
migrationBuilderII 
.II 
AlterColumnII (
<II( )
decimalII) 0
>II0 1
(II1 2
nameJJ 
:JJ 
$strJJ  
,JJ  !
tableKK 
:KK 
$strKK )
,KK) *
typeLL 
:LL 
$strLL $
,LL$ %
nullableMM 
:MM 
falseMM 
,MM  

oldClrTypeNN 
:NN 
typeofNN "
(NN" #
decimalNN# *
)NN* +
,NN+ ,
oldTypeOO 
:OO 
$strOO '
)OO' (
;OO( )
}PP 	
}QQ 
}RR Úú
hE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Migrations\20250604234606_CreateStockSeed.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  

Migrations  *
{		 
public 

partial 
class 
CreateStockSeed (
:) *
	Migration+ 4
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 

InsertData '
(' (
table 
: 
$str 
,  
columns 
: 
new 
[ 
] 
{  
$str! %
,% &
$str' 5
,5 6
$str7 E
,E F
$strG T
,T U
$strV _
,_ `
$stra q
,q r
$strs y
,y z
$str	{ Ö
,
Ö Ü
$str
á õ
,
õ ú
$str
ù ™
}
´ ¨
,
¨ ≠
values 
: 
new 
object "
[" #
,# $
]$ %
{ 
{ 
new 
Guid 
( 
$str E
)E F
,F G
newH K
DateTimeL T
(T U
$numU Y
,Y Z
$num[ ]
,] ^
$num_ `
,` a
$numb c
,c d
$nume f
,f g
$numh i
,i j
$numk l
,l m
DateTimeKindn z
.z {
Utc{ ~
)~ 
,	 Ä
null
Å Ö
,
Ö Ü
$str
á â
,
â ä
false
ã ê
,
ê ë
null
í ñ
,
ñ ó
$str
ò ¶
,
¶ ß
$num
® ™
,
™ ´
$num
¨ Æ
,
Æ Ø
$str
∞ ∫
}
ª º
,
º Ω
{ 
new 
Guid 
( 
$str E
)E F
,F G
newH K
DateTimeL T
(T U
$numU Y
,Y Z
$num[ ]
,] ^
$num_ `
,` a
$numb c
,c d
$nume f
,f g
$numh i
,i j
$numk l
,l m
DateTimeKindn z
.z {
Utc{ ~
)~ 
,	 Ä
null
Å Ö
,
Ö Ü
$str
á â
,
â ä
false
ã ê
,
ê ë
null
í ñ
,
ñ ó
$str
ò ∞
,
∞ ±
$num
≤ ¥
,
¥ µ
$num
∂ ∏
,
∏ π
$str
∫ ƒ
}
≈ ∆
,
∆ «
{ 
new 
Guid 
( 
$str E
)E F
,F G
newH K
DateTimeL T
(T U
$numU Y
,Y Z
$num[ ]
,] ^
$num_ `
,` a
$numb c
,c d
$nume f
,f g
$numh i
,i j
$numk l
,l m
DateTimeKindn z
.z {
Utc{ ~
)~ 
,	 Ä
null
Å Ö
,
Ö Ü
$str
á â
,
â ä
false
ã ê
,
ê ë
null
í ñ
,
ñ ó
$str
ò •
,
• ¶
$num
ß ©
,
© ™
$num
´ ≠
,
≠ Æ
$str
Ø π
}
∫ ª
,
ª º
{ 
new 
Guid 
( 
$str E
)E F
,F G
newH K
DateTimeL T
(T U
$numU Y
,Y Z
$num[ ]
,] ^
$num_ `
,` a
$numb c
,c d
$nume f
,f g
$numh i
,i j
$numk l
,l m
DateTimeKindn z
.z {
Utc{ ~
)~ 
,	 Ä
null
Å Ö
,
Ö Ü
$str
á â
,
â ä
false
ã ê
,
ê ë
null
í ñ
,
ñ ó
$str
ò •
,
• ¶
$num
ß ©
,
© ™
$num
´ ≠
,
≠ Æ
$str
Ø π
}
∫ ª
,
ª º
{ 
new 
Guid 
( 
$str E
)E F
,F G
newH K
DateTimeL T
(T U
$numU Y
,Y Z
$num[ ]
,] ^
$num_ `
,` a
$numb c
,c d
$nume f
,f g
$numh i
,i j
$numk l
,l m
DateTimeKindn z
.z {
Utc{ ~
)~ 
,	 Ä
null
Å Ö
,
Ö Ü
$str
á â
,
â ä
false
ã ê
,
ê ë
null
í ñ
,
ñ ó
$str
ò §
,
§ •
$num
¶ ®
,
® ©
$num
™ ¨
,
¨ ≠
$str
Æ ∏
}
π ∫
,
∫ ª
{ 
new 
Guid 
( 
$str E
)E F
,F G
newH K
DateTimeL T
(T U
$numU Y
,Y Z
$num[ ]
,] ^
$num_ `
,` a
$numb c
,c d
$nume f
,f g
$numh i
,i j
$numk l
,l m
DateTimeKindn z
.z {
Utc{ ~
)~ 
,	 Ä
null
Å Ö
,
Ö Ü
$str
á â
,
â ä
false
ã ê
,
ê ë
null
í ñ
,
ñ ó
$str
ò ¢
,
¢ £
$num
§ ¶
,
¶ ß
$num
® ™
,
™ ´
$str
¨ ∂
}
∑ ∏
,
∏ π
{ 
new 
Guid 
( 
$str E
)E F
,F G
newH K
DateTimeL T
(T U
$numU Y
,Y Z
$num[ ]
,] ^
$num_ `
,` a
$numb c
,c d
$nume f
,f g
$numh i
,i j
$numk l
,l m
DateTimeKindn z
.z {
Utc{ ~
)~ 
,	 Ä
null
Å Ö
,
Ö Ü
$str
á â
,
â ä
false
ã ê
,
ê ë
null
í ñ
,
ñ ó
$str
ò §
,
§ •
$num
¶ ®
,
® ©
$num
™ ¨
,
¨ ≠
$str
Æ ∏
}
π ∫
,
∫ ª
{ 
new 
Guid 
( 
$str E
)E F
,F G
newH K
DateTimeL T
(T U
$numU Y
,Y Z
$num[ ]
,] ^
$num_ `
,` a
$numb c
,c d
$nume f
,f g
$numh i
,i j
$numk l
,l m
DateTimeKindn z
.z {
Utc{ ~
)~ 
,	 Ä
null
Å Ö
,
Ö Ü
$str
á â
,
â ä
false
ã ê
,
ê ë
null
í ñ
,
ñ ó
$str
ò §
,
§ •
$num
¶ ®
,
® ©
$num
™ ¨
,
¨ ≠
$str
Æ ∏
}
π ∫
,
∫ ª
{ 
new 
Guid 
( 
$str E
)E F
,F G
newH K
DateTimeL T
(T U
$numU Y
,Y Z
$num[ ]
,] ^
$num_ `
,` a
$numb c
,c d
$nume f
,f g
$numh i
,i j
$numk l
,l m
DateTimeKindn z
.z {
Utc{ ~
)~ 
,	 Ä
null
Å Ö
,
Ö Ü
$str
á â
,
â ä
false
ã ê
,
ê ë
null
í ñ
,
ñ ó
$str
ò £
,
£ §
$num
• ß
,
ß ®
$num
© ´
,
´ ¨
$str
≠ ∑
}
∏ π
,
π ∫
{ 
new 
Guid 
( 
$str E
)E F
,F G
newH K
DateTimeL T
(T U
$numU Y
,Y Z
$num[ ]
,] ^
$num_ `
,` a
$numb c
,c d
$nume f
,f g
$numh i
,i j
$numk l
,l m
DateTimeKindn z
.z {
Utc{ ~
)~ 
,	 Ä
null
Å Ö
,
Ö Ü
$str
á â
,
â ä
false
ã ê
,
ê ë
null
í ñ
,
ñ ó
$str
ò £
,
£ §
$num
• ß
,
ß ®
$num
© ´
,
´ ¨
$str
≠ ∑
}
∏ π
,
π ∫
{ 
new 
Guid 
( 
$str E
)E F
,F G
newH K
DateTimeL T
(T U
$numU Y
,Y Z
$num[ ]
,] ^
$num_ `
,` a
$numb c
,c d
$nume f
,f g
$numh i
,i j
$numk l
,l m
DateTimeKindn z
.z {
Utc{ ~
)~ 
,	 Ä
null
Å Ö
,
Ö Ü
$str
á â
,
â ä
false
ã ê
,
ê ë
null
í ñ
,
ñ ó
$str
ò û
,
û ü
$num
† ¢
,
¢ £
$num
§ ¶
,
¶ ß
$str
® ≤
}
≥ ¥
,
¥ µ
{   
new   
Guid   
(   
$str   E
)  E F
,  F G
new  H K
DateTime  L T
(  T U
$num  U Y
,  Y Z
$num  [ ]
,  ] ^
$num  _ `
,  ` a
$num  b c
,  c d
$num  e f
,  f g
$num  h i
,  i j
$num  k l
,  l m
DateTimeKind  n z
.  z {
Utc  { ~
)  ~ 
,	   Ä
null
  Å Ö
,
  Ö Ü
$str
  á â
,
  â ä
false
  ã ê
,
  ê ë
null
  í ñ
,
  ñ ó
$str
  ò ©
,
  © ™
$num
  ´ ≠
,
  ≠ Æ
$num
  Ø ±
,
  ± ≤
$str
  ≥ Ω
}
  æ ø
,
  ø ¿
{!! 
new!! 
Guid!! 
(!! 
$str!! E
)!!E F
,!!F G
new!!H K
DateTime!!L T
(!!T U
$num!!U Y
,!!Y Z
$num!![ ]
,!!] ^
$num!!_ `
,!!` a
$num!!b c
,!!c d
$num!!e f
,!!f g
$num!!h i
,!!i j
$num!!k l
,!!l m
DateTimeKind!!n z
.!!z {
Utc!!{ ~
)!!~ 
,	!! Ä
null
!!Å Ö
,
!!Ö Ü
$str
!!á â
,
!!â ä
false
!!ã ê
,
!!ê ë
null
!!í ñ
,
!!ñ ó
$str
!!ò ß
,
!!ß ®
$num
!!© ´
,
!!´ ¨
$num
!!≠ Ø
,
!!Ø ∞
$str
!!± ª
}
!!º Ω
,
!!Ω æ
{"" 
new"" 
Guid"" 
("" 
$str"" E
)""E F
,""F G
new""H K
DateTime""L T
(""T U
$num""U Y
,""Y Z
$num""[ ]
,""] ^
$num""_ `
,""` a
$num""b c
,""c d
$num""e f
,""f g
$num""h i
,""i j
$num""k l
,""l m
DateTimeKind""n z
.""z {
Utc""{ ~
)""~ 
,	"" Ä
null
""Å Ö
,
""Ö Ü
$str
""á â
,
""â ä
false
""ã ê
,
""ê ë
null
""í ñ
,
""ñ ó
$str
""ò ™
,
""™ ´
$num
""¨ Æ
,
""Æ Ø
$num
""∞ ≤
,
""≤ ≥
$str
""¥ æ
}
""ø ¿
,
""¿ ¡
{## 
new## 
Guid## 
(## 
$str## E
)##E F
,##F G
new##H K
DateTime##L T
(##T U
$num##U Y
,##Y Z
$num##[ ]
,##] ^
$num##_ `
,##` a
$num##b c
,##c d
$num##e f
,##f g
$num##h i
,##i j
$num##k l
,##l m
DateTimeKind##n z
.##z {
Utc##{ ~
)##~ 
,	## Ä
null
##Å Ö
,
##Ö Ü
$str
##á â
,
##â ä
false
##ã ê
,
##ê ë
null
##í ñ
,
##ñ ó
$str
##ò •
,
##• ¶
$num
##ß ©
,
##© ™
$num
##´ ≠
,
##≠ Æ
$str
##Ø π
}
##∫ ª
,
##ª º
{$$ 
new$$ 
Guid$$ 
($$ 
$str$$ E
)$$E F
,$$F G
new$$H K
DateTime$$L T
($$T U
$num$$U Y
,$$Y Z
$num$$[ ]
,$$] ^
$num$$_ `
,$$` a
$num$$b c
,$$c d
$num$$e f
,$$f g
$num$$h i
,$$i j
$num$$k l
,$$l m
DateTimeKind$$n z
.$$z {
Utc$${ ~
)$$~ 
,	$$ Ä
null
$$Å Ö
,
$$Ö Ü
$str
$$á â
,
$$â ä
false
$$ã ê
,
$$ê ë
null
$$í ñ
,
$$ñ ó
$str
$$ò §
,
$$§ •
$num
$$¶ ®
,
$$® ©
$num
$$™ ¨
,
$$¨ ≠
$str
$$Æ ∏
}
$$π ∫
,
$$∫ ª
{%% 
new%% 
Guid%% 
(%% 
$str%% E
)%%E F
,%%F G
new%%H K
DateTime%%L T
(%%T U
$num%%U Y
,%%Y Z
$num%%[ ]
,%%] ^
$num%%_ `
,%%` a
$num%%b c
,%%c d
$num%%e f
,%%f g
$num%%h i
,%%i j
$num%%k l
,%%l m
DateTimeKind%%n z
.%%z {
Utc%%{ ~
)%%~ 
,	%% Ä
null
%%Å Ö
,
%%Ö Ü
$str
%%á â
,
%%â ä
false
%%ã ê
,
%%ê ë
null
%%í ñ
,
%%ñ ó
$str
%%ò §
,
%%§ •
$num
%%¶ ®
,
%%® ©
$num
%%™ ¨
,
%%¨ ≠
$str
%%Æ ∏
}
%%π ∫
,
%%∫ ª
{&& 
new&& 
Guid&& 
(&& 
$str&& E
)&&E F
,&&F G
new&&H K
DateTime&&L T
(&&T U
$num&&U Y
,&&Y Z
$num&&[ ]
,&&] ^
$num&&_ `
,&&` a
$num&&b c
,&&c d
$num&&e f
,&&f g
$num&&h i
,&&i j
$num&&k l
,&&l m
DateTimeKind&&n z
.&&z {
Utc&&{ ~
)&&~ 
,	&& Ä
null
&&Å Ö
,
&&Ö Ü
$str
&&á â
,
&&â ä
false
&&ã ê
,
&&ê ë
null
&&í ñ
,
&&ñ ó
$str
&&ò £
,
&&£ §
$num
&&• ß
,
&&ß ®
$num
&&© ´
,
&&´ ¨
$str
&&≠ ∑
}
&&∏ π
,
&&π ∫
{'' 
new'' 
Guid'' 
('' 
$str'' E
)''E F
,''F G
new''H K
DateTime''L T
(''T U
$num''U Y
,''Y Z
$num''[ ]
,''] ^
$num''_ `
,''` a
$num''b c
,''c d
$num''e f
,''f g
$num''h i
,''i j
$num''k l
,''l m
DateTimeKind''n z
.''z {
Utc''{ ~
)''~ 
,	'' Ä
null
''Å Ö
,
''Ö Ü
$str
''á â
,
''â ä
false
''ã ê
,
''ê ë
null
''í ñ
,
''ñ ó
$str
''ò ù
,
''ù û
$num
''ü °
,
''° ¢
$num
''£ •
,
''• ¶
$str
''ß ±
}
''≤ ≥
,
''≥ ¥
{(( 
new(( 
Guid(( 
((( 
$str(( E
)((E F
,((F G
new((H K
DateTime((L T
(((T U
$num((U Y
,((Y Z
$num(([ ]
,((] ^
$num((_ `
,((` a
$num((b c
,((c d
$num((e f
,((f g
$num((h i
,((i j
$num((k l
,((l m
DateTimeKind((n z
.((z {
Utc(({ ~
)((~ 
,	(( Ä
null
((Å Ö
,
((Ö Ü
$str
((á â
,
((â ä
false
((ã ê
,
((ê ë
null
((í ñ
,
((ñ ó
$str
((ò ∞
,
((∞ ±
$num
((≤ ¥
,
((¥ µ
$num
((∂ ∏
,
((∏ π
$str
((∫ ƒ
}
((≈ ∆
,
((∆ «
{)) 
new)) 
Guid)) 
()) 
$str)) E
)))E F
,))F G
new))H K
DateTime))L T
())T U
$num))U Y
,))Y Z
$num))[ ]
,))] ^
$num))_ `
,))` a
$num))b c
,))c d
$num))e f
,))f g
$num))h i
,))i j
$num))k l
,))l m
DateTimeKind))n z
.))z {
Utc)){ ~
)))~ 
,	)) Ä
null
))Å Ö
,
))Ö Ü
$str
))á â
,
))â ä
false
))ã ê
,
))ê ë
null
))í ñ
,
))ñ ó
$str
))ò ®
,
))® ©
$num
))™ ¨
,
))¨ ≠
$num
))Æ ∞
,
))∞ ±
$str
))≤ º
}
))Ω æ
,
))æ ø
{** 
new** 
Guid** 
(** 
$str** E
)**E F
,**F G
new**H K
DateTime**L T
(**T U
$num**U Y
,**Y Z
$num**[ ]
,**] ^
$num**_ `
,**` a
$num**b c
,**c d
$num**e f
,**f g
$num**h i
,**i j
$num**k l
,**l m
DateTimeKind**n z
.**z {
Utc**{ ~
)**~ 
,	** Ä
null
**Å Ö
,
**Ö Ü
$str
**á â
,
**â ä
false
**ã ê
,
**ê ë
null
**í ñ
,
**ñ ó
$str
**ò £
,
**£ §
$num
**• ß
,
**ß ®
$num
**© ´
,
**´ ¨
$str
**≠ ∑
}
**∏ π
,
**π ∫
{++ 
new++ 
Guid++ 
(++ 
$str++ E
)++E F
,++F G
new++H K
DateTime++L T
(++T U
$num++U Y
,++Y Z
$num++[ ]
,++] ^
$num++_ `
,++` a
$num++b c
,++c d
$num++e f
,++f g
$num++h i
,++i j
$num++k l
,++l m
DateTimeKind++n z
.++z {
Utc++{ ~
)++~ 
,	++ Ä
null
++Å Ö
,
++Ö Ü
$str
++á â
,
++â ä
false
++ã ê
,
++ê ë
null
++í ñ
,
++ñ ó
$str
++ò ©
,
++© ™
$num
++´ ≠
,
++≠ Æ
$num
++Ø ±
,
++± ≤
$str
++≥ Ω
}
++æ ø
,
++ø ¿
{,, 
new,, 
Guid,, 
(,, 
$str,, E
),,E F
,,,F G
new,,H K
DateTime,,L T
(,,T U
$num,,U Y
,,,Y Z
$num,,[ ]
,,,] ^
$num,,_ `
,,,` a
$num,,b c
,,,c d
$num,,e f
,,,f g
$num,,h i
,,,i j
$num,,k l
,,,l m
DateTimeKind,,n z
.,,z {
Utc,,{ ~
),,~ 
,	,, Ä
null
,,Å Ö
,
,,Ö Ü
$str
,,á â
,
,,â ä
false
,,ã ê
,
,,ê ë
null
,,í ñ
,
,,ñ ó
$str
,,ò ±
,
,,± ≤
$num
,,≥ µ
,
,,µ ∂
$num
,,∑ π
,
,,π ∫
$str
,,ª ≈
}
,,∆ «
,
,,« »
{-- 
new-- 
Guid-- 
(-- 
$str-- E
)--E F
,--F G
new--H K
DateTime--L T
(--T U
$num--U Y
,--Y Z
$num--[ ]
,--] ^
$num--_ `
,--` a
$num--b c
,--c d
$num--e f
,--f g
$num--h i
,--i j
$num--k l
,--l m
DateTimeKind--n z
.--z {
Utc--{ ~
)--~ 
,	-- Ä
null
--Å Ö
,
--Ö Ü
$str
--á â
,
--â ä
false
--ã ê
,
--ê ë
null
--í ñ
,
--ñ ó
$str
--ò ¨
,
--¨ ≠
$num
--Æ ∞
,
--∞ ±
$num
--≤ ¥
,
--¥ µ
$str
--∂ ¿
}
--¡ ¬
,
--¬ √
{.. 
new.. 
Guid.. 
(.. 
$str.. E
)..E F
,..F G
new..H K
DateTime..L T
(..T U
$num..U Y
,..Y Z
$num..[ ]
,..] ^
$num.._ `
,..` a
$num..b c
,..c d
$num..e f
,..f g
$num..h i
,..i j
$num..k l
,..l m
DateTimeKind..n z
...z {
Utc..{ ~
)..~ 
,	.. Ä
null
..Å Ö
,
..Ö Ü
$str
..á â
,
..â ä
false
..ã ê
,
..ê ë
null
..í ñ
,
..ñ ó
$str
..ò ¨
,
..¨ ≠
$num
..Æ ∞
,
..∞ ±
$num
..≤ ¥
,
..¥ µ
$str
..∂ ¿
}
..¡ ¬
,
..¬ √
{// 
new// 
Guid// 
(// 
$str// E
)//E F
,//F G
new//H K
DateTime//L T
(//T U
$num//U Y
,//Y Z
$num//[ ]
,//] ^
$num//_ `
,//` a
$num//b c
,//c d
$num//e f
,//f g
$num//h i
,//i j
$num//k l
,//l m
DateTimeKind//n z
.//z {
Utc//{ ~
)//~ 
,	// Ä
null
//Å Ö
,
//Ö Ü
$str
//á â
,
//â ä
false
//ã ê
,
//ê ë
null
//í ñ
,
//ñ ó
$str
//ò ´
,
//´ ¨
$num
//≠ Ø
,
//Ø ∞
$num
//± ≥
,
//≥ ¥
$str
//µ ø
}
//¿ ¡
,
//¡ ¬
{00 
new00 
Guid00 
(00 
$str00 E
)00E F
,00F G
new00H K
DateTime00L T
(00T U
$num00U Y
,00Y Z
$num00[ ]
,00] ^
$num00_ `
,00` a
$num00b c
,00c d
$num00e f
,00f g
$num00h i
,00i j
$num00k l
,00l m
DateTimeKind00n z
.00z {
Utc00{ ~
)00~ 
,	00 Ä
null
00Å Ö
,
00Ö Ü
$str
00á â
,
00â ä
false
00ã ê
,
00ê ë
null
00í ñ
,
00ñ ó
$str
00ò ±
,
00± ≤
$num
00≥ µ
,
00µ ∂
$num
00∑ π
,
00π ∫
$str
00ª ≈
}
00∆ «
,
00« »
{11 
new11 
Guid11 
(11 
$str11 E
)11E F
,11F G
new11H K
DateTime11L T
(11T U
$num11U Y
,11Y Z
$num11[ ]
,11] ^
$num11_ `
,11` a
$num11b c
,11c d
$num11e f
,11f g
$num11h i
,11i j
$num11k l
,11l m
DateTimeKind11n z
.11z {
Utc11{ ~
)11~ 
,	11 Ä
null
11Å Ö
,
11Ö Ü
$str
11á â
,
11â ä
false
11ã ê
,
11ê ë
null
11í ñ
,
11ñ ó
$str
11ò ≤
,
11≤ ≥
$num
11¥ ∂
,
11∂ ∑
$num
11∏ ∫
,
11∫ ª
$str
11º ∆
}
11« »
,
11» …
{22 
new22 
Guid22 
(22 
$str22 E
)22E F
,22F G
new22H K
DateTime22L T
(22T U
$num22U Y
,22Y Z
$num22[ ]
,22] ^
$num22_ `
,22` a
$num22b c
,22c d
$num22e f
,22f g
$num22h i
,22i j
$num22k l
,22l m
DateTimeKind22n z
.22z {
Utc22{ ~
)22~ 
,	22 Ä
null
22Å Ö
,
22Ö Ü
$str
22á â
,
22â ä
false
22ã ê
,
22ê ë
null
22í ñ
,
22ñ ó
$str
22ò Ø
,
22Ø ∞
$num
22± ≥
,
22≥ ¥
$num
22µ ∑
,
22∑ ∏
$str
22π √
}
22ƒ ≈
,
22≈ ∆
{33 
new33 
Guid33 
(33 
$str33 E
)33E F
,33F G
new33H K
DateTime33L T
(33T U
$num33U Y
,33Y Z
$num33[ ]
,33] ^
$num33_ `
,33` a
$num33b c
,33c d
$num33e f
,33f g
$num33h i
,33i j
$num33k l
,33l m
DateTimeKind33n z
.33z {
Utc33{ ~
)33~ 
,	33 Ä
null
33Å Ö
,
33Ö Ü
$str
33á â
,
33â ä
false
33ã ê
,
33ê ë
null
33í ñ
,
33ñ ó
$str
33ò Æ
,
33Æ Ø
$num
33∞ ≤
,
33≤ ≥
$num
33¥ ∂
,
33∂ ∑
$str
33∏ ¬
}
33√ ƒ
,
33ƒ ≈
{44 
new44 
Guid44 
(44 
$str44 E
)44E F
,44F G
new44H K
DateTime44L T
(44T U
$num44U Y
,44Y Z
$num44[ ]
,44] ^
$num44_ `
,44` a
$num44b c
,44c d
$num44e f
,44f g
$num44h i
,44i j
$num44k l
,44l m
DateTimeKind44n z
.44z {
Utc44{ ~
)44~ 
,	44 Ä
null
44Å Ö
,
44Ö Ü
$str
44á â
,
44â ä
false
44ã ê
,
44ê ë
null
44í ñ
,
44ñ ó
$str
44ò Æ
,
44Æ Ø
$num
44∞ ≤
,
44≤ ≥
$num
44¥ ∂
,
44∂ ∑
$str
44∏ ¬
}
44√ ƒ
,
44ƒ ≈
{55 
new55 
Guid55 
(55 
$str55 E
)55E F
,55F G
new55H K
DateTime55L T
(55T U
$num55U Y
,55Y Z
$num55[ ]
,55] ^
$num55_ `
,55` a
$num55b c
,55c d
$num55e f
,55f g
$num55h i
,55i j
$num55k l
,55l m
DateTimeKind55n z
.55z {
Utc55{ ~
)55~ 
,	55 Ä
null
55Å Ö
,
55Ö Ü
$str
55á â
,
55â ä
false
55ã ê
,
55ê ë
null
55í ñ
,
55ñ ó
$str
55ò Æ
,
55Æ Ø
$num
55∞ ≤
,
55≤ ≥
$num
55¥ ∂
,
55∂ ∑
$str
55∏ ¬
}
55√ ƒ
,
55ƒ ≈
{66 
new66 
Guid66 
(66 
$str66 E
)66E F
,66F G
new66H K
DateTime66L T
(66T U
$num66U Y
,66Y Z
$num66[ ]
,66] ^
$num66_ `
,66` a
$num66b c
,66c d
$num66e f
,66f g
$num66h i
,66i j
$num66k l
,66l m
DateTimeKind66n z
.66z {
Utc66{ ~
)66~ 
,	66 Ä
null
66Å Ö
,
66Ö Ü
$str
66á â
,
66â ä
false
66ã ê
,
66ê ë
null
66í ñ
,
66ñ ó
$str
66ò Æ
,
66Æ Ø
$num
66∞ ≤
,
66≤ ≥
$num
66¥ ∂
,
66∂ ∑
$str
66∏ ¬
}
66√ ƒ
,
66ƒ ≈
{77 
new77 
Guid77 
(77 
$str77 E
)77E F
,77F G
new77H K
DateTime77L T
(77T U
$num77U Y
,77Y Z
$num77[ ]
,77] ^
$num77_ `
,77` a
$num77b c
,77c d
$num77e f
,77f g
$num77h i
,77i j
$num77k l
,77l m
DateTimeKind77n z
.77z {
Utc77{ ~
)77~ 
,	77 Ä
null
77Å Ö
,
77Ö Ü
$str
77á â
,
77â ä
false
77ã ê
,
77ê ë
null
77í ñ
,
77ñ ó
$str
77ò †
,
77† °
$num
77¢ §
,
77§ •
$num
77¶ ®
,
77® ©
$str
77™ ¥
}
77µ ∂
,
77∂ ∑
{88 
new88 
Guid88 
(88 
$str88 E
)88E F
,88F G
new88H K
DateTime88L T
(88T U
$num88U Y
,88Y Z
$num88[ ]
,88] ^
$num88_ `
,88` a
$num88b c
,88c d
$num88e f
,88f g
$num88h i
,88i j
$num88k l
,88l m
DateTimeKind88n z
.88z {
Utc88{ ~
)88~ 
,	88 Ä
null
88Å Ö
,
88Ö Ü
$str
88á â
,
88â ä
false
88ã ê
,
88ê ë
null
88í ñ
,
88ñ ó
$str
88ò •
,
88• ¶
$num
88ß ©
,
88© ™
$num
88´ ≠
,
88≠ Æ
$str
88Ø π
}
88∫ ª
,
88ª º
{99 
new99 
Guid99 
(99 
$str99 E
)99E F
,99F G
new99H K
DateTime99L T
(99T U
$num99U Y
,99Y Z
$num99[ ]
,99] ^
$num99_ `
,99` a
$num99b c
,99c d
$num99e f
,99f g
$num99h i
,99i j
$num99k l
,99l m
DateTimeKind99n z
.99z {
Utc99{ ~
)99~ 
,	99 Ä
null
99Å Ö
,
99Ö Ü
$str
99á â
,
99â ä
false
99ã ê
,
99ê ë
null
99í ñ
,
99ñ ó
$str
99ò •
,
99• ¶
$num
99ß ©
,
99© ™
$num
99´ ≠
,
99≠ Æ
$str
99Ø π
}
99∫ ª
,
99ª º
{:: 
new:: 
Guid:: 
(:: 
$str:: E
)::E F
,::F G
new::H K
DateTime::L T
(::T U
$num::U Y
,::Y Z
$num::[ ]
,::] ^
$num::_ `
,::` a
$num::b c
,::c d
$num::e f
,::f g
$num::h i
,::i j
$num::k l
,::l m
DateTimeKind::n z
.::z {
Utc::{ ~
)::~ 
,	:: Ä
null
::Å Ö
,
::Ö Ü
$str
::á â
,
::â ä
false
::ã ê
,
::ê ë
null
::í ñ
,
::ñ ó
$str
::ò §
,
::§ •
$num
::¶ ®
,
::® ©
$num
::™ ¨
,
::¨ ≠
$str
::Æ ∏
}
::π ∫
,
::∫ ª
{;; 
new;; 
Guid;; 
(;; 
$str;; E
);;E F
,;;F G
new;;H K
DateTime;;L T
(;;T U
$num;;U Y
,;;Y Z
$num;;[ ]
,;;] ^
$num;;_ `
,;;` a
$num;;b c
,;;c d
$num;;e f
,;;f g
$num;;h i
,;;i j
$num;;k l
,;;l m
DateTimeKind;;n z
.;;z {
Utc;;{ ~
);;~ 
,	;; Ä
null
;;Å Ö
,
;;Ö Ü
$str
;;á â
,
;;â ä
false
;;ã ê
,
;;ê ë
null
;;í ñ
,
;;ñ ó
$str
;;ò ¨
,
;;¨ ≠
$num
;;Æ ∞
,
;;∞ ±
$num
;;≤ ¥
,
;;¥ µ
$str
;;∂ ¿
}
;;¡ ¬
,
;;¬ √
{<< 
new<< 
Guid<< 
(<< 
$str<< E
)<<E F
,<<F G
new<<H K
DateTime<<L T
(<<T U
$num<<U Y
,<<Y Z
$num<<[ ]
,<<] ^
$num<<_ `
,<<` a
$num<<b c
,<<c d
$num<<e f
,<<f g
$num<<h i
,<<i j
$num<<k l
,<<l m
DateTimeKind<<n z
.<<z {
Utc<<{ ~
)<<~ 
,	<< Ä
null
<<Å Ö
,
<<Ö Ü
$str
<<á â
,
<<â ä
false
<<ã ê
,
<<ê ë
null
<<í ñ
,
<<ñ ó
$str
<<ò ™
,
<<™ ´
$num
<<¨ Æ
,
<<Æ Ø
$num
<<∞ ≤
,
<<≤ ≥
$str
<<¥ æ
}
<<ø ¿
,
<<¿ ¡
{== 
new== 
Guid== 
(== 
$str== E
)==E F
,==F G
new==H K
DateTime==L T
(==T U
$num==U Y
,==Y Z
$num==[ ]
,==] ^
$num==_ `
,==` a
$num==b c
,==c d
$num==e f
,==f g
$num==h i
,==i j
$num==k l
,==l m
DateTimeKind==n z
.==z {
Utc=={ ~
)==~ 
,	== Ä
null
==Å Ö
,
==Ö Ü
$str
==á â
,
==â ä
false
==ã ê
,
==ê ë
null
==í ñ
,
==ñ ó
$str
==ò ¢
,
==¢ £
$num
==§ ¶
,
==¶ ß
$num
==® ™
,
==™ ´
$str
==¨ ∂
}
==∑ ∏
,
==∏ π
{>> 
new>> 
Guid>> 
(>> 
$str>> E
)>>E F
,>>F G
new>>H K
DateTime>>L T
(>>T U
$num>>U Y
,>>Y Z
$num>>[ ]
,>>] ^
$num>>_ `
,>>` a
$num>>b c
,>>c d
$num>>e f
,>>f g
$num>>h i
,>>i j
$num>>k l
,>>l m
DateTimeKind>>n z
.>>z {
Utc>>{ ~
)>>~ 
,	>> Ä
null
>>Å Ö
,
>>Ö Ü
$str
>>á â
,
>>â ä
false
>>ã ê
,
>>ê ë
null
>>í ñ
,
>>ñ ó
$str
>>ò ¶
,
>>¶ ß
$num
>>® ™
,
>>™ ´
$num
>>¨ Æ
,
>>Æ Ø
$str
>>∞ ∫
}
>>ª º
,
>>º Ω
{?? 
new?? 
Guid?? 
(?? 
$str?? E
)??E F
,??F G
new??H K
DateTime??L T
(??T U
$num??U Y
,??Y Z
$num??[ ]
,??] ^
$num??_ `
,??` a
$num??b c
,??c d
$num??e f
,??f g
$num??h i
,??i j
$num??k l
,??l m
DateTimeKind??n z
.??z {
Utc??{ ~
)??~ 
,	?? Ä
null
??Å Ö
,
??Ö Ü
$str
??á â
,
??â ä
false
??ã ê
,
??ê ë
null
??í ñ
,
??ñ ó
$str
??ò °
,
??° ¢
$num
??£ •
,
??• ¶
$num
??ß ©
,
??© ™
$str
??´ µ
}
??∂ ∑
,
??∑ ∏
{@@ 
new@@ 
Guid@@ 
(@@ 
$str@@ E
)@@E F
,@@F G
new@@H K
DateTime@@L T
(@@T U
$num@@U Y
,@@Y Z
$num@@[ ]
,@@] ^
$num@@_ `
,@@` a
$num@@b c
,@@c d
$num@@e f
,@@f g
$num@@h i
,@@i j
$num@@k l
,@@l m
DateTimeKind@@n z
.@@z {
Utc@@{ ~
)@@~ 
,	@@ Ä
null
@@Å Ö
,
@@Ö Ü
$str
@@á â
,
@@â ä
false
@@ã ê
,
@@ê ë
null
@@í ñ
,
@@ñ ó
$str
@@ò §
,
@@§ •
$num
@@¶ ®
,
@@® ©
$num
@@™ ¨
,
@@¨ ≠
$str
@@Æ ∏
}
@@π ∫
,
@@∫ ª
{AA 
newAA 
GuidAA 
(AA 
$strAA E
)AAE F
,AAF G
newAAH K
DateTimeAAL T
(AAT U
$numAAU Y
,AAY Z
$numAA[ ]
,AA] ^
$numAA_ `
,AA` a
$numAAb c
,AAc d
$numAAe f
,AAf g
$numAAh i
,AAi j
$numAAk l
,AAl m
DateTimeKindAAn z
.AAz {
UtcAA{ ~
)AA~ 
,	AA Ä
null
AAÅ Ö
,
AAÖ Ü
$str
AAá â
,
AAâ ä
false
AAã ê
,
AAê ë
null
AAí ñ
,
AAñ ó
$str
AAò ü
,
AAü †
$num
AA° £
,
AA£ §
$num
AA• ß
,
AAß ®
$str
AA© ≥
}
AA¥ µ
,
AAµ ∂
{BB 
newBB 
GuidBB 
(BB 
$strBB E
)BBE F
,BBF G
newBBH K
DateTimeBBL T
(BBT U
$numBBU Y
,BBY Z
$numBB[ ]
,BB] ^
$numBB_ `
,BB` a
$numBBb c
,BBc d
$numBBe f
,BBf g
$numBBh i
,BBi j
$numBBk l
,BBl m
DateTimeKindBBn z
.BBz {
UtcBB{ ~
)BB~ 
,	BB Ä
null
BBÅ Ö
,
BBÖ Ü
$str
BBá â
,
BBâ ä
false
BBã ê
,
BBê ë
null
BBí ñ
,
BBñ ó
$str
BBò ™
,
BB™ ´
$num
BB¨ Æ
,
BBÆ Ø
$num
BB∞ ≤
,
BB≤ ≥
$str
BB¥ æ
}
BBø ¿
,
BB¿ ¡
{CC 
newCC 
GuidCC 
(CC 
$strCC E
)CCE F
,CCF G
newCCH K
DateTimeCCL T
(CCT U
$numCCU Y
,CCY Z
$numCC[ ]
,CC] ^
$numCC_ `
,CC` a
$numCCb c
,CCc d
$numCCe f
,CCf g
$numCCh i
,CCi j
$numCCk l
,CCl m
DateTimeKindCCn z
.CCz {
UtcCC{ ~
)CC~ 
,	CC Ä
null
CCÅ Ö
,
CCÖ Ü
$str
CCá â
,
CCâ ä
false
CCã ê
,
CCê ë
null
CCí ñ
,
CCñ ó
$str
CCò •
,
CC• ¶
$num
CCß ©
,
CC© ™
$num
CC´ ≠
,
CC≠ Æ
$str
CCØ π
}
CC∫ ª
,
CCª º
{DD 
newDD 
GuidDD 
(DD 
$strDD E
)DDE F
,DDF G
newDDH K
DateTimeDDL T
(DDT U
$numDDU Y
,DDY Z
$numDD[ ]
,DD] ^
$numDD_ `
,DD` a
$numDDb c
,DDc d
$numDDe f
,DDf g
$numDDh i
,DDi j
$numDDk l
,DDl m
DateTimeKindDDn z
.DDz {
UtcDD{ ~
)DD~ 
,	DD Ä
null
DDÅ Ö
,
DDÖ Ü
$str
DDá â
,
DDâ ä
false
DDã ê
,
DDê ë
null
DDí ñ
,
DDñ ó
$str
DDò ¢
,
DD¢ £
$num
DD§ ¶
,
DD¶ ß
$num
DD® ™
,
DD™ ´
$str
DD¨ ∂
}
DD∑ ∏
,
DD∏ π
{EE 
newEE 
GuidEE 
(EE 
$strEE E
)EEE F
,EEF G
newEEH K
DateTimeEEL T
(EET U
$numEEU Y
,EEY Z
$numEE[ ]
,EE] ^
$numEE_ `
,EE` a
$numEEb c
,EEc d
$numEEe f
,EEf g
$numEEh i
,EEi j
$numEEk l
,EEl m
DateTimeKindEEn z
.EEz {
UtcEE{ ~
)EE~ 
,	EE Ä
null
EEÅ Ö
,
EEÖ Ü
$str
EEá â
,
EEâ ä
false
EEã ê
,
EEê ë
null
EEí ñ
,
EEñ ó
$str
EEò ¢
,
EE¢ £
$num
EE§ ¶
,
EE¶ ß
$num
EE® ™
,
EE™ ´
$str
EE¨ ∂
}
EE∑ ∏
,
EE∏ π
{FF 
newFF 
GuidFF 
(FF 
$strFF E
)FFE F
,FFF G
newFFH K
DateTimeFFL T
(FFT U
$numFFU Y
,FFY Z
$numFF[ ]
,FF] ^
$numFF_ `
,FF` a
$numFFb c
,FFc d
$numFFe f
,FFf g
$numFFh i
,FFi j
$numFFk l
,FFl m
DateTimeKindFFn z
.FFz {
UtcFF{ ~
)FF~ 
,	FF Ä
null
FFÅ Ö
,
FFÖ Ü
$str
FFá â
,
FFâ ä
false
FFã ê
,
FFê ë
null
FFí ñ
,
FFñ ó
$str
FFò °
,
FF° ¢
$num
FF£ •
,
FF• ¶
$num
FFß ©
,
FF© ™
$str
FF´ µ
}
FF∂ ∑
,
FF∑ ∏
{GG 
newGG 
GuidGG 
(GG 
$strGG E
)GGE F
,GGF G
newGGH K
DateTimeGGL T
(GGT U
$numGGU Y
,GGY Z
$numGG[ ]
,GG] ^
$numGG_ `
,GG` a
$numGGb c
,GGc d
$numGGe f
,GGf g
$numGGh i
,GGi j
$numGGk l
,GGl m
DateTimeKindGGn z
.GGz {
UtcGG{ ~
)GG~ 
,	GG Ä
null
GGÅ Ö
,
GGÖ Ü
$str
GGá â
,
GGâ ä
false
GGã ê
,
GGê ë
null
GGí ñ
,
GGñ ó
$str
GGò £
,
GG£ §
$num
GG• ß
,
GGß ®
$num
GG© ´
,
GG´ ¨
$str
GG≠ ∑
}
GG∏ π
,
GGπ ∫
{HH 
newHH 
GuidHH 
(HH 
$strHH E
)HHE F
,HHF G
newHHH K
DateTimeHHL T
(HHT U
$numHHU Y
,HHY Z
$numHH[ ]
,HH] ^
$numHH_ `
,HH` a
$numHHb c
,HHc d
$numHHe f
,HHf g
$numHHh i
,HHi j
$numHHk l
,HHl m
DateTimeKindHHn z
.HHz {
UtcHH{ ~
)HH~ 
,	HH Ä
null
HHÅ Ö
,
HHÖ Ü
$str
HHá â
,
HHâ ä
false
HHã ê
,
HHê ë
null
HHí ñ
,
HHñ ó
$str
HHò ü
,
HHü †
$num
HH° £
,
HH£ §
$num
HH• ß
,
HHß ®
$str
HH© ≥
}
HH¥ µ
,
HHµ ∂
{II 
newII 
GuidII 
(II 
$strII E
)IIE F
,IIF G
newIIH K
DateTimeIIL T
(IIT U
$numIIU Y
,IIY Z
$numII[ ]
,II] ^
$numII_ `
,II` a
$numIIb c
,IIc d
$numIIe f
,IIf g
$numIIh i
,IIi j
$numIIk l
,IIl m
DateTimeKindIIn z
.IIz {
UtcII{ ~
)II~ 
,	II Ä
null
IIÅ Ö
,
IIÖ Ü
$str
IIá â
,
IIâ ä
false
IIã ê
,
IIê ë
null
IIí ñ
,
IIñ ó
$str
IIò ©
,
II© ™
$num
II´ ≠
,
II≠ Æ
$num
IIØ ±
,
II± ≤
$str
II≥ Ω
}
IIæ ø
,
IIø ¿
{JJ 
newJJ 
GuidJJ 
(JJ 
$strJJ E
)JJE F
,JJF G
newJJH K
DateTimeJJL T
(JJT U
$numJJU Y
,JJY Z
$numJJ[ ]
,JJ] ^
$numJJ_ `
,JJ` a
$numJJb c
,JJc d
$numJJe f
,JJf g
$numJJh i
,JJi j
$numJJk l
,JJl m
DateTimeKindJJn z
.JJz {
UtcJJ{ ~
)JJ~ 
,	JJ Ä
null
JJÅ Ö
,
JJÖ Ü
$str
JJá â
,
JJâ ä
false
JJã ê
,
JJê ë
null
JJí ñ
,
JJñ ó
$str
JJò ß
,
JJß ®
$num
JJ© ´
,
JJ´ ¨
$num
JJ≠ Ø
,
JJØ ∞
$str
JJ± ª
}
JJº Ω
,
JJΩ æ
{KK 
newKK 
GuidKK 
(KK 
$strKK E
)KKE F
,KKF G
newKKH K
DateTimeKKL T
(KKT U
$numKKU Y
,KKY Z
$numKK[ ]
,KK] ^
$numKK_ `
,KK` a
$numKKb c
,KKc d
$numKKe f
,KKf g
$numKKh i
,KKi j
$numKKk l
,KKl m
DateTimeKindKKn z
.KKz {
UtcKK{ ~
)KK~ 
,	KK Ä
null
KKÅ Ö
,
KKÖ Ü
$str
KKá â
,
KKâ ä
false
KKã ê
,
KKê ë
null
KKí ñ
,
KKñ ó
$str
KKò ü
,
KKü †
$num
KK° £
,
KK£ §
$num
KK• ß
,
KKß ®
$str
KK© ≥
}
KK¥ µ
,
KKµ ∂
{LL 
newLL 
GuidLL 
(LL 
$strLL E
)LLE F
,LLF G
newLLH K
DateTimeLLL T
(LLT U
$numLLU Y
,LLY Z
$numLL[ ]
,LL] ^
$numLL_ `
,LL` a
$numLLb c
,LLc d
$numLLe f
,LLf g
$numLLh i
,LLi j
$numLLk l
,LLl m
DateTimeKindLLn z
.LLz {
UtcLL{ ~
)LL~ 
,	LL Ä
null
LLÅ Ö
,
LLÖ Ü
$str
LLá â
,
LLâ ä
false
LLã ê
,
LLê ë
null
LLí ñ
,
LLñ ó
$str
LLò ¶
,
LL¶ ß
$num
LL® ™
,
LL™ ´
$num
LL¨ Æ
,
LLÆ Ø
$str
LL∞ ∫
}
LLª º
,
LLº Ω
{MM 
newMM 
GuidMM 
(MM 
$strMM E
)MME F
,MMF G
newMMH K
DateTimeMML T
(MMT U
$numMMU Y
,MMY Z
$numMM[ ]
,MM] ^
$numMM_ `
,MM` a
$numMMb c
,MMc d
$numMMe f
,MMf g
$numMMh i
,MMi j
$numMMk l
,MMl m
DateTimeKindMMn z
.MMz {
UtcMM{ ~
)MM~ 
,	MM Ä
null
MMÅ Ö
,
MMÖ Ü
$str
MMá â
,
MMâ ä
false
MMã ê
,
MMê ë
null
MMí ñ
,
MMñ ó
$str
MMò û
,
MMû ü
$num
MM† ¢
,
MM¢ £
$num
MM§ ¶
,
MM¶ ß
$str
MM® ≤
}
MM≥ ¥
,
MM¥ µ
{NN 
newNN 
GuidNN 
(NN 
$strNN E
)NNE F
,NNF G
newNNH K
DateTimeNNL T
(NNT U
$numNNU Y
,NNY Z
$numNN[ ]
,NN] ^
$numNN_ `
,NN` a
$numNNb c
,NNc d
$numNNe f
,NNf g
$numNNh i
,NNi j
$numNNk l
,NNl m
DateTimeKindNNn z
.NNz {
UtcNN{ ~
)NN~ 
,	NN Ä
null
NNÅ Ö
,
NNÖ Ü
$str
NNá â
,
NNâ ä
false
NNã ê
,
NNê ë
null
NNí ñ
,
NNñ ó
$str
NNò £
,
NN£ §
$num
NN• ß
,
NNß ®
$num
NN© ´
,
NN´ ¨
$str
NN≠ ∑
}
NN∏ π
,
NNπ ∫
{OO 
newOO 
GuidOO 
(OO 
$strOO E
)OOE F
,OOF G
newOOH K
DateTimeOOL T
(OOT U
$numOOU Y
,OOY Z
$numOO[ ]
,OO] ^
$numOO_ `
,OO` a
$numOOb c
,OOc d
$numOOe f
,OOf g
$numOOh i
,OOi j
$numOOk l
,OOl m
DateTimeKindOOn z
.OOz {
UtcOO{ ~
)OO~ 
,	OO Ä
null
OOÅ Ö
,
OOÖ Ü
$str
OOá â
,
OOâ ä
false
OOã ê
,
OOê ë
null
OOí ñ
,
OOñ ó
$str
OOò ¢
,
OO¢ £
$num
OO§ ¶
,
OO¶ ß
$num
OO® ™
,
OO™ ´
$str
OO¨ ∂
}
OO∑ ∏
,
OO∏ π
{PP 
newPP 
GuidPP 
(PP 
$strPP E
)PPE F
,PPF G
newPPH K
DateTimePPL T
(PPT U
$numPPU Y
,PPY Z
$numPP[ ]
,PP] ^
$numPP_ `
,PP` a
$numPPb c
,PPc d
$numPPe f
,PPf g
$numPPh i
,PPi j
$numPPk l
,PPl m
DateTimeKindPPn z
.PPz {
UtcPP{ ~
)PP~ 
,	PP Ä
null
PPÅ Ö
,
PPÖ Ü
$str
PPá â
,
PPâ ä
false
PPã ê
,
PPê ë
null
PPí ñ
,
PPñ ó
$str
PPò §
,
PP§ •
$num
PP¶ ®
,
PP® ©
$num
PP™ ¨
,
PP¨ ≠
$str
PPÆ ∏
}
PPπ ∫
,
PP∫ ª
{QQ 
newQQ 
GuidQQ 
(QQ 
$strQQ E
)QQE F
,QQF G
newQQH K
DateTimeQQL T
(QQT U
$numQQU Y
,QQY Z
$numQQ[ ]
,QQ] ^
$numQQ_ `
,QQ` a
$numQQb c
,QQc d
$numQQe f
,QQf g
$numQQh i
,QQi j
$numQQk l
,QQl m
DateTimeKindQQn z
.QQz {
UtcQQ{ ~
)QQ~ 
,	QQ Ä
null
QQÅ Ö
,
QQÖ Ü
$str
QQá â
,
QQâ ä
false
QQã ê
,
QQê ë
null
QQí ñ
,
QQñ ó
$str
QQò £
,
QQ£ §
$num
QQ• ß
,
QQß ®
$num
QQ© ´
,
QQ´ ¨
$str
QQ≠ ∑
}
QQ∏ π
,
QQπ ∫
{RR 
newRR 
GuidRR 
(RR 
$strRR E
)RRE F
,RRF G
newRRH K
DateTimeRRL T
(RRT U
$numRRU Y
,RRY Z
$numRR[ ]
,RR] ^
$numRR_ `
,RR` a
$numRRb c
,RRc d
$numRRe f
,RRf g
$numRRh i
,RRi j
$numRRk l
,RRl m
DateTimeKindRRn z
.RRz {
UtcRR{ ~
)RR~ 
,	RR Ä
null
RRÅ Ö
,
RRÖ Ü
$str
RRá â
,
RRâ ä
false
RRã ê
,
RRê ë
null
RRí ñ
,
RRñ ó
$str
RRò ù
,
RRù û
$num
RRü °
,
RR° ¢
$num
RR£ •
,
RR• ¶
$str
RRß ±
}
RR≤ ≥
,
RR≥ ¥
{SS 
newSS 
GuidSS 
(SS 
$strSS E
)SSE F
,SSF G
newSSH K
DateTimeSSL T
(SST U
$numSSU Y
,SSY Z
$numSS[ ]
,SS] ^
$numSS_ `
,SS` a
$numSSb c
,SSc d
$numSSe f
,SSf g
$numSSh i
,SSi j
$numSSk l
,SSl m
DateTimeKindSSn z
.SSz {
UtcSS{ ~
)SS~ 
,	SS Ä
null
SSÅ Ö
,
SSÖ Ü
$str
SSá â
,
SSâ ä
false
SSã ê
,
SSê ë
null
SSí ñ
,
SSñ ó
$str
SSò §
,
SS§ •
$num
SS¶ ®
,
SS® ©
$num
SS™ ¨
,
SS¨ ≠
$str
SSÆ ∏
}
SSπ ∫
,
SS∫ ª
{TT 
newTT 
GuidTT 
(TT 
$strTT E
)TTE F
,TTF G
newTTH K
DateTimeTTL T
(TTT U
$numTTU Y
,TTY Z
$numTT[ ]
,TT] ^
$numTT_ `
,TT` a
$numTTb c
,TTc d
$numTTe f
,TTf g
$numTTh i
,TTi j
$numTTk l
,TTl m
DateTimeKindTTn z
.TTz {
UtcTT{ ~
)TT~ 
,	TT Ä
null
TTÅ Ö
,
TTÖ Ü
$str
TTá â
,
TTâ ä
false
TTã ê
,
TTê ë
null
TTí ñ
,
TTñ ó
$str
TTò ß
,
TTß ®
$num
TT© ´
,
TT´ ¨
$num
TT≠ Ø
,
TTØ ∞
$str
TT± ª
}
TTº Ω
,
TTΩ æ
{UU 
newUU 
GuidUU 
(UU 
$strUU E
)UUE F
,UUF G
newUUH K
DateTimeUUL T
(UUT U
$numUUU Y
,UUY Z
$numUU[ ]
,UU] ^
$numUU_ `
,UU` a
$numUUb c
,UUc d
$numUUe f
,UUf g
$numUUh i
,UUi j
$numUUk l
,UUl m
DateTimeKindUUn z
.UUz {
UtcUU{ ~
)UU~ 
,	UU Ä
null
UUÅ Ö
,
UUÖ Ü
$str
UUá â
,
UUâ ä
false
UUã ê
,
UUê ë
null
UUí ñ
,
UUñ ó
$str
UUò ¢
,
UU¢ £
$num
UU§ ¶
,
UU¶ ß
$num
UU® ™
,
UU™ ´
$str
UU¨ ∂
}
UU∑ ∏
,
UU∏ π
{VV 
newVV 
GuidVV 
(VV 
$strVV E
)VVE F
,VVF G
newVVH K
DateTimeVVL T
(VVT U
$numVVU Y
,VVY Z
$numVV[ ]
,VV] ^
$numVV_ `
,VV` a
$numVVb c
,VVc d
$numVVe f
,VVf g
$numVVh i
,VVi j
$numVVk l
,VVl m
DateTimeKindVVn z
.VVz {
UtcVV{ ~
)VV~ 
,	VV Ä
null
VVÅ Ö
,
VVÖ Ü
$str
VVá â
,
VVâ ä
false
VVã ê
,
VVê ë
null
VVí ñ
,
VVñ ó
$str
VVò •
,
VV• ¶
$num
VVß ©
,
VV© ™
$num
VV´ ≠
,
VV≠ Æ
$str
VVØ π
}
VV∫ ª
,
VVª º
{WW 
newWW 
GuidWW 
(WW 
$strWW E
)WWE F
,WWF G
newWWH K
DateTimeWWL T
(WWT U
$numWWU Y
,WWY Z
$numWW[ ]
,WW] ^
$numWW_ `
,WW` a
$numWWb c
,WWc d
$numWWe f
,WWf g
$numWWh i
,WWi j
$numWWk l
,WWl m
DateTimeKindWWn z
.WWz {
UtcWW{ ~
)WW~ 
,	WW Ä
null
WWÅ Ö
,
WWÖ Ü
$str
WWá â
,
WWâ ä
false
WWã ê
,
WWê ë
null
WWí ñ
,
WWñ ó
$str
WWò §
,
WW§ •
$num
WW¶ ®
,
WW® ©
$num
WW™ ¨
,
WW¨ ≠
$str
WWÆ ∏
}
WWπ ∫
,
WW∫ ª
{XX 
newXX 
GuidXX 
(XX 
$strXX E
)XXE F
,XXF G
newXXH K
DateTimeXXL T
(XXT U
$numXXU Y
,XXY Z
$numXX[ ]
,XX] ^
$numXX_ `
,XX` a
$numXXb c
,XXc d
$numXXe f
,XXf g
$numXXh i
,XXi j
$numXXk l
,XXl m
DateTimeKindXXn z
.XXz {
UtcXX{ ~
)XX~ 
,	XX Ä
null
XXÅ Ö
,
XXÖ Ü
$str
XXá â
,
XXâ ä
false
XXã ê
,
XXê ë
null
XXí ñ
,
XXñ ó
$str
XXò §
,
XX§ •
$num
XX¶ ®
,
XX® ©
$num
XX™ ¨
,
XX¨ ≠
$str
XXÆ ∏
}
XXπ ∫
,
XX∫ ª
{YY 
newYY 
GuidYY 
(YY 
$strYY E
)YYE F
,YYF G
newYYH K
DateTimeYYL T
(YYT U
$numYYU Y
,YYY Z
$numYY[ ]
,YY] ^
$numYY_ `
,YY` a
$numYYb c
,YYc d
$numYYe f
,YYf g
$numYYh i
,YYi j
$numYYk l
,YYl m
DateTimeKindYYn z
.YYz {
UtcYY{ ~
)YY~ 
,	YY Ä
null
YYÅ Ö
,
YYÖ Ü
$str
YYá â
,
YYâ ä
false
YYã ê
,
YYê ë
null
YYí ñ
,
YYñ ó
$str
YYò ´
,
YY´ ¨
$num
YY≠ Ø
,
YYØ ∞
$num
YY± ≥
,
YY≥ ¥
$str
YYµ ø
}
YY¿ ¡
,
YY¡ ¬
{ZZ 
newZZ 
GuidZZ 
(ZZ 
$strZZ E
)ZZE F
,ZZF G
newZZH K
DateTimeZZL T
(ZZT U
$numZZU Y
,ZZY Z
$numZZ[ ]
,ZZ] ^
$numZZ_ `
,ZZ` a
$numZZb c
,ZZc d
$numZZe f
,ZZf g
$numZZh i
,ZZi j
$numZZk l
,ZZl m
DateTimeKindZZn z
.ZZz {
UtcZZ{ ~
)ZZ~ 
,	ZZ Ä
null
ZZÅ Ö
,
ZZÖ Ü
$str
ZZá â
,
ZZâ ä
false
ZZã ê
,
ZZê ë
null
ZZí ñ
,
ZZñ ó
$str
ZZò °
,
ZZ° ¢
$num
ZZ£ •
,
ZZ• ¶
$num
ZZß ©
,
ZZ© ™
$str
ZZ´ µ
}
ZZ∂ ∑
,
ZZ∑ ∏
{[[ 
new[[ 
Guid[[ 
([[ 
$str[[ E
)[[E F
,[[F G
new[[H K
DateTime[[L T
([[T U
$num[[U Y
,[[Y Z
$num[[[ ]
,[[] ^
$num[[_ `
,[[` a
$num[[b c
,[[c d
$num[[e f
,[[f g
$num[[h i
,[[i j
$num[[k l
,[[l m
DateTimeKind[[n z
.[[z {
Utc[[{ ~
)[[~ 
,	[[ Ä
null
[[Å Ö
,
[[Ö Ü
$str
[[á â
,
[[â ä
false
[[ã ê
,
[[ê ë
null
[[í ñ
,
[[ñ ó
$str
[[ò ´
,
[[´ ¨
$num
[[≠ Ø
,
[[Ø ∞
$num
[[± ≥
,
[[≥ ¥
$str
[[µ ø
}
[[¿ ¡
,
[[¡ ¬
{\\ 
new\\ 
Guid\\ 
(\\ 
$str\\ E
)\\E F
,\\F G
new\\H K
DateTime\\L T
(\\T U
$num\\U Y
,\\Y Z
$num\\[ ]
,\\] ^
$num\\_ `
,\\` a
$num\\b c
,\\c d
$num\\e f
,\\f g
$num\\h i
,\\i j
$num\\k l
,\\l m
DateTimeKind\\n z
.\\z {
Utc\\{ ~
)\\~ 
,	\\ Ä
null
\\Å Ö
,
\\Ö Ü
$str
\\á â
,
\\â ä
false
\\ã ê
,
\\ê ë
null
\\í ñ
,
\\ñ ó
$str
\\ò Ø
,
\\Ø ∞
$num
\\± ≥
,
\\≥ ¥
$num
\\µ ∑
,
\\∑ ∏
$str
\\π ¬
}
\\√ ƒ
,
\\ƒ ≈
{]] 
new]] 
Guid]] 
(]] 
$str]] E
)]]E F
,]]F G
new]]H K
DateTime]]L T
(]]T U
$num]]U Y
,]]Y Z
$num]][ ]
,]]] ^
$num]]_ `
,]]` a
$num]]b c
,]]c d
$num]]e f
,]]f g
$num]]h i
,]]i j
$num]]k l
,]]l m
DateTimeKind]]n z
.]]z {
Utc]]{ ~
)]]~ 
,	]] Ä
null
]]Å Ö
,
]]Ö Ü
$str
]]á â
,
]]â ä
false
]]ã ê
,
]]ê ë
null
]]í ñ
,
]]ñ ó
$str
]]ò ¶
,
]]¶ ß
$num
]]® ™
,
]]™ ´
$num
]]¨ Æ
,
]]Æ Ø
$str
]]∞ π
}
]]∫ ª
,
]]ª º
{^^ 
new^^ 
Guid^^ 
(^^ 
$str^^ E
)^^E F
,^^F G
new^^H K
DateTime^^L T
(^^T U
$num^^U Y
,^^Y Z
$num^^[ ]
,^^] ^
$num^^_ `
,^^` a
$num^^b c
,^^c d
$num^^e f
,^^f g
$num^^h i
,^^i j
$num^^k l
,^^l m
DateTimeKind^^n z
.^^z {
Utc^^{ ~
)^^~ 
,	^^ Ä
null
^^Å Ö
,
^^Ö Ü
$str
^^á â
,
^^â ä
false
^^ã ê
,
^^ê ë
null
^^í ñ
,
^^ñ ó
$str
^^ò £
,
^^£ §
$num
^^• ß
,
^^ß ®
$num
^^© ´
,
^^´ ¨
$str
^^≠ ∂
}
^^∑ ∏
,
^^∏ π
{__ 
new__ 
Guid__ 
(__ 
$str__ E
)__E F
,__F G
new__H K
DateTime__L T
(__T U
$num__U Y
,__Y Z
$num__[ ]
,__] ^
$num___ `
,__` a
$num__b c
,__c d
$num__e f
,__f g
$num__h i
,__i j
$num__k l
,__l m
DateTimeKind__n z
.__z {
Utc__{ ~
)__~ 
,	__ Ä
null
__Å Ö
,
__Ö Ü
$str
__á â
,
__â ä
false
__ã ê
,
__ê ë
null
__í ñ
,
__ñ ó
$str
__ò ß
,
__ß ®
$num
__© ´
,
__´ ¨
$num
__≠ Ø
,
__Ø ∞
$str
__± ∫
}
__ª º
,
__º Ω
{`` 
new`` 
Guid`` 
(`` 
$str`` E
)``E F
,``F G
new``H K
DateTime``L T
(``T U
$num``U Y
,``Y Z
$num``[ ]
,``] ^
$num``_ `
,``` a
$num``b c
,``c d
$num``e f
,``f g
$num``h i
,``i j
$num``k l
,``l m
DateTimeKind``n z
.``z {
Utc``{ ~
)``~ 
,	`` Ä
null
``Å Ö
,
``Ö Ü
$str
``á â
,
``â ä
false
``ã ê
,
``ê ë
null
``í ñ
,
``ñ ó
$str
``ò ¶
,
``¶ ß
$num
``® ™
,
``™ ´
$num
``¨ Æ
,
``Æ Ø
$str
``∞ π
}
``∫ ª
,
``ª º
{aa 
newaa 
Guidaa 
(aa 
$straa E
)aaE F
,aaF G
newaaH K
DateTimeaaL T
(aaT U
$numaaU Y
,aaY Z
$numaa[ ]
,aa] ^
$numaa_ `
,aa` a
$numaab c
,aac d
$numaae f
,aaf g
$numaah i
,aai j
$numaak l
,aal m
DateTimeKindaan z
.aaz {
Utcaa{ ~
)aa~ 
,	aa Ä
null
aaÅ Ö
,
aaÖ Ü
$str
aaá â
,
aaâ ä
false
aaã ê
,
aaê ë
null
aaí ñ
,
aañ ó
$str
aaò ¶
,
aa¶ ß
$num
aa® ™
,
aa™ ´
$num
aa¨ Æ
,
aaÆ Ø
$str
aa∞ π
}
aa∫ ª
,
aaª º
{bb 
newbb 
Guidbb 
(bb 
$strbb E
)bbE F
,bbF G
newbbH K
DateTimebbL T
(bbT U
$numbbU Y
,bbY Z
$numbb[ ]
,bb] ^
$numbb_ `
,bb` a
$numbbb c
,bbc d
$numbbe f
,bbf g
$numbbh i
,bbi j
$numbbk l
,bbl m
DateTimeKindbbn z
.bbz {
Utcbb{ ~
)bb~ 
,	bb Ä
null
bbÅ Ö
,
bbÖ Ü
$str
bbá â
,
bbâ ä
false
bbã ê
,
bbê ë
null
bbí ñ
,
bbñ ó
$str
bbò ¢
,
bb¢ £
$num
bb§ ¶
,
bb¶ ß
$num
bb® ™
,
bb™ ´
$str
bb¨ µ
}
bb∂ ∑
,
bb∑ ∏
{cc 
newcc 
Guidcc 
(cc 
$strcc E
)ccE F
,ccF G
newccH K
DateTimeccL T
(ccT U
$numccU Y
,ccY Z
$numcc[ ]
,cc] ^
$numcc_ `
,cc` a
$numccb c
,ccc d
$numcce f
,ccf g
$numcch i
,cci j
$numcck l
,ccl m
DateTimeKindccn z
.ccz {
Utccc{ ~
)cc~ 
,	cc Ä
null
ccÅ Ö
,
ccÖ Ü
$str
ccá â
,
ccâ ä
false
ccã ê
,
ccê ë
null
ccí ñ
,
ccñ ó
$str
ccò ™
,
cc™ ´
$num
cc¨ Æ
,
ccÆ Ø
$num
cc∞ ≤
,
cc≤ ≥
$str
cc¥ Ω
}
ccæ ø
,
ccø ¿
{dd 
newdd 
Guiddd 
(dd 
$strdd E
)ddE F
,ddF G
newddH K
DateTimeddL T
(ddT U
$numddU Y
,ddY Z
$numdd[ ]
,dd] ^
$numdd_ `
,dd` a
$numddb c
,ddc d
$numdde f
,ddf g
$numddh i
,ddi j
$numddk l
,ddl m
DateTimeKindddn z
.ddz {
Utcdd{ ~
)dd~ 
,	dd Ä
null
ddÅ Ö
,
ddÖ Ü
$str
ddá â
,
ddâ ä
false
ddã ê
,
ddê ë
null
ddí ñ
,
ddñ ó
$str
ddò ™
,
dd™ ´
$num
dd¨ Æ
,
ddÆ Ø
$num
dd∞ ≤
,
dd≤ ≥
$str
dd¥ Ω
}
ddæ ø
,
ddø ¿
{ee 
newee 
Guidee 
(ee 
$stree E
)eeE F
,eeF G
neweeH K
DateTimeeeL T
(eeT U
$numeeU Y
,eeY Z
$numee[ ]
,ee] ^
$numee_ `
,ee` a
$numeeb c
,eec d
$numeee f
,eef g
$numeeh i
,eei j
$numeek l
,eel m
DateTimeKindeen z
.eez {
Utcee{ ~
)ee~ 
,	ee Ä
null
eeÅ Ö
,
eeÖ Ü
$str
eeá â
,
eeâ ä
false
eeã ê
,
eeê ë
null
eeí ñ
,
eeñ ó
$str
eeò ™
,
ee™ ´
$num
ee¨ Æ
,
eeÆ Ø
$num
ee∞ ≤
,
ee≤ ≥
$str
ee¥ Ω
}
eeæ ø
,
eeø ¿
{ff 
newff 
Guidff 
(ff 
$strff E
)ffE F
,ffF G
newffH K
DateTimeffL T
(ffT U
$numffU Y
,ffY Z
$numff[ ]
,ff] ^
$numff_ `
,ff` a
$numffb c
,ffc d
$numffe f
,fff g
$numffh i
,ffi j
$numffk l
,ffl m
DateTimeKindffn z
.ffz {
Utcff{ ~
)ff~ 
,	ff Ä
null
ffÅ Ö
,
ffÖ Ü
$str
ffá â
,
ffâ ä
false
ffã ê
,
ffê ë
null
ffí ñ
,
ffñ ó
$str
ffò ü
,
ffü †
$num
ff° £
,
ff£ §
$num
ff• ß
,
ffß ®
$str
ff© ≤
}
ff≥ ¥
,
ff¥ µ
{gg 
newgg 
Guidgg 
(gg 
$strgg E
)ggE F
,ggF G
newggH K
DateTimeggL T
(ggT U
$numggU Y
,ggY Z
$numgg[ ]
,gg] ^
$numgg_ `
,gg` a
$numggb c
,ggc d
$numgge f
,ggf g
$numggh i
,ggi j
$numggk l
,ggl m
DateTimeKindggn z
.ggz {
Utcgg{ ~
)gg~ 
,	gg Ä
null
ggÅ Ö
,
ggÖ Ü
$str
ggá â
,
ggâ ä
false
ggã ê
,
ggê ë
null
ggí ñ
,
ggñ ó
$str
ggò ®
,
gg® ©
$num
gg™ ¨
,
gg¨ ≠
$num
ggÆ ∞
,
gg∞ ±
$str
gg≤ ª
}
ggº Ω
,
ggΩ æ
{hh 
newhh 
Guidhh 
(hh 
$strhh E
)hhE F
,hhF G
newhhH K
DateTimehhL T
(hhT U
$numhhU Y
,hhY Z
$numhh[ ]
,hh] ^
$numhh_ `
,hh` a
$numhhb c
,hhc d
$numhhe f
,hhf g
$numhhh i
,hhi j
$numhhk l
,hhl m
DateTimeKindhhn z
.hhz {
Utchh{ ~
)hh~ 
,	hh Ä
null
hhÅ Ö
,
hhÖ Ü
$str
hhá â
,
hhâ ä
false
hhã ê
,
hhê ë
null
hhí ñ
,
hhñ ó
$str
hhò ¶
,
hh¶ ß
$num
hh® ™
,
hh™ ´
$num
hh¨ Æ
,
hhÆ Ø
$str
hh∞ π
}
hh∫ ª
,
hhª º
{ii 
newii 
Guidii 
(ii 
$strii E
)iiE F
,iiF G
newiiH K
DateTimeiiL T
(iiT U
$numiiU Y
,iiY Z
$numii[ ]
,ii] ^
$numii_ `
,ii` a
$numiib c
,iic d
$numiie f
,iif g
$numiih i
,iii j
$numiik l
,iil m
DateTimeKindiin z
.iiz {
Utcii{ ~
)ii~ 
,	ii Ä
null
iiÅ Ö
,
iiÖ Ü
$str
iiá â
,
iiâ ä
false
iiã ê
,
iiê ë
null
iií ñ
,
iiñ ó
$str
iiò ±
,
ii± ≤
$num
ii≥ µ
,
iiµ ∂
$num
ii∑ π
,
iiπ ∫
$str
iiª ƒ
}
ii≈ ∆
,
ii∆ «
{jj 
newjj 
Guidjj 
(jj 
$strjj E
)jjE F
,jjF G
newjjH K
DateTimejjL T
(jjT U
$numjjU Y
,jjY Z
$numjj[ ]
,jj] ^
$numjj_ `
,jj` a
$numjjb c
,jjc d
$numjje f
,jjf g
$numjjh i
,jji j
$numjjk l
,jjl m
DateTimeKindjjn z
.jjz {
Utcjj{ ~
)jj~ 
,	jj Ä
null
jjÅ Ö
,
jjÖ Ü
$str
jjá â
,
jjâ ä
false
jjã ê
,
jjê ë
null
jjí ñ
,
jjñ ó
$str
jjò ¨
,
jj¨ ≠
$num
jjÆ ∞
,
jj∞ ±
$num
jj≤ ¥
,
jj¥ µ
$str
jj∂ ø
}
jj¿ ¡
,
jj¡ ¬
{kk 
newkk 
Guidkk 
(kk 
$strkk E
)kkE F
,kkF G
newkkH K
DateTimekkL T
(kkT U
$numkkU Y
,kkY Z
$numkk[ ]
,kk] ^
$numkk_ `
,kk` a
$numkkb c
,kkc d
$numkke f
,kkf g
$numkkh i
,kki j
$numkkk l
,kkl m
DateTimeKindkkn z
.kkz {
Utckk{ ~
)kk~ 
,	kk Ä
null
kkÅ Ö
,
kkÖ Ü
$str
kká â
,
kkâ ä
false
kkã ê
,
kkê ë
null
kkí ñ
,
kkñ ó
$str
kkò ©
,
kk© ™
$num
kk´ ≠
,
kk≠ Æ
$num
kkØ ±
,
kk± ≤
$str
kk≥ º
}
kkΩ æ
,
kkæ ø
{ll 
newll 
Guidll 
(ll 
$strll E
)llE F
,llF G
newllH K
DateTimellL T
(llT U
$numllU Y
,llY Z
$numll[ ]
,ll] ^
$numll_ `
,ll` a
$numllb c
,llc d
$numlle f
,llf g
$numllh i
,lli j
$numllk l
,lll m
DateTimeKindlln z
.llz {
Utcll{ ~
)ll~ 
,	ll Ä
null
llÅ Ö
,
llÖ Ü
$str
llá â
,
llâ ä
false
llã ê
,
llê ë
null
llí ñ
,
llñ ó
$str
llò ©
,
ll© ™
$num
ll´ ≠
,
ll≠ Æ
$num
llØ ±
,
ll± ≤
$str
ll≥ º
}
llΩ æ
,
llæ ø
{mm 
newmm 
Guidmm 
(mm 
$strmm E
)mmE F
,mmF G
newmmH K
DateTimemmL T
(mmT U
$nummmU Y
,mmY Z
$nummm[ ]
,mm] ^
$nummm_ `
,mm` a
$nummmb c
,mmc d
$nummme f
,mmf g
$nummmh i
,mmi j
$nummmk l
,mml m
DateTimeKindmmn z
.mmz {
Utcmm{ ~
)mm~ 
,	mm Ä
null
mmÅ Ö
,
mmÖ Ü
$str
mmá â
,
mmâ ä
false
mmã ê
,
mmê ë
null
mmí ñ
,
mmñ ó
$str
mmò ©
,
mm© ™
$num
mm´ ≠
,
mm≠ Æ
$num
mmØ ±
,
mm± ≤
$str
mm≥ º
}
mmΩ æ
,
mmæ ø
{nn 
newnn 
Guidnn 
(nn 
$strnn E
)nnE F
,nnF G
newnnH K
DateTimennL T
(nnT U
$numnnU Y
,nnY Z
$numnn[ ]
,nn] ^
$numnn_ `
,nn` a
$numnnb c
,nnc d
$numnne f
,nnf g
$numnnh i
,nni j
$numnnk l
,nnl m
DateTimeKindnnn z
.nnz {
Utcnn{ ~
)nn~ 
,	nn Ä
null
nnÅ Ö
,
nnÖ Ü
$str
nná â
,
nnâ ä
false
nnã ê
,
nnê ë
null
nní ñ
,
nnñ ó
$str
nnò ™
,
nn™ ´
$num
nn¨ Æ
,
nnÆ Ø
$num
nn∞ ≤
,
nn≤ ≥
$str
nn¥ Ω
}
nnæ ø
,
nnø ¿
{oo 
newoo 
Guidoo 
(oo 
$stroo E
)ooE F
,ooF G
newooH K
DateTimeooL T
(ooT U
$numooU Y
,ooY Z
$numoo[ ]
,oo] ^
$numoo_ `
,oo` a
$numoob c
,ooc d
$numooe f
,oof g
$numooh i
,ooi j
$numook l
,ool m
DateTimeKindoon z
.ooz {
Utcoo{ ~
)oo~ 
,	oo Ä
null
ooÅ Ö
,
ooÖ Ü
$str
ooá â
,
ooâ ä
false
ooã ê
,
ooê ë
null
ooí ñ
,
ooñ ó
$str
ooò ß
,
ooß ®
$num
oo© ´
,
oo´ ¨
$num
oo≠ Ø
,
ooØ ∞
$str
oo± ∫
}
ooª º
,
ooº Ω
{pp 
newpp 
Guidpp 
(pp 
$strpp E
)ppE F
,ppF G
newppH K
DateTimeppL T
(ppT U
$numppU Y
,ppY Z
$numpp[ ]
,pp] ^
$numpp_ `
,pp` a
$numppb c
,ppc d
$numppe f
,ppf g
$numpph i
,ppi j
$numppk l
,ppl m
DateTimeKindppn z
.ppz {
Utcpp{ ~
)pp~ 
,	pp Ä
null
ppÅ Ö
,
ppÖ Ü
$str
ppá â
,
ppâ ä
false
ppã ê
,
ppê ë
null
ppí ñ
,
ppñ ó
$str
ppò ß
,
ppß ®
$num
pp© ´
,
pp´ ¨
$num
pp≠ Ø
,
ppØ ∞
$str
pp± ∫
}
ppª º
,
ppº Ω
{qq 
newqq 
Guidqq 
(qq 
$strqq E
)qqE F
,qqF G
newqqH K
DateTimeqqL T
(qqT U
$numqqU Y
,qqY Z
$numqq[ ]
,qq] ^
$numqq_ `
,qq` a
$numqqb c
,qqc d
$numqqe f
,qqf g
$numqqh i
,qqi j
$numqqk l
,qql m
DateTimeKindqqn z
.qqz {
Utcqq{ ~
)qq~ 
,	qq Ä
null
qqÅ Ö
,
qqÖ Ü
$str
qqá â
,
qqâ ä
false
qqã ê
,
qqê ë
null
qqí ñ
,
qqñ ó
$str
qqò ß
,
qqß ®
$num
qq© ´
,
qq´ ¨
$num
qq≠ Ø
,
qqØ ∞
$str
qq± ∫
}
qqª º
,
qqº Ω
{rr 
newrr 
Guidrr 
(rr 
$strrr E
)rrE F
,rrF G
newrrH K
DateTimerrL T
(rrT U
$numrrU Y
,rrY Z
$numrr[ ]
,rr] ^
$numrr_ `
,rr` a
$numrrb c
,rrc d
$numrre f
,rrf g
$numrrh i
,rri j
$numrrk l
,rrl m
DateTimeKindrrn z
.rrz {
Utcrr{ ~
)rr~ 
,	rr Ä
null
rrÅ Ö
,
rrÖ Ü
$str
rrá â
,
rrâ ä
false
rrã ê
,
rrê ë
null
rrí ñ
,
rrñ ó
$str
rrò ¨
,
rr¨ ≠
$num
rrÆ ∞
,
rr∞ ±
$num
rr≤ ¥
,
rr¥ µ
$str
rr∂ ø
}
rr¿ ¡
,
rr¡ ¬
{ss 
newss 
Guidss 
(ss 
$strss E
)ssE F
,ssF G
newssH K
DateTimessL T
(ssT U
$numssU Y
,ssY Z
$numss[ ]
,ss] ^
$numss_ `
,ss` a
$numssb c
,ssc d
$numsse f
,ssf g
$numssh i
,ssi j
$numssk l
,ssl m
DateTimeKindssn z
.ssz {
Utcss{ ~
)ss~ 
,	ss Ä
null
ssÅ Ö
,
ssÖ Ü
$str
ssá â
,
ssâ ä
false
ssã ê
,
ssê ë
null
ssí ñ
,
ssñ ó
$str
ssò ´
,
ss´ ¨
$num
ss≠ Ø
,
ssØ ∞
$num
ss± ≥
,
ss≥ ¥
$str
ssµ æ
}
ssø ¿
,
ss¿ ¡
{tt 
newtt 
Guidtt 
(tt 
$strtt E
)ttE F
,ttF G
newttH K
DateTimettL T
(ttT U
$numttU Y
,ttY Z
$numtt[ ]
,tt] ^
$numtt_ `
,tt` a
$numttb c
,ttc d
$numtte f
,ttf g
$numtth i
,tti j
$numttk l
,ttl m
DateTimeKindttn z
.ttz {
Utctt{ ~
)tt~ 
,	tt Ä
null
ttÅ Ö
,
ttÖ Ü
$str
ttá â
,
ttâ ä
false
ttã ê
,
ttê ë
null
ttí ñ
,
ttñ ó
$str
ttò ≠
,
tt≠ Æ
$num
ttØ ±
,
tt± ≤
$num
tt≥ µ
,
ttµ ∂
$str
tt∑ ¿
}
tt¡ ¬
,
tt¬ √
{uu 
newuu 
Guiduu 
(uu 
$struu E
)uuE F
,uuF G
newuuH K
DateTimeuuL T
(uuT U
$numuuU Y
,uuY Z
$numuu[ ]
,uu] ^
$numuu_ `
,uu` a
$numuub c
,uuc d
$numuue f
,uuf g
$numuuh i
,uui j
$numuuk l
,uul m
DateTimeKinduun z
.uuz {
Utcuu{ ~
)uu~ 
,	uu Ä
null
uuÅ Ö
,
uuÖ Ü
$str
uuá â
,
uuâ ä
false
uuã ê
,
uuê ë
null
uuí ñ
,
uuñ ó
$str
uuò Ø
,
uuØ ∞
$num
uu± ≥
,
uu≥ ¥
$num
uuµ ∑
,
uu∑ ∏
$str
uuπ ¬
}
uu√ ƒ
,
uuƒ ≈
{vv 
newvv 
Guidvv 
(vv 
$strvv E
)vvE F
,vvF G
newvvH K
DateTimevvL T
(vvT U
$numvvU Y
,vvY Z
$numvv[ ]
,vv] ^
$numvv_ `
,vv` a
$numvvb c
,vvc d
$numvve f
,vvf g
$numvvh i
,vvi j
$numvvk l
,vvl m
DateTimeKindvvn z
.vvz {
Utcvv{ ~
)vv~ 
,	vv Ä
null
vvÅ Ö
,
vvÖ Ü
$str
vvá â
,
vvâ ä
false
vvã ê
,
vvê ë
null
vví ñ
,
vvñ ó
$str
vvò ¨
,
vv¨ ≠
$num
vvÆ ∞
,
vv∞ ±
$num
vv≤ ¥
,
vv¥ µ
$str
vv∂ ø
}
vv¿ ¡
,
vv¡ ¬
{ww 
newww 
Guidww 
(ww 
$strww E
)wwE F
,wwF G
newwwH K
DateTimewwL T
(wwT U
$numwwU Y
,wwY Z
$numww[ ]
,ww] ^
$numww_ `
,ww` a
$numwwb c
,wwc d
$numwwe f
,wwf g
$numwwh i
,wwi j
$numwwk l
,wwl m
DateTimeKindwwn z
.wwz {
Utcww{ ~
)ww~ 
,	ww Ä
null
wwÅ Ö
,
wwÖ Ü
$str
wwá â
,
wwâ ä
false
wwã ê
,
wwê ë
null
wwí ñ
,
wwñ ó
$str
wwò •
,
ww• ¶
$num
wwß ©
,
ww© ™
$num
ww´ ≠
,
ww≠ Æ
$str
wwØ ∏
}
wwπ ∫
,
ww∫ ª
{xx 
newxx 
Guidxx 
(xx 
$strxx E
)xxE F
,xxF G
newxxH K
DateTimexxL T
(xxT U
$numxxU Y
,xxY Z
$numxx[ ]
,xx] ^
$numxx_ `
,xx` a
$numxxb c
,xxc d
$numxxe f
,xxf g
$numxxh i
,xxi j
$numxxk l
,xxl m
DateTimeKindxxn z
.xxz {
Utcxx{ ~
)xx~ 
,	xx Ä
null
xxÅ Ö
,
xxÖ Ü
$str
xxá â
,
xxâ ä
false
xxã ê
,
xxê ë
null
xxí ñ
,
xxñ ó
$str
xxò ™
,
xx™ ´
$num
xx¨ Æ
,
xxÆ Ø
$num
xx∞ ≤
,
xx≤ ≥
$str
xx¥ Ω
}
xxæ ø
,
xxø ¿
{yy 
newyy 
Guidyy 
(yy 
$stryy E
)yyE F
,yyF G
newyyH K
DateTimeyyL T
(yyT U
$numyyU Y
,yyY Z
$numyy[ ]
,yy] ^
$numyy_ `
,yy` a
$numyyb c
,yyc d
$numyye f
,yyf g
$numyyh i
,yyi j
$numyyk l
,yyl m
DateTimeKindyyn z
.yyz {
Utcyy{ ~
)yy~ 
,	yy Ä
null
yyÅ Ö
,
yyÖ Ü
$str
yyá â
,
yyâ ä
false
yyã ê
,
yyê ë
null
yyí ñ
,
yyñ ó
$str
yyò ©
,
yy© ™
$num
yy´ ≠
,
yy≠ Æ
$num
yyØ ±
,
yy± ≤
$str
yy≥ º
}
yyΩ æ
,
yyæ ø
{zz 
newzz 
Guidzz 
(zz 
$strzz E
)zzE F
,zzF G
newzzH K
DateTimezzL T
(zzT U
$numzzU Y
,zzY Z
$numzz[ ]
,zz] ^
$numzz_ `
,zz` a
$numzzb c
,zzc d
$numzze f
,zzf g
$numzzh i
,zzi j
$numzzk l
,zzl m
DateTimeKindzzn z
.zzz {
Utczz{ ~
)zz~ 
,	zz Ä
null
zzÅ Ö
,
zzÖ Ü
$str
zzá â
,
zzâ ä
false
zzã ê
,
zzê ë
null
zzí ñ
,
zzñ ó
$str
zzò Æ
,
zzÆ Ø
$num
zz∞ ≤
,
zz≤ ≥
$num
zz¥ ∂
,
zz∂ ∑
$str
zz∏ ¡
}
zz¬ √
,
zz√ ƒ
{{{ 
new{{ 
Guid{{ 
({{ 
$str{{ E
){{E F
,{{F G
new{{H K
DateTime{{L T
({{T U
$num{{U Y
,{{Y Z
$num{{[ ]
,{{] ^
$num{{_ `
,{{` a
$num{{b c
,{{c d
$num{{e f
,{{f g
$num{{h i
,{{i j
$num{{k l
,{{l m
DateTimeKind{{n z
.{{z {
Utc{{{ ~
){{~ 
,	{{ Ä
null
{{Å Ö
,
{{Ö Ü
$str
{{á â
,
{{â ä
false
{{ã ê
,
{{ê ë
null
{{í ñ
,
{{ñ ó
$str
{{ò ©
,
{{© ™
$num
{{´ ≠
,
{{≠ Æ
$num
{{Ø ±
,
{{± ≤
$str
{{≥ º
}
{{Ω æ
,
{{æ ø
{|| 
new|| 
Guid|| 
(|| 
$str|| E
)||E F
,||F G
new||H K
DateTime||L T
(||T U
$num||U Y
,||Y Z
$num||[ ]
,||] ^
$num||_ `
,||` a
$num||b c
,||c d
$num||e f
,||f g
$num||h i
,||i j
$num||k l
,||l m
DateTimeKind||n z
.||z {
Utc||{ ~
)||~ 
,	|| Ä
null
||Å Ö
,
||Ö Ü
$str
||á â
,
||â ä
false
||ã ê
,
||ê ë
null
||í ñ
,
||ñ ó
$str
||ò °
,
||° ¢
$num
||£ •
,
||• ¶
$num
||ß ©
,
||© ™
$str
||´ ¥
}
||µ ∂
,
||∂ ∑
{}} 
new}} 
Guid}} 
(}} 
$str}} E
)}}E F
,}}F G
new}}H K
DateTime}}L T
(}}T U
$num}}U Y
,}}Y Z
$num}}[ ]
,}}] ^
$num}}_ `
,}}` a
$num}}b c
,}}c d
$num}}e f
,}}f g
$num}}h i
,}}i j
$num}}k l
,}}l m
DateTimeKind}}n z
.}}z {
Utc}}{ ~
)}}~ 
,	}} Ä
null
}}Å Ö
,
}}Ö Ü
$str
}}á â
,
}}â ä
false
}}ã ê
,
}}ê ë
null
}}í ñ
,
}}ñ ó
$str
}}ò ™
,
}}™ ´
$num
}}¨ Æ
,
}}Æ Ø
$num
}}∞ ≤
,
}}≤ ≥
$str
}}¥ Ω
}
}}æ ø
,
}}ø ¿
{~~ 
new~~ 
Guid~~ 
(~~ 
$str~~ E
)~~E F
,~~F G
new~~H K
DateTime~~L T
(~~T U
$num~~U Y
,~~Y Z
$num~~[ ]
,~~] ^
$num~~_ `
,~~` a
$num~~b c
,~~c d
$num~~e f
,~~f g
$num~~h i
,~~i j
$num~~k l
,~~l m
DateTimeKind~~n z
.~~z {
Utc~~{ ~
)~~~ 
,	~~ Ä
null
~~Å Ö
,
~~Ö Ü
$str
~~á â
,
~~â ä
false
~~ã ê
,
~~ê ë
null
~~í ñ
,
~~ñ ó
$str
~~ò §
,
~~§ •
$num
~~¶ ®
,
~~® ©
$num
~~™ ¨
,
~~¨ ≠
$str
~~Æ ∑
}
~~∏ π
,
~~π ∫
{ 
new 
Guid 
( 
$str E
)E F
,F G
newH K
DateTimeL T
(T U
$numU Y
,Y Z
$num[ ]
,] ^
$num_ `
,` a
$numb c
,c d
$nume f
,f g
$numh i
,i j
$numk l
,l m
DateTimeKindn z
.z {
Utc{ ~
)~ 
,	 Ä
null
Å Ö
,
Ö Ü
$str
á â
,
â ä
false
ã ê
,
ê ë
null
í ñ
,
ñ ó
$str
ò ©
,
© ™
$num
´ ≠
,
≠ Æ
$num
Ø ±
,
± ≤
$str
≥ º
}
Ω æ
,
æ ø
{
ÄÄ 
new
ÄÄ 
Guid
ÄÄ 
(
ÄÄ 
$str
ÄÄ E
)
ÄÄE F
,
ÄÄF G
new
ÄÄH K
DateTime
ÄÄL T
(
ÄÄT U
$num
ÄÄU Y
,
ÄÄY Z
$num
ÄÄ[ ]
,
ÄÄ] ^
$num
ÄÄ_ `
,
ÄÄ` a
$num
ÄÄb c
,
ÄÄc d
$num
ÄÄe f
,
ÄÄf g
$num
ÄÄh i
,
ÄÄi j
$num
ÄÄk l
,
ÄÄl m
DateTimeKind
ÄÄn z
.
ÄÄz {
Utc
ÄÄ{ ~
)
ÄÄ~ 
,ÄÄ Ä
nullÄÄÅ Ö
,ÄÄÖ Ü
$strÄÄá â
,ÄÄâ ä
falseÄÄã ê
,ÄÄê ë
nullÄÄí ñ
,ÄÄñ ó
$strÄÄò §
,ÄÄ§ •
$numÄÄ¶ ®
,ÄÄ® ©
$numÄÄ™ ¨
,ÄÄ¨ ≠
$strÄÄÆ ∑
}ÄÄ∏ π
,ÄÄπ ∫
{
ÅÅ 
new
ÅÅ 
Guid
ÅÅ 
(
ÅÅ 
$str
ÅÅ E
)
ÅÅE F
,
ÅÅF G
new
ÅÅH K
DateTime
ÅÅL T
(
ÅÅT U
$num
ÅÅU Y
,
ÅÅY Z
$num
ÅÅ[ ]
,
ÅÅ] ^
$num
ÅÅ_ `
,
ÅÅ` a
$num
ÅÅb c
,
ÅÅc d
$num
ÅÅe f
,
ÅÅf g
$num
ÅÅh i
,
ÅÅi j
$num
ÅÅk l
,
ÅÅl m
DateTimeKind
ÅÅn z
.
ÅÅz {
Utc
ÅÅ{ ~
)
ÅÅ~ 
,ÅÅ Ä
nullÅÅÅ Ö
,ÅÅÖ Ü
$strÅÅá â
,ÅÅâ ä
falseÅÅã ê
,ÅÅê ë
nullÅÅí ñ
,ÅÅñ ó
$strÅÅò •
,ÅÅ• ¶
$numÅÅß ©
,ÅÅ© ™
$numÅÅ´ ≠
,ÅÅ≠ Æ
$strÅÅØ ∏
}ÅÅπ ∫
,ÅÅ∫ ª
{
ÇÇ 
new
ÇÇ 
Guid
ÇÇ 
(
ÇÇ 
$str
ÇÇ E
)
ÇÇE F
,
ÇÇF G
new
ÇÇH K
DateTime
ÇÇL T
(
ÇÇT U
$num
ÇÇU Y
,
ÇÇY Z
$num
ÇÇ[ ]
,
ÇÇ] ^
$num
ÇÇ_ `
,
ÇÇ` a
$num
ÇÇb c
,
ÇÇc d
$num
ÇÇe f
,
ÇÇf g
$num
ÇÇh i
,
ÇÇi j
$num
ÇÇk l
,
ÇÇl m
DateTimeKind
ÇÇn z
.
ÇÇz {
Utc
ÇÇ{ ~
)
ÇÇ~ 
,ÇÇ Ä
nullÇÇÅ Ö
,ÇÇÖ Ü
$strÇÇá â
,ÇÇâ ä
falseÇÇã ê
,ÇÇê ë
nullÇÇí ñ
,ÇÇñ ó
$strÇÇò ¶
,ÇÇ¶ ß
$numÇÇ® ™
,ÇÇ™ ´
$numÇÇ¨ Æ
,ÇÇÆ Ø
$strÇÇ∞ π
}ÇÇ∫ ª
,ÇÇª º
{
ÉÉ 
new
ÉÉ 
Guid
ÉÉ 
(
ÉÉ 
$str
ÉÉ E
)
ÉÉE F
,
ÉÉF G
new
ÉÉH K
DateTime
ÉÉL T
(
ÉÉT U
$num
ÉÉU Y
,
ÉÉY Z
$num
ÉÉ[ ]
,
ÉÉ] ^
$num
ÉÉ_ `
,
ÉÉ` a
$num
ÉÉb c
,
ÉÉc d
$num
ÉÉe f
,
ÉÉf g
$num
ÉÉh i
,
ÉÉi j
$num
ÉÉk l
,
ÉÉl m
DateTimeKind
ÉÉn z
.
ÉÉz {
Utc
ÉÉ{ ~
)
ÉÉ~ 
,ÉÉ Ä
nullÉÉÅ Ö
,ÉÉÖ Ü
$strÉÉá â
,ÉÉâ ä
falseÉÉã ê
,ÉÉê ë
nullÉÉí ñ
,ÉÉñ ó
$strÉÉò ¶
,ÉÉ¶ ß
$numÉÉ® ™
,ÉÉ™ ´
$numÉÉ¨ Æ
,ÉÉÆ Ø
$strÉÉ∞ π
}ÉÉ∫ ª
,ÉÉª º
{
ÑÑ 
new
ÑÑ 
Guid
ÑÑ 
(
ÑÑ 
$str
ÑÑ E
)
ÑÑE F
,
ÑÑF G
new
ÑÑH K
DateTime
ÑÑL T
(
ÑÑT U
$num
ÑÑU Y
,
ÑÑY Z
$num
ÑÑ[ ]
,
ÑÑ] ^
$num
ÑÑ_ `
,
ÑÑ` a
$num
ÑÑb c
,
ÑÑc d
$num
ÑÑe f
,
ÑÑf g
$num
ÑÑh i
,
ÑÑi j
$num
ÑÑk l
,
ÑÑl m
DateTimeKind
ÑÑn z
.
ÑÑz {
Utc
ÑÑ{ ~
)
ÑÑ~ 
,ÑÑ Ä
nullÑÑÅ Ö
,ÑÑÖ Ü
$strÑÑá â
,ÑÑâ ä
falseÑÑã ê
,ÑÑê ë
nullÑÑí ñ
,ÑÑñ ó
$strÑÑò ™
,ÑÑ™ ´
$numÑÑ¨ Æ
,ÑÑÆ Ø
$numÑÑ∞ ≤
,ÑÑ≤ ≥
$strÑÑ¥ Ω
}ÑÑæ ø
,ÑÑø ¿
{
ÖÖ 
new
ÖÖ 
Guid
ÖÖ 
(
ÖÖ 
$str
ÖÖ E
)
ÖÖE F
,
ÖÖF G
new
ÖÖH K
DateTime
ÖÖL T
(
ÖÖT U
$num
ÖÖU Y
,
ÖÖY Z
$num
ÖÖ[ ]
,
ÖÖ] ^
$num
ÖÖ_ `
,
ÖÖ` a
$num
ÖÖb c
,
ÖÖc d
$num
ÖÖe f
,
ÖÖf g
$num
ÖÖh i
,
ÖÖi j
$num
ÖÖk l
,
ÖÖl m
DateTimeKind
ÖÖn z
.
ÖÖz {
Utc
ÖÖ{ ~
)
ÖÖ~ 
,ÖÖ Ä
nullÖÖÅ Ö
,ÖÖÖ Ü
$strÖÖá â
,ÖÖâ ä
falseÖÖã ê
,ÖÖê ë
nullÖÖí ñ
,ÖÖñ ó
$strÖÖò ∞
,ÖÖ∞ ±
$numÖÖ≤ ¥
,ÖÖ¥ µ
$numÖÖ∂ ∏
,ÖÖ∏ π
$strÖÖ∫ √
}ÖÖƒ ≈
,ÖÖ≈ ∆
{
ÜÜ 
new
ÜÜ 
Guid
ÜÜ 
(
ÜÜ 
$str
ÜÜ E
)
ÜÜE F
,
ÜÜF G
new
ÜÜH K
DateTime
ÜÜL T
(
ÜÜT U
$num
ÜÜU Y
,
ÜÜY Z
$num
ÜÜ[ ]
,
ÜÜ] ^
$num
ÜÜ_ `
,
ÜÜ` a
$num
ÜÜb c
,
ÜÜc d
$num
ÜÜe f
,
ÜÜf g
$num
ÜÜh i
,
ÜÜi j
$num
ÜÜk l
,
ÜÜl m
DateTimeKind
ÜÜn z
.
ÜÜz {
Utc
ÜÜ{ ~
)
ÜÜ~ 
,ÜÜ Ä
nullÜÜÅ Ö
,ÜÜÖ Ü
$strÜÜá â
,ÜÜâ ä
falseÜÜã ê
,ÜÜê ë
nullÜÜí ñ
,ÜÜñ ó
$strÜÜò ∞
,ÜÜ∞ ±
$numÜÜ≤ ¥
,ÜÜ¥ µ
$numÜÜ∂ ∏
,ÜÜ∏ π
$strÜÜ∫ √
}ÜÜƒ ≈
,ÜÜ≈ ∆
{
áá 
new
áá 
Guid
áá 
(
áá 
$str
áá E
)
ááE F
,
ááF G
new
ááH K
DateTime
ááL T
(
ááT U
$num
ááU Y
,
ááY Z
$num
áá[ ]
,
áá] ^
$num
áá_ `
,
áá` a
$num
ááb c
,
áác d
$num
ááe f
,
ááf g
$num
ááh i
,
áái j
$num
áák l
,
áál m
DateTimeKind
áán z
.
ááz {
Utc
áá{ ~
)
áá~ 
,áá Ä
nullááÅ Ö
,ááÖ Ü
$strááá â
,ááâ ä
falseááã ê
,ááê ë
nullááí ñ
,ááñ ó
$strááò ∞
,áá∞ ±
$numáá≤ ¥
,áá¥ µ
$numáá∂ ∏
,áá∏ π
$stráá∫ √
}ááƒ ≈
,áá≈ ∆
{
àà 
new
àà 
Guid
àà 
(
àà 
$str
àà E
)
ààE F
,
ààF G
new
ààH K
DateTime
ààL T
(
ààT U
$num
ààU Y
,
ààY Z
$num
àà[ ]
,
àà] ^
$num
àà_ `
,
àà` a
$num
ààb c
,
ààc d
$num
ààe f
,
ààf g
$num
ààh i
,
àài j
$num
ààk l
,
ààl m
DateTimeKind
ààn z
.
ààz {
Utc
àà{ ~
)
àà~ 
,àà Ä
nullààÅ Ö
,ààÖ Ü
$strààá â
,ààâ ä
falseààã ê
,ààê ë
nullààí ñ
,ààñ ó
$strààò ¢
,àà¢ £
$numàà§ ¶
,àà¶ ß
$numàà® ™
,àà™ ´
$stràà¨ µ
}àà∂ ∑
,àà∑ ∏
{
ââ 
new
ââ 
Guid
ââ 
(
ââ 
$str
ââ E
)
ââE F
,
ââF G
new
ââH K
DateTime
ââL T
(
ââT U
$num
ââU Y
,
ââY Z
$num
ââ[ ]
,
ââ] ^
$num
ââ_ `
,
ââ` a
$num
ââb c
,
ââc d
$num
ââe f
,
ââf g
$num
ââh i
,
ââi j
$num
ââk l
,
ââl m
DateTimeKind
âân z
.
ââz {
Utc
ââ{ ~
)
ââ~ 
,ââ Ä
nullââÅ Ö
,ââÖ Ü
$strââá â
,âââ ä
falseââã ê
,ââê ë
nullââí ñ
,ââñ ó
$strââò ®
,ââ® ©
$numââ™ ¨
,ââ¨ ≠
$numââÆ ∞
,ââ∞ ±
$strââ≤ ª
}ââº Ω
,ââΩ æ
{
ää 
new
ää 
Guid
ää 
(
ää 
$str
ää E
)
ääE F
,
ääF G
new
ääH K
DateTime
ääL T
(
ääT U
$num
ääU Y
,
ääY Z
$num
ää[ ]
,
ää] ^
$num
ää_ `
,
ää` a
$num
ääb c
,
ääc d
$num
ääe f
,
ääf g
$num
ääh i
,
ääi j
$num
ääk l
,
ääl m
DateTimeKind
ään z
.
ääz {
Utc
ää{ ~
)
ää~ 
,ää Ä
nullääÅ Ö
,ääÖ Ü
$strääá â
,ääâ ä
falseääã ê
,ääê ë
nullääí ñ
,ääñ ó
$strääò ™
,ää™ ´
$numää¨ Æ
,ääÆ Ø
$numää∞ ≤
,ää≤ ≥
$strää¥ æ
}ääø ¿
,ää¿ ¡
{
ãã 
new
ãã 
Guid
ãã 
(
ãã 
$str
ãã E
)
ããE F
,
ããF G
new
ããH K
DateTime
ããL T
(
ããT U
$num
ããU Y
,
ããY Z
$num
ãã[ ]
,
ãã] ^
$num
ãã_ `
,
ãã` a
$num
ããb c
,
ããc d
$num
ããe f
,
ããf g
$num
ããh i
,
ããi j
$num
ããk l
,
ããl m
DateTimeKind
ããn z
.
ããz {
Utc
ãã{ ~
)
ãã~ 
,ãã Ä
nullããÅ Ö
,ããÖ Ü
$strããá â
,ããâ ä
falseããã ê
,ããê ë
nullããí ñ
,ããñ ó
$strããò ¶
,ãã¶ ß
$numãã® ™
,ãã™ ´
$numãã¨ Æ
,ããÆ Ø
$strãã∞ π
}ãã∫ ª
,ããª º
{
åå 
new
åå 
Guid
åå 
(
åå 
$str
åå E
)
ååE F
,
ååF G
new
ååH K
DateTime
ååL T
(
ååT U
$num
ååU Y
,
ååY Z
$num
åå[ ]
,
åå] ^
$num
åå_ `
,
åå` a
$num
ååb c
,
ååc d
$num
ååe f
,
ååf g
$num
ååh i
,
ååi j
$num
ååk l
,
åål m
DateTimeKind
åån z
.
ååz {
Utc
åå{ ~
)
åå~ 
,åå Ä
nullååÅ Ö
,ååÖ Ü
$strååá â
,ååâ ä
falseååã ê
,ååê ë
nullååí ñ
,ååñ ó
$strååò ¶
,åå¶ ß
$numåå® ™
,åå™ ´
$numåå¨ Æ
,ååÆ Ø
$stråå∞ π
}åå∫ ª
,ååª º
{
çç 
new
çç 
Guid
çç 
(
çç 
$str
çç E
)
ççE F
,
ççF G
new
ççH K
DateTime
ççL T
(
ççT U
$num
ççU Y
,
ççY Z
$num
çç[ ]
,
çç] ^
$num
çç_ `
,
çç` a
$num
ççb c
,
ççc d
$num
ççe f
,
ççf g
$num
ççh i
,
ççi j
$num
ççk l
,
ççl m
DateTimeKind
ççn z
.
ççz {
Utc
çç{ ~
)
çç~ 
,çç Ä
nullççÅ Ö
,ççÖ Ü
$strççá â
,ççâ ä
falseççã ê
,ççê ë
nullççí ñ
,ççñ ó
$strççò ©
,çç© ™
$numçç´ ≠
,çç≠ Æ
$numççØ ±
,çç± ≤
$strçç≥ º
}ççΩ æ
,ççæ ø
{
éé 
new
éé 
Guid
éé 
(
éé 
$str
éé E
)
ééE F
,
ééF G
new
ééH K
DateTime
ééL T
(
ééT U
$num
ééU Y
,
ééY Z
$num
éé[ ]
,
éé] ^
$num
éé_ `
,
éé` a
$num
ééb c
,
ééc d
$num
éée f
,
ééf g
$num
ééh i
,
ééi j
$num
éék l
,
éél m
DateTimeKind
één z
.
ééz {
Utc
éé{ ~
)
éé~ 
,éé Ä
nullééÅ Ö
,ééÖ Ü
$strééá â
,ééâ ä
falseééã ê
,ééê ë
nullééí ñ
,ééñ ó
$strééò ¶
,éé¶ ß
$numéé® ™
,éé™ ´
$numéé¨ Æ
,ééÆ Ø
$stréé∞ π
}éé∫ ª
,ééª º
{
èè 
new
èè 
Guid
èè 
(
èè 
$str
èè E
)
èèE F
,
èèF G
new
èèH K
DateTime
èèL T
(
èèT U
$num
èèU Y
,
èèY Z
$num
èè[ ]
,
èè] ^
$num
èè_ `
,
èè` a
$num
èèb c
,
èèc d
$num
èèe f
,
èèf g
$num
èèh i
,
èèi j
$num
èèk l
,
èèl m
DateTimeKind
èèn z
.
èèz {
Utc
èè{ ~
)
èè~ 
,èè Ä
nullèèÅ Ö
,èèÖ Ü
$strèèá â
,èèâ ä
falseèèã ê
,èèê ë
nullèèí ñ
,èèñ ó
$strèèò ´
,èè´ ¨
$numèè≠ Ø
,èèØ ∞
$numèè± ≥
,èè≥ ¥
$strèèµ æ
}èèø ¿
,èè¿ ¡
{
êê 
new
êê 
Guid
êê 
(
êê 
$str
êê E
)
êêE F
,
êêF G
new
êêH K
DateTime
êêL T
(
êêT U
$num
êêU Y
,
êêY Z
$num
êê[ ]
,
êê] ^
$num
êê_ `
,
êê` a
$num
êêb c
,
êêc d
$num
êêe f
,
êêf g
$num
êêh i
,
êêi j
$num
êêk l
,
êêl m
DateTimeKind
êên z
.
êêz {
Utc
êê{ ~
)
êê~ 
,êê Ä
nullêêÅ Ö
,êêÖ Ü
$strêêá â
,êêâ ä
falseêêã ê
,êêê ë
nullêêí ñ
,êêñ ó
$strêêò •
,êê• ¶
$numêêß ©
,êê© ™
$numêê´ ≠
,êê≠ Æ
$strêêØ ∏
}êêπ ∫
,êê∫ ª
{
ëë 
new
ëë 
Guid
ëë 
(
ëë 
$str
ëë E
)
ëëE F
,
ëëF G
new
ëëH K
DateTime
ëëL T
(
ëëT U
$num
ëëU Y
,
ëëY Z
$num
ëë[ ]
,
ëë] ^
$num
ëë_ `
,
ëë` a
$num
ëëb c
,
ëëc d
$num
ëëe f
,
ëëf g
$num
ëëh i
,
ëëi j
$num
ëëk l
,
ëël m
DateTimeKind
ëën z
.
ëëz {
Utc
ëë{ ~
)
ëë~ 
,ëë Ä
nullëëÅ Ö
,ëëÖ Ü
$strëëá â
,ëëâ ä
falseëëã ê
,ëëê ë
nullëëí ñ
,ëëñ ó
$strëëò û
,ëëû ü
$numëë† ¢
,ëë¢ £
$numëë§ ¶
,ëë¶ ß
$strëë® ±
}ëë≤ ≥
,ëë≥ ¥
{
íí 
new
íí 
Guid
íí 
(
íí 
$str
íí E
)
ííE F
,
ííF G
new
ííH K
DateTime
ííL T
(
ííT U
$num
ííU Y
,
ííY Z
$num
íí[ ]
,
íí] ^
$num
íí_ `
,
íí` a
$num
ííb c
,
ííc d
$num
ííe f
,
ííf g
$num
ííh i
,
ííi j
$num
íík l
,
ííl m
DateTimeKind
íín z
.
ííz {
Utc
íí{ ~
)
íí~ 
,íí Ä
nullííÅ Ö
,ííÖ Ü
$strííá â
,ííâ ä
falseííã ê
,ííê ë
nullííí ñ
,ííñ ó
$strííò ®
,íí® ©
$numíí™ ¨
,íí¨ ≠
$numííÆ ∞
,íí∞ ±
$stríí≤ ª
}ííº Ω
,ííΩ æ
{
ìì 
new
ìì 
Guid
ìì 
(
ìì 
$str
ìì E
)
ììE F
,
ììF G
new
ììH K
DateTime
ììL T
(
ììT U
$num
ììU Y
,
ììY Z
$num
ìì[ ]
,
ìì] ^
$num
ìì_ `
,
ìì` a
$num
ììb c
,
ììc d
$num
ììe f
,
ììf g
$num
ììh i
,
ììi j
$num
ììk l
,
ììl m
DateTimeKind
ììn z
.
ììz {
Utc
ìì{ ~
)
ìì~ 
,ìì Ä
nullììÅ Ö
,ììÖ Ü
$strììá â
,ììâ ä
falseììã ê
,ììê ë
nullììí ñ
,ììñ ó
$strììò ™
,ìì™ ´
$numìì¨ Æ
,ììÆ Ø
$numìì∞ ≤
,ìì≤ ≥
$strìì¥ Ω
}ììæ ø
,ììø ¿
{
îî 
new
îî 
Guid
îî 
(
îî 
$str
îî E
)
îîE F
,
îîF G
new
îîH K
DateTime
îîL T
(
îîT U
$num
îîU Y
,
îîY Z
$num
îî[ ]
,
îî] ^
$num
îî_ `
,
îî` a
$num
îîb c
,
îîc d
$num
îîe f
,
îîf g
$num
îîh i
,
îîi j
$num
îîk l
,
îîl m
DateTimeKind
îîn z
.
îîz {
Utc
îî{ ~
)
îî~ 
,îî Ä
nullîîÅ Ö
,îîÖ Ü
$strîîá â
,îîâ ä
falseîîã ê
,îîê ë
nullîîí ñ
,îîñ ó
$strîîò ©
,îî© ™
$numîî´ ≠
,îî≠ Æ
$numîîØ ±
,îî± ≤
$strîî≥ º
}îîΩ æ
,îîæ ø
{
ïï 
new
ïï 
Guid
ïï 
(
ïï 
$str
ïï E
)
ïïE F
,
ïïF G
new
ïïH K
DateTime
ïïL T
(
ïïT U
$num
ïïU Y
,
ïïY Z
$num
ïï[ ]
,
ïï] ^
$num
ïï_ `
,
ïï` a
$num
ïïb c
,
ïïc d
$num
ïïe f
,
ïïf g
$num
ïïh i
,
ïïi j
$num
ïïk l
,
ïïl m
DateTimeKind
ïïn z
.
ïïz {
Utc
ïï{ ~
)
ïï~ 
,ïï Ä
nullïïÅ Ö
,ïïÖ Ü
$strïïá â
,ïïâ ä
falseïïã ê
,ïïê ë
nullïïí ñ
,ïïñ ó
$strïïò ™
,ïï™ ´
$numïï¨ Æ
,ïïÆ Ø
$numïï∞ ≤
,ïï≤ ≥
$strïï¥ Ω
}ïïæ ø
,ïïø ¿
{
ññ 
new
ññ 
Guid
ññ 
(
ññ 
$str
ññ E
)
ññE F
,
ññF G
new
ññH K
DateTime
ññL T
(
ññT U
$num
ññU Y
,
ññY Z
$num
ññ[ ]
,
ññ] ^
$num
ññ_ `
,
ññ` a
$num
ññb c
,
ññc d
$num
ññe f
,
ññf g
$num
ññh i
,
ññi j
$num
ññk l
,
ññl m
DateTimeKind
ññn z
.
ññz {
Utc
ññ{ ~
)
ññ~ 
,ññ Ä
nullññÅ Ö
,ññÖ Ü
$strññá â
,ññâ ä
falseññã ê
,ññê ë
nullññí ñ
,ñññ ó
$strññò ©
,ññ© ™
$numññ´ ≠
,ññ≠ Æ
$numññØ ±
,ññ± ≤
$strññ≥ º
}ññΩ æ
,ññæ ø
{
óó 
new
óó 
Guid
óó 
(
óó 
$str
óó E
)
óóE F
,
óóF G
new
óóH K
DateTime
óóL T
(
óóT U
$num
óóU Y
,
óóY Z
$num
óó[ ]
,
óó] ^
$num
óó_ `
,
óó` a
$num
óób c
,
óóc d
$num
óóe f
,
óóf g
$num
óóh i
,
óói j
$num
óók l
,
óól m
DateTimeKind
óón z
.
óóz {
Utc
óó{ ~
)
óó~ 
,óó Ä
nullóóÅ Ö
,óóÖ Ü
$stróóá â
,óóâ ä
falseóóã ê
,óóê ë
nullóóí ñ
,óóñ ó
$stróóò ™
,óó™ ´
$numóó¨ Æ
,óóÆ Ø
$numóó∞ ≤
,óó≤ ≥
$stróó¥ Ω
}óóæ ø
,óóø ¿
{
òò 
new
òò 
Guid
òò 
(
òò 
$str
òò E
)
òòE F
,
òòF G
new
òòH K
DateTime
òòL T
(
òòT U
$num
òòU Y
,
òòY Z
$num
òò[ ]
,
òò] ^
$num
òò_ `
,
òò` a
$num
òòb c
,
òòc d
$num
òòe f
,
òòf g
$num
òòh i
,
òòi j
$num
òòk l
,
òòl m
DateTimeKind
òòn z
.
òòz {
Utc
òò{ ~
)
òò~ 
,òò Ä
nullòòÅ Ö
,òòÖ Ü
$stròòá â
,òòâ ä
falseòòã ê
,òòê ë
nullòòí ñ
,òòñ ó
$stròòò ™
,òò™ ´
$numòò¨ Æ
,òòÆ Ø
$numòò∞ ≤
,òò≤ ≥
$stròò¥ Ω
}òòæ ø
,òòø ¿
{
ôô 
new
ôô 
Guid
ôô 
(
ôô 
$str
ôô E
)
ôôE F
,
ôôF G
new
ôôH K
DateTime
ôôL T
(
ôôT U
$num
ôôU Y
,
ôôY Z
$num
ôô[ ]
,
ôô] ^
$num
ôô_ `
,
ôô` a
$num
ôôb c
,
ôôc d
$num
ôôe f
,
ôôf g
$num
ôôh i
,
ôôi j
$num
ôôk l
,
ôôl m
DateTimeKind
ôôn z
.
ôôz {
Utc
ôô{ ~
)
ôô~ 
,ôô Ä
nullôôÅ Ö
,ôôÖ Ü
$strôôá â
,ôôâ ä
falseôôã ê
,ôôê ë
nullôôí ñ
,ôôñ ó
$strôôò Ø
,ôôØ ∞
$numôô± ≥
,ôô≥ ¥
$numôôµ ∑
,ôô∑ ∏
$strôôπ ¬
}ôô√ ƒ
,ôôƒ ≈
{
öö 
new
öö 
Guid
öö 
(
öö 
$str
öö E
)
ööE F
,
ööF G
new
ööH K
DateTime
ööL T
(
ööT U
$num
ööU Y
,
ööY Z
$num
öö[ ]
,
öö] ^
$num
öö_ `
,
öö` a
$num
ööb c
,
ööc d
$num
ööe f
,
ööf g
$num
ööh i
,
ööi j
$num
öök l
,
ööl m
DateTimeKind
öön z
.
ööz {
Utc
öö{ ~
)
öö~ 
,öö Ä
nullööÅ Ö
,ööÖ Ü
$strööá â
,ööâ ä
falseööã ê
,ööê ë
nullööí ñ
,ööñ ó
$strööò ®
,öö® ©
$numöö™ ¨
,öö¨ ≠
$numööÆ ∞
,öö∞ ±
$ströö≤ ª
}ööº Ω
,ööΩ æ
{
õõ 
new
õõ 
Guid
õõ 
(
õõ 
$str
õõ E
)
õõE F
,
õõF G
new
õõH K
DateTime
õõL T
(
õõT U
$num
õõU Y
,
õõY Z
$num
õõ[ ]
,
õõ] ^
$num
õõ_ `
,
õõ` a
$num
õõb c
,
õõc d
$num
õõe f
,
õõf g
$num
õõh i
,
õõi j
$num
õõk l
,
õõl m
DateTimeKind
õõn z
.
õõz {
Utc
õõ{ ~
)
õõ~ 
,õõ Ä
nullõõÅ Ö
,õõÖ Ü
$strõõá â
,õõâ ä
falseõõã ê
,õõê ë
nullõõí ñ
,õõñ ó
$strõõò ≠
,õõ≠ Æ
$numõõØ ±
,õõ± ≤
$numõõ≥ µ
,õõµ ∂
$strõõ∑ ¿
}õõ¡ ¬
,õõ¬ √
{
úú 
new
úú 
Guid
úú 
(
úú 
$str
úú E
)
úúE F
,
úúF G
new
úúH K
DateTime
úúL T
(
úúT U
$num
úúU Y
,
úúY Z
$num
úú[ ]
,
úú] ^
$num
úú_ `
,
úú` a
$num
úúb c
,
úúc d
$num
úúe f
,
úúf g
$num
úúh i
,
úúi j
$num
úúk l
,
úúl m
DateTimeKind
úún z
.
úúz {
Utc
úú{ ~
)
úú~ 
,úú Ä
nullúúÅ Ö
,úúÖ Ü
$strúúá â
,úúâ ä
falseúúã ê
,úúê ë
nullúúí ñ
,úúñ ó
$strúúò ≠
,úú≠ Æ
$numúúØ ±
,úú± ≤
$numúú≥ µ
,úúµ ∂
$strúú∑ ¿
}úú¡ ¬
,úú¬ √
{
ùù 
new
ùù 
Guid
ùù 
(
ùù 
$str
ùù E
)
ùùE F
,
ùùF G
new
ùùH K
DateTime
ùùL T
(
ùùT U
$num
ùùU Y
,
ùùY Z
$num
ùù[ ]
,
ùù] ^
$num
ùù_ `
,
ùù` a
$num
ùùb c
,
ùùc d
$num
ùùe f
,
ùùf g
$num
ùùh i
,
ùùi j
$num
ùùk l
,
ùùl m
DateTimeKind
ùùn z
.
ùùz {
Utc
ùù{ ~
)
ùù~ 
,ùù Ä
nullùùÅ Ö
,ùùÖ Ü
$strùùá â
,ùùâ ä
falseùùã ê
,ùùê ë
nullùùí ñ
,ùùñ ó
$strùùò ©
,ùù© ™
$numùù´ ≠
,ùù≠ Æ
$numùùØ ±
,ùù± ≤
$strùù≥ º
}ùùΩ æ
,ùùæ ø
{
ûû 
new
ûû 
Guid
ûû 
(
ûû 
$str
ûû E
)
ûûE F
,
ûûF G
new
ûûH K
DateTime
ûûL T
(
ûûT U
$num
ûûU Y
,
ûûY Z
$num
ûû[ ]
,
ûû] ^
$num
ûû_ `
,
ûû` a
$num
ûûb c
,
ûûc d
$num
ûûe f
,
ûûf g
$num
ûûh i
,
ûûi j
$num
ûûk l
,
ûûl m
DateTimeKind
ûûn z
.
ûûz {
Utc
ûû{ ~
)
ûû~ 
,ûû Ä
nullûûÅ Ö
,ûûÖ Ü
$strûûá â
,ûûâ ä
falseûûã ê
,ûûê ë
nullûûí ñ
,ûûñ ó
$strûûò ≠
,ûû≠ Æ
$numûûØ ±
,ûû± ≤
$numûû≥ µ
,ûûµ ∂
$strûû∑ ¿
}ûû¡ ¬
,ûû¬ √
{
üü 
new
üü 
Guid
üü 
(
üü 
$str
üü E
)
üüE F
,
üüF G
new
üüH K
DateTime
üüL T
(
üüT U
$num
üüU Y
,
üüY Z
$num
üü[ ]
,
üü] ^
$num
üü_ `
,
üü` a
$num
üüb c
,
üüc d
$num
üüe f
,
üüf g
$num
üüh i
,
üüi j
$num
üük l
,
üül m
DateTimeKind
üün z
.
üüz {
Utc
üü{ ~
)
üü~ 
,üü Ä
nullüüÅ Ö
,üüÖ Ü
$strüüá â
,üüâ ä
falseüüã ê
,üüê ë
nullüüí ñ
,üüñ ó
$strüüò ´
,üü´ ¨
$numüü≠ Ø
,üüØ ∞
$numüü± ≥
,üü≥ ¥
$strüüµ æ
}üüø ¿
,üü¿ ¡
{
†† 
new
†† 
Guid
†† 
(
†† 
$str
†† E
)
††E F
,
††F G
new
††H K
DateTime
††L T
(
††T U
$num
††U Y
,
††Y Z
$num
††[ ]
,
††] ^
$num
††_ `
,
††` a
$num
††b c
,
††c d
$num
††e f
,
††f g
$num
††h i
,
††i j
$num
††k l
,
††l m
DateTimeKind
††n z
.
††z {
Utc
††{ ~
)
††~ 
,†† Ä
null††Å Ö
,††Ö Ü
$str††á â
,††â ä
false††ã ê
,††ê ë
null††í ñ
,††ñ ó
$str††ò Æ
,††Æ Ø
$num††∞ ≤
,††≤ ≥
$num††¥ ∂
,††∂ ∑
$str††∏ ¡
}††¬ √
,††√ ƒ
{
°° 
new
°° 
Guid
°° 
(
°° 
$str
°° E
)
°°E F
,
°°F G
new
°°H K
DateTime
°°L T
(
°°T U
$num
°°U Y
,
°°Y Z
$num
°°[ ]
,
°°] ^
$num
°°_ `
,
°°` a
$num
°°b c
,
°°c d
$num
°°e f
,
°°f g
$num
°°h i
,
°°i j
$num
°°k l
,
°°l m
DateTimeKind
°°n z
.
°°z {
Utc
°°{ ~
)
°°~ 
,°° Ä
null°°Å Ö
,°°Ö Ü
$str°°á â
,°°â ä
false°°ã ê
,°°ê ë
null°°í ñ
,°°ñ ó
$str°°ò Ø
,°°Ø ∞
$num°°± ≥
,°°≥ ¥
$num°°µ ∑
,°°∑ ∏
$str°°π ¬
}°°√ ƒ
,°°ƒ ≈
{
¢¢ 
new
¢¢ 
Guid
¢¢ 
(
¢¢ 
$str
¢¢ E
)
¢¢E F
,
¢¢F G
new
¢¢H K
DateTime
¢¢L T
(
¢¢T U
$num
¢¢U Y
,
¢¢Y Z
$num
¢¢[ ]
,
¢¢] ^
$num
¢¢_ `
,
¢¢` a
$num
¢¢b c
,
¢¢c d
$num
¢¢e f
,
¢¢f g
$num
¢¢h i
,
¢¢i j
$num
¢¢k l
,
¢¢l m
DateTimeKind
¢¢n z
.
¢¢z {
Utc
¢¢{ ~
)
¢¢~ 
,¢¢ Ä
null¢¢Å Ö
,¢¢Ö Ü
$str¢¢á â
,¢¢â ä
false¢¢ã ê
,¢¢ê ë
null¢¢í ñ
,¢¢ñ ó
$str¢¢ò £
,¢¢£ §
$num¢¢• ß
,¢¢ß ®
$num¢¢© ´
,¢¢´ ¨
$str¢¢≠ ∂
}¢¢∑ ∏
,¢¢∏ π
{
££ 
new
££ 
Guid
££ 
(
££ 
$str
££ E
)
££E F
,
££F G
new
££H K
DateTime
££L T
(
££T U
$num
££U Y
,
££Y Z
$num
££[ ]
,
££] ^
$num
££_ `
,
££` a
$num
££b c
,
££c d
$num
££e f
,
££f g
$num
££h i
,
££i j
$num
££k l
,
££l m
DateTimeKind
££n z
.
££z {
Utc
££{ ~
)
££~ 
,££ Ä
null££Å Ö
,££Ö Ü
$str££á â
,££â ä
false££ã ê
,££ê ë
null££í ñ
,££ñ ó
$str££ò ´
,££´ ¨
$num££≠ Ø
,££Ø ∞
$num££± ≥
,££≥ ¥
$str££µ æ
}££ø ¿
,££¿ ¡
{
§§ 
new
§§ 
Guid
§§ 
(
§§ 
$str
§§ E
)
§§E F
,
§§F G
new
§§H K
DateTime
§§L T
(
§§T U
$num
§§U Y
,
§§Y Z
$num
§§[ ]
,
§§] ^
$num
§§_ `
,
§§` a
$num
§§b c
,
§§c d
$num
§§e f
,
§§f g
$num
§§h i
,
§§i j
$num
§§k l
,
§§l m
DateTimeKind
§§n z
.
§§z {
Utc
§§{ ~
)
§§~ 
,§§ Ä
null§§Å Ö
,§§Ö Ü
$str§§á â
,§§â ä
false§§ã ê
,§§ê ë
null§§í ñ
,§§ñ ó
$str§§ò ü
,§§ü †
$num§§° £
,§§£ §
$num§§• ß
,§§ß ®
$str§§© ≤
}§§≥ ¥
,§§¥ µ
{
•• 
new
•• 
Guid
•• 
(
•• 
$str
•• E
)
••E F
,
••F G
new
••H K
DateTime
••L T
(
••T U
$num
••U Y
,
••Y Z
$num
••[ ]
,
••] ^
$num
••_ `
,
••` a
$num
••b c
,
••c d
$num
••e f
,
••f g
$num
••h i
,
••i j
$num
••k l
,
••l m
DateTimeKind
••n z
.
••z {
Utc
••{ ~
)
••~ 
,•• Ä
null••Å Ö
,••Ö Ü
$str••á â
,••â ä
false••ã ê
,••ê ë
null••í ñ
,••ñ ó
$str••ò ¢
,••¢ £
$num••§ ¶
,••¶ ß
$num••® ™
,••™ ´
$str••¨ µ
}••∂ ∑
,••∑ ∏
{
¶¶ 
new
¶¶ 
Guid
¶¶ 
(
¶¶ 
$str
¶¶ E
)
¶¶E F
,
¶¶F G
new
¶¶H K
DateTime
¶¶L T
(
¶¶T U
$num
¶¶U Y
,
¶¶Y Z
$num
¶¶[ ]
,
¶¶] ^
$num
¶¶_ `
,
¶¶` a
$num
¶¶b c
,
¶¶c d
$num
¶¶e f
,
¶¶f g
$num
¶¶h i
,
¶¶i j
$num
¶¶k l
,
¶¶l m
DateTimeKind
¶¶n z
.
¶¶z {
Utc
¶¶{ ~
)
¶¶~ 
,¶¶ Ä
null¶¶Å Ö
,¶¶Ö Ü
$str¶¶á â
,¶¶â ä
false¶¶ã ê
,¶¶ê ë
null¶¶í ñ
,¶¶ñ ó
$str¶¶ò £
,¶¶£ §
$num¶¶• ß
,¶¶ß ®
$num¶¶© ´
,¶¶´ ¨
$str¶¶≠ ∂
}¶¶∑ ∏
,¶¶∏ π
{
ßß 
new
ßß 
Guid
ßß 
(
ßß 
$str
ßß E
)
ßßE F
,
ßßF G
new
ßßH K
DateTime
ßßL T
(
ßßT U
$num
ßßU Y
,
ßßY Z
$num
ßß[ ]
,
ßß] ^
$num
ßß_ `
,
ßß` a
$num
ßßb c
,
ßßc d
$num
ßße f
,
ßßf g
$num
ßßh i
,
ßßi j
$num
ßßk l
,
ßßl m
DateTimeKind
ßßn z
.
ßßz {
Utc
ßß{ ~
)
ßß~ 
,ßß Ä
nullßßÅ Ö
,ßßÖ Ü
$strßßá â
,ßßâ ä
falseßßã ê
,ßßê ë
nullßßí ñ
,ßßñ ó
$strßßò ß
,ßßß ®
$numßß© ´
,ßß´ ¨
$numßß≠ Ø
,ßßØ ∞
$strßß± ª
}ßßº Ω
}
®® 
)
®® 
;
®® 
}
©© 	
	protected
¨¨ 
override
¨¨ 
void
¨¨ 
Down
¨¨  $
(
¨¨$ %
MigrationBuilder
¨¨% 5
migrationBuilder
¨¨6 F
)
¨¨F G
{
≠≠ 	
migrationBuilder
ÆÆ 
.
ÆÆ 

DeleteData
ÆÆ '
(
ÆÆ' (
table
ØØ 
:
ØØ 
$str
ØØ 
,
ØØ  
	keyColumn
∞∞ 
:
∞∞ 
$str
∞∞ 
,
∞∞  
keyValue
±± 
:
±± 
new
±± 
Guid
±± "
(
±±" #
$str
±±# I
)
±±I J
)
±±J K
;
±±K L
migrationBuilder
≥≥ 
.
≥≥ 

DeleteData
≥≥ '
(
≥≥' (
table
¥¥ 
:
¥¥ 
$str
¥¥ 
,
¥¥  
	keyColumn
µµ 
:
µµ 
$str
µµ 
,
µµ  
keyValue
∂∂ 
:
∂∂ 
new
∂∂ 
Guid
∂∂ "
(
∂∂" #
$str
∂∂# I
)
∂∂I J
)
∂∂J K
;
∂∂K L
migrationBuilder
∏∏ 
.
∏∏ 

DeleteData
∏∏ '
(
∏∏' (
table
ππ 
:
ππ 
$str
ππ 
,
ππ  
	keyColumn
∫∫ 
:
∫∫ 
$str
∫∫ 
,
∫∫  
keyValue
ªª 
:
ªª 
new
ªª 
Guid
ªª "
(
ªª" #
$str
ªª# I
)
ªªI J
)
ªªJ K
;
ªªK L
migrationBuilder
ΩΩ 
.
ΩΩ 

DeleteData
ΩΩ '
(
ΩΩ' (
table
ææ 
:
ææ 
$str
ææ 
,
ææ  
	keyColumn
øø 
:
øø 
$str
øø 
,
øø  
keyValue
¿¿ 
:
¿¿ 
new
¿¿ 
Guid
¿¿ "
(
¿¿" #
$str
¿¿# I
)
¿¿I J
)
¿¿J K
;
¿¿K L
migrationBuilder
¬¬ 
.
¬¬ 

DeleteData
¬¬ '
(
¬¬' (
table
√√ 
:
√√ 
$str
√√ 
,
√√  
	keyColumn
ƒƒ 
:
ƒƒ 
$str
ƒƒ 
,
ƒƒ  
keyValue
≈≈ 
:
≈≈ 
new
≈≈ 
Guid
≈≈ "
(
≈≈" #
$str
≈≈# I
)
≈≈I J
)
≈≈J K
;
≈≈K L
migrationBuilder
«« 
.
«« 

DeleteData
«« '
(
««' (
table
»» 
:
»» 
$str
»» 
,
»»  
	keyColumn
…… 
:
…… 
$str
…… 
,
……  
keyValue
   
:
   
new
   
Guid
   "
(
  " #
$str
  # I
)
  I J
)
  J K
;
  K L
migrationBuilder
ÃÃ 
.
ÃÃ 

DeleteData
ÃÃ '
(
ÃÃ' (
table
ÕÕ 
:
ÕÕ 
$str
ÕÕ 
,
ÕÕ  
	keyColumn
ŒŒ 
:
ŒŒ 
$str
ŒŒ 
,
ŒŒ  
keyValue
œœ 
:
œœ 
new
œœ 
Guid
œœ "
(
œœ" #
$str
œœ# I
)
œœI J
)
œœJ K
;
œœK L
migrationBuilder
—— 
.
—— 

DeleteData
—— '
(
——' (
table
““ 
:
““ 
$str
““ 
,
““  
	keyColumn
”” 
:
”” 
$str
”” 
,
””  
keyValue
‘‘ 
:
‘‘ 
new
‘‘ 
Guid
‘‘ "
(
‘‘" #
$str
‘‘# I
)
‘‘I J
)
‘‘J K
;
‘‘K L
migrationBuilder
÷÷ 
.
÷÷ 

DeleteData
÷÷ '
(
÷÷' (
table
◊◊ 
:
◊◊ 
$str
◊◊ 
,
◊◊  
	keyColumn
ÿÿ 
:
ÿÿ 
$str
ÿÿ 
,
ÿÿ  
keyValue
ŸŸ 
:
ŸŸ 
new
ŸŸ 
Guid
ŸŸ "
(
ŸŸ" #
$str
ŸŸ# I
)
ŸŸI J
)
ŸŸJ K
;
ŸŸK L
migrationBuilder
€€ 
.
€€ 

DeleteData
€€ '
(
€€' (
table
‹‹ 
:
‹‹ 
$str
‹‹ 
,
‹‹  
	keyColumn
›› 
:
›› 
$str
›› 
,
››  
keyValue
ﬁﬁ 
:
ﬁﬁ 
new
ﬁﬁ 
Guid
ﬁﬁ "
(
ﬁﬁ" #
$str
ﬁﬁ# I
)
ﬁﬁI J
)
ﬁﬁJ K
;
ﬁﬁK L
migrationBuilder
‡‡ 
.
‡‡ 

DeleteData
‡‡ '
(
‡‡' (
table
·· 
:
·· 
$str
·· 
,
··  
	keyColumn
‚‚ 
:
‚‚ 
$str
‚‚ 
,
‚‚  
keyValue
„„ 
:
„„ 
new
„„ 
Guid
„„ "
(
„„" #
$str
„„# I
)
„„I J
)
„„J K
;
„„K L
migrationBuilder
ÂÂ 
.
ÂÂ 

DeleteData
ÂÂ '
(
ÂÂ' (
table
ÊÊ 
:
ÊÊ 
$str
ÊÊ 
,
ÊÊ  
	keyColumn
ÁÁ 
:
ÁÁ 
$str
ÁÁ 
,
ÁÁ  
keyValue
ËË 
:
ËË 
new
ËË 
Guid
ËË "
(
ËË" #
$str
ËË# I
)
ËËI J
)
ËËJ K
;
ËËK L
migrationBuilder
ÍÍ 
.
ÍÍ 

DeleteData
ÍÍ '
(
ÍÍ' (
table
ÎÎ 
:
ÎÎ 
$str
ÎÎ 
,
ÎÎ  
	keyColumn
ÏÏ 
:
ÏÏ 
$str
ÏÏ 
,
ÏÏ  
keyValue
ÌÌ 
:
ÌÌ 
new
ÌÌ 
Guid
ÌÌ "
(
ÌÌ" #
$str
ÌÌ# I
)
ÌÌI J
)
ÌÌJ K
;
ÌÌK L
migrationBuilder
ÔÔ 
.
ÔÔ 

DeleteData
ÔÔ '
(
ÔÔ' (
table
 
:
 
$str
 
,
  
	keyColumn
ÒÒ 
:
ÒÒ 
$str
ÒÒ 
,
ÒÒ  
keyValue
ÚÚ 
:
ÚÚ 
new
ÚÚ 
Guid
ÚÚ "
(
ÚÚ" #
$str
ÚÚ# I
)
ÚÚI J
)
ÚÚJ K
;
ÚÚK L
migrationBuilder
ÙÙ 
.
ÙÙ 

DeleteData
ÙÙ '
(
ÙÙ' (
table
ıı 
:
ıı 
$str
ıı 
,
ıı  
	keyColumn
ˆˆ 
:
ˆˆ 
$str
ˆˆ 
,
ˆˆ  
keyValue
˜˜ 
:
˜˜ 
new
˜˜ 
Guid
˜˜ "
(
˜˜" #
$str
˜˜# I
)
˜˜I J
)
˜˜J K
;
˜˜K L
migrationBuilder
˘˘ 
.
˘˘ 

DeleteData
˘˘ '
(
˘˘' (
table
˙˙ 
:
˙˙ 
$str
˙˙ 
,
˙˙  
	keyColumn
˚˚ 
:
˚˚ 
$str
˚˚ 
,
˚˚  
keyValue
¸¸ 
:
¸¸ 
new
¸¸ 
Guid
¸¸ "
(
¸¸" #
$str
¸¸# I
)
¸¸I J
)
¸¸J K
;
¸¸K L
migrationBuilder
˛˛ 
.
˛˛ 

DeleteData
˛˛ '
(
˛˛' (
table
ˇˇ 
:
ˇˇ 
$str
ˇˇ 
,
ˇˇ  
	keyColumn
ÄÄ 
:
ÄÄ 
$str
ÄÄ 
,
ÄÄ  
keyValue
ÅÅ 
:
ÅÅ 
new
ÅÅ 
Guid
ÅÅ "
(
ÅÅ" #
$str
ÅÅ# I
)
ÅÅI J
)
ÅÅJ K
;
ÅÅK L
migrationBuilder
ÉÉ 
.
ÉÉ 

DeleteData
ÉÉ '
(
ÉÉ' (
table
ÑÑ 
:
ÑÑ 
$str
ÑÑ 
,
ÑÑ  
	keyColumn
ÖÖ 
:
ÖÖ 
$str
ÖÖ 
,
ÖÖ  
keyValue
ÜÜ 
:
ÜÜ 
new
ÜÜ 
Guid
ÜÜ "
(
ÜÜ" #
$str
ÜÜ# I
)
ÜÜI J
)
ÜÜJ K
;
ÜÜK L
migrationBuilder
àà 
.
àà 

DeleteData
àà '
(
àà' (
table
ââ 
:
ââ 
$str
ââ 
,
ââ  
	keyColumn
ää 
:
ää 
$str
ää 
,
ää  
keyValue
ãã 
:
ãã 
new
ãã 
Guid
ãã "
(
ãã" #
$str
ãã# I
)
ããI J
)
ããJ K
;
ããK L
migrationBuilder
çç 
.
çç 

DeleteData
çç '
(
çç' (
table
éé 
:
éé 
$str
éé 
,
éé  
	keyColumn
èè 
:
èè 
$str
èè 
,
èè  
keyValue
êê 
:
êê 
new
êê 
Guid
êê "
(
êê" #
$str
êê# I
)
êêI J
)
êêJ K
;
êêK L
migrationBuilder
íí 
.
íí 

DeleteData
íí '
(
íí' (
table
ìì 
:
ìì 
$str
ìì 
,
ìì  
	keyColumn
îî 
:
îî 
$str
îî 
,
îî  
keyValue
ïï 
:
ïï 
new
ïï 
Guid
ïï "
(
ïï" #
$str
ïï# I
)
ïïI J
)
ïïJ K
;
ïïK L
migrationBuilder
óó 
.
óó 

DeleteData
óó '
(
óó' (
table
òò 
:
òò 
$str
òò 
,
òò  
	keyColumn
ôô 
:
ôô 
$str
ôô 
,
ôô  
keyValue
öö 
:
öö 
new
öö 
Guid
öö "
(
öö" #
$str
öö# I
)
ööI J
)
ööJ K
;
ööK L
migrationBuilder
úú 
.
úú 

DeleteData
úú '
(
úú' (
table
ùù 
:
ùù 
$str
ùù 
,
ùù  
	keyColumn
ûû 
:
ûû 
$str
ûû 
,
ûû  
keyValue
üü 
:
üü 
new
üü 
Guid
üü "
(
üü" #
$str
üü# I
)
üüI J
)
üüJ K
;
üüK L
migrationBuilder
°° 
.
°° 

DeleteData
°° '
(
°°' (
table
¢¢ 
:
¢¢ 
$str
¢¢ 
,
¢¢  
	keyColumn
££ 
:
££ 
$str
££ 
,
££  
keyValue
§§ 
:
§§ 
new
§§ 
Guid
§§ "
(
§§" #
$str
§§# I
)
§§I J
)
§§J K
;
§§K L
migrationBuilder
¶¶ 
.
¶¶ 

DeleteData
¶¶ '
(
¶¶' (
table
ßß 
:
ßß 
$str
ßß 
,
ßß  
	keyColumn
®® 
:
®® 
$str
®® 
,
®®  
keyValue
©© 
:
©© 
new
©© 
Guid
©© "
(
©©" #
$str
©©# I
)
©©I J
)
©©J K
;
©©K L
migrationBuilder
´´ 
.
´´ 

DeleteData
´´ '
(
´´' (
table
¨¨ 
:
¨¨ 
$str
¨¨ 
,
¨¨  
	keyColumn
≠≠ 
:
≠≠ 
$str
≠≠ 
,
≠≠  
keyValue
ÆÆ 
:
ÆÆ 
new
ÆÆ 
Guid
ÆÆ "
(
ÆÆ" #
$str
ÆÆ# I
)
ÆÆI J
)
ÆÆJ K
;
ÆÆK L
migrationBuilder
∞∞ 
.
∞∞ 

DeleteData
∞∞ '
(
∞∞' (
table
±± 
:
±± 
$str
±± 
,
±±  
	keyColumn
≤≤ 
:
≤≤ 
$str
≤≤ 
,
≤≤  
keyValue
≥≥ 
:
≥≥ 
new
≥≥ 
Guid
≥≥ "
(
≥≥" #
$str
≥≥# I
)
≥≥I J
)
≥≥J K
;
≥≥K L
migrationBuilder
µµ 
.
µµ 

DeleteData
µµ '
(
µµ' (
table
∂∂ 
:
∂∂ 
$str
∂∂ 
,
∂∂  
	keyColumn
∑∑ 
:
∑∑ 
$str
∑∑ 
,
∑∑  
keyValue
∏∏ 
:
∏∏ 
new
∏∏ 
Guid
∏∏ "
(
∏∏" #
$str
∏∏# I
)
∏∏I J
)
∏∏J K
;
∏∏K L
migrationBuilder
∫∫ 
.
∫∫ 

DeleteData
∫∫ '
(
∫∫' (
table
ªª 
:
ªª 
$str
ªª 
,
ªª  
	keyColumn
ºº 
:
ºº 
$str
ºº 
,
ºº  
keyValue
ΩΩ 
:
ΩΩ 
new
ΩΩ 
Guid
ΩΩ "
(
ΩΩ" #
$str
ΩΩ# I
)
ΩΩI J
)
ΩΩJ K
;
ΩΩK L
migrationBuilder
øø 
.
øø 

DeleteData
øø '
(
øø' (
table
¿¿ 
:
¿¿ 
$str
¿¿ 
,
¿¿  
	keyColumn
¡¡ 
:
¡¡ 
$str
¡¡ 
,
¡¡  
keyValue
¬¬ 
:
¬¬ 
new
¬¬ 
Guid
¬¬ "
(
¬¬" #
$str
¬¬# I
)
¬¬I J
)
¬¬J K
;
¬¬K L
migrationBuilder
ƒƒ 
.
ƒƒ 

DeleteData
ƒƒ '
(
ƒƒ' (
table
≈≈ 
:
≈≈ 
$str
≈≈ 
,
≈≈  
	keyColumn
∆∆ 
:
∆∆ 
$str
∆∆ 
,
∆∆  
keyValue
«« 
:
«« 
new
«« 
Guid
«« "
(
««" #
$str
««# I
)
««I J
)
««J K
;
««K L
migrationBuilder
…… 
.
…… 

DeleteData
…… '
(
……' (
table
   
:
   
$str
   
,
    
	keyColumn
ÀÀ 
:
ÀÀ 
$str
ÀÀ 
,
ÀÀ  
keyValue
ÃÃ 
:
ÃÃ 
new
ÃÃ 
Guid
ÃÃ "
(
ÃÃ" #
$str
ÃÃ# I
)
ÃÃI J
)
ÃÃJ K
;
ÃÃK L
migrationBuilder
ŒŒ 
.
ŒŒ 

DeleteData
ŒŒ '
(
ŒŒ' (
table
œœ 
:
œœ 
$str
œœ 
,
œœ  
	keyColumn
–– 
:
–– 
$str
–– 
,
––  
keyValue
—— 
:
—— 
new
—— 
Guid
—— "
(
——" #
$str
——# I
)
——I J
)
——J K
;
——K L
migrationBuilder
”” 
.
”” 

DeleteData
”” '
(
””' (
table
‘‘ 
:
‘‘ 
$str
‘‘ 
,
‘‘  
	keyColumn
’’ 
:
’’ 
$str
’’ 
,
’’  
keyValue
÷÷ 
:
÷÷ 
new
÷÷ 
Guid
÷÷ "
(
÷÷" #
$str
÷÷# I
)
÷÷I J
)
÷÷J K
;
÷÷K L
migrationBuilder
ÿÿ 
.
ÿÿ 

DeleteData
ÿÿ '
(
ÿÿ' (
table
ŸŸ 
:
ŸŸ 
$str
ŸŸ 
,
ŸŸ  
	keyColumn
⁄⁄ 
:
⁄⁄ 
$str
⁄⁄ 
,
⁄⁄  
keyValue
€€ 
:
€€ 
new
€€ 
Guid
€€ "
(
€€" #
$str
€€# I
)
€€I J
)
€€J K
;
€€K L
migrationBuilder
›› 
.
›› 

DeleteData
›› '
(
››' (
table
ﬁﬁ 
:
ﬁﬁ 
$str
ﬁﬁ 
,
ﬁﬁ  
	keyColumn
ﬂﬂ 
:
ﬂﬂ 
$str
ﬂﬂ 
,
ﬂﬂ  
keyValue
‡‡ 
:
‡‡ 
new
‡‡ 
Guid
‡‡ "
(
‡‡" #
$str
‡‡# I
)
‡‡I J
)
‡‡J K
;
‡‡K L
migrationBuilder
‚‚ 
.
‚‚ 

DeleteData
‚‚ '
(
‚‚' (
table
„„ 
:
„„ 
$str
„„ 
,
„„  
	keyColumn
‰‰ 
:
‰‰ 
$str
‰‰ 
,
‰‰  
keyValue
ÂÂ 
:
ÂÂ 
new
ÂÂ 
Guid
ÂÂ "
(
ÂÂ" #
$str
ÂÂ# I
)
ÂÂI J
)
ÂÂJ K
;
ÂÂK L
migrationBuilder
ÁÁ 
.
ÁÁ 

DeleteData
ÁÁ '
(
ÁÁ' (
table
ËË 
:
ËË 
$str
ËË 
,
ËË  
	keyColumn
ÈÈ 
:
ÈÈ 
$str
ÈÈ 
,
ÈÈ  
keyValue
ÍÍ 
:
ÍÍ 
new
ÍÍ 
Guid
ÍÍ "
(
ÍÍ" #
$str
ÍÍ# I
)
ÍÍI J
)
ÍÍJ K
;
ÍÍK L
migrationBuilder
ÏÏ 
.
ÏÏ 

DeleteData
ÏÏ '
(
ÏÏ' (
table
ÌÌ 
:
ÌÌ 
$str
ÌÌ 
,
ÌÌ  
	keyColumn
ÓÓ 
:
ÓÓ 
$str
ÓÓ 
,
ÓÓ  
keyValue
ÔÔ 
:
ÔÔ 
new
ÔÔ 
Guid
ÔÔ "
(
ÔÔ" #
$str
ÔÔ# I
)
ÔÔI J
)
ÔÔJ K
;
ÔÔK L
migrationBuilder
ÒÒ 
.
ÒÒ 

DeleteData
ÒÒ '
(
ÒÒ' (
table
ÚÚ 
:
ÚÚ 
$str
ÚÚ 
,
ÚÚ  
	keyColumn
ÛÛ 
:
ÛÛ 
$str
ÛÛ 
,
ÛÛ  
keyValue
ÙÙ 
:
ÙÙ 
new
ÙÙ 
Guid
ÙÙ "
(
ÙÙ" #
$str
ÙÙ# I
)
ÙÙI J
)
ÙÙJ K
;
ÙÙK L
migrationBuilder
ˆˆ 
.
ˆˆ 

DeleteData
ˆˆ '
(
ˆˆ' (
table
˜˜ 
:
˜˜ 
$str
˜˜ 
,
˜˜  
	keyColumn
¯¯ 
:
¯¯ 
$str
¯¯ 
,
¯¯  
keyValue
˘˘ 
:
˘˘ 
new
˘˘ 
Guid
˘˘ "
(
˘˘" #
$str
˘˘# I
)
˘˘I J
)
˘˘J K
;
˘˘K L
migrationBuilder
˚˚ 
.
˚˚ 

DeleteData
˚˚ '
(
˚˚' (
table
¸¸ 
:
¸¸ 
$str
¸¸ 
,
¸¸  
	keyColumn
˝˝ 
:
˝˝ 
$str
˝˝ 
,
˝˝  
keyValue
˛˛ 
:
˛˛ 
new
˛˛ 
Guid
˛˛ "
(
˛˛" #
$str
˛˛# I
)
˛˛I J
)
˛˛J K
;
˛˛K L
migrationBuilder
ÄÄ 
.
ÄÄ 

DeleteData
ÄÄ '
(
ÄÄ' (
table
ÅÅ 
:
ÅÅ 
$str
ÅÅ 
,
ÅÅ  
	keyColumn
ÇÇ 
:
ÇÇ 
$str
ÇÇ 
,
ÇÇ  
keyValue
ÉÉ 
:
ÉÉ 
new
ÉÉ 
Guid
ÉÉ "
(
ÉÉ" #
$str
ÉÉ# I
)
ÉÉI J
)
ÉÉJ K
;
ÉÉK L
migrationBuilder
ÖÖ 
.
ÖÖ 

DeleteData
ÖÖ '
(
ÖÖ' (
table
ÜÜ 
:
ÜÜ 
$str
ÜÜ 
,
ÜÜ  
	keyColumn
áá 
:
áá 
$str
áá 
,
áá  
keyValue
àà 
:
àà 
new
àà 
Guid
àà "
(
àà" #
$str
àà# I
)
ààI J
)
ààJ K
;
ààK L
migrationBuilder
ää 
.
ää 

DeleteData
ää '
(
ää' (
table
ãã 
:
ãã 
$str
ãã 
,
ãã  
	keyColumn
åå 
:
åå 
$str
åå 
,
åå  
keyValue
çç 
:
çç 
new
çç 
Guid
çç "
(
çç" #
$str
çç# I
)
ççI J
)
ççJ K
;
ççK L
migrationBuilder
èè 
.
èè 

DeleteData
èè '
(
èè' (
table
êê 
:
êê 
$str
êê 
,
êê  
	keyColumn
ëë 
:
ëë 
$str
ëë 
,
ëë  
keyValue
íí 
:
íí 
new
íí 
Guid
íí "
(
íí" #
$str
íí# I
)
ííI J
)
ííJ K
;
ííK L
migrationBuilder
îî 
.
îî 

DeleteData
îî '
(
îî' (
table
ïï 
:
ïï 
$str
ïï 
,
ïï  
	keyColumn
ññ 
:
ññ 
$str
ññ 
,
ññ  
keyValue
óó 
:
óó 
new
óó 
Guid
óó "
(
óó" #
$str
óó# I
)
óóI J
)
óóJ K
;
óóK L
migrationBuilder
ôô 
.
ôô 

DeleteData
ôô '
(
ôô' (
table
öö 
:
öö 
$str
öö 
,
öö  
	keyColumn
õõ 
:
õõ 
$str
õõ 
,
õõ  
keyValue
úú 
:
úú 
new
úú 
Guid
úú "
(
úú" #
$str
úú# I
)
úúI J
)
úúJ K
;
úúK L
migrationBuilder
ûû 
.
ûû 

DeleteData
ûû '
(
ûû' (
table
üü 
:
üü 
$str
üü 
,
üü  
	keyColumn
†† 
:
†† 
$str
†† 
,
††  
keyValue
°° 
:
°° 
new
°° 
Guid
°° "
(
°°" #
$str
°°# I
)
°°I J
)
°°J K
;
°°K L
migrationBuilder
££ 
.
££ 

DeleteData
££ '
(
££' (
table
§§ 
:
§§ 
$str
§§ 
,
§§  
	keyColumn
•• 
:
•• 
$str
•• 
,
••  
keyValue
¶¶ 
:
¶¶ 
new
¶¶ 
Guid
¶¶ "
(
¶¶" #
$str
¶¶# I
)
¶¶I J
)
¶¶J K
;
¶¶K L
migrationBuilder
®® 
.
®® 

DeleteData
®® '
(
®®' (
table
©© 
:
©© 
$str
©© 
,
©©  
	keyColumn
™™ 
:
™™ 
$str
™™ 
,
™™  
keyValue
´´ 
:
´´ 
new
´´ 
Guid
´´ "
(
´´" #
$str
´´# I
)
´´I J
)
´´J K
;
´´K L
migrationBuilder
≠≠ 
.
≠≠ 

DeleteData
≠≠ '
(
≠≠' (
table
ÆÆ 
:
ÆÆ 
$str
ÆÆ 
,
ÆÆ  
	keyColumn
ØØ 
:
ØØ 
$str
ØØ 
,
ØØ  
keyValue
∞∞ 
:
∞∞ 
new
∞∞ 
Guid
∞∞ "
(
∞∞" #
$str
∞∞# I
)
∞∞I J
)
∞∞J K
;
∞∞K L
migrationBuilder
≤≤ 
.
≤≤ 

DeleteData
≤≤ '
(
≤≤' (
table
≥≥ 
:
≥≥ 
$str
≥≥ 
,
≥≥  
	keyColumn
¥¥ 
:
¥¥ 
$str
¥¥ 
,
¥¥  
keyValue
µµ 
:
µµ 
new
µµ 
Guid
µµ "
(
µµ" #
$str
µµ# I
)
µµI J
)
µµJ K
;
µµK L
migrationBuilder
∑∑ 
.
∑∑ 

DeleteData
∑∑ '
(
∑∑' (
table
∏∏ 
:
∏∏ 
$str
∏∏ 
,
∏∏  
	keyColumn
ππ 
:
ππ 
$str
ππ 
,
ππ  
keyValue
∫∫ 
:
∫∫ 
new
∫∫ 
Guid
∫∫ "
(
∫∫" #
$str
∫∫# I
)
∫∫I J
)
∫∫J K
;
∫∫K L
migrationBuilder
ºº 
.
ºº 

DeleteData
ºº '
(
ºº' (
table
ΩΩ 
:
ΩΩ 
$str
ΩΩ 
,
ΩΩ  
	keyColumn
ææ 
:
ææ 
$str
ææ 
,
ææ  
keyValue
øø 
:
øø 
new
øø 
Guid
øø "
(
øø" #
$str
øø# I
)
øøI J
)
øøJ K
;
øøK L
migrationBuilder
¡¡ 
.
¡¡ 

DeleteData
¡¡ '
(
¡¡' (
table
¬¬ 
:
¬¬ 
$str
¬¬ 
,
¬¬  
	keyColumn
√√ 
:
√√ 
$str
√√ 
,
√√  
keyValue
ƒƒ 
:
ƒƒ 
new
ƒƒ 
Guid
ƒƒ "
(
ƒƒ" #
$str
ƒƒ# I
)
ƒƒI J
)
ƒƒJ K
;
ƒƒK L
migrationBuilder
∆∆ 
.
∆∆ 

DeleteData
∆∆ '
(
∆∆' (
table
«« 
:
«« 
$str
«« 
,
««  
	keyColumn
»» 
:
»» 
$str
»» 
,
»»  
keyValue
…… 
:
…… 
new
…… 
Guid
…… "
(
……" #
$str
……# I
)
……I J
)
……J K
;
……K L
migrationBuilder
ÀÀ 
.
ÀÀ 

DeleteData
ÀÀ '
(
ÀÀ' (
table
ÃÃ 
:
ÃÃ 
$str
ÃÃ 
,
ÃÃ  
	keyColumn
ÕÕ 
:
ÕÕ 
$str
ÕÕ 
,
ÕÕ  
keyValue
ŒŒ 
:
ŒŒ 
new
ŒŒ 
Guid
ŒŒ "
(
ŒŒ" #
$str
ŒŒ# I
)
ŒŒI J
)
ŒŒJ K
;
ŒŒK L
migrationBuilder
–– 
.
–– 

DeleteData
–– '
(
––' (
table
—— 
:
—— 
$str
—— 
,
——  
	keyColumn
““ 
:
““ 
$str
““ 
,
““  
keyValue
”” 
:
”” 
new
”” 
Guid
”” "
(
””" #
$str
””# I
)
””I J
)
””J K
;
””K L
migrationBuilder
’’ 
.
’’ 

DeleteData
’’ '
(
’’' (
table
÷÷ 
:
÷÷ 
$str
÷÷ 
,
÷÷  
	keyColumn
◊◊ 
:
◊◊ 
$str
◊◊ 
,
◊◊  
keyValue
ÿÿ 
:
ÿÿ 
new
ÿÿ 
Guid
ÿÿ "
(
ÿÿ" #
$str
ÿÿ# I
)
ÿÿI J
)
ÿÿJ K
;
ÿÿK L
migrationBuilder
⁄⁄ 
.
⁄⁄ 

DeleteData
⁄⁄ '
(
⁄⁄' (
table
€€ 
:
€€ 
$str
€€ 
,
€€  
	keyColumn
‹‹ 
:
‹‹ 
$str
‹‹ 
,
‹‹  
keyValue
›› 
:
›› 
new
›› 
Guid
›› "
(
››" #
$str
››# I
)
››I J
)
››J K
;
››K L
migrationBuilder
ﬂﬂ 
.
ﬂﬂ 

DeleteData
ﬂﬂ '
(
ﬂﬂ' (
table
‡‡ 
:
‡‡ 
$str
‡‡ 
,
‡‡  
	keyColumn
·· 
:
·· 
$str
·· 
,
··  
keyValue
‚‚ 
:
‚‚ 
new
‚‚ 
Guid
‚‚ "
(
‚‚" #
$str
‚‚# I
)
‚‚I J
)
‚‚J K
;
‚‚K L
migrationBuilder
‰‰ 
.
‰‰ 

DeleteData
‰‰ '
(
‰‰' (
table
ÂÂ 
:
ÂÂ 
$str
ÂÂ 
,
ÂÂ  
	keyColumn
ÊÊ 
:
ÊÊ 
$str
ÊÊ 
,
ÊÊ  
keyValue
ÁÁ 
:
ÁÁ 
new
ÁÁ 
Guid
ÁÁ "
(
ÁÁ" #
$str
ÁÁ# I
)
ÁÁI J
)
ÁÁJ K
;
ÁÁK L
migrationBuilder
ÈÈ 
.
ÈÈ 

DeleteData
ÈÈ '
(
ÈÈ' (
table
ÍÍ 
:
ÍÍ 
$str
ÍÍ 
,
ÍÍ  
	keyColumn
ÎÎ 
:
ÎÎ 
$str
ÎÎ 
,
ÎÎ  
keyValue
ÏÏ 
:
ÏÏ 
new
ÏÏ 
Guid
ÏÏ "
(
ÏÏ" #
$str
ÏÏ# I
)
ÏÏI J
)
ÏÏJ K
;
ÏÏK L
migrationBuilder
ÓÓ 
.
ÓÓ 

DeleteData
ÓÓ '
(
ÓÓ' (
table
ÔÔ 
:
ÔÔ 
$str
ÔÔ 
,
ÔÔ  
	keyColumn
 
:
 
$str
 
,
  
keyValue
ÒÒ 
:
ÒÒ 
new
ÒÒ 
Guid
ÒÒ "
(
ÒÒ" #
$str
ÒÒ# I
)
ÒÒI J
)
ÒÒJ K
;
ÒÒK L
migrationBuilder
ÛÛ 
.
ÛÛ 

DeleteData
ÛÛ '
(
ÛÛ' (
table
ÙÙ 
:
ÙÙ 
$str
ÙÙ 
,
ÙÙ  
	keyColumn
ıı 
:
ıı 
$str
ıı 
,
ıı  
keyValue
ˆˆ 
:
ˆˆ 
new
ˆˆ 
Guid
ˆˆ "
(
ˆˆ" #
$str
ˆˆ# I
)
ˆˆI J
)
ˆˆJ K
;
ˆˆK L
migrationBuilder
¯¯ 
.
¯¯ 

DeleteData
¯¯ '
(
¯¯' (
table
˘˘ 
:
˘˘ 
$str
˘˘ 
,
˘˘  
	keyColumn
˙˙ 
:
˙˙ 
$str
˙˙ 
,
˙˙  
keyValue
˚˚ 
:
˚˚ 
new
˚˚ 
Guid
˚˚ "
(
˚˚" #
$str
˚˚# I
)
˚˚I J
)
˚˚J K
;
˚˚K L
migrationBuilder
˝˝ 
.
˝˝ 

DeleteData
˝˝ '
(
˝˝' (
table
˛˛ 
:
˛˛ 
$str
˛˛ 
,
˛˛  
	keyColumn
ˇˇ 
:
ˇˇ 
$str
ˇˇ 
,
ˇˇ  
keyValue
ÄÄ 
:
ÄÄ 
new
ÄÄ 
Guid
ÄÄ "
(
ÄÄ" #
$str
ÄÄ# I
)
ÄÄI J
)
ÄÄJ K
;
ÄÄK L
migrationBuilder
ÇÇ 
.
ÇÇ 

DeleteData
ÇÇ '
(
ÇÇ' (
table
ÉÉ 
:
ÉÉ 
$str
ÉÉ 
,
ÉÉ  
	keyColumn
ÑÑ 
:
ÑÑ 
$str
ÑÑ 
,
ÑÑ  
keyValue
ÖÖ 
:
ÖÖ 
new
ÖÖ 
Guid
ÖÖ "
(
ÖÖ" #
$str
ÖÖ# I
)
ÖÖI J
)
ÖÖJ K
;
ÖÖK L
migrationBuilder
áá 
.
áá 

DeleteData
áá '
(
áá' (
table
àà 
:
àà 
$str
àà 
,
àà  
	keyColumn
ââ 
:
ââ 
$str
ââ 
,
ââ  
keyValue
ää 
:
ää 
new
ää 
Guid
ää "
(
ää" #
$str
ää# I
)
ääI J
)
ääJ K
;
ääK L
migrationBuilder
åå 
.
åå 

DeleteData
åå '
(
åå' (
table
çç 
:
çç 
$str
çç 
,
çç  
	keyColumn
éé 
:
éé 
$str
éé 
,
éé  
keyValue
èè 
:
èè 
new
èè 
Guid
èè "
(
èè" #
$str
èè# I
)
èèI J
)
èèJ K
;
èèK L
migrationBuilder
ëë 
.
ëë 

DeleteData
ëë '
(
ëë' (
table
íí 
:
íí 
$str
íí 
,
íí  
	keyColumn
ìì 
:
ìì 
$str
ìì 
,
ìì  
keyValue
îî 
:
îî 
new
îî 
Guid
îî "
(
îî" #
$str
îî# I
)
îîI J
)
îîJ K
;
îîK L
migrationBuilder
ññ 
.
ññ 

DeleteData
ññ '
(
ññ' (
table
óó 
:
óó 
$str
óó 
,
óó  
	keyColumn
òò 
:
òò 
$str
òò 
,
òò  
keyValue
ôô 
:
ôô 
new
ôô 
Guid
ôô "
(
ôô" #
$str
ôô# I
)
ôôI J
)
ôôJ K
;
ôôK L
migrationBuilder
õõ 
.
õõ 

DeleteData
õõ '
(
õõ' (
table
úú 
:
úú 
$str
úú 
,
úú  
	keyColumn
ùù 
:
ùù 
$str
ùù 
,
ùù  
keyValue
ûû 
:
ûû 
new
ûû 
Guid
ûû "
(
ûû" #
$str
ûû# I
)
ûûI J
)
ûûJ K
;
ûûK L
migrationBuilder
†† 
.
†† 

DeleteData
†† '
(
††' (
table
°° 
:
°° 
$str
°° 
,
°°  
	keyColumn
¢¢ 
:
¢¢ 
$str
¢¢ 
,
¢¢  
keyValue
££ 
:
££ 
new
££ 
Guid
££ "
(
££" #
$str
££# I
)
££I J
)
££J K
;
££K L
migrationBuilder
•• 
.
•• 

DeleteData
•• '
(
••' (
table
¶¶ 
:
¶¶ 
$str
¶¶ 
,
¶¶  
	keyColumn
ßß 
:
ßß 
$str
ßß 
,
ßß  
keyValue
®® 
:
®® 
new
®® 
Guid
®® "
(
®®" #
$str
®®# I
)
®®I J
)
®®J K
;
®®K L
migrationBuilder
™™ 
.
™™ 

DeleteData
™™ '
(
™™' (
table
´´ 
:
´´ 
$str
´´ 
,
´´  
	keyColumn
¨¨ 
:
¨¨ 
$str
¨¨ 
,
¨¨  
keyValue
≠≠ 
:
≠≠ 
new
≠≠ 
Guid
≠≠ "
(
≠≠" #
$str
≠≠# I
)
≠≠I J
)
≠≠J K
;
≠≠K L
migrationBuilder
ØØ 
.
ØØ 

DeleteData
ØØ '
(
ØØ' (
table
∞∞ 
:
∞∞ 
$str
∞∞ 
,
∞∞  
	keyColumn
±± 
:
±± 
$str
±± 
,
±±  
keyValue
≤≤ 
:
≤≤ 
new
≤≤ 
Guid
≤≤ "
(
≤≤" #
$str
≤≤# I
)
≤≤I J
)
≤≤J K
;
≤≤K L
migrationBuilder
¥¥ 
.
¥¥ 

DeleteData
¥¥ '
(
¥¥' (
table
µµ 
:
µµ 
$str
µµ 
,
µµ  
	keyColumn
∂∂ 
:
∂∂ 
$str
∂∂ 
,
∂∂  
keyValue
∑∑ 
:
∑∑ 
new
∑∑ 
Guid
∑∑ "
(
∑∑" #
$str
∑∑# I
)
∑∑I J
)
∑∑J K
;
∑∑K L
migrationBuilder
ππ 
.
ππ 

DeleteData
ππ '
(
ππ' (
table
∫∫ 
:
∫∫ 
$str
∫∫ 
,
∫∫  
	keyColumn
ªª 
:
ªª 
$str
ªª 
,
ªª  
keyValue
ºº 
:
ºº 
new
ºº 
Guid
ºº "
(
ºº" #
$str
ºº# I
)
ººI J
)
ººJ K
;
ººK L
migrationBuilder
ææ 
.
ææ 

DeleteData
ææ '
(
ææ' (
table
øø 
:
øø 
$str
øø 
,
øø  
	keyColumn
¿¿ 
:
¿¿ 
$str
¿¿ 
,
¿¿  
keyValue
¡¡ 
:
¡¡ 
new
¡¡ 
Guid
¡¡ "
(
¡¡" #
$str
¡¡# I
)
¡¡I J
)
¡¡J K
;
¡¡K L
migrationBuilder
√√ 
.
√√ 

DeleteData
√√ '
(
√√' (
table
ƒƒ 
:
ƒƒ 
$str
ƒƒ 
,
ƒƒ  
	keyColumn
≈≈ 
:
≈≈ 
$str
≈≈ 
,
≈≈  
keyValue
∆∆ 
:
∆∆ 
new
∆∆ 
Guid
∆∆ "
(
∆∆" #
$str
∆∆# I
)
∆∆I J
)
∆∆J K
;
∆∆K L
migrationBuilder
»» 
.
»» 

DeleteData
»» '
(
»»' (
table
…… 
:
…… 
$str
…… 
,
……  
	keyColumn
   
:
   
$str
   
,
    
keyValue
ÀÀ 
:
ÀÀ 
new
ÀÀ 
Guid
ÀÀ "
(
ÀÀ" #
$str
ÀÀ# I
)
ÀÀI J
)
ÀÀJ K
;
ÀÀK L
migrationBuilder
ÕÕ 
.
ÕÕ 

DeleteData
ÕÕ '
(
ÕÕ' (
table
ŒŒ 
:
ŒŒ 
$str
ŒŒ 
,
ŒŒ  
	keyColumn
œœ 
:
œœ 
$str
œœ 
,
œœ  
keyValue
–– 
:
–– 
new
–– 
Guid
–– "
(
––" #
$str
––# I
)
––I J
)
––J K
;
––K L
migrationBuilder
““ 
.
““ 

DeleteData
““ '
(
““' (
table
”” 
:
”” 
$str
”” 
,
””  
	keyColumn
‘‘ 
:
‘‘ 
$str
‘‘ 
,
‘‘  
keyValue
’’ 
:
’’ 
new
’’ 
Guid
’’ "
(
’’" #
$str
’’# I
)
’’I J
)
’’J K
;
’’K L
migrationBuilder
◊◊ 
.
◊◊ 

DeleteData
◊◊ '
(
◊◊' (
table
ÿÿ 
:
ÿÿ 
$str
ÿÿ 
,
ÿÿ  
	keyColumn
ŸŸ 
:
ŸŸ 
$str
ŸŸ 
,
ŸŸ  
keyValue
⁄⁄ 
:
⁄⁄ 
new
⁄⁄ 
Guid
⁄⁄ "
(
⁄⁄" #
$str
⁄⁄# I
)
⁄⁄I J
)
⁄⁄J K
;
⁄⁄K L
migrationBuilder
‹‹ 
.
‹‹ 

DeleteData
‹‹ '
(
‹‹' (
table
›› 
:
›› 
$str
›› 
,
››  
	keyColumn
ﬁﬁ 
:
ﬁﬁ 
$str
ﬁﬁ 
,
ﬁﬁ  
keyValue
ﬂﬂ 
:
ﬂﬂ 
new
ﬂﬂ 
Guid
ﬂﬂ "
(
ﬂﬂ" #
$str
ﬂﬂ# I
)
ﬂﬂI J
)
ﬂﬂJ K
;
ﬂﬂK L
migrationBuilder
·· 
.
·· 

DeleteData
·· '
(
··' (
table
‚‚ 
:
‚‚ 
$str
‚‚ 
,
‚‚  
	keyColumn
„„ 
:
„„ 
$str
„„ 
,
„„  
keyValue
‰‰ 
:
‰‰ 
new
‰‰ 
Guid
‰‰ "
(
‰‰" #
$str
‰‰# I
)
‰‰I J
)
‰‰J K
;
‰‰K L
migrationBuilder
ÊÊ 
.
ÊÊ 

DeleteData
ÊÊ '
(
ÊÊ' (
table
ÁÁ 
:
ÁÁ 
$str
ÁÁ 
,
ÁÁ  
	keyColumn
ËË 
:
ËË 
$str
ËË 
,
ËË  
keyValue
ÈÈ 
:
ÈÈ 
new
ÈÈ 
Guid
ÈÈ "
(
ÈÈ" #
$str
ÈÈ# I
)
ÈÈI J
)
ÈÈJ K
;
ÈÈK L
migrationBuilder
ÎÎ 
.
ÎÎ 

DeleteData
ÎÎ '
(
ÎÎ' (
table
ÏÏ 
:
ÏÏ 
$str
ÏÏ 
,
ÏÏ  
	keyColumn
ÌÌ 
:
ÌÌ 
$str
ÌÌ 
,
ÌÌ  
keyValue
ÓÓ 
:
ÓÓ 
new
ÓÓ 
Guid
ÓÓ "
(
ÓÓ" #
$str
ÓÓ# I
)
ÓÓI J
)
ÓÓJ K
;
ÓÓK L
migrationBuilder
 
.
 

DeleteData
 '
(
' (
table
ÒÒ 
:
ÒÒ 
$str
ÒÒ 
,
ÒÒ  
	keyColumn
ÚÚ 
:
ÚÚ 
$str
ÚÚ 
,
ÚÚ  
keyValue
ÛÛ 
:
ÛÛ 
new
ÛÛ 
Guid
ÛÛ "
(
ÛÛ" #
$str
ÛÛ# I
)
ÛÛI J
)
ÛÛJ K
;
ÛÛK L
migrationBuilder
ıı 
.
ıı 

DeleteData
ıı '
(
ıı' (
table
ˆˆ 
:
ˆˆ 
$str
ˆˆ 
,
ˆˆ  
	keyColumn
˜˜ 
:
˜˜ 
$str
˜˜ 
,
˜˜  
keyValue
¯¯ 
:
¯¯ 
new
¯¯ 
Guid
¯¯ "
(
¯¯" #
$str
¯¯# I
)
¯¯I J
)
¯¯J K
;
¯¯K L
migrationBuilder
˙˙ 
.
˙˙ 

DeleteData
˙˙ '
(
˙˙' (
table
˚˚ 
:
˚˚ 
$str
˚˚ 
,
˚˚  
	keyColumn
¸¸ 
:
¸¸ 
$str
¸¸ 
,
¸¸  
keyValue
˝˝ 
:
˝˝ 
new
˝˝ 
Guid
˝˝ "
(
˝˝" #
$str
˝˝# I
)
˝˝I J
)
˝˝J K
;
˝˝K L
migrationBuilder
ˇˇ 
.
ˇˇ 

DeleteData
ˇˇ '
(
ˇˇ' (
table
ÄÄ 
:
ÄÄ 
$str
ÄÄ 
,
ÄÄ  
	keyColumn
ÅÅ 
:
ÅÅ 
$str
ÅÅ 
,
ÅÅ  
keyValue
ÇÇ 
:
ÇÇ 
new
ÇÇ 
Guid
ÇÇ "
(
ÇÇ" #
$str
ÇÇ# I
)
ÇÇI J
)
ÇÇJ K
;
ÇÇK L
migrationBuilder
ÑÑ 
.
ÑÑ 

DeleteData
ÑÑ '
(
ÑÑ' (
table
ÖÖ 
:
ÖÖ 
$str
ÖÖ 
,
ÖÖ  
	keyColumn
ÜÜ 
:
ÜÜ 
$str
ÜÜ 
,
ÜÜ  
keyValue
áá 
:
áá 
new
áá 
Guid
áá "
(
áá" #
$str
áá# I
)
ááI J
)
ááJ K
;
ááK L
migrationBuilder
ââ 
.
ââ 

DeleteData
ââ '
(
ââ' (
table
ää 
:
ää 
$str
ää 
,
ää  
	keyColumn
ãã 
:
ãã 
$str
ãã 
,
ãã  
keyValue
åå 
:
åå 
new
åå 
Guid
åå "
(
åå" #
$str
åå# I
)
ååI J
)
ååJ K
;
ååK L
migrationBuilder
éé 
.
éé 

DeleteData
éé '
(
éé' (
table
èè 
:
èè 
$str
èè 
,
èè  
	keyColumn
êê 
:
êê 
$str
êê 
,
êê  
keyValue
ëë 
:
ëë 
new
ëë 
Guid
ëë "
(
ëë" #
$str
ëë# I
)
ëëI J
)
ëëJ K
;
ëëK L
migrationBuilder
ìì 
.
ìì 

DeleteData
ìì '
(
ìì' (
table
îî 
:
îî 
$str
îî 
,
îî  
	keyColumn
ïï 
:
ïï 
$str
ïï 
,
ïï  
keyValue
ññ 
:
ññ 
new
ññ 
Guid
ññ "
(
ññ" #
$str
ññ# I
)
ññI J
)
ññJ K
;
ññK L
migrationBuilder
òò 
.
òò 

DeleteData
òò '
(
òò' (
table
ôô 
:
ôô 
$str
ôô 
,
ôô  
	keyColumn
öö 
:
öö 
$str
öö 
,
öö  
keyValue
õõ 
:
õõ 
new
õõ 
Guid
õõ "
(
õõ" #
$str
õõ# I
)
õõI J
)
õõJ K
;
õõK L
migrationBuilder
ùù 
.
ùù 

DeleteData
ùù '
(
ùù' (
table
ûû 
:
ûû 
$str
ûû 
,
ûû  
	keyColumn
üü 
:
üü 
$str
üü 
,
üü  
keyValue
†† 
:
†† 
new
†† 
Guid
†† "
(
††" #
$str
††# I
)
††I J
)
††J K
;
††K L
migrationBuilder
¢¢ 
.
¢¢ 

DeleteData
¢¢ '
(
¢¢' (
table
££ 
:
££ 
$str
££ 
,
££  
	keyColumn
§§ 
:
§§ 
$str
§§ 
,
§§  
keyValue
•• 
:
•• 
new
•• 
Guid
•• "
(
••" #
$str
••# I
)
••I J
)
••J K
;
••K L
migrationBuilder
ßß 
.
ßß 

DeleteData
ßß '
(
ßß' (
table
®® 
:
®® 
$str
®® 
,
®®  
	keyColumn
©© 
:
©© 
$str
©© 
,
©©  
keyValue
™™ 
:
™™ 
new
™™ 
Guid
™™ "
(
™™" #
$str
™™# I
)
™™I J
)
™™J K
;
™™K L
migrationBuilder
¨¨ 
.
¨¨ 

DeleteData
¨¨ '
(
¨¨' (
table
≠≠ 
:
≠≠ 
$str
≠≠ 
,
≠≠  
	keyColumn
ÆÆ 
:
ÆÆ 
$str
ÆÆ 
,
ÆÆ  
keyValue
ØØ 
:
ØØ 
new
ØØ 
Guid
ØØ "
(
ØØ" #
$str
ØØ# I
)
ØØI J
)
ØØJ K
;
ØØK L
migrationBuilder
±± 
.
±± 

DeleteData
±± '
(
±±' (
table
≤≤ 
:
≤≤ 
$str
≤≤ 
,
≤≤  
	keyColumn
≥≥ 
:
≥≥ 
$str
≥≥ 
,
≥≥  
keyValue
¥¥ 
:
¥¥ 
new
¥¥ 
Guid
¥¥ "
(
¥¥" #
$str
¥¥# I
)
¥¥I J
)
¥¥J K
;
¥¥K L
migrationBuilder
∂∂ 
.
∂∂ 

DeleteData
∂∂ '
(
∂∂' (
table
∑∑ 
:
∑∑ 
$str
∑∑ 
,
∑∑  
	keyColumn
∏∏ 
:
∏∏ 
$str
∏∏ 
,
∏∏  
keyValue
ππ 
:
ππ 
new
ππ 
Guid
ππ "
(
ππ" #
$str
ππ# I
)
ππI J
)
ππJ K
;
ππK L
migrationBuilder
ªª 
.
ªª 

DeleteData
ªª '
(
ªª' (
table
ºº 
:
ºº 
$str
ºº 
,
ºº  
	keyColumn
ΩΩ 
:
ΩΩ 
$str
ΩΩ 
,
ΩΩ  
keyValue
ææ 
:
ææ 
new
ææ 
Guid
ææ "
(
ææ" #
$str
ææ# I
)
ææI J
)
ææJ K
;
ææK L
migrationBuilder
¿¿ 
.
¿¿ 

DeleteData
¿¿ '
(
¿¿' (
table
¡¡ 
:
¡¡ 
$str
¡¡ 
,
¡¡  
	keyColumn
¬¬ 
:
¬¬ 
$str
¬¬ 
,
¬¬  
keyValue
√√ 
:
√√ 
new
√√ 
Guid
√√ "
(
√√" #
$str
√√# I
)
√√I J
)
√√J K
;
√√K L
migrationBuilder
≈≈ 
.
≈≈ 

DeleteData
≈≈ '
(
≈≈' (
table
∆∆ 
:
∆∆ 
$str
∆∆ 
,
∆∆  
	keyColumn
«« 
:
«« 
$str
«« 
,
««  
keyValue
»» 
:
»» 
new
»» 
Guid
»» "
(
»»" #
$str
»»# I
)
»»I J
)
»»J K
;
»»K L
migrationBuilder
   
.
   

DeleteData
   '
(
  ' (
table
ÀÀ 
:
ÀÀ 
$str
ÀÀ 
,
ÀÀ  
	keyColumn
ÃÃ 
:
ÃÃ 
$str
ÃÃ 
,
ÃÃ  
keyValue
ÕÕ 
:
ÕÕ 
new
ÕÕ 
Guid
ÕÕ "
(
ÕÕ" #
$str
ÕÕ# I
)
ÕÕI J
)
ÕÕJ K
;
ÕÕK L
migrationBuilder
œœ 
.
œœ 

DeleteData
œœ '
(
œœ' (
table
–– 
:
–– 
$str
–– 
,
––  
	keyColumn
—— 
:
—— 
$str
—— 
,
——  
keyValue
““ 
:
““ 
new
““ 
Guid
““ "
(
““" #
$str
““# I
)
““I J
)
““J K
;
““K L
migrationBuilder
‘‘ 
.
‘‘ 

DeleteData
‘‘ '
(
‘‘' (
table
’’ 
:
’’ 
$str
’’ 
,
’’  
	keyColumn
÷÷ 
:
÷÷ 
$str
÷÷ 
,
÷÷  
keyValue
◊◊ 
:
◊◊ 
new
◊◊ 
Guid
◊◊ "
(
◊◊" #
$str
◊◊# I
)
◊◊I J
)
◊◊J K
;
◊◊K L
migrationBuilder
ŸŸ 
.
ŸŸ 

DeleteData
ŸŸ '
(
ŸŸ' (
table
⁄⁄ 
:
⁄⁄ 
$str
⁄⁄ 
,
⁄⁄  
	keyColumn
€€ 
:
€€ 
$str
€€ 
,
€€  
keyValue
‹‹ 
:
‹‹ 
new
‹‹ 
Guid
‹‹ "
(
‹‹" #
$str
‹‹# I
)
‹‹I J
)
‹‹J K
;
‹‹K L
migrationBuilder
ﬁﬁ 
.
ﬁﬁ 

DeleteData
ﬁﬁ '
(
ﬁﬁ' (
table
ﬂﬂ 
:
ﬂﬂ 
$str
ﬂﬂ 
,
ﬂﬂ  
	keyColumn
‡‡ 
:
‡‡ 
$str
‡‡ 
,
‡‡  
keyValue
·· 
:
·· 
new
·· 
Guid
·· "
(
··" #
$str
··# I
)
··I J
)
··J K
;
··K L
migrationBuilder
„„ 
.
„„ 

DeleteData
„„ '
(
„„' (
table
‰‰ 
:
‰‰ 
$str
‰‰ 
,
‰‰  
	keyColumn
ÂÂ 
:
ÂÂ 
$str
ÂÂ 
,
ÂÂ  
keyValue
ÊÊ 
:
ÊÊ 
new
ÊÊ 
Guid
ÊÊ "
(
ÊÊ" #
$str
ÊÊ# I
)
ÊÊI J
)
ÊÊJ K
;
ÊÊK L
migrationBuilder
ËË 
.
ËË 

DeleteData
ËË '
(
ËË' (
table
ÈÈ 
:
ÈÈ 
$str
ÈÈ 
,
ÈÈ  
	keyColumn
ÍÍ 
:
ÍÍ 
$str
ÍÍ 
,
ÍÍ  
keyValue
ÎÎ 
:
ÎÎ 
new
ÎÎ 
Guid
ÎÎ "
(
ÎÎ" #
$str
ÎÎ# I
)
ÎÎI J
)
ÎÎJ K
;
ÎÎK L
migrationBuilder
ÌÌ 
.
ÌÌ 

DeleteData
ÌÌ '
(
ÌÌ' (
table
ÓÓ 
:
ÓÓ 
$str
ÓÓ 
,
ÓÓ  
	keyColumn
ÔÔ 
:
ÔÔ 
$str
ÔÔ 
,
ÔÔ  
keyValue
 
:
 
new
 
Guid
 "
(
" #
$str
# I
)
I J
)
J K
;
K L
migrationBuilder
ÚÚ 
.
ÚÚ 

DeleteData
ÚÚ '
(
ÚÚ' (
table
ÛÛ 
:
ÛÛ 
$str
ÛÛ 
,
ÛÛ  
	keyColumn
ÙÙ 
:
ÙÙ 
$str
ÙÙ 
,
ÙÙ  
keyValue
ıı 
:
ıı 
new
ıı 
Guid
ıı "
(
ıı" #
$str
ıı# I
)
ııI J
)
ııJ K
;
ııK L
migrationBuilder
˜˜ 
.
˜˜ 

DeleteData
˜˜ '
(
˜˜' (
table
¯¯ 
:
¯¯ 
$str
¯¯ 
,
¯¯  
	keyColumn
˘˘ 
:
˘˘ 
$str
˘˘ 
,
˘˘  
keyValue
˙˙ 
:
˙˙ 
new
˙˙ 
Guid
˙˙ "
(
˙˙" #
$str
˙˙# I
)
˙˙I J
)
˙˙J K
;
˙˙K L
migrationBuilder
¸¸ 
.
¸¸ 

DeleteData
¸¸ '
(
¸¸' (
table
˝˝ 
:
˝˝ 
$str
˝˝ 
,
˝˝  
	keyColumn
˛˛ 
:
˛˛ 
$str
˛˛ 
,
˛˛  
keyValue
ˇˇ 
:
ˇˇ 
new
ˇˇ 
Guid
ˇˇ "
(
ˇˇ" #
$str
ˇˇ# I
)
ˇˇI J
)
ˇˇJ K
;
ˇˇK L
migrationBuilder
ÅÅ 
.
ÅÅ 

DeleteData
ÅÅ '
(
ÅÅ' (
table
ÇÇ 
:
ÇÇ 
$str
ÇÇ 
,
ÇÇ  
	keyColumn
ÉÉ 
:
ÉÉ 
$str
ÉÉ 
,
ÉÉ  
keyValue
ÑÑ 
:
ÑÑ 
new
ÑÑ 
Guid
ÑÑ "
(
ÑÑ" #
$str
ÑÑ# I
)
ÑÑI J
)
ÑÑJ K
;
ÑÑK L
migrationBuilder
ÜÜ 
.
ÜÜ 

DeleteData
ÜÜ '
(
ÜÜ' (
table
áá 
:
áá 
$str
áá 
,
áá  
	keyColumn
àà 
:
àà 
$str
àà 
,
àà  
keyValue
ââ 
:
ââ 
new
ââ 
Guid
ââ "
(
ââ" #
$str
ââ# I
)
ââI J
)
ââJ K
;
ââK L
migrationBuilder
ãã 
.
ãã 

DeleteData
ãã '
(
ãã' (
table
åå 
:
åå 
$str
åå 
,
åå  
	keyColumn
çç 
:
çç 
$str
çç 
,
çç  
keyValue
éé 
:
éé 
new
éé 
Guid
éé "
(
éé" #
$str
éé# I
)
ééI J
)
ééJ K
;
ééK L
migrationBuilder
êê 
.
êê 

DeleteData
êê '
(
êê' (
table
ëë 
:
ëë 
$str
ëë 
,
ëë  
	keyColumn
íí 
:
íí 
$str
íí 
,
íí  
keyValue
ìì 
:
ìì 
new
ìì 
Guid
ìì "
(
ìì" #
$str
ìì# I
)
ììI J
)
ììJ K
;
ììK L
migrationBuilder
ïï 
.
ïï 

DeleteData
ïï '
(
ïï' (
table
ññ 
:
ññ 
$str
ññ 
,
ññ  
	keyColumn
óó 
:
óó 
$str
óó 
,
óó  
keyValue
òò 
:
òò 
new
òò 
Guid
òò "
(
òò" #
$str
òò# I
)
òòI J
)
òòJ K
;
òòK L
migrationBuilder
öö 
.
öö 

DeleteData
öö '
(
öö' (
table
õõ 
:
õõ 
$str
õõ 
,
õõ  
	keyColumn
úú 
:
úú 
$str
úú 
,
úú  
keyValue
ùù 
:
ùù 
new
ùù 
Guid
ùù "
(
ùù" #
$str
ùù# I
)
ùùI J
)
ùùJ K
;
ùùK L
migrationBuilder
üü 
.
üü 

DeleteData
üü '
(
üü' (
table
†† 
:
†† 
$str
†† 
,
††  
	keyColumn
°° 
:
°° 
$str
°° 
,
°°  
keyValue
¢¢ 
:
¢¢ 
new
¢¢ 
Guid
¢¢ "
(
¢¢" #
$str
¢¢# I
)
¢¢I J
)
¢¢J K
;
¢¢K L
migrationBuilder
§§ 
.
§§ 

DeleteData
§§ '
(
§§' (
table
•• 
:
•• 
$str
•• 
,
••  
	keyColumn
¶¶ 
:
¶¶ 
$str
¶¶ 
,
¶¶  
keyValue
ßß 
:
ßß 
new
ßß 
Guid
ßß "
(
ßß" #
$str
ßß# I
)
ßßI J
)
ßßJ K
;
ßßK L
migrationBuilder
©© 
.
©© 

DeleteData
©© '
(
©©' (
table
™™ 
:
™™ 
$str
™™ 
,
™™  
	keyColumn
´´ 
:
´´ 
$str
´´ 
,
´´  
keyValue
¨¨ 
:
¨¨ 
new
¨¨ 
Guid
¨¨ "
(
¨¨" #
$str
¨¨# I
)
¨¨I J
)
¨¨J K
;
¨¨K L
migrationBuilder
ÆÆ 
.
ÆÆ 

DeleteData
ÆÆ '
(
ÆÆ' (
table
ØØ 
:
ØØ 
$str
ØØ 
,
ØØ  
	keyColumn
∞∞ 
:
∞∞ 
$str
∞∞ 
,
∞∞  
keyValue
±± 
:
±± 
new
±± 
Guid
±± "
(
±±" #
$str
±±# I
)
±±I J
)
±±J K
;
±±K L
migrationBuilder
≥≥ 
.
≥≥ 

DeleteData
≥≥ '
(
≥≥' (
table
¥¥ 
:
¥¥ 
$str
¥¥ 
,
¥¥  
	keyColumn
µµ 
:
µµ 
$str
µµ 
,
µµ  
keyValue
∂∂ 
:
∂∂ 
new
∂∂ 
Guid
∂∂ "
(
∂∂" #
$str
∂∂# I
)
∂∂I J
)
∂∂J K
;
∂∂K L
migrationBuilder
∏∏ 
.
∏∏ 

DeleteData
∏∏ '
(
∏∏' (
table
ππ 
:
ππ 
$str
ππ 
,
ππ  
	keyColumn
∫∫ 
:
∫∫ 
$str
∫∫ 
,
∫∫  
keyValue
ªª 
:
ªª 
new
ªª 
Guid
ªª "
(
ªª" #
$str
ªª# I
)
ªªI J
)
ªªJ K
;
ªªK L
migrationBuilder
ΩΩ 
.
ΩΩ 

DeleteData
ΩΩ '
(
ΩΩ' (
table
ææ 
:
ææ 
$str
ææ 
,
ææ  
	keyColumn
øø 
:
øø 
$str
øø 
,
øø  
keyValue
¿¿ 
:
¿¿ 
new
¿¿ 
Guid
¿¿ "
(
¿¿" #
$str
¿¿# I
)
¿¿I J
)
¿¿J K
;
¿¿K L
migrationBuilder
¬¬ 
.
¬¬ 

DeleteData
¬¬ '
(
¬¬' (
table
√√ 
:
√√ 
$str
√√ 
,
√√  
	keyColumn
ƒƒ 
:
ƒƒ 
$str
ƒƒ 
,
ƒƒ  
keyValue
≈≈ 
:
≈≈ 
new
≈≈ 
Guid
≈≈ "
(
≈≈" #
$str
≈≈# I
)
≈≈I J
)
≈≈J K
;
≈≈K L
migrationBuilder
«« 
.
«« 

DeleteData
«« '
(
««' (
table
»» 
:
»» 
$str
»» 
,
»»  
	keyColumn
…… 
:
…… 
$str
…… 
,
……  
keyValue
   
:
   
new
   
Guid
   "
(
  " #
$str
  # I
)
  I J
)
  J K
;
  K L
migrationBuilder
ÃÃ 
.
ÃÃ 

DeleteData
ÃÃ '
(
ÃÃ' (
table
ÕÕ 
:
ÕÕ 
$str
ÕÕ 
,
ÕÕ  
	keyColumn
ŒŒ 
:
ŒŒ 
$str
ŒŒ 
,
ŒŒ  
keyValue
œœ 
:
œœ 
new
œœ 
Guid
œœ "
(
œœ" #
$str
œœ# I
)
œœI J
)
œœJ K
;
œœK L
migrationBuilder
—— 
.
—— 

DeleteData
—— '
(
——' (
table
““ 
:
““ 
$str
““ 
,
““  
	keyColumn
”” 
:
”” 
$str
”” 
,
””  
keyValue
‘‘ 
:
‘‘ 
new
‘‘ 
Guid
‘‘ "
(
‘‘" #
$str
‘‘# I
)
‘‘I J
)
‘‘J K
;
‘‘K L
migrationBuilder
÷÷ 
.
÷÷ 

DeleteData
÷÷ '
(
÷÷' (
table
◊◊ 
:
◊◊ 
$str
◊◊ 
,
◊◊  
	keyColumn
ÿÿ 
:
ÿÿ 
$str
ÿÿ 
,
ÿÿ  
keyValue
ŸŸ 
:
ŸŸ 
new
ŸŸ 
Guid
ŸŸ "
(
ŸŸ" #
$str
ŸŸ# I
)
ŸŸI J
)
ŸŸJ K
;
ŸŸK L
migrationBuilder
€€ 
.
€€ 

DeleteData
€€ '
(
€€' (
table
‹‹ 
:
‹‹ 
$str
‹‹ 
,
‹‹  
	keyColumn
›› 
:
›› 
$str
›› 
,
››  
keyValue
ﬁﬁ 
:
ﬁﬁ 
new
ﬁﬁ 
Guid
ﬁﬁ "
(
ﬁﬁ" #
$str
ﬁﬁ# I
)
ﬁﬁI J
)
ﬁﬁJ K
;
ﬁﬁK L
migrationBuilder
‡‡ 
.
‡‡ 

DeleteData
‡‡ '
(
‡‡' (
table
·· 
:
·· 
$str
·· 
,
··  
	keyColumn
‚‚ 
:
‚‚ 
$str
‚‚ 
,
‚‚  
keyValue
„„ 
:
„„ 
new
„„ 
Guid
„„ "
(
„„" #
$str
„„# I
)
„„I J
)
„„J K
;
„„K L
migrationBuilder
ÂÂ 
.
ÂÂ 

DeleteData
ÂÂ '
(
ÂÂ' (
table
ÊÊ 
:
ÊÊ 
$str
ÊÊ 
,
ÊÊ  
	keyColumn
ÁÁ 
:
ÁÁ 
$str
ÁÁ 
,
ÁÁ  
keyValue
ËË 
:
ËË 
new
ËË 
Guid
ËË "
(
ËË" #
$str
ËË# I
)
ËËI J
)
ËËJ K
;
ËËK L
migrationBuilder
ÍÍ 
.
ÍÍ 

DeleteData
ÍÍ '
(
ÍÍ' (
table
ÎÎ 
:
ÎÎ 
$str
ÎÎ 
,
ÎÎ  
	keyColumn
ÏÏ 
:
ÏÏ 
$str
ÏÏ 
,
ÏÏ  
keyValue
ÌÌ 
:
ÌÌ 
new
ÌÌ 
Guid
ÌÌ "
(
ÌÌ" #
$str
ÌÌ# I
)
ÌÌI J
)
ÌÌJ K
;
ÌÌK L
migrationBuilder
ÔÔ 
.
ÔÔ 

DeleteData
ÔÔ '
(
ÔÔ' (
table
 
:
 
$str
 
,
  
	keyColumn
ÒÒ 
:
ÒÒ 
$str
ÒÒ 
,
ÒÒ  
keyValue
ÚÚ 
:
ÚÚ 
new
ÚÚ 
Guid
ÚÚ "
(
ÚÚ" #
$str
ÚÚ# I
)
ÚÚI J
)
ÚÚJ K
;
ÚÚK L
migrationBuilder
ÙÙ 
.
ÙÙ 

DeleteData
ÙÙ '
(
ÙÙ' (
table
ıı 
:
ıı 
$str
ıı 
,
ıı  
	keyColumn
ˆˆ 
:
ˆˆ 
$str
ˆˆ 
,
ˆˆ  
keyValue
˜˜ 
:
˜˜ 
new
˜˜ 
Guid
˜˜ "
(
˜˜" #
$str
˜˜# I
)
˜˜I J
)
˜˜J K
;
˜˜K L
migrationBuilder
˘˘ 
.
˘˘ 

DeleteData
˘˘ '
(
˘˘' (
table
˙˙ 
:
˙˙ 
$str
˙˙ 
,
˙˙  
	keyColumn
˚˚ 
:
˚˚ 
$str
˚˚ 
,
˚˚  
keyValue
¸¸ 
:
¸¸ 
new
¸¸ 
Guid
¸¸ "
(
¸¸" #
$str
¸¸# I
)
¸¸I J
)
¸¸J K
;
¸¸K L
migrationBuilder
˛˛ 
.
˛˛ 

DeleteData
˛˛ '
(
˛˛' (
table
ˇˇ 
:
ˇˇ 
$str
ˇˇ 
,
ˇˇ  
	keyColumn
ÄÄ 
:
ÄÄ 
$str
ÄÄ 
,
ÄÄ  
keyValue
ÅÅ 
:
ÅÅ 
new
ÅÅ 
Guid
ÅÅ "
(
ÅÅ" #
$str
ÅÅ# I
)
ÅÅI J
)
ÅÅJ K
;
ÅÅK L
migrationBuilder
ÉÉ 
.
ÉÉ 

DeleteData
ÉÉ '
(
ÉÉ' (
table
ÑÑ 
:
ÑÑ 
$str
ÑÑ 
,
ÑÑ  
	keyColumn
ÖÖ 
:
ÖÖ 
$str
ÖÖ 
,
ÖÖ  
keyValue
ÜÜ 
:
ÜÜ 
new
ÜÜ 
Guid
ÜÜ "
(
ÜÜ" #
$str
ÜÜ# I
)
ÜÜI J
)
ÜÜJ K
;
ÜÜK L
migrationBuilder
àà 
.
àà 

DeleteData
àà '
(
àà' (
table
ââ 
:
ââ 
$str
ââ 
,
ââ  
	keyColumn
ää 
:
ää 
$str
ää 
,
ää  
keyValue
ãã 
:
ãã 
new
ãã 
Guid
ãã "
(
ãã" #
$str
ãã# I
)
ããI J
)
ããJ K
;
ããK L
}
åå 	
}
çç 
}éé ù#
gE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Migrations\20250530000926_CreateTaskNote.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  

Migrations  *
{ 
public		 

partial		 
class		 
CreateTaskNote		 '
:		( )
	Migration		* 3
{

 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str !
,! "
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
Guid& *
>* +
(+ ,
type, 0
:0 1
$str2 8
,8 9
nullable: B
:B C
falseD I
)I J
,J K
Text 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 <
,< =
nullable> F
:F G
trueH L
)L M
,M N
Done 
= 
table  
.  !
Column! '
<' (
bool( ,
>, -
(- .
type. 2
:2 3
$str4 =
,= >
nullable? G
:G H
falseI N
)N O
,O P
UserId 
= 
table "
." #
Column# )
<) *
Guid* .
>. /
(/ 0
type0 4
:4 5
$str6 <
,< =
nullable> F
:F G
falseH M
)M N
,N O
CreationDate  
=! "
table# (
.( )
Column) /
</ 0
DateTime0 8
>8 9
(9 :
type: >
:> ?
$str@ Z
,Z [
nullable\ d
:d e
falsef k
)k l
,l m
DeletionDate  
=! "
table# (
.( )
Column) /
</ 0
DateTime0 8
>8 9
(9 :
type: >
:> ?
$str@ Z
,Z [
nullable\ d
:d e
truef j
)j k
,k l
LastChangeDate "
=# $
table% *
.* +
Column+ 1
<1 2
DateTime2 :
>: ;
(; <
type< @
:@ A
$strB \
,\ ]
nullable^ f
:f g
trueh l
)l m
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 3
,3 4
x5 6
=>7 9
x: ;
.; <
Id< >
)> ?
;? @
table 
. 

ForeignKey $
($ %
name 
: 
$str 9
,9 :
column 
: 
x  !
=>" $
x% &
.& '
UserId' -
,- .
principalTable   &
:  & '
$str  ( /
,  / 0
principalColumn!! '
:!!' (
$str!!) -
)!!- .
;!!. /
}"" 
)"" 
;"" 
migrationBuilder$$ 
.$$ 
CreateIndex$$ (
($$( )
name%% 
:%% 
$str%% +
,%%+ ,
table&& 
:&& 
$str&& "
,&&" #
column'' 
:'' 
$str''  
)''  !
;''! "
}(( 	
	protected++ 
override++ 
void++ 
Down++  $
(++$ %
MigrationBuilder++% 5
migrationBuilder++6 F
)++F G
{,, 	
migrationBuilder-- 
.-- 
	DropTable-- &
(--& '
name.. 
:.. 
$str.. !
)..! "
;.." #
}// 	
}00 
}11 ≤
gE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Migrations\20250525015339_UserTypeUpdate.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  

Migrations  *
{ 
public		 

partial		 
class		 
UserTypeUpdate		 '
:		( )
	Migration		* 3
{

 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 

UpdateData '
(' (
table 
: 
$str 
, 
	keyColumn 
: 
$str 
,  
keyValue 
: 
new 
Guid "
(" #
$str# I
)I J
,J K
column 
: 
$str "
," #
value 
: 
$num 
) 
; 
migrationBuilder 
. 

UpdateData '
(' (
table 
: 
$str 
, 
	keyColumn 
: 
$str 
,  
keyValue 
: 
new 
Guid "
(" #
$str# I
)I J
,J K
column 
: 
$str "
," #
value 
: 
$num 
) 
; 
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder   
.   

UpdateData   '
(  ' (
table!! 
:!! 
$str!! 
,!! 
	keyColumn"" 
:"" 
$str"" 
,""  
keyValue## 
:## 
new## 
Guid## "
(##" #
$str### I
)##I J
,##J K
column$$ 
:$$ 
$str$$ "
,$$" #
value%% 
:%% 
$num%% 
)%% 
;%% 
migrationBuilder'' 
.'' 

UpdateData'' '
(''' (
table(( 
:(( 
$str(( 
,(( 
	keyColumn)) 
:)) 
$str)) 
,))  
keyValue** 
:** 
new** 
Guid** "
(**" #
$str**# I
)**I J
,**J K
column++ 
:++ 
$str++ "
,++" #
value,, 
:,, 
$num,, 
),, 
;,, 
}-- 	
}.. 
}// Ç/
kE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Migrations\20250524170650_RefactoreUsersJobs.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  

Migrations  *
{ 
public		 

partial		 
class		 
RefactoreUsersJobs		 +
:		, -
	Migration		. 7
{

 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str 
,  
table 
: 
$str !
)! "
;" #
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str 
, 
table 
: 
$str !
)! "
;" #
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str 
, 
table 
: 
$str "
)" #
;# $
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str 
,  
table 
: 
$str "
)" #
;# $
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str 
, 
table   
:   
$str   "
)  " #
;  # $
}!! 	
	protected$$ 
override$$ 
void$$ 
Down$$  $
($$$ %
MigrationBuilder$$% 5
migrationBuilder$$6 F
)$$F G
{%% 	
migrationBuilder&& 
.&& 
	AddColumn&& &
<&&& '
bool&&' +
>&&+ ,
(&&, -
name'' 
:'' 
$str'' 
,''  
table(( 
:(( 
$str(( !
,((! "
type)) 
:)) 
$str)) 
,))  
nullable** 
:** 
false** 
,**  
defaultValue++ 
:++ 
false++ #
)++# $
;++$ %
migrationBuilder-- 
.-- 
	AddColumn-- &
<--& '
string--' -
>--- .
(--. /
name.. 
:.. 
$str.. 
,.. 
table// 
:// 
$str// !
,//! "
type00 
:00 
$str00 -
,00- .
	maxLength11 
:11 
$num11 
,11 
nullable22 
:22 
true22 
)22 
;22  
migrationBuilder44 
.44 
	AddColumn44 &
<44& '
string44' -
>44- .
(44. /
name55 
:55 
$str55 
,55 
table66 
:66 
$str66 "
,66" #
type77 
:77 
$str77 .
,77. /
	maxLength88 
:88 
$num88 
,88 
nullable99 
:99 
true99 
)99 
;99  
migrationBuilder;; 
.;; 
	AddColumn;; &
<;;& '
bool;;' +
>;;+ ,
(;;, -
name<< 
:<< 
$str<< 
,<<  
table== 
:== 
$str== "
,==" #
type>> 
:>> 
$str>> 
,>>  
nullable?? 
:?? 
false?? 
,??  
defaultValue@@ 
:@@ 
false@@ #
)@@# $
;@@$ %
migrationBuilderBB 
.BB 
	AddColumnBB &
<BB& '
stringBB' -
>BB- .
(BB. /
nameCC 
:CC 
$strCC 
,CC 
tableDD 
:DD 
$strDD "
,DD" #
typeEE 
:EE 
$strEE -
,EE- .
	maxLengthFF 
:FF 
$numFF 
,FF 
nullableGG 
:GG 
trueGG 
)GG 
;GG  
migrationBuilderII 
.II 

UpdateDataII '
(II' (
tableJJ 
:JJ 
$strJJ "
,JJ" #
	keyColumnKK 
:KK 
$strKK 
,KK  
keyValueLL 
:LL 
newLL 
GuidLL "
(LL" #
$strLL# I
)LLI J
,LLJ K
columnsMM 
:MM 
newMM 
[MM 
]MM 
{MM  
$strMM! (
,MM( )
$strMM* 3
,MM3 4
$strMM5 ;
}MM< =
,MM= >
valuesNN 
:NN 
newNN 
objectNN "
[NN" #
]NN# $
{NN% &
$strNN' ,
,NN, -
falseNN. 3
,NN3 4
$strNN5 >
}NN? @
)NN@ A
;NNA B
migrationBuilderPP 
.PP 

UpdateDataPP '
(PP' (
tableQQ 
:QQ 
$strQQ !
,QQ! "
	keyColumnRR 
:RR 
$strRR 
,RR  
keyValueSS 
:SS 
newSS 
GuidSS "
(SS" #
$strSS# I
)SSI J
,SSJ K
columnsTT 
:TT 
newTT 
[TT 
]TT 
{TT  
$strTT! *
,TT* +
$strTT, 2
}TT3 4
,TT4 5
valuesUU 
:UU 
newUU 
objectUU "
[UU" #
]UU# $
{UU% &
falseUU' ,
,UU, -
$strUU. 7
}UU8 9
)UU9 :
;UU: ;
}VV 	
}WW 
}XX á,
gE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Migrations\20250524140715_RefactoreUsers.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  

Migrations  *
{ 
public		 

partial		 
class		 
RefactoreUsers		 '
:		( )
	Migration		* 3
{

 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str '
,' (
table 
: 
$str "
)" #
;# $
migrationBuilder 
. 
	AddColumn &
<& '
bool' +
>+ ,
(, -
name 
: 
$str 
,  
table 
: 
$str 
, 
type 
: 
$str 
,  
nullable 
: 
false 
,  
defaultValue 
: 
false #
)# $
;$ %
migrationBuilder 
. 

InsertData '
(' (
table 
: 
$str #
,# $
columns 
: 
new 
[ 
] 
{  
$str! %
,% &
$str' 5
,5 6
$str7 E
,E F
$strG W
}X Y
,Y Z
values 
: 
new 
object "
[" #
]# $
{% &
$str' 0
,0 1
new2 5
DateTime6 >
(> ?
$num? C
,C D
$numE G
,G H
$numI J
,J K
$numL M
,M N
$numO P
,P Q
$numR S
,S T
$numU V
,V W
DateTimeKindX d
.d e
Utce h
)h i
,i j
nullk o
,o p
nullq u
}v w
)w x
;x y
migrationBuilder 
. 

UpdateData '
(' (
table 
: 
$str 
, 
	keyColumn   
:   
$str   
,    
keyValue!! 
:!! 
new!! 
Guid!! "
(!!" #
$str!!# I
)!!I J
,!!J K
column"" 
:"" 
$str"" !
,""! "
value## 
:## 
false## 
)## 
;## 
migrationBuilder%% 
.%% 

UpdateData%% '
(%%' (
table&& 
:&& 
$str&& 
,&& 
	keyColumn'' 
:'' 
$str'' 
,''  
keyValue(( 
:(( 
new(( 
Guid(( "
(((" #
$str((# I
)((I J
,((J K
column)) 
:)) 
$str)) !
,))! "
value** 
:** 
false** 
)** 
;** 
migrationBuilder,, 
.,, 

UpdateData,, '
(,,' (
table-- 
:-- 
$str-- 
,-- 
	keyColumn.. 
:.. 
$str.. 
,..  
keyValue// 
:// 
new// 
Guid// "
(//" #
$str//# I
)//I J
,//J K
column00 
:00 
$str00 !
,00! "
value11 
:11 
false11 
)11 
;11 
}22 	
	protected55 
override55 
void55 
Down55  $
(55$ %
MigrationBuilder55% 5
migrationBuilder556 F
)55F G
{66 	
migrationBuilder77 
.77 

DeleteData77 '
(77' (
table88 
:88 
$str88 #
,88# $
	keyColumn99 
:99 
$str99 
,99  
keyValue:: 
::: 
$str:: #
)::# $
;::$ %
migrationBuilder<< 
.<< 

DropColumn<< '
(<<' (
name== 
:== 
$str== 
,==  
table>> 
:>> 
$str>> 
)>> 
;>>  
migrationBuilder@@ 
.@@ 
	AddColumn@@ &
<@@& '
decimal@@' .
>@@. /
(@@/ 0
nameAA 
:AA 
$strAA '
,AA' (
tableBB 
:BB 
$strBB "
,BB" #
typeCC 
:CC 
$strCC 
,CC  
nullableDD 
:DD 
falseDD 
,DD  
defaultValueEE 
:EE 
$numEE  
)EE  !
;EE! "
migrationBuilderGG 
.GG 

UpdateDataGG '
(GG' (
tableHH 
:HH 
$strHH "
,HH" #
	keyColumnII 
:II 
$strII 
,II  
keyValueJJ 
:JJ 
newJJ 
GuidJJ "
(JJ" #
$strJJ# I
)JJI J
,JJJ K
columnKK 
:KK 
$strKK )
,KK) *
valueLL 
:LL 
$numLL 
)LL 
;LL 
}MM 	
}NN 
}OO ı8
jE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Migrations\20250510163750_ChangesRegisterIn.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  

Migrations  *
{		 
public 

partial 
class 
ChangesRegisterIn *
:+ ,
	Migration- 6
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
AlterColumn (
<( )
DateTime) 1
>1 2
(2 3
name 
: 
$str !
,! "
table 
: 
$str %
,% &
type 
: 
$str 0
,0 1
nullable 
: 
true 
, 

oldClrType 
: 
typeof "
(" #
DateTime# +
)+ ,
,, -
oldType 
: 
$str 3
)3 4
;4 5
migrationBuilder 
. 
AlterColumn (
<( )
DateTime) 1
>1 2
(2 3
name 
: 
$str !
,! "
table 
: 
$str $
,$ %
type 
: 
$str 0
,0 1
nullable 
: 
true 
, 

oldClrType 
: 
typeof "
(" #
DateTime# +
)+ ,
,, -
oldType 
: 
$str 3
)3 4
;4 5
migrationBuilder   
.   

InsertData   '
(  ' (
table!! 
:!! 
$str!! #
,!!# $
columns"" 
:"" 
new"" 
["" 
]"" 
{""  
$str""! %
,""% &
$str""' 5
,""5 6
$str""7 E
,""E F
$str""G W
}""X Y
,""Y Z
values## 
:## 
new## 
object## "
[##" #
,### $
]##$ %
{$$ 
{%% 
$str%%  
,%%  !
new%%" %
DateTime%%& .
(%%. /
$num%%/ 3
,%%3 4
$num%%5 7
,%%7 8
$num%%9 :
,%%: ;
$num%%< =
,%%= >
$num%%? @
,%%@ A
$num%%B C
,%%C D
$num%%E F
,%%F G
DateTimeKind%%H T
.%%T U
Utc%%U X
)%%X Y
,%%Y Z
null%%[ _
,%%_ `
null%%a e
}%%f g
,%%g h
{&& 
$str&& 
,&&  
new&&! $
DateTime&&% -
(&&- .
$num&&. 2
,&&2 3
$num&&4 6
,&&6 7
$num&&8 9
,&&9 :
$num&&; <
,&&< =
$num&&> ?
,&&? @
$num&&A B
,&&B C
$num&&D E
,&&E F
DateTimeKind&&G S
.&&S T
Utc&&T W
)&&W X
,&&X Y
null&&Z ^
,&&^ _
null&&` d
}&&e f
,&&f g
{'' 
$str'' #
,''# $
new''% (
DateTime'') 1
(''1 2
$num''2 6
,''6 7
$num''8 :
,'': ;
$num''< =
,''= >
$num''? @
,''@ A
$num''B C
,''C D
$num''E F
,''F G
$num''H I
,''I J
DateTimeKind''K W
.''W X
Utc''X [
)''[ \
,''\ ]
null''^ b
,''b c
null''d h
}''i j
}(( 
)(( 
;(( 
})) 	
	protected,, 
override,, 
void,, 
Down,,  $
(,,$ %
MigrationBuilder,,% 5
migrationBuilder,,6 F
),,F G
{-- 	
migrationBuilder.. 
... 

DeleteData.. '
(..' (
table// 
:// 
$str// #
,//# $
	keyColumn00 
:00 
$str00 
,00  
keyValue11 
:11 
$str11 $
)11$ %
;11% &
migrationBuilder33 
.33 

DeleteData33 '
(33' (
table44 
:44 
$str44 #
,44# $
	keyColumn55 
:55 
$str55 
,55  
keyValue66 
:66 
$str66 #
)66# $
;66$ %
migrationBuilder88 
.88 

DeleteData88 '
(88' (
table99 
:99 
$str99 #
,99# $
	keyColumn:: 
::: 
$str:: 
,::  
keyValue;; 
:;; 
$str;; '
);;' (
;;;( )
migrationBuilder== 
.== 
AlterColumn== (
<==( )
DateTime==) 1
>==1 2
(==2 3
name>> 
:>> 
$str>> !
,>>! "
table?? 
:?? 
$str?? %
,??% &
type@@ 
:@@ 
$str@@ 0
,@@0 1
nullableAA 
:AA 
falseAA 
,AA  
defaultValueBB 
:BB 
newBB !
DateTimeBB" *
(BB* +
$numBB+ ,
,BB, -
$numBB. /
,BB/ 0
$numBB1 2
,BB2 3
$numBB4 5
,BB5 6
$numBB7 8
,BB8 9
$numBB: ;
,BB; <
$numBB= >
,BB> ?
DateTimeKindBB@ L
.BBL M
UnspecifiedBBM X
)BBX Y
,BBY Z

oldClrTypeCC 
:CC 
typeofCC "
(CC" #
DateTimeCC# +
)CC+ ,
,CC, -
oldTypeDD 
:DD 
$strDD 3
,DD3 4
oldNullableEE 
:EE 
trueEE !
)EE! "
;EE" #
migrationBuilderGG 
.GG 
AlterColumnGG (
<GG( )
DateTimeGG) 1
>GG1 2
(GG2 3
nameHH 
:HH 
$strHH !
,HH! "
tableII 
:II 
$strII $
,II$ %
typeJJ 
:JJ 
$strJJ 0
,JJ0 1
nullableKK 
:KK 
falseKK 
,KK  
defaultValueLL 
:LL 
newLL !
DateTimeLL" *
(LL* +
$numLL+ ,
,LL, -
$numLL. /
,LL/ 0
$numLL1 2
,LL2 3
$numLL4 5
,LL5 6
$numLL7 8
,LL8 9
$numLL: ;
,LL; <
$numLL= >
,LL> ?
DateTimeKindLL@ L
.LLL M
UnspecifiedLLM X
)LLX Y
,LLY Z

oldClrTypeMM 
:MM 
typeofMM "
(MM" #
DateTimeMM# +
)MM+ ,
,MM, -
oldTypeNN 
:NN 
$strNN 3
,NN3 4
oldNullableOO 
:OO 
trueOO !
)OO! "
;OO" #
}PP 	
}QQ 
}RR Â+
hE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Migrations\20250507003714_CreateStockType.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  

Migrations  *
{ 
public		 

partial		 
class		 
CreateStockType		 (
:		) *
	Migration		+ 4
{

 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
	AddColumn &
<& '
decimal' .
>. /
(/ 0
name 
: 
$str *
,* +
table 
: 
$str 
,  
type 
: 
$str $
,$ %
nullable 
: 
false 
,  
defaultValue 
: 
$num  
)  !
;! "
migrationBuilder 
. 
	AddColumn &
<& '
string' -
>- .
(. /
name 
: 
$str #
,# $
table 
: 
$str 
,  
type 
: 
$str -
,- .
	maxLength 
: 
$num 
, 
nullable 
: 
true 
) 
;  
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str "
," #
columns 
: 
table 
=> !
new" %
{ 
Id   
=   
table   
.   
Column   %
<  % &
string  & ,
>  , -
(  - .
type  . 2
:  2 3
$str  4 K
,  K L
	maxLength  M V
:  V W
$num  X Z
,  Z [
nullable  \ d
:  d e
false  f k
)  k l
,  l m
CreationDate!!  
=!!! "
table!!# (
.!!( )
Column!!) /
<!!/ 0
DateTime!!0 8
>!!8 9
(!!9 :
type!!: >
:!!> ?
$str!!@ Z
,!!Z [
nullable!!\ d
:!!d e
false!!f k
)!!k l
,!!l m
DeletionDate""  
=""! "
table""# (
.""( )
Column"") /
<""/ 0
DateTime""0 8
>""8 9
(""9 :
type"": >
:""> ?
$str""@ Z
,""Z [
nullable""\ d
:""d e
true""f j
)""j k
,""k l
LastChangeDate## "
=### $
table##% *
.##* +
Column##+ 1
<##1 2
DateTime##2 :
>##: ;
(##; <
type##< @
:##@ A
$str##B \
,##\ ]
nullable##^ f
:##f g
true##h l
)##l m
}$$ 
,$$ 
constraints%% 
:%% 
table%% "
=>%%# %
{&& 
table'' 
.'' 

PrimaryKey'' $
(''$ %
$str''% 4
,''4 5
x''6 7
=>''8 :
x''; <
.''< =
Id''= ?
)''? @
;''@ A
}(( 
)(( 
;(( 
migrationBuilder** 
.** 
CreateIndex** (
(**( )
name++ 
:++ 
$str++ -
,++- .
table,, 
:,, 
$str,, 
,,,  
column-- 
:-- 
$str-- %
)--% &
;--& '
migrationBuilder// 
.// 
AddForeignKey// *
(//* +
name00 
:00 
$str00 8
,008 9
table11 
:11 
$str11 
,11  
column22 
:22 
$str22 %
,22% &
principalTable33 
:33 
$str33  ,
,33, -
principalColumn44 
:44  
$str44! %
)44% &
;44& '
}55 	
	protected88 
override88 
void88 
Down88  $
(88$ %
MigrationBuilder88% 5
migrationBuilder886 F
)88F G
{99 	
migrationBuilder:: 
.:: 
DropForeignKey:: +
(::+ ,
name;; 
:;; 
$str;; 8
,;;8 9
table<< 
:<< 
$str<< 
)<<  
;<<  !
migrationBuilder>> 
.>> 
	DropTable>> &
(>>& '
name?? 
:?? 
$str?? "
)??" #
;??# $
migrationBuilderAA 
.AA 
	DropIndexAA &
(AA& '
nameBB 
:BB 
$strBB -
,BB- .
tableCC 
:CC 
$strCC 
)CC  
;CC  !
migrationBuilderEE 
.EE 

DropColumnEE '
(EE' (
nameFF 
:FF 
$strFF *
,FF* +
tableGG 
:GG 
$strGG 
)GG  
;GG  !
migrationBuilderII 
.II 

DropColumnII '
(II' (
nameJJ 
:JJ 
$strJJ #
,JJ# $
tableKK 
:KK 
$strKK 
)KK  
;KK  !
}LL 	
}MM 
}NN ÈΩ
gE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Migrations\20250502230716_CreateDataBase.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  

Migrations  *
{		 
public 

partial 
class 
CreateDataBase '
:( )
	Migration* 3
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str $
,$ %
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
Guid& *
>* +
(+ ,
type, 0
:0 1
$str2 8
,8 9
nullable: B
:B C
falseD I
)I J
,J K
Number 
= 
table "
." #
Column# )
<) *
int* -
>- .
(. /
type/ 3
:3 4
$str5 >
,> ?
nullable@ H
:H I
falseJ O
)O P
,P Q
	ApplyDate 
= 
table  %
.% &
Column& ,
<, -
DateTime- 5
>5 6
(6 7
type7 ;
:; <
$str= W
,W X
nullableY a
:a b
falsec h
)h i
,i j
Description 
=  !
table" '
.' (
Column( .
<. /
string/ 5
>5 6
(6 7
type7 ;
:; <
$str= C
,C D
nullableE M
:M N
trueO S
)S T
,T U
Apply 
= 
table !
.! "
Column" (
<( )
bool) -
>- .
(. /
type/ 3
:3 4
$str5 >
,> ?
nullable@ H
:H I
falseJ O
)O P
,P Q
CreationDate  
=! "
table# (
.( )
Column) /
</ 0
DateTime0 8
>8 9
(9 :
type: >
:> ?
$str@ Z
,Z [
nullable\ d
:d e
falsef k
)k l
,l m
DeletionDate  
=! "
table# (
.( )
Column) /
</ 0
DateTime0 8
>8 9
(9 :
type: >
:> ?
$str@ Z
,Z [
nullable\ d
:d e
truef j
)j k
,k l
LastChangeDate "
=# $
table% *
.* +
Column+ 1
<1 2
DateTime2 :
>: ;
(; <
type< @
:@ A
$strB \
,\ ]
nullable^ f
:f g
trueh l
)l m
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 6
,6 7
x8 9
=>: <
x= >
.> ?
Id? A
)A B
;B C
}   
)   
;   
migrationBuilder"" 
."" 
CreateTable"" (
(""( )
name## 
:## 
$str## 
,## 
columns$$ 
:$$ 
table$$ 
=>$$ !
new$$" %
{%% 
Id&& 
=&& 
table&& 
.&& 
Column&& %
<&&% &
Guid&&& *
>&&* +
(&&+ ,
type&&, 0
:&&0 1
$str&&2 8
,&&8 9
nullable&&: B
:&&B C
false&&D I
)&&I J
,&&J K
Name'' 
='' 
table''  
.''  !
Column''! '
<''' (
string''( .
>''. /
(''/ 0
type''0 4
:''4 5
$str''6 M
,''M N
	maxLength''O X
:''X Y
$num''Z \
,''\ ]
nullable''^ f
:''f g
true''h l
)''l m
,''m n
UserType(( 
=(( 
table(( $
.(($ %
Column((% +
<((+ ,
int((, /
>((/ 0
(((0 1
type((1 5
:((5 6
$str((7 @
,((@ A
nullable((B J
:((J K
false((L Q
)((Q R
,((R S
CreationDate))  
=))! "
table))# (
.))( )
Column))) /
<))/ 0
DateTime))0 8
>))8 9
())9 :
type)): >
:))> ?
$str))@ Z
,))Z [
nullable))\ d
:))d e
false))f k
)))k l
,))l m
DeletionDate**  
=**! "
table**# (
.**( )
Column**) /
<**/ 0
DateTime**0 8
>**8 9
(**9 :
type**: >
:**> ?
$str**@ Z
,**Z [
nullable**\ d
:**d e
true**f j
)**j k
,**k l
LastChangeDate++ "
=++# $
table++% *
.++* +
Column+++ 1
<++1 2
DateTime++2 :
>++: ;
(++; <
type++< @
:++@ A
$str++B \
,++\ ]
nullable++^ f
:++f g
true++h l
)++l m
},, 
,,, 
constraints-- 
:-- 
table-- "
=>--# %
{.. 
table// 
.// 

PrimaryKey// $
(//$ %
$str//% /
,/// 0
x//1 2
=>//3 5
x//6 7
.//7 8
Id//8 :
)//: ;
;//; <
}00 
)00 
;00 
migrationBuilder22 
.22 
CreateTable22 (
(22( )
name33 
:33 
$str33 
,33 
columns44 
:44 
table44 
=>44 !
new44" %
{55 
Id66 
=66 
table66 
.66 
Column66 %
<66% &
Guid66& *
>66* +
(66+ ,
type66, 0
:660 1
$str662 8
,668 9
nullable66: B
:66B C
false66D I
)66I J
,66J K
Name77 
=77 
table77  
.77  !
Column77! '
<77' (
string77( .
>77. /
(77/ 0
type770 4
:774 5
$str776 M
,77M N
	maxLength77O X
:77X Y
$num77Z \
,77\ ]
nullable77^ f
:77f g
true77h l
)77l m
,77m n
Description88 
=88  !
table88" '
.88' (
Column88( .
<88. /
string88/ 5
>885 6
(886 7
type887 ;
:88; <
$str88= U
,88U V
	maxLength88W `
:88` a
$num88b e
,88e f
nullable88g o
:88o p
true88q u
)88u v
,88v w
Quantity99 
=99 
table99 $
.99$ %
Column99% +
<99+ ,
decimal99, 3
>993 4
(994 5
type995 9
:999 :
$str99; I
,99I J
nullable99K S
:99S T
false99U Z
)99Z [
,99[ \
Disable:: 
=:: 
table:: #
.::# $
Column::$ *
<::* +
bool::+ /
>::/ 0
(::0 1
type::1 5
:::5 6
$str::7 @
,::@ A
nullable::B J
:::J K
false::L Q
)::Q R
,::R S
CreationDate;;  
=;;! "
table;;# (
.;;( )
Column;;) /
<;;/ 0
DateTime;;0 8
>;;8 9
(;;9 :
type;;: >
:;;> ?
$str;;@ Z
,;;Z [
nullable;;\ d
:;;d e
false;;f k
);;k l
,;;l m
DeletionDate<<  
=<<! "
table<<# (
.<<( )
Column<<) /
<<</ 0
DateTime<<0 8
><<8 9
(<<9 :
type<<: >
:<<> ?
$str<<@ Z
,<<Z [
nullable<<\ d
:<<d e
true<<f j
)<<j k
,<<k l
LastChangeDate== "
===# $
table==% *
.==* +
Column==+ 1
<==1 2
DateTime==2 :
>==: ;
(==; <
type==< @
:==@ A
$str==B \
,==\ ]
nullable==^ f
:==f g
true==h l
)==l m
}>> 
,>> 
constraints?? 
:?? 
table?? "
=>??# %
{@@ 
tableAA 
.AA 

PrimaryKeyAA $
(AA$ %
$strAA% 0
,AA0 1
xAA2 3
=>AA4 6
xAA7 8
.AA8 9
IdAA9 ;
)AA; <
;AA< =
}BB 
)BB 
;BB 
migrationBuilderDD 
.DD 
CreateTableDD (
(DD( )
nameEE 
:EE 
$strEE !
,EE! "
columnsFF 
:FF 
tableFF 
=>FF !
newFF" %
{GG 
IdHH 
=HH 
tableHH 
.HH 
ColumnHH %
<HH% &
GuidHH& *
>HH* +
(HH+ ,
typeHH, 0
:HH0 1
$strHH2 8
,HH8 9
nullableHH: B
:HHB C
falseHHD I
)HHI J
,HHJ K
NameII 
=II 
tableII  
.II  !
ColumnII! '
<II' (
stringII( .
>II. /
(II/ 0
typeII0 4
:II4 5
$strII6 M
,IIM N
	maxLengthIIO X
:IIX Y
$numIIZ \
,II\ ]
nullableII^ f
:IIf g
trueIIh l
)IIl m
,IIm n
PhoneNumberJJ 
=JJ  !
tableJJ" '
.JJ' (
ColumnJJ( .
<JJ. /
stringJJ/ 5
>JJ5 6
(JJ6 7
typeJJ7 ;
:JJ; <
$strJJ= T
,JJT U
	maxLengthJJV _
:JJ_ `
$numJJa c
,JJc d
nullableJJe m
:JJm n
trueJJo s
)JJs t
,JJt u
EmailKK 
=KK 
tableKK !
.KK! "
ColumnKK" (
<KK( )
stringKK) /
>KK/ 0
(KK0 1
typeKK1 5
:KK5 6
$strKK7 N
,KKN O
	maxLengthKKP Y
:KKY Z
$numKK[ ]
,KK] ^
nullableKK_ g
:KKg h
trueKKi m
)KKm n
,KKn o
DisableLL 
=LL 
tableLL #
.LL# $
ColumnLL$ *
<LL* +
boolLL+ /
>LL/ 0
(LL0 1
typeLL1 5
:LL5 6
$strLL7 @
,LL@ A
nullableLLB J
:LLJ K
falseLLL Q
)LLQ R
,LLR S
CreationDateMM  
=MM! "
tableMM# (
.MM( )
ColumnMM) /
<MM/ 0
DateTimeMM0 8
>MM8 9
(MM9 :
typeMM: >
:MM> ?
$strMM@ Z
,MMZ [
nullableMM\ d
:MMd e
falseMMf k
)MMk l
,MMl m
DeletionDateNN  
=NN! "
tableNN# (
.NN( )
ColumnNN) /
<NN/ 0
DateTimeNN0 8
>NN8 9
(NN9 :
typeNN: >
:NN> ?
$strNN@ Z
,NNZ [
nullableNN\ d
:NNd e
trueNNf j
)NNj k
,NNk l
LastChangeDateOO "
=OO# $
tableOO% *
.OO* +
ColumnOO+ 1
<OO1 2
DateTimeOO2 :
>OO: ;
(OO; <
typeOO< @
:OO@ A
$strOOB \
,OO\ ]
nullableOO^ f
:OOf g
trueOOh l
)OOl m
}PP 
,PP 
constraintsQQ 
:QQ 
tableQQ "
=>QQ# %
{RR 
tableSS 
.SS 

PrimaryKeySS $
(SS$ %
$strSS% 3
,SS3 4
xSS5 6
=>SS7 9
xSS: ;
.SS; <
IdSS< >
)SS> ?
;SS? @
}TT 
)TT 
;TT 
migrationBuilderVV 
.VV 
CreateTableVV (
(VV( )
nameWW 
:WW 
$strWW '
,WW' (
columnsXX 
:XX 
tableXX 
=>XX !
newXX" %
{YY 
IdZZ 
=ZZ 
tableZZ 
.ZZ 
ColumnZZ %
<ZZ% &
GuidZZ& *
>ZZ* +
(ZZ+ ,
typeZZ, 0
:ZZ0 1
$strZZ2 8
,ZZ8 9
nullableZZ: B
:ZZB C
falseZZD I
)ZZI J
,ZZJ K!
EmailConfirmationCode[[ )
=[[* +
table[[, 1
.[[1 2
Column[[2 8
<[[8 9
string[[9 ?
>[[? @
([[@ A
type[[A E
:[[E F
$str[[G ]
,[[] ^
	maxLength[[_ h
:[[h i
$num[[j k
,[[k l
nullable[[m u
:[[u v
true[[w {
)[[{ |
,[[| }'
PhoneNumberConfirmationCode\\ /
=\\0 1
table\\2 7
.\\7 8
Column\\8 >
<\\> ?
string\\? E
>\\E F
(\\F G
type\\G K
:\\K L
$str\\M c
,\\c d
	maxLength\\e n
:\\n o
$num\\p q
,\\q r
nullable\\s {
:\\{ |
true	\\} Å
)
\\Å Ç
,
\\Ç É
EmailValidated]] "
=]]# $
table]]% *
.]]* +
Column]]+ 1
<]]1 2
bool]]2 6
>]]6 7
(]]7 8
type]]8 <
:]]< =
$str]]> G
,]]G H
nullable]]I Q
:]]Q R
false]]S X
)]]X Y
,]]Y Z 
PhoneNumberValidated^^ (
=^^) *
table^^+ 0
.^^0 1
Column^^1 7
<^^7 8
bool^^8 <
>^^< =
(^^= >
type^^> B
:^^B C
$str^^D M
,^^M N
nullable^^O W
:^^W X
false^^Y ^
)^^^ _
,^^_ `
CreationDate__  
=__! "
table__# (
.__( )
Column__) /
<__/ 0
DateTime__0 8
>__8 9
(__9 :
type__: >
:__> ?
$str__@ Z
,__Z [
nullable__\ d
:__d e
false__f k
)__k l
,__l m
DeletionDate``  
=``! "
table``# (
.``( )
Column``) /
<``/ 0
DateTime``0 8
>``8 9
(``9 :
type``: >
:``> ?
$str``@ Z
,``Z [
nullable``\ d
:``d e
true``f j
)``j k
,``k l
LastChangeDateaa "
=aa# $
tableaa% *
.aa* +
Columnaa+ 1
<aa1 2
DateTimeaa2 :
>aa: ;
(aa; <
typeaa< @
:aa@ A
$straaB \
,aa\ ]
nullableaa^ f
:aaf g
trueaah l
)aal m
}bb 
,bb 
constraintscc 
:cc 
tablecc "
=>cc# %
{dd 
tableee 
.ee 

PrimaryKeyee $
(ee$ %
$stree% 9
,ee9 :
xee; <
=>ee= ?
xee@ A
.eeA B
IdeeB D
)eeD E
;eeE F
}ff 
)ff 
;ff 
migrationBuilderhh 
.hh 
CreateTablehh (
(hh( )
nameii 
:ii 
$strii )
,ii) *
columnsjj 
:jj 
tablejj 
=>jj !
newjj" %
{kk 
RegisterOutIdll !
=ll" #
tablell$ )
.ll) *
Columnll* 0
<ll0 1
Guidll1 5
>ll5 6
(ll6 7
typell7 ;
:ll; <
$strll= C
,llC D
nullablellE M
:llM N
falsellO T
)llT U
,llU V
StockIdmm 
=mm 
tablemm #
.mm# $
Columnmm$ *
<mm* +
Guidmm+ /
>mm/ 0
(mm0 1
typemm1 5
:mm5 6
$strmm7 =
,mm= >
nullablemm? G
:mmG H
falsemmI N
)mmN O
,mmO P
Quantitynn 
=nn 
tablenn $
.nn$ %
Columnnn% +
<nn+ ,
decimalnn, 3
>nn3 4
(nn4 5
typenn5 9
:nn9 :
$strnn; I
,nnI J
nullablennK S
:nnS T
falsennU Z
)nnZ [
}oo 
,oo 
constraintspp 
:pp 
tablepp "
=>pp# %
{qq 
tablerr 
.rr 

PrimaryKeyrr $
(rr$ %
$strrr% ;
,rr; <
xrr= >
=>rr? A
newrrB E
{rrF G
xrrH I
.rrI J
RegisterOutIdrrJ W
,rrW X
xrrY Z
.rrZ [
StockIdrr[ b
}rrc d
)rrd e
;rre f
tabless 
.ss 

ForeignKeyss $
(ss$ %
namett 
:tt 
$strtt O
,ttO P
columnuu 
:uu 
xuu  !
=>uu" $
xuu% &
.uu& '
RegisterOutIduu' 4
,uu4 5
principalTablevv &
:vv& '
$strvv( 6
,vv6 7
principalColumnww '
:ww' (
$strww) -
)ww- .
;ww. /
tablexx 
.xx 

ForeignKeyxx $
(xx$ %
nameyy 
:yy 
$stryy C
,yyC D
columnzz 
:zz 
xzz  !
=>zz" $
xzz% &
.zz& '
StockIdzz' .
,zz. /
principalTable{{ &
:{{& '
$str{{( 0
,{{0 1
principalColumn|| '
:||' (
$str||) -
)||- .
;||. /
}}} 
)}} 
;}} 
migrationBuilder 
. 
CreateTable (
(( )
name
ÄÄ 
:
ÄÄ 
$str
ÄÄ #
,
ÄÄ# $
columns
ÅÅ 
:
ÅÅ 
table
ÅÅ 
=>
ÅÅ !
new
ÅÅ" %
{
ÇÇ 
Id
ÉÉ 
=
ÉÉ 
table
ÉÉ 
.
ÉÉ 
Column
ÉÉ %
<
ÉÉ% &
Guid
ÉÉ& *
>
ÉÉ* +
(
ÉÉ+ ,
type
ÉÉ, 0
:
ÉÉ0 1
$str
ÉÉ2 8
,
ÉÉ8 9
nullable
ÉÉ: B
:
ÉÉB C
false
ÉÉD I
)
ÉÉI J
,
ÉÉJ K
Number
ÑÑ 
=
ÑÑ 
table
ÑÑ "
.
ÑÑ" #
Column
ÑÑ# )
<
ÑÑ) *
int
ÑÑ* -
>
ÑÑ- .
(
ÑÑ. /
type
ÑÑ/ 3
:
ÑÑ3 4
$str
ÑÑ5 >
,
ÑÑ> ?
nullable
ÑÑ@ H
:
ÑÑH I
false
ÑÑJ O
)
ÑÑO P
,
ÑÑP Q

SupplierId
ÖÖ 
=
ÖÖ  
table
ÖÖ! &
.
ÖÖ& '
Column
ÖÖ' -
<
ÖÖ- .
Guid
ÖÖ. 2
>
ÖÖ2 3
(
ÖÖ3 4
type
ÖÖ4 8
:
ÖÖ8 9
$str
ÖÖ: @
,
ÖÖ@ A
nullable
ÖÖB J
:
ÖÖJ K
false
ÖÖL Q
)
ÖÖQ R
,
ÖÖR S
Donation
ÜÜ 
=
ÜÜ 
table
ÜÜ $
.
ÜÜ$ %
Column
ÜÜ% +
<
ÜÜ+ ,
bool
ÜÜ, 0
>
ÜÜ0 1
(
ÜÜ1 2
type
ÜÜ2 6
:
ÜÜ6 7
$str
ÜÜ8 A
,
ÜÜA B
nullable
ÜÜC K
:
ÜÜK L
false
ÜÜM R
)
ÜÜR S
,
ÜÜS T
	ApplyDate
áá 
=
áá 
table
áá  %
.
áá% &
Column
áá& ,
<
áá, -
DateTime
áá- 5
>
áá5 6
(
áá6 7
type
áá7 ;
:
áá; <
$str
áá= W
,
ááW X
nullable
ááY a
:
ááa b
false
áác h
)
ááh i
,
áái j
Description
àà 
=
àà  !
table
àà" '
.
àà' (
Column
àà( .
<
àà. /
string
àà/ 5
>
àà5 6
(
àà6 7
type
àà7 ;
:
àà; <
$str
àà= C
,
ààC D
nullable
ààE M
:
ààM N
true
ààO S
)
ààS T
,
ààT U
Apply
ââ 
=
ââ 
table
ââ !
.
ââ! "
Column
ââ" (
<
ââ( )
bool
ââ) -
>
ââ- .
(
ââ. /
type
ââ/ 3
:
ââ3 4
$str
ââ5 >
,
ââ> ?
nullable
ââ@ H
:
ââH I
false
ââJ O
)
ââO P
,
ââP Q
CreationDate
ää  
=
ää! "
table
ää# (
.
ää( )
Column
ää) /
<
ää/ 0
DateTime
ää0 8
>
ää8 9
(
ää9 :
type
ää: >
:
ää> ?
$str
ää@ Z
,
ääZ [
nullable
ää\ d
:
ääd e
false
ääf k
)
ääk l
,
ääl m
DeletionDate
ãã  
=
ãã! "
table
ãã# (
.
ãã( )
Column
ãã) /
<
ãã/ 0
DateTime
ãã0 8
>
ãã8 9
(
ãã9 :
type
ãã: >
:
ãã> ?
$str
ãã@ Z
,
ããZ [
nullable
ãã\ d
:
ããd e
true
ããf j
)
ããj k
,
ããk l
LastChangeDate
åå "
=
åå# $
table
åå% *
.
åå* +
Column
åå+ 1
<
åå1 2
DateTime
åå2 :
>
åå: ;
(
åå; <
type
åå< @
:
åå@ A
$str
ååB \
,
åå\ ]
nullable
åå^ f
:
ååf g
true
ååh l
)
åål m
}
çç 
,
çç 
constraints
éé 
:
éé 
table
éé "
=>
éé# %
{
èè 
table
êê 
.
êê 

PrimaryKey
êê $
(
êê$ %
$str
êê% 5
,
êê5 6
x
êê7 8
=>
êê9 ;
x
êê< =
.
êê= >
Id
êê> @
)
êê@ A
;
êêA B
table
ëë 
.
ëë 

ForeignKey
ëë $
(
ëë$ %
name
íí 
:
íí 
$str
íí C
,
ííC D
column
ìì 
:
ìì 
x
ìì  !
=>
ìì" $
x
ìì% &
.
ìì& '

SupplierId
ìì' 1
,
ìì1 2
principalTable
îî &
:
îî& '
$str
îî( 3
,
îî3 4
principalColumn
ïï '
:
ïï' (
$str
ïï) -
)
ïï- .
;
ïï. /
}
ññ 
)
ññ 
;
ññ 
migrationBuilder
òò 
.
òò 
CreateTable
òò (
(
òò( )
name
ôô 
:
ôô 
$str
ôô 
,
ôô 
columns
öö 
:
öö 
table
öö 
=>
öö !
new
öö" %
{
õõ 
Id
úú 
=
úú 
table
úú 
.
úú 
Column
úú %
<
úú% &
Guid
úú& *
>
úú* +
(
úú+ ,
type
úú, 0
:
úú0 1
$str
úú2 8
,
úú8 9
nullable
úú: B
:
úúB C
false
úúD I
)
úúI J
,
úúJ K
Name
ùù 
=
ùù 
table
ùù  
.
ùù  !
Column
ùù! '
<
ùù' (
string
ùù( .
>
ùù. /
(
ùù/ 0
type
ùù0 4
:
ùù4 5
$str
ùù6 M
,
ùùM N
	maxLength
ùùO X
:
ùùX Y
$num
ùùZ \
,
ùù\ ]
nullable
ùù^ f
:
ùùf g
true
ùùh l
)
ùùl m
,
ùùm n
PhoneNumber
ûû 
=
ûû  !
table
ûû" '
.
ûû' (
Column
ûû( .
<
ûû. /
string
ûû/ 5
>
ûû5 6
(
ûû6 7
type
ûû7 ;
:
ûû; <
$str
ûû= T
,
ûûT U
	maxLength
ûûV _
:
ûû_ `
$num
ûûa c
,
ûûc d
nullable
ûûe m
:
ûûm n
true
ûûo s
)
ûûs t
,
ûût u
Email
üü 
=
üü 
table
üü !
.
üü! "
Column
üü" (
<
üü( )
string
üü) /
>
üü/ 0
(
üü0 1
type
üü1 5
:
üü5 6
$str
üü7 N
,
üüN O
	maxLength
üüP Y
:
üüY Z
$num
üü[ ]
,
üü] ^
nullable
üü_ g
:
üüg h
true
üüi m
)
üüm n
,
üün o
Password
†† 
=
†† 
table
†† $
.
††$ %
Column
††% +
<
††+ ,
byte
††, 0
[
††0 1
]
††1 2
>
††2 3
(
††3 4
type
††4 8
:
††8 9
$str
††: A
,
††A B
nullable
††C K
:
††K L
true
††M Q
)
††Q R
,
††R S
	LastLogin
°° 
=
°° 
table
°°  %
.
°°% &
Column
°°& ,
<
°°, -
DateTime
°°- 5
>
°°5 6
(
°°6 7
type
°°7 ;
:
°°; <
$str
°°= W
,
°°W X
nullable
°°Y a
:
°°a b
true
°°c g
)
°°g h
,
°°h i
AppleUserId
¢¢ 
=
¢¢  !
table
¢¢" '
.
¢¢' (
Column
¢¢( .
<
¢¢. /
string
¢¢/ 5
>
¢¢5 6
(
¢¢6 7
type
¢¢7 ;
:
¢¢; <
$str
¢¢= C
,
¢¢C D
nullable
¢¢E M
:
¢¢M N
true
¢¢O S
)
¢¢S T
,
¢¢T U$
LastPasswordChangeDate
££ *
=
££+ ,
table
££- 2
.
££2 3
Column
££3 9
<
££9 :
DateTime
££: B
>
££B C
(
££C D
type
££D H
:
££H I
$str
££J d
,
££d e
nullable
££f n
:
££n o
true
££p t
)
££t u
,
££u v
UserValidationId
§§ $
=
§§% &
table
§§' ,
.
§§, -
Column
§§- 3
<
§§3 4
Guid
§§4 8
>
§§8 9
(
§§9 :
type
§§: >
:
§§> ?
$str
§§@ F
,
§§F G
nullable
§§H P
:
§§P Q
false
§§R W
)
§§W X
,
§§X Y'
FireBaseCloudMessageToken
•• -
=
••. /
table
••0 5
.
••5 6
Column
••6 <
<
••< =
string
••= C
>
••C D
(
••D E
type
••E I
:
••I J
$str
••K Q
,
••Q R
nullable
••S [
:
••[ \
true
••] a
)
••a b
,
••b c
CreationDate
¶¶  
=
¶¶! "
table
¶¶# (
.
¶¶( )
Column
¶¶) /
<
¶¶/ 0
DateTime
¶¶0 8
>
¶¶8 9
(
¶¶9 :
type
¶¶: >
:
¶¶> ?
$str
¶¶@ Z
,
¶¶Z [
nullable
¶¶\ d
:
¶¶d e
false
¶¶f k
)
¶¶k l
,
¶¶l m
DeletionDate
ßß  
=
ßß! "
table
ßß# (
.
ßß( )
Column
ßß) /
<
ßß/ 0
DateTime
ßß0 8
>
ßß8 9
(
ßß9 :
type
ßß: >
:
ßß> ?
$str
ßß@ Z
,
ßßZ [
nullable
ßß\ d
:
ßßd e
true
ßßf j
)
ßßj k
,
ßßk l
LastChangeDate
®® "
=
®®# $
table
®®% *
.
®®* +
Column
®®+ 1
<
®®1 2
DateTime
®®2 :
>
®®: ;
(
®®; <
type
®®< @
:
®®@ A
$str
®®B \
,
®®\ ]
nullable
®®^ f
:
®®f g
true
®®h l
)
®®l m
}
©© 
,
©© 
constraints
™™ 
:
™™ 
table
™™ "
=>
™™# %
{
´´ 
table
¨¨ 
.
¨¨ 

PrimaryKey
¨¨ $
(
¨¨$ %
$str
¨¨% /
,
¨¨/ 0
x
¨¨1 2
=>
¨¨3 5
x
¨¨6 7
.
¨¨7 8
Id
¨¨8 :
)
¨¨: ;
;
¨¨; <
table
≠≠ 
.
≠≠ 

ForeignKey
≠≠ $
(
≠≠$ %
name
ÆÆ 
:
ÆÆ 
$str
ÆÆ I
,
ÆÆI J
column
ØØ 
:
ØØ 
x
ØØ  !
=>
ØØ" $
x
ØØ% &
.
ØØ& '
UserValidationId
ØØ' 7
,
ØØ7 8
principalTable
∞∞ &
:
∞∞& '
$str
∞∞( 9
,
∞∞9 :
principalColumn
±± '
:
±±' (
$str
±±) -
)
±±- .
;
±±. /
}
≤≤ 
)
≤≤ 
;
≤≤ 
migrationBuilder
¥¥ 
.
¥¥ 
CreateTable
¥¥ (
(
¥¥( )
name
µµ 
:
µµ 
$str
µµ (
,
µµ( )
columns
∂∂ 
:
∂∂ 
table
∂∂ 
=>
∂∂ !
new
∂∂" %
{
∑∑ 
RegisterInId
∏∏  
=
∏∏! "
table
∏∏# (
.
∏∏( )
Column
∏∏) /
<
∏∏/ 0
Guid
∏∏0 4
>
∏∏4 5
(
∏∏5 6
type
∏∏6 :
:
∏∏: ;
$str
∏∏< B
,
∏∏B C
nullable
∏∏D L
:
∏∏L M
false
∏∏N S
)
∏∏S T
,
∏∏T U
StockId
ππ 
=
ππ 
table
ππ #
.
ππ# $
Column
ππ$ *
<
ππ* +
Guid
ππ+ /
>
ππ/ 0
(
ππ0 1
type
ππ1 5
:
ππ5 6
$str
ππ7 =
,
ππ= >
nullable
ππ? G
:
ππG H
false
ππI N
)
ππN O
,
ππO P
Quantity
∫∫ 
=
∫∫ 
table
∫∫ $
.
∫∫$ %
Column
∫∫% +
<
∫∫+ ,
decimal
∫∫, 3
>
∫∫3 4
(
∫∫4 5
type
∫∫5 9
:
∫∫9 :
$str
∫∫; I
,
∫∫I J
nullable
∫∫K S
:
∫∫S T
false
∫∫U Z
)
∫∫Z [
,
∫∫[ \
Price
ªª 
=
ªª 
table
ªª !
.
ªª! "
Column
ªª" (
<
ªª( )
decimal
ªª) 0
>
ªª0 1
(
ªª1 2
type
ªª2 6
:
ªª6 7
$str
ªª8 F
,
ªªF G
nullable
ªªH P
:
ªªP Q
false
ªªR W
)
ªªW X
}
ºº 
,
ºº 
constraints
ΩΩ 
:
ΩΩ 
table
ΩΩ "
=>
ΩΩ# %
{
ææ 
table
øø 
.
øø 

PrimaryKey
øø $
(
øø$ %
$str
øø% :
,
øø: ;
x
øø< =
=>
øø> @
new
øøA D
{
øøE F
x
øøG H
.
øøH I
RegisterInId
øøI U
,
øøU V
x
øøW X
.
øøX Y
StockId
øøY `
}
øøa b
)
øøb c
;
øøc d
table
¿¿ 
.
¿¿ 

ForeignKey
¿¿ $
(
¿¿$ %
name
¡¡ 
:
¡¡ 
$str
¡¡ L
,
¡¡L M
column
¬¬ 
:
¬¬ 
x
¬¬  !
=>
¬¬" $
x
¬¬% &
.
¬¬& '
RegisterInId
¬¬' 3
,
¬¬3 4
principalTable
√√ &
:
√√& '
$str
√√( 5
,
√√5 6
principalColumn
ƒƒ '
:
ƒƒ' (
$str
ƒƒ) -
)
ƒƒ- .
;
ƒƒ. /
table
≈≈ 
.
≈≈ 

ForeignKey
≈≈ $
(
≈≈$ %
name
∆∆ 
:
∆∆ 
$str
∆∆ B
,
∆∆B C
column
«« 
:
«« 
x
««  !
=>
««" $
x
««% &
.
««& '
StockId
««' .
,
««. /
principalTable
»» &
:
»»& '
$str
»»( 0
,
»»0 1
principalColumn
…… '
:
……' (
$str
……) -
)
……- .
;
……. /
}
   
)
   
;
   
migrationBuilder
ÃÃ 
.
ÃÃ 
CreateTable
ÃÃ (
(
ÃÃ( )
name
ÕÕ 
:
ÕÕ 
$str
ÕÕ !
,
ÕÕ! "
columns
ŒŒ 
:
ŒŒ 
table
ŒŒ 
=>
ŒŒ !
new
ŒŒ" %
{
œœ 
Id
–– 
=
–– 
table
–– 
.
–– 
Column
–– %
<
––% &
Guid
––& *
>
––* +
(
––+ ,
type
––, 0
:
––0 1
$str
––2 8
,
––8 9
nullable
––: B
:
––B C
false
––D I
)
––I J
,
––J K
Name
—— 
=
—— 
table
——  
.
——  !
Column
——! '
<
——' (
string
——( .
>
——. /
(
——/ 0
type
——0 4
:
——4 5
$str
——6 M
,
——M N
	maxLength
——O X
:
——X Y
$num
——Z \
,
——\ ]
nullable
——^ f
:
——f g
true
——h l
)
——l m
,
——m n
About
““ 
=
““ 
table
““ !
.
““! "
Column
““" (
<
““( )
string
““) /
>
““/ 0
(
““0 1
type
““1 5
:
““5 6
$str
““7 O
,
““O P
	maxLength
““Q Z
:
““Z [
$num
““\ _
,
““_ `
nullable
““a i
:
““i j
true
““k o
)
““o p
,
““p q
	PhotoPath
”” 
=
”” 
table
””  %
.
””% &
Column
””& ,
<
””, -
string
””- 3
>
””3 4
(
””4 5
type
””5 9
:
””9 :
$str
””; S
,
””S T
	maxLength
””U ^
:
””^ _
$num
””` c
,
””c d
nullable
””e m
:
””m n
true
””o s
)
””s t
,
””t u
Disable
‘‘ 
=
‘‘ 
table
‘‘ #
.
‘‘# $
Column
‘‘$ *
<
‘‘* +
bool
‘‘+ /
>
‘‘/ 0
(
‘‘0 1
type
‘‘1 5
:
‘‘5 6
$str
‘‘7 @
,
‘‘@ A
nullable
‘‘B J
:
‘‘J K
false
‘‘L Q
)
‘‘Q R
,
‘‘R S
SplitPercentage
’’ #
=
’’$ %
table
’’& +
.
’’+ ,
Column
’’, 2
<
’’2 3
decimal
’’3 :
>
’’: ;
(
’’; <
type
’’< @
:
’’@ A
$str
’’B K
,
’’K L
nullable
’’M U
:
’’U V
false
’’W \
)
’’\ ]
,
’’] ^
UserId
÷÷ 
=
÷÷ 
table
÷÷ "
.
÷÷" #
Column
÷÷# )
<
÷÷) *
Guid
÷÷* .
>
÷÷. /
(
÷÷/ 0
type
÷÷0 4
:
÷÷4 5
$str
÷÷6 <
,
÷÷< =
nullable
÷÷> F
:
÷÷F G
false
÷÷H M
)
÷÷M N
,
÷÷N O
CreationDate
◊◊  
=
◊◊! "
table
◊◊# (
.
◊◊( )
Column
◊◊) /
<
◊◊/ 0
DateTime
◊◊0 8
>
◊◊8 9
(
◊◊9 :
type
◊◊: >
:
◊◊> ?
$str
◊◊@ Z
,
◊◊Z [
nullable
◊◊\ d
:
◊◊d e
false
◊◊f k
)
◊◊k l
,
◊◊l m
DeletionDate
ÿÿ  
=
ÿÿ! "
table
ÿÿ# (
.
ÿÿ( )
Column
ÿÿ) /
<
ÿÿ/ 0
DateTime
ÿÿ0 8
>
ÿÿ8 9
(
ÿÿ9 :
type
ÿÿ: >
:
ÿÿ> ?
$str
ÿÿ@ Z
,
ÿÿZ [
nullable
ÿÿ\ d
:
ÿÿd e
true
ÿÿf j
)
ÿÿj k
,
ÿÿk l
LastChangeDate
ŸŸ "
=
ŸŸ# $
table
ŸŸ% *
.
ŸŸ* +
Column
ŸŸ+ 1
<
ŸŸ1 2
DateTime
ŸŸ2 :
>
ŸŸ: ;
(
ŸŸ; <
type
ŸŸ< @
:
ŸŸ@ A
$str
ŸŸB \
,
ŸŸ\ ]
nullable
ŸŸ^ f
:
ŸŸf g
true
ŸŸh l
)
ŸŸl m
}
⁄⁄ 
,
⁄⁄ 
constraints
€€ 
:
€€ 
table
€€ "
=>
€€# %
{
‹‹ 
table
›› 
.
›› 

PrimaryKey
›› $
(
››$ %
$str
››% 3
,
››3 4
x
››5 6
=>
››7 9
x
››: ;
.
››; <
Id
››< >
)
››> ?
;
››? @
table
ﬁﬁ 
.
ﬁﬁ 

ForeignKey
ﬁﬁ $
(
ﬁﬁ$ %
name
ﬂﬂ 
:
ﬂﬂ 
$str
ﬂﬂ 9
,
ﬂﬂ9 :
column
‡‡ 
:
‡‡ 
x
‡‡  !
=>
‡‡" $
x
‡‡% &
.
‡‡& '
UserId
‡‡' -
,
‡‡- .
principalTable
·· &
:
··& '
$str
··( /
,
··/ 0
principalColumn
‚‚ '
:
‚‚' (
$str
‚‚) -
)
‚‚- .
;
‚‚. /
}
„„ 
)
„„ 
;
„„ 
migrationBuilder
ÂÂ 
.
ÂÂ 
CreateTable
ÂÂ (
(
ÂÂ( )
name
ÊÊ 
:
ÊÊ 
$str
ÊÊ  
,
ÊÊ  !
columns
ÁÁ 
:
ÁÁ 
table
ÁÁ 
=>
ÁÁ !
new
ÁÁ" %
{
ËË 
Id
ÈÈ 
=
ÈÈ 
table
ÈÈ 
.
ÈÈ 
Column
ÈÈ %
<
ÈÈ% &
Guid
ÈÈ& *
>
ÈÈ* +
(
ÈÈ+ ,
type
ÈÈ, 0
:
ÈÈ0 1
$str
ÈÈ2 8
,
ÈÈ8 9
nullable
ÈÈ: B
:
ÈÈB C
false
ÈÈD I
)
ÈÈI J
,
ÈÈJ K
Name
ÍÍ 
=
ÍÍ 
table
ÍÍ  
.
ÍÍ  !
Column
ÍÍ! '
<
ÍÍ' (
string
ÍÍ( .
>
ÍÍ. /
(
ÍÍ/ 0
type
ÍÍ0 4
:
ÍÍ4 5
$str
ÍÍ6 M
,
ÍÍM N
	maxLength
ÍÍO X
:
ÍÍX Y
$num
ÍÍZ \
,
ÍÍ\ ]
nullable
ÍÍ^ f
:
ÍÍf g
true
ÍÍh l
)
ÍÍl m
,
ÍÍm n
	PhotoPath
ÎÎ 
=
ÎÎ 
table
ÎÎ  %
.
ÎÎ% &
Column
ÎÎ& ,
<
ÎÎ, -
string
ÎÎ- 3
>
ÎÎ3 4
(
ÎÎ4 5
type
ÎÎ5 9
:
ÎÎ9 :
$str
ÎÎ; S
,
ÎÎS T
	maxLength
ÎÎU ^
:
ÎÎ^ _
$num
ÎÎ` c
,
ÎÎc d
nullable
ÎÎe m
:
ÎÎm n
true
ÎÎo s
)
ÎÎs t
,
ÎÎt u
Disable
ÏÏ 
=
ÏÏ 
table
ÏÏ #
.
ÏÏ# $
Column
ÏÏ$ *
<
ÏÏ* +
bool
ÏÏ+ /
>
ÏÏ/ 0
(
ÏÏ0 1
type
ÏÏ1 5
:
ÏÏ5 6
$str
ÏÏ7 @
,
ÏÏ@ A
nullable
ÏÏB J
:
ÏÏJ K
false
ÏÏL Q
)
ÏÏQ R
,
ÏÏR S
UserId
ÌÌ 
=
ÌÌ 
table
ÌÌ "
.
ÌÌ" #
Column
ÌÌ# )
<
ÌÌ) *
Guid
ÌÌ* .
>
ÌÌ. /
(
ÌÌ/ 0
type
ÌÌ0 4
:
ÌÌ4 5
$str
ÌÌ6 <
,
ÌÌ< =
nullable
ÌÌ> F
:
ÌÌF G
false
ÌÌH M
)
ÌÌM N
,
ÌÌN O
CreationDate
ÓÓ  
=
ÓÓ! "
table
ÓÓ# (
.
ÓÓ( )
Column
ÓÓ) /
<
ÓÓ/ 0
DateTime
ÓÓ0 8
>
ÓÓ8 9
(
ÓÓ9 :
type
ÓÓ: >
:
ÓÓ> ?
$str
ÓÓ@ Z
,
ÓÓZ [
nullable
ÓÓ\ d
:
ÓÓd e
false
ÓÓf k
)
ÓÓk l
,
ÓÓl m
DeletionDate
ÔÔ  
=
ÔÔ! "
table
ÔÔ# (
.
ÔÔ( )
Column
ÔÔ) /
<
ÔÔ/ 0
DateTime
ÔÔ0 8
>
ÔÔ8 9
(
ÔÔ9 :
type
ÔÔ: >
:
ÔÔ> ?
$str
ÔÔ@ Z
,
ÔÔZ [
nullable
ÔÔ\ d
:
ÔÔd e
true
ÔÔf j
)
ÔÔj k
,
ÔÔk l
LastChangeDate
 "
=
# $
table
% *
.
* +
Column
+ 1
<
1 2
DateTime
2 :
>
: ;
(
; <
type
< @
:
@ A
$str
B \
,
\ ]
nullable
^ f
:
f g
true
h l
)
l m
}
ÒÒ 
,
ÒÒ 
constraints
ÚÚ 
:
ÚÚ 
table
ÚÚ "
=>
ÚÚ# %
{
ÛÛ 
table
ÙÙ 
.
ÙÙ 

PrimaryKey
ÙÙ $
(
ÙÙ$ %
$str
ÙÙ% 2
,
ÙÙ2 3
x
ÙÙ4 5
=>
ÙÙ6 8
x
ÙÙ9 :
.
ÙÙ: ;
Id
ÙÙ; =
)
ÙÙ= >
;
ÙÙ> ?
table
ıı 
.
ıı 

ForeignKey
ıı $
(
ıı$ %
name
ˆˆ 
:
ˆˆ 
$str
ˆˆ 8
,
ˆˆ8 9
column
˜˜ 
:
˜˜ 
x
˜˜  !
=>
˜˜" $
x
˜˜% &
.
˜˜& '
UserId
˜˜' -
,
˜˜- .
principalTable
¯¯ &
:
¯¯& '
$str
¯¯( /
,
¯¯/ 0
principalColumn
˘˘ '
:
˘˘' (
$str
˘˘) -
)
˘˘- .
;
˘˘. /
}
˙˙ 
)
˙˙ 
;
˙˙ 
migrationBuilder
¸¸ 
.
¸¸ 
CreateTable
¸¸ (
(
¸¸( )
name
˝˝ 
:
˝˝ 
$str
˝˝ !
,
˝˝! "
columns
˛˛ 
:
˛˛ 
table
˛˛ 
=>
˛˛ !
new
˛˛" %
{
ˇˇ 
UserId
ÄÄ 
=
ÄÄ 
table
ÄÄ "
.
ÄÄ" #
Column
ÄÄ# )
<
ÄÄ) *
Guid
ÄÄ* .
>
ÄÄ. /
(
ÄÄ/ 0
type
ÄÄ0 4
:
ÄÄ4 5
$str
ÄÄ6 <
,
ÄÄ< =
nullable
ÄÄ> F
:
ÄÄF G
false
ÄÄH M
)
ÄÄM N
,
ÄÄN O
RoleId
ÅÅ 
=
ÅÅ 
table
ÅÅ "
.
ÅÅ" #
Column
ÅÅ# )
<
ÅÅ) *
Guid
ÅÅ* .
>
ÅÅ. /
(
ÅÅ/ 0
type
ÅÅ0 4
:
ÅÅ4 5
$str
ÅÅ6 <
,
ÅÅ< =
nullable
ÅÅ> F
:
ÅÅF G
false
ÅÅH M
)
ÅÅM N
}
ÇÇ 
,
ÇÇ 
constraints
ÉÉ 
:
ÉÉ 
table
ÉÉ "
=>
ÉÉ# %
{
ÑÑ 
table
ÖÖ 
.
ÖÖ 

PrimaryKey
ÖÖ $
(
ÖÖ$ %
$str
ÖÖ% 3
,
ÖÖ3 4
x
ÖÖ5 6
=>
ÖÖ7 9
new
ÖÖ: =
{
ÖÖ> ?
x
ÖÖ@ A
.
ÖÖA B
UserId
ÖÖB H
,
ÖÖH I
x
ÖÖJ K
.
ÖÖK L
RoleId
ÖÖL R
}
ÖÖS T
)
ÖÖT U
;
ÖÖU V
table
ÜÜ 
.
ÜÜ 

ForeignKey
ÜÜ $
(
ÜÜ$ %
name
áá 
:
áá 
$str
áá 9
,
áá9 :
column
àà 
:
àà 
x
àà  !
=>
àà" $
x
àà% &
.
àà& '
RoleId
àà' -
,
àà- .
principalTable
ââ &
:
ââ& '
$str
ââ( /
,
ââ/ 0
principalColumn
ää '
:
ää' (
$str
ää) -
)
ää- .
;
ää. /
table
ãã 
.
ãã 

ForeignKey
ãã $
(
ãã$ %
name
åå 
:
åå 
$str
åå 9
,
åå9 :
column
çç 
:
çç 
x
çç  !
=>
çç" $
x
çç% &
.
çç& '
UserId
çç' -
,
çç- .
principalTable
éé &
:
éé& '
$str
éé( /
,
éé/ 0
principalColumn
èè '
:
èè' (
$str
èè) -
)
èè- .
;
èè. /
}
êê 
)
êê 
;
êê 
migrationBuilder
íí 
.
íí 

InsertData
íí '
(
íí' (
table
ìì 
:
ìì 
$str
ìì 
,
ìì 
columns
îî 
:
îî 
new
îî 
[
îî 
]
îî 
{
îî  
$str
îî! %
,
îî% &
$str
îî' 5
,
îî5 6
$str
îî7 E
,
îîE F
$str
îîG W
,
îîW X
$str
îîY _
,
îî_ `
$str
îîa k
}
îîl m
,
îîm n
values
ïï 
:
ïï 
new
ïï 
object
ïï "
[
ïï" #
,
ïï# $
]
ïï$ %
{
ññ 
{
óó 
new
óó 
Guid
óó 
(
óó 
$str
óó E
)
óóE F
,
óóF G
new
óóH K
DateTime
óóL T
(
óóT U
$num
óóU Y
,
óóY Z
$num
óó[ ]
,
óó] ^
$num
óó_ `
,
óó` a
$num
óób c
,
óóc d
$num
óóe f
,
óóf g
$num
óóh i
,
óói j
$num
óók l
,
óól m
DateTimeKind
óón z
.
óóz {
Utc
óó{ ~
)
óó~ 
,óó Ä
nullóóÅ Ö
,óóÖ Ü
nullóóá ã
,óóã å
$stróóç ñ
,óóñ ó
$numóóò ô
}óóö õ
,óóõ ú
{
òò 
new
òò 
Guid
òò 
(
òò 
$str
òò E
)
òòE F
,
òòF G
new
òòH K
DateTime
òòL T
(
òòT U
$num
òòU Y
,
òòY Z
$num
òò[ ]
,
òò] ^
$num
òò_ `
,
òò` a
$num
òòb c
,
òòc d
$num
òòe f
,
òòf g
$num
òòh i
,
òòi j
$num
òòk l
,
òòl m
DateTimeKind
òòn z
.
òòz {
Utc
òò{ ~
)
òò~ 
,òò Ä
nullòòÅ Ö
,òòÖ Ü
nullòòá ã
,òòã å
$stròòç ó
,òòó ò
$numòòô ö
}òòõ ú
,òòú ù
{
ôô 
new
ôô 
Guid
ôô 
(
ôô 
$str
ôô E
)
ôôE F
,
ôôF G
new
ôôH K
DateTime
ôôL T
(
ôôT U
$num
ôôU Y
,
ôôY Z
$num
ôô[ ]
,
ôô] ^
$num
ôô_ `
,
ôô` a
$num
ôôb c
,
ôôc d
$num
ôôe f
,
ôôf g
$num
ôôh i
,
ôôi j
$num
ôôk l
,
ôôl m
DateTimeKind
ôôn z
.
ôôz {
Utc
ôô{ ~
)
ôô~ 
,ôô Ä
nullôôÅ Ö
,ôôÖ Ü
nullôôá ã
,ôôã å
$strôôç ï
,ôôï ñ
$numôôó ò
}ôôô ö
}
öö 
)
öö 
;
öö 
migrationBuilder
úú 
.
úú 

InsertData
úú '
(
úú' (
table
ùù 
:
ùù 
$str
ùù (
,
ùù( )
columns
ûû 
:
ûû 
new
ûû 
[
ûû 
]
ûû 
{
ûû  
$str
ûû! %
,
ûû% &
$str
ûû' 5
,
ûû5 6
$str
ûû7 E
,
ûûE F
$str
ûûG ^
,
ûû^ _
$str
ûû` p
,
ûûp q
$strûûr Ç
,ûûÇ É
$strûûÑ °
,ûû° ¢
$strûû£ π
}ûû∫ ª
,ûûª º
values
üü 
:
üü 
new
üü 
object
üü "
[
üü" #
,
üü# $
]
üü$ %
{
†† 
{
°° 
new
°° 
Guid
°° 
(
°° 
$str
°° E
)
°°E F
,
°°F G
new
°°H K
DateTime
°°L T
(
°°T U
$num
°°U Y
,
°°Y Z
$num
°°[ ]
,
°°] ^
$num
°°_ `
,
°°` a
$num
°°b c
,
°°c d
$num
°°e f
,
°°f g
$num
°°h i
,
°°i j
$num
°°k l
,
°°l m
DateTimeKind
°°n z
.
°°z {
Utc
°°{ ~
)
°°~ 
,°° Ä
null°°Å Ö
,°°Ö Ü
null°°á ã
,°°ã å
true°°ç ë
,°°ë í
null°°ì ó
,°°ó ò
null°°ô ù
,°°ù û
true°°ü £
}°°§ •
,°°• ¶
{
¢¢ 
new
¢¢ 
Guid
¢¢ 
(
¢¢ 
$str
¢¢ E
)
¢¢E F
,
¢¢F G
new
¢¢H K
DateTime
¢¢L T
(
¢¢T U
$num
¢¢U Y
,
¢¢Y Z
$num
¢¢[ ]
,
¢¢] ^
$num
¢¢_ `
,
¢¢` a
$num
¢¢b c
,
¢¢c d
$num
¢¢e f
,
¢¢f g
$num
¢¢h i
,
¢¢i j
$num
¢¢k l
,
¢¢l m
DateTimeKind
¢¢n z
.
¢¢z {
Utc
¢¢{ ~
)
¢¢~ 
,¢¢ Ä
null¢¢Å Ö
,¢¢Ö Ü
null¢¢á ã
,¢¢ã å
true¢¢ç ë
,¢¢ë í
null¢¢ì ó
,¢¢ó ò
null¢¢ô ù
,¢¢ù û
true¢¢ü £
}¢¢§ •
,¢¢• ¶
{
££ 
new
££ 
Guid
££ 
(
££ 
$str
££ E
)
££E F
,
££F G
new
££H K
DateTime
££L T
(
££T U
$num
££U Y
,
££Y Z
$num
££[ ]
,
££] ^
$num
££_ `
,
££` a
$num
££b c
,
££c d
$num
££e f
,
££f g
$num
££h i
,
££i j
$num
££k l
,
££l m
DateTimeKind
££n z
.
££z {
Utc
££{ ~
)
££~ 
,££ Ä
null££Å Ö
,££Ö Ü
null££á ã
,££ã å
true££ç ë
,££ë í
null££ì ó
,££ó ò
null££ô ù
,££ù û
true££ü £
}££§ •
}
§§ 
)
§§ 
;
§§ 
migrationBuilder
¶¶ 
.
¶¶ 

InsertData
¶¶ '
(
¶¶' (
table
ßß 
:
ßß 
$str
ßß 
,
ßß 
columns
®® 
:
®® 
new
®® 
[
®® 
]
®® 
{
®®  
$str
®®! %
,
®®% &
$str
®®' 4
,
®®4 5
$str
®®6 D
,
®®D E
$str
®®F T
,
®®T U
$str
®®V ]
,
®®] ^
$str
®®_ z
,
®®z {
$str®®| å
,®®å ç
$str®®é ô
,®®ô ö
$str®®õ ≥
,®®≥ ¥
$str®®µ ª
,®®ª º
$str®®Ω «
,®®« »
$str®®… ÷
,®®÷ ◊
$str®®ÿ Í
}®®Î Ï
,®®Ï Ì
values
©© 
:
©© 
new
©© 
object
©© "
[
©©" #
,
©©# $
]
©©$ %
{
™™ 
{
´´ 
new
´´ 
Guid
´´ 
(
´´ 
$str
´´ E
)
´´E F
,
´´F G
null
´´H L
,
´´L M
new
´´N Q
DateTime
´´R Z
(
´´Z [
$num
´´[ _
,
´´_ `
$num
´´a c
,
´´c d
$num
´´e f
,
´´f g
$num
´´h i
,
´´i j
$num
´´k l
,
´´l m
$num
´´n o
,
´´o p
$num
´´q r
,
´´r s
DateTimeKind´´t Ä
.´´Ä Å
Utc´´Å Ñ
)´´Ñ Ö
,´´Ö Ü
null´´á ã
,´´ã å
$str´´ç ∞
,´´∞ ±
$str´´≤ ◊
,´´◊ ÿ
null´´Ÿ ›
,´´› ﬁ
null´´ﬂ „
,´´„ ‰
null´´Â È
,´´È Í
$str´´Î Ù
,´´Ù ı
new´´ˆ ˘
byte´´˙ ˛
[´´˛ ˇ
]´´ˇ Ä
{´´Å Ç
$num´´É Ö
,´´Ö Ü
$num´´á â
,´´â ä
$num´´ã é
,´´é è
$num´´ê í
,´´í ì
$num´´î ñ
,´´ñ ó
$num´´ò ö
,´´ö õ
$num´´ú û
,´´û ü
$num´´† ¢
,´´¢ £
$num´´§ ß
,´´ß ®
$num´´© ´
,´´´ ¨
$num´´≠ Ø
,´´Ø ∞
$num´´± ≥
,´´≥ ¥
$num´´µ ∑
,´´∑ ∏
$num´´π ª
,´´ª º
$num´´Ω ø
,´´ø ¿
$num´´¡ √
,´´√ ƒ
$num´´≈ «
,´´« »
$num´´… À
,´´À Ã
$num´´Õ –
,´´– —
$num´´“ ’
,´´’ ÷
$num´´◊ Ÿ
,´´Ÿ ⁄
$num´´€ ﬁ
,´´ﬁ ﬂ
$num´´‡ ‚
,´´‚ „
$num´´‰ Á
,´´Á Ë
$num´´È Ï
,´´Ï Ì
$num´´Ó 
,´´ Ò
$num´´Ú ı
,´´ı ˆ
$num´´˜ ˘
,´´˘ ˙
$num´´˚ ˛
,´´˛ ˇ
$num´´Ä Ç
,´´Ç É
$num´´Ñ Ü
,´´Ü á
$num´´à ä
,´´ä ã
$num´´å é
,´´é è
$num´´ê í
,´´í ì
$num´´î ó
,´´ó ò
$num´´ô ú
,´´ú ù
$num´´û †
,´´† °
$num´´¢ •
,´´• ¶
$num´´ß ©
,´´© ™
$num´´´ Æ
,´´Æ Ø
$num´´∞ ≤
,´´≤ ≥
$num´´¥ ∑
,´´∑ ∏
$num´´π º
,´´º Ω
$num´´æ ¡
,´´¡ ¬
$num´´√ ≈
,´´≈ ∆
$num´´«  
,´´  À
$num´´Ã œ
,´´œ –
$num´´— ”
,´´” ‘
$num´´’ ◊
,´´◊ ÿ
$num´´Ÿ €
,´´€ ‹
$num´´› ﬂ
,´´ﬂ ‡
$num´´· ‰
,´´‰ Â
$num´´Ê Ë
,´´Ë È
$num´´Í Ì
,´´Ì Ó
$num´´Ô Ò
,´´Ò Ú
$num´´Û ˆ
,´´ˆ ˜
$num´´¯ ˚
,´´˚ ¸
$num´´˝ Ä
,´´Ä Å
$num´´Ç Ñ
,´´Ñ Ö
$num´´Ü à
,´´à â
$num´´ä ç
,´´ç é
$num´´è í
,´´í ì
$num´´î ñ
,´´ñ ó
$num´´ò õ
,´´õ ú
$num´´ù †
,´´† °
$num´´¢ §
,´´§ •
$num´´¶ ©
,´´© ™
$num´´´ ≠
,´´≠ Æ
$num´´Ø ±
,´´± ≤
$num´´≥ µ
,´´µ ∂
$num´´∑ ∫
,´´∫ ª
$num´´º æ
,´´æ ø
$num´´¿ √
,´´√ ƒ
$num´´≈ «
,´´« »
$num´´… À
,´´À Ã
$num´´Õ œ
,´´œ –
$num´´— ”
,´´” ‘
$num´´’ ◊
,´´◊ ÿ
$num´´Ÿ ‹
,´´‹ ›
$num´´ﬁ ‡
,´´‡ ·
$num´´‚ ‰
,´´‰ Â
$num´´Ê È
,´´È Í
$num´´Î Ì
,´´Ì Ó
$num´´Ô Ú
,´´Ú Û
$num´´Ù ˆ
,´´ˆ ˜
$num´´¯ ˙
,´´˙ ˚
$num´´¸ ˇ
,´´ˇ Ä
$num´´Å É
,´´É Ñ
$num´´Ö à
,´´à â
$num´´ä å
,´´å ç
$num´´é ê
,´´ê ë
$num´´í î
,´´î ï
$num´´ñ ò
,´´ò ô
$num´´ö ú
,´´ú ù
$num´´û °
,´´° ¢
$num´´£ •
,´´• ¶
$num´´ß ™
,´´™ ´
$num´´¨ Ø
,´´Ø ∞
$num´´± ≥
,´´≥ ¥
$num´´µ ∑
,´´∑ ∏
$num´´π ª
,´´ª º
$num´´Ω ¿
,´´¿ ¡
$num´´¬ ≈
,´´≈ ∆
$num´´« …
,´´…  
$num´´À Œ
,´´Œ œ
$num´´– “
,´´“ ”
$num´´‘ ÷
,´´÷ ◊
$num´´ÿ ⁄
,´´⁄ €
$num´´‹ ﬂ
,´´ﬂ ‡
$num´´· „
,´´„ ‰
$num´´Â Á
,´´Á Ë
$num´´È Ï
,´´Ï Ì
$num´´Ó Ò
,´´Ò Ú
$num´´Û ˆ
,´´ˆ ˜
$num´´¯ ˙
,´´˙ ˚
$num´´¸ ˛
,´´˛ ˇ
$num´´Ä Ç
,´´Ç É
$num´´Ñ Ü
,´´Ü á
$num´´à ä
,´´ä ã
$num´´å é
,´´é è
$num´´ê í
,´´í ì
$num´´î ó
,´´ó ò
$num´´ô õ
,´´õ ú
$num´´ù ü
,´´ü †
$num´´° £
,´´£ §
$num´´• ß
,´´ß ®
$num´´© ¨
,´´¨ ≠
$num´´Æ ∞
,´´∞ ±
$num´´≤ µ
,´´µ ∂
$num´´∑ π
,´´π ∫
$num´´ª æ
,´´æ ø
$num´´¿ ¬
,´´¬ √
$num´´ƒ «
,´´« »
$num´´… À
,´´À Ã
$num´´Õ –
,´´– —
$num´´“ ’
,´´’ ÷
$num´´◊ Ÿ
,´´Ÿ ⁄
$num´´€ ›
,´´› ﬁ
$num´´ﬂ ‚
,´´‚ „
$num´´‰ Á
,´´Á Ë
$num´´È Î
,´´Î Ï
$num´´Ì Ô
,´´Ô 
$num´´Ò Û
,´´Û Ù
$num´´ı ¯
,´´¯ ˘
$num´´˙ ˝
,´´˝ ˛
$num´´ˇ Å
,´´Å Ç
$num´´É Ö
,´´Ö Ü
$num´´á â
,´´â ä
$num´´ã ç
,´´ç é
$num´´è ë
,´´ë í
$num´´ì ï
,´´ï ñ
$num´´ó ö
,´´ö õ
$num´´ú û
,´´û ü
$num´´† £
,´´£ §
$num´´• ß
,´´ß ®
$num´´© ´
,´´´ ¨
$num´´≠ Ø
,´´Ø ∞
$num´´± ≥
,´´≥ ¥
$num´´µ ∑
,´´∑ ∏
$num´´π ª
,´´ª º
$num´´Ω ¿
,´´¿ ¡
$num´´¬ ƒ
,´´ƒ ≈
$num´´∆ …
,´´…  
$num´´À Œ
,´´Œ œ
$num´´– “
,´´“ ”
$num´´‘ ◊
,´´◊ ÿ
$num´´Ÿ €
,´´€ ‹
$num´´› ﬂ
,´´ﬂ ‡
$num´´· „
,´´„ ‰
$num´´Â Á
,´´Á Ë
$num´´È Î
,´´Î Ï
$num´´Ì Ô
,´´Ô 
$num´´Ò Ù
,´´Ù ı
$num´´ˆ ˘
,´´˘ ˙
$num´´˚ ˝
,´´˝ ˛
$num´´ˇ Ç	
,´´Ç	 É	
$num´´Ñ	 Ü	
,´´Ü	 á	
$num´´à	 ä	
,´´ä	 ã	
$num´´å	 è	
,´´è	 ê	
$num´´ë	 î	
,´´î	 ï	
$num´´ñ	 ò	
,´´ò	 ô	
$num´´ö	 ú	
,´´ú	 ù	
$num´´û	 †	
,´´†	 °	
$num´´¢	 §	
,´´§	 •	
$num´´¶	 ®	
,´´®	 ©	
$num´´™	 ¨	
,´´¨	 ≠	
$num´´Æ	 ∞	
,´´∞	 ±	
$num´´≤	 ¥	
,´´¥	 µ	
$num´´∂	 ∏	
,´´∏	 π	
$num´´∫	 º	
,´´º	 Ω	
$num´´æ	 ¡	
,´´¡	 ¬	
$num´´√	 ≈	
,´´≈	 ∆	
$num´´«	  	
,´´ 	 À	
$num´´Ã	 Œ	
,´´Œ	 œ	
$num´´–	 ”	
,´´”	 ‘	
$num´´’	 ÿ	
,´´ÿ	 Ÿ	
$num´´⁄	 ›	
,´´›	 ﬁ	
$num´´ﬂ	 ·	
,´´·	 ‚	
$num´´„	 Â	
,´´Â	 Ê	
$num´´Á	 È	
,´´È	 Í	
$num´´Î	 Ó	
,´´Ó	 Ô	
$num´´	 Ú	
,´´Ú	 Û	
$num´´Ù	 ˆ	
,´´ˆ	 ˜	
$num´´¯	 ˚	
,´´˚	 ¸	
$num´´˝	 Ä

,´´Ä
 Å

$num´´Ç
 Ñ

,´´Ñ
 Ö

$num´´Ü
 â

,´´â
 ä

$num´´ã
 é

,´´é
 è

$num´´ê
 í

,´´í
 ì

$num´´î
 ñ

,´´ñ
 ó

$num´´ò
 ö

,´´ö
 õ

$num´´ú
 û

,´´û
 ü

$num´´†
 £

,´´£
 §

$num´´•
 ß

,´´ß
 ®

$num´´©
 ¨

,´´¨
 ≠

$num´´Æ
 ±

,´´±
 ≤

$num´´≥
 µ

,´´µ
 ∂

$num´´∑
 π

,´´π
 ∫

$num´´ª
 Ω

,´´Ω
 æ

$num´´ø
 ¡

,´´¡
 ¬

$num´´√
 ≈

,´´≈
 ∆

$num´´«
 …

,´´…
  

$num´´À
 Õ

,´´Õ
 Œ

$num´´œ
 “

,´´“
 ”

$num´´‘
 ÷

,´´÷
 ◊

$num´´ÿ
 €

,´´€
 ‹

$num´´›
 ‡

,´´‡
 ·

$num´´‚
 ‰

,´´‰
 Â

$num´´Ê
 È

,´´È
 Í

$num´´Î
 Ì

,´´Ì
 Ó

$num´´Ô
 Ò

,´´Ò
 Ú

$num´´Û
 ˆ

,´´ˆ
 ˜

$num´´¯
 ˙

,´´˙
 ˚

$num´´¸
 ˛

,´´˛
 ˇ

$num´´Ä Ç
,´´Ç É
$num´´Ñ á
,´´á à
$num´´â ã
,´´ã å
$num´´ç è
,´´è ê
$num´´ë ì
,´´ì î
$num´´ï ó
,´´ó ò
$num´´ô ú
,´´ú ù
$num´´û †
,´´† °
$num´´¢ §
,´´§ •
$num´´¶ ®
,´´® ©
$num´´™ ¨
,´´¨ ≠
$num´´Æ ∞
,´´∞ ±
$num´´≤ ¥
,´´¥ µ
$num´´∂ ∏
,´´∏ π
$num´´∫ º
,´´º Ω
$num´´æ ¡
,´´¡ ¬
$num´´√ ∆
,´´∆ «
$num´´»  
,´´  À
$num´´Ã Œ
,´´Œ œ
$num´´– ”
,´´” ‘
$num´´’ ◊
,´´◊ ÿ
$num´´Ÿ €
,´´€ ‹
$num´´› ﬂ
,´´ﬂ ‡
$num´´· ‰
,´´‰ Â
$num´´Ê Ë
,´´Ë È
$num´´Í Ï
,´´Ï Ì
$num´´Ó Ò
,´´Ò Ú
$num´´Û ˆ
,´´ˆ ˜
$num´´¯ ˚
,´´˚ ¸
$num´´˝ Ä
,´´Ä Å
$num´´Ç Ñ
,´´Ñ Ö
$num´´Ü â
,´´â ä
$num´´ã é
,´´é è
$num´´ê í
,´´í ì
$num´´î ó
,´´ó ò
$num´´ô õ
,´´õ ú
$num´´ù †
,´´† °
$num´´¢ •
,´´• ¶
$num´´ß ™
,´´™ ´
$num´´¨ Æ
,´´Æ Ø
$num´´∞ ≥
,´´≥ ¥
$num´´µ ∏
,´´∏ π
$num´´∫ Ω
,´´Ω æ
$num´´ø ¡
,´´¡ ¬
$num´´√ ≈
,´´≈ ∆
$num´´« …
,´´…  
$num´´À Õ
,´´Õ Œ
$num´´œ —
,´´— “
$num´´” ’
,´´’ ÷
$num´´◊ Ÿ
,´´Ÿ ⁄
$num´´€ ›
,´´› ﬁ
$num´´ﬂ ·
,´´· ‚
$num´´„ Â
,´´Â Ê
$num´´Á Í
,´´Í Î
$num´´Ï Ó
,´´Ó Ô
$num´´ Û
,´´Û Ù
$num´´ı ˜
,´´˜ ¯
$num´´˘ ˚
,´´˚ ¸
$num´´˝ ˇ
,´´ˇ Ä
$num´´Å Ñ
,´´Ñ Ö
$num´´Ü à
,´´à â
$num´´ä å
,´´å ç
$num´´é ë
,´´ë í
$num´´ì ï
,´´ï ñ
$num´´ó ô
,´´ô ö
$num´´õ û
,´´û ü
$num´´† ¢
,´´¢ £
$num´´§ ¶
,´´¶ ß
$num´´® ™
,´´™ ´
$num´´¨ Ø
,´´Ø ∞
$num´´± ≥
,´´≥ ¥
$num´´µ ∏
,´´∏ π
$num´´∫ º
,´´º Ω
$num´´æ ¿
,´´¿ ¡
$num´´¬ ƒ
,´´ƒ ≈
$num´´∆ »
,´´» …
$num´´  Ã
,´´Ã Õ
$num´´Œ —
,´´— “
$num´´” ’
,´´’ ÷
$num´´◊ ⁄
,´´⁄ €
$num´´‹ ﬂ
,´´ﬂ ‡
$num´´· ‰
,´´‰ Â
$num´´Ê È
,´´È Í
$num´´Î Ì
,´´Ì Ó
$num´´Ô Ú
,´´Ú Û
$num´´Ù ˆ
,´´ˆ ˜
$num´´¯ ˙
,´´˙ ˚
$num´´¸ ˛
,´´˛ ˇ
$num´´Ä Ç
,´´Ç É
$num´´Ñ á
,´´á à
$num´´â å
,´´å ç
$num´´é ê
,´´ê ë
$num´´í ï
,´´ï ñ
$num´´ó ô
,´´ô ö
$num´´õ û
,´´û ü
$num´´† £
,´´£ §
$num´´• ®
,´´® ©
$num´´™ ¨
,´´¨ ≠
$num´´Æ ∞
,´´∞ ±
$num´´≤ µ
,´´µ ∂
$num´´∑ ∫
,´´∫ ª
$num´´º æ
,´´æ ø
$num´´¿ ¬
,´´¬ √
$num´´ƒ «
,´´« »
$num´´… Ã
,´´Ã Õ
$num´´Œ –
,´´– —
$num´´“ ’
,´´’ ÷
$num´´◊ Ÿ
,´´Ÿ ⁄
$num´´€ ›
,´´› ﬁ
$num´´ﬂ ·
}´´‚ „
,´´„ ‰
null´´Â È
,´´È Í
new´´Î Ó
Guid´´Ô Û
(´´Û Ù
$str´´Ù ö
)´´ö õ
}´´ú ù
,´´ù û
{
¨¨ 
new
¨¨ 
Guid
¨¨ 
(
¨¨ 
$str
¨¨ E
)
¨¨E F
,
¨¨F G
null
¨¨H L
,
¨¨L M
new
¨¨N Q
DateTime
¨¨R Z
(
¨¨Z [
$num
¨¨[ _
,
¨¨_ `
$num
¨¨a c
,
¨¨c d
$num
¨¨e f
,
¨¨f g
$num
¨¨h i
,
¨¨i j
$num
¨¨k l
,
¨¨l m
$num
¨¨n o
,
¨¨o p
$num
¨¨q r
,
¨¨r s
DateTimeKind¨¨t Ä
.¨¨Ä Å
Utc¨¨Å Ñ
)¨¨Ñ Ö
,¨¨Ö Ü
null¨¨á ã
,¨¨ã å
$str¨¨ç Æ
,¨¨Æ Ø
$str¨¨∞ ’
,¨¨’ ÷
null¨¨◊ €
,¨¨€ ‹
null¨¨› ·
,¨¨· ‚
null¨¨„ Á
,¨¨Á Ë
$str¨¨È Ú
,¨¨Ú Û
new¨¨Ù ˜
byte¨¨¯ ¸
[¨¨¸ ˝
]¨¨˝ ˛
{¨¨ˇ Ä
$num¨¨Å É
,¨¨É Ñ
$num¨¨Ö á
,¨¨á à
$num¨¨â å
,¨¨å ç
$num¨¨é ê
,¨¨ê ë
$num¨¨í î
,¨¨î ï
$num¨¨ñ ò
,¨¨ò ô
$num¨¨ö ú
,¨¨ú ù
$num¨¨û †
,¨¨† °
$num¨¨¢ •
,¨¨• ¶
$num¨¨ß ©
,¨¨© ™
$num¨¨´ ≠
,¨¨≠ Æ
$num¨¨Ø ±
,¨¨± ≤
$num¨¨≥ µ
,¨¨µ ∂
$num¨¨∑ π
,¨¨π ∫
$num¨¨ª Ω
,¨¨Ω æ
$num¨¨ø ¡
,¨¨¡ ¬
$num¨¨√ ≈
,¨¨≈ ∆
$num¨¨« …
,¨¨…  
$num¨¨À Œ
,¨¨Œ œ
$num¨¨– ”
,¨¨” ‘
$num¨¨’ ◊
,¨¨◊ ÿ
$num¨¨Ÿ ‹
,¨¨‹ ›
$num¨¨ﬁ ‡
,¨¨‡ ·
$num¨¨‚ Â
,¨¨Â Ê
$num¨¨Á Í
,¨¨Í Î
$num¨¨Ï Ó
,¨¨Ó Ô
$num¨¨ Û
,¨¨Û Ù
$num¨¨ı ˜
,¨¨˜ ¯
$num¨¨˘ ¸
,¨¨¸ ˝
$num¨¨˛ Ä
,¨¨Ä Å
$num¨¨Ç Ñ
,¨¨Ñ Ö
$num¨¨Ü à
,¨¨à â
$num¨¨ä å
,¨¨å ç
$num¨¨é ê
,¨¨ê ë
$num¨¨í ï
,¨¨ï ñ
$num¨¨ó ö
,¨¨ö õ
$num¨¨ú û
,¨¨û ü
$num¨¨† £
,¨¨£ §
$num¨¨• ß
,¨¨ß ®
$num¨¨© ¨
,¨¨¨ ≠
$num¨¨Æ ∞
,¨¨∞ ±
$num¨¨≤ µ
,¨¨µ ∂
$num¨¨∑ ∫
,¨¨∫ ª
$num¨¨º ø
,¨¨ø ¿
$num¨¨¡ √
,¨¨√ ƒ
$num¨¨≈ »
,¨¨» …
$num¨¨  Õ
,¨¨Õ Œ
$num¨¨œ —
,¨¨— “
$num¨¨” ’
,¨¨’ ÷
$num¨¨◊ Ÿ
,¨¨Ÿ ⁄
$num¨¨€ ›
,¨¨› ﬁ
$num¨¨ﬂ ‚
,¨¨‚ „
$num¨¨‰ Ê
,¨¨Ê Á
$num¨¨Ë Î
,¨¨Î Ï
$num¨¨Ì Ô
,¨¨Ô 
$num¨¨Ò Ù
,¨¨Ù ı
$num¨¨ˆ ˘
,¨¨˘ ˙
$num¨¨˚ ˛
,¨¨˛ ˇ
$num¨¨Ä Ç
,¨¨Ç É
$num¨¨Ñ Ü
,¨¨Ü á
$num¨¨à ã
,¨¨ã å
$num¨¨ç ê
,¨¨ê ë
$num¨¨í î
,¨¨î ï
$num¨¨ñ ô
,¨¨ô ö
$num¨¨õ û
,¨¨û ü
$num¨¨† ¢
,¨¨¢ £
$num¨¨§ ß
,¨¨ß ®
$num¨¨© ´
,¨¨´ ¨
$num¨¨≠ Ø
,¨¨Ø ∞
$num¨¨± ≥
,¨¨≥ ¥
$num¨¨µ ∏
,¨¨∏ π
$num¨¨∫ º
,¨¨º Ω
$num¨¨æ ¡
,¨¨¡ ¬
$num¨¨√ ≈
,¨¨≈ ∆
$num¨¨« …
,¨¨…  
$num¨¨À Õ
,¨¨Õ Œ
$num¨¨œ —
,¨¨— “
$num¨¨” ’
,¨¨’ ÷
$num¨¨◊ ⁄
,¨¨⁄ €
$num¨¨‹ ﬁ
,¨¨ﬁ ﬂ
$num¨¨‡ ‚
,¨¨‚ „
$num¨¨‰ Á
,¨¨Á Ë
$num¨¨È Î
,¨¨Î Ï
$num¨¨Ì 
,¨¨ Ò
$num¨¨Ú Ù
,¨¨Ù ı
$num¨¨ˆ ¯
,¨¨¯ ˘
$num¨¨˙ ˝
,¨¨˝ ˛
$num¨¨ˇ Å
,¨¨Å Ç
$num¨¨É Ü
,¨¨Ü á
$num¨¨à ä
,¨¨ä ã
$num¨¨å é
,¨¨é è
$num¨¨ê í
,¨¨í ì
$num¨¨î ñ
,¨¨ñ ó
$num¨¨ò ö
,¨¨ö õ
$num¨¨ú ü
,¨¨ü †
$num¨¨° £
,¨¨£ §
$num¨¨• ®
,¨¨® ©
$num¨¨™ ≠
,¨¨≠ Æ
$num¨¨Ø ±
,¨¨± ≤
$num¨¨≥ µ
,¨¨µ ∂
$num¨¨∑ π
,¨¨π ∫
$num¨¨ª æ
,¨¨æ ø
$num¨¨¿ √
,¨¨√ ƒ
$num¨¨≈ «
,¨¨« »
$num¨¨… Ã
,¨¨Ã Õ
$num¨¨Œ –
,¨¨– —
$num¨¨“ ‘
,¨¨‘ ’
$num¨¨÷ ÿ
,¨¨ÿ Ÿ
$num¨¨⁄ ›
,¨¨› ﬁ
$num¨¨ﬂ ·
,¨¨· ‚
$num¨¨„ Â
,¨¨Â Ê
$num¨¨Á Í
,¨¨Í Î
$num¨¨Ï Ô
,¨¨Ô 
$num¨¨Ò Ù
,¨¨Ù ı
$num¨¨ˆ ¯
,¨¨¯ ˘
$num¨¨˙ ¸
,¨¨¸ ˝
$num¨¨˛ Ä
,¨¨Ä Å
$num¨¨Ç Ñ
,¨¨Ñ Ö
$num¨¨Ü à
,¨¨à â
$num¨¨ä å
,¨¨å ç
$num¨¨é ê
,¨¨ê ë
$num¨¨í ï
,¨¨ï ñ
$num¨¨ó ô
,¨¨ô ö
$num¨¨õ ù
,¨¨ù û
$num¨¨ü °
,¨¨° ¢
$num¨¨£ •
,¨¨• ¶
$num¨¨ß ™
,¨¨™ ´
$num¨¨¨ Æ
,¨¨Æ Ø
$num¨¨∞ ≥
,¨¨≥ ¥
$num¨¨µ ∑
,¨¨∑ ∏
$num¨¨π º
,¨¨º Ω
$num¨¨æ ¿
,¨¨¿ ¡
$num¨¨¬ ≈
,¨¨≈ ∆
$num¨¨« …
,¨¨…  
$num¨¨À Œ
,¨¨Œ œ
$num¨¨– ”
,¨¨” ‘
$num¨¨’ ◊
,¨¨◊ ÿ
$num¨¨Ÿ €
,¨¨€ ‹
$num¨¨› ‡
,¨¨‡ ·
$num¨¨‚ Â
,¨¨Â Ê
$num¨¨Á È
,¨¨È Í
$num¨¨Î Ì
,¨¨Ì Ó
$num¨¨Ô Ò
,¨¨Ò Ú
$num¨¨Û ˆ
,¨¨ˆ ˜
$num¨¨¯ ˚
,¨¨˚ ¸
$num¨¨˝ ˇ
,¨¨ˇ Ä
$num¨¨Å É
,¨¨É Ñ
$num¨¨Ö á
,¨¨á à
$num¨¨â ã
,¨¨ã å
$num¨¨ç è
,¨¨è ê
$num¨¨ë ì
,¨¨ì î
$num¨¨ï ò
,¨¨ò ô
$num¨¨ö ú
,¨¨ú ù
$num¨¨û °
,¨¨° ¢
$num¨¨£ •
,¨¨• ¶
$num¨¨ß ©
,¨¨© ™
$num¨¨´ ≠
,¨¨≠ Æ
$num¨¨Ø ±
,¨¨± ≤
$num¨¨≥ µ
,¨¨µ ∂
$num¨¨∑ π
,¨¨π ∫
$num¨¨ª æ
,¨¨æ ø
$num¨¨¿ ¬
,¨¨¬ √
$num¨¨ƒ «
,¨¨« »
$num¨¨… Ã
,¨¨Ã Õ
$num¨¨Œ –
,¨¨– —
$num¨¨“ ’
,¨¨’ ÷
$num¨¨◊ Ÿ
,¨¨Ÿ ⁄
$num¨¨€ ›
,¨¨› ﬁ
$num¨¨ﬂ ·
,¨¨· ‚
$num¨¨„ Â
,¨¨Â Ê
$num¨¨Á È
,¨¨È Í
$num¨¨Î Ì
,¨¨Ì Ó
$num¨¨Ô Ú
,¨¨Ú Û
$num¨¨Ù ˜
,¨¨˜ ¯
$num¨¨˘ ˚
,¨¨˚ ¸
$num¨¨˝ Ä	
,¨¨Ä	 Å	
$num¨¨Ç	 Ñ	
,¨¨Ñ	 Ö	
$num¨¨Ü	 à	
,¨¨à	 â	
$num¨¨ä	 ç	
,¨¨ç	 é	
$num¨¨è	 í	
,¨¨í	 ì	
$num¨¨î	 ñ	
,¨¨ñ	 ó	
$num¨¨ò	 ö	
,¨¨ö	 õ	
$num¨¨ú	 û	
,¨¨û	 ü	
$num¨¨†	 ¢	
,¨¨¢	 £	
$num¨¨§	 ¶	
,¨¨¶	 ß	
$num¨¨®	 ™	
,¨¨™	 ´	
$num¨¨¨	 Æ	
,¨¨Æ	 Ø	
$num¨¨∞	 ≤	
,¨¨≤	 ≥	
$num¨¨¥	 ∂	
,¨¨∂	 ∑	
$num¨¨∏	 ∫	
,¨¨∫	 ª	
$num¨¨º	 ø	
,¨¨ø	 ¿	
$num¨¨¡	 √	
,¨¨√	 ƒ	
$num¨¨≈	 »	
,¨¨»	 …	
$num¨¨ 	 Ã	
,¨¨Ã	 Õ	
$num¨¨Œ	 —	
,¨¨—	 “	
$num¨¨”	 ÷	
,¨¨÷	 ◊	
$num¨¨ÿ	 €	
,¨¨€	 ‹	
$num¨¨›	 ﬂ	
,¨¨ﬂ	 ‡	
$num¨¨·	 „	
,¨¨„	 ‰	
$num¨¨Â	 Á	
,¨¨Á	 Ë	
$num¨¨È	 Ï	
,¨¨Ï	 Ì	
$num¨¨Ó	 	
,¨¨	 Ò	
$num¨¨Ú	 Ù	
,¨¨Ù	 ı	
$num¨¨ˆ	 ˘	
,¨¨˘	 ˙	
$num¨¨˚	 ˛	
,¨¨˛	 ˇ	
$num¨¨Ä
 Ç

,¨¨Ç
 É

$num¨¨Ñ
 á

,¨¨á
 à

$num¨¨â
 å

,¨¨å
 ç

$num¨¨é
 ê

,¨¨ê
 ë

$num¨¨í
 î

,¨¨î
 ï

$num¨¨ñ
 ò

,¨¨ò
 ô

$num¨¨ö
 ú

,¨¨ú
 ù

$num¨¨û
 °

,¨¨°
 ¢

$num¨¨£
 •

,¨¨•
 ¶

$num¨¨ß
 ™

,¨¨™
 ´

$num¨¨¨
 Ø

,¨¨Ø
 ∞

$num¨¨±
 ≥

,¨¨≥
 ¥

$num¨¨µ
 ∑

,¨¨∑
 ∏

$num¨¨π
 ª

,¨¨ª
 º

$num¨¨Ω
 ø

,¨¨ø
 ¿

$num¨¨¡
 √

,¨¨√
 ƒ

$num¨¨≈
 «

,¨¨«
 »

$num¨¨…
 À

,¨¨À
 Ã

$num¨¨Õ
 –

,¨¨–
 —

$num¨¨“
 ‘

,¨¨‘
 ’

$num¨¨÷
 Ÿ

,¨¨Ÿ
 ⁄

$num¨¨€
 ﬁ

,¨¨ﬁ
 ﬂ

$num¨¨‡
 ‚

,¨¨‚
 „

$num¨¨‰
 Á

,¨¨Á
 Ë

$num¨¨È
 Î

,¨¨Î
 Ï

$num¨¨Ì
 Ô

,¨¨Ô
 

$num¨¨Ò
 Ù

,¨¨Ù
 ı

$num¨¨ˆ
 ¯

,¨¨¯
 ˘

$num¨¨˙
 ¸

,¨¨¸
 ˝

$num¨¨˛
 Ä
,¨¨Ä Å
$num¨¨Ç Ö
,¨¨Ö Ü
$num¨¨á â
,¨¨â ä
$num¨¨ã ç
,¨¨ç é
$num¨¨è ë
,¨¨ë í
$num¨¨ì ï
,¨¨ï ñ
$num¨¨ó ö
,¨¨ö õ
$num¨¨ú û
,¨¨û ü
$num¨¨† ¢
,¨¨¢ £
$num¨¨§ ¶
,¨¨¶ ß
$num¨¨® ™
,¨¨™ ´
$num¨¨¨ Æ
,¨¨Æ Ø
$num¨¨∞ ≤
,¨¨≤ ≥
$num¨¨¥ ∂
,¨¨∂ ∑
$num¨¨∏ ∫
,¨¨∫ ª
$num¨¨º ø
,¨¨ø ¿
$num¨¨¡ ƒ
,¨¨ƒ ≈
$num¨¨∆ »
,¨¨» …
$num¨¨  Ã
,¨¨Ã Õ
$num¨¨Œ —
,¨¨— “
$num¨¨” ’
,¨¨’ ÷
$num¨¨◊ Ÿ
,¨¨Ÿ ⁄
$num¨¨€ ›
,¨¨› ﬁ
$num¨¨ﬂ ‚
,¨¨‚ „
$num¨¨‰ Ê
,¨¨Ê Á
$num¨¨Ë Í
,¨¨Í Î
$num¨¨Ï Ô
,¨¨Ô 
$num¨¨Ò Ù
,¨¨Ù ı
$num¨¨ˆ ˘
,¨¨˘ ˙
$num¨¨˚ ˛
,¨¨˛ ˇ
$num¨¨Ä Ç
,¨¨Ç É
$num¨¨Ñ á
,¨¨á à
$num¨¨â å
,¨¨å ç
$num¨¨é ê
,¨¨ê ë
$num¨¨í ï
,¨¨ï ñ
$num¨¨ó ô
,¨¨ô ö
$num¨¨õ û
,¨¨û ü
$num¨¨† £
,¨¨£ §
$num¨¨• ®
,¨¨® ©
$num¨¨™ ¨
,¨¨¨ ≠
$num¨¨Æ ±
,¨¨± ≤
$num¨¨≥ ∂
,¨¨∂ ∑
$num¨¨∏ ª
,¨¨ª º
$num¨¨Ω ø
,¨¨ø ¿
$num¨¨¡ √
,¨¨√ ƒ
$num¨¨≈ «
,¨¨« »
$num¨¨… À
,¨¨À Ã
$num¨¨Õ œ
,¨¨œ –
$num¨¨— ”
,¨¨” ‘
$num¨¨’ ◊
,¨¨◊ ÿ
$num¨¨Ÿ €
,¨¨€ ‹
$num¨¨› ﬂ
,¨¨ﬂ ‡
$num¨¨· „
,¨¨„ ‰
$num¨¨Â Ë
,¨¨Ë È
$num¨¨Í Ï
,¨¨Ï Ì
$num¨¨Ó Ò
,¨¨Ò Ú
$num¨¨Û ı
,¨¨ı ˆ
$num¨¨˜ ˘
,¨¨˘ ˙
$num¨¨˚ ˝
,¨¨˝ ˛
$num¨¨ˇ Ç
,¨¨Ç É
$num¨¨Ñ Ü
,¨¨Ü á
$num¨¨à ä
,¨¨ä ã
$num¨¨å è
,¨¨è ê
$num¨¨ë ì
,¨¨ì î
$num¨¨ï ó
,¨¨ó ò
$num¨¨ô ú
,¨¨ú ù
$num¨¨û †
,¨¨† °
$num¨¨¢ §
,¨¨§ •
$num¨¨¶ ®
,¨¨® ©
$num¨¨™ ≠
,¨¨≠ Æ
$num¨¨Ø ±
,¨¨± ≤
$num¨¨≥ ∂
,¨¨∂ ∑
$num¨¨∏ ∫
,¨¨∫ ª
$num¨¨º æ
,¨¨æ ø
$num¨¨¿ ¬
,¨¨¬ √
$num¨¨ƒ ∆
,¨¨∆ «
$num¨¨»  
,¨¨  À
$num¨¨Ã œ
,¨¨œ –
$num¨¨— ”
,¨¨” ‘
$num¨¨’ ÿ
,¨¨ÿ Ÿ
$num¨¨⁄ ›
,¨¨› ﬁ
$num¨¨ﬂ ‚
,¨¨‚ „
$num¨¨‰ Á
,¨¨Á Ë
$num¨¨È Î
,¨¨Î Ï
$num¨¨Ì 
,¨¨ Ò
$num¨¨Ú Ù
,¨¨Ù ı
$num¨¨ˆ ¯
,¨¨¯ ˘
$num¨¨˙ ¸
,¨¨¸ ˝
$num¨¨˛ Ä
,¨¨Ä Å
$num¨¨Ç Ö
,¨¨Ö Ü
$num¨¨á ä
,¨¨ä ã
$num¨¨å é
,¨¨é è
$num¨¨ê ì
,¨¨ì î
$num¨¨ï ó
,¨¨ó ò
$num¨¨ô ú
,¨¨ú ù
$num¨¨û °
,¨¨° ¢
$num¨¨£ ¶
,¨¨¶ ß
$num¨¨® ™
,¨¨™ ´
$num¨¨¨ Æ
,¨¨Æ Ø
$num¨¨∞ ≥
,¨¨≥ ¥
$num¨¨µ ∏
,¨¨∏ π
$num¨¨∫ º
,¨¨º Ω
$num¨¨æ ¿
,¨¨¿ ¡
$num¨¨¬ ≈
,¨¨≈ ∆
$num¨¨«  
,¨¨  À
$num¨¨Ã Œ
,¨¨Œ œ
$num¨¨– ”
,¨¨” ‘
$num¨¨’ ◊
,¨¨◊ ÿ
$num¨¨Ÿ €
,¨¨€ ‹
$num¨¨› ﬂ
}¨¨‡ ·
,¨¨· ‚
null¨¨„ Á
,¨¨Á Ë
new¨¨È Ï
Guid¨¨Ì Ò
(¨¨Ò Ú
$str¨¨Ú ò
)¨¨ò ô
}¨¨ö õ
,¨¨õ ú
{
≠≠ 
new
≠≠ 
Guid
≠≠ 
(
≠≠ 
$str
≠≠ E
)
≠≠E F
,
≠≠F G
null
≠≠H L
,
≠≠L M
new
≠≠N Q
DateTime
≠≠R Z
(
≠≠Z [
$num
≠≠[ _
,
≠≠_ `
$num
≠≠a c
,
≠≠c d
$num
≠≠e f
,
≠≠f g
$num
≠≠h i
,
≠≠i j
$num
≠≠k l
,
≠≠l m
$num
≠≠n o
,
≠≠o p
$num
≠≠q r
,
≠≠r s
DateTimeKind≠≠t Ä
.≠≠Ä Å
Utc≠≠Å Ñ
)≠≠Ñ Ö
,≠≠Ö Ü
null≠≠á ã
,≠≠ã å
$str≠≠ç Ø
,≠≠Ø ∞
$str≠≠± ÷
,≠≠÷ ◊
null≠≠ÿ ‹
,≠≠‹ ›
null≠≠ﬁ ‚
,≠≠‚ „
null≠≠‰ Ë
,≠≠Ë È
$str≠≠Í Û
,≠≠Û Ù
new≠≠ı ¯
byte≠≠˘ ˝
[≠≠˝ ˛
]≠≠˛ ˇ
{≠≠Ä Å
$num≠≠Ç Ñ
,≠≠Ñ Ö
$num≠≠Ü à
,≠≠à â
$num≠≠ä ç
,≠≠ç é
$num≠≠è ë
,≠≠ë í
$num≠≠ì ï
,≠≠ï ñ
$num≠≠ó ô
,≠≠ô ö
$num≠≠õ ù
,≠≠ù û
$num≠≠ü °
,≠≠° ¢
$num≠≠£ ¶
,≠≠¶ ß
$num≠≠® ™
,≠≠™ ´
$num≠≠¨ Æ
,≠≠Æ Ø
$num≠≠∞ ≤
,≠≠≤ ≥
$num≠≠¥ ∂
,≠≠∂ ∑
$num≠≠∏ ∫
,≠≠∫ ª
$num≠≠º æ
,≠≠æ ø
$num≠≠¿ ¬
,≠≠¬ √
$num≠≠ƒ ∆
,≠≠∆ «
$num≠≠»  
,≠≠  À
$num≠≠Ã œ
,≠≠œ –
$num≠≠— ‘
,≠≠‘ ’
$num≠≠÷ ÿ
,≠≠ÿ Ÿ
$num≠≠⁄ ›
,≠≠› ﬁ
$num≠≠ﬂ ·
,≠≠· ‚
$num≠≠„ Ê
,≠≠Ê Á
$num≠≠Ë Î
,≠≠Î Ï
$num≠≠Ì Ô
,≠≠Ô 
$num≠≠Ò Ù
,≠≠Ù ı
$num≠≠ˆ ¯
,≠≠¯ ˘
$num≠≠˙ ˝
,≠≠˝ ˛
$num≠≠ˇ Å
,≠≠Å Ç
$num≠≠É Ö
,≠≠Ö Ü
$num≠≠á â
,≠≠â ä
$num≠≠ã ç
,≠≠ç é
$num≠≠è ë
,≠≠ë í
$num≠≠ì ñ
,≠≠ñ ó
$num≠≠ò õ
,≠≠õ ú
$num≠≠ù ü
,≠≠ü †
$num≠≠° §
,≠≠§ •
$num≠≠¶ ®
,≠≠® ©
$num≠≠™ ≠
,≠≠≠ Æ
$num≠≠Ø ±
,≠≠± ≤
$num≠≠≥ ∂
,≠≠∂ ∑
$num≠≠∏ ª
,≠≠ª º
$num≠≠Ω ¿
,≠≠¿ ¡
$num≠≠¬ ƒ
,≠≠ƒ ≈
$num≠≠∆ …
,≠≠…  
$num≠≠À Œ
,≠≠Œ œ
$num≠≠– “
,≠≠“ ”
$num≠≠‘ ÷
,≠≠÷ ◊
$num≠≠ÿ ⁄
,≠≠⁄ €
$num≠≠‹ ﬁ
,≠≠ﬁ ﬂ
$num≠≠‡ „
,≠≠„ ‰
$num≠≠Â Á
,≠≠Á Ë
$num≠≠È Ï
,≠≠Ï Ì
$num≠≠Ó 
,≠≠ Ò
$num≠≠Ú ı
,≠≠ı ˆ
$num≠≠˜ ˙
,≠≠˙ ˚
$num≠≠¸ ˇ
,≠≠ˇ Ä
$num≠≠Å É
,≠≠É Ñ
$num≠≠Ö á
,≠≠á à
$num≠≠â å
,≠≠å ç
$num≠≠é ë
,≠≠ë í
$num≠≠ì ï
,≠≠ï ñ
$num≠≠ó ö
,≠≠ö õ
$num≠≠ú ü
,≠≠ü †
$num≠≠° £
,≠≠£ §
$num≠≠• ®
,≠≠® ©
$num≠≠™ ¨
,≠≠¨ ≠
$num≠≠Æ ∞
,≠≠∞ ±
$num≠≠≤ ¥
,≠≠¥ µ
$num≠≠∂ π
,≠≠π ∫
$num≠≠ª Ω
,≠≠Ω æ
$num≠≠ø ¬
,≠≠¬ √
$num≠≠ƒ ∆
,≠≠∆ «
$num≠≠»  
,≠≠  À
$num≠≠Ã Œ
,≠≠Œ œ
$num≠≠– “
,≠≠“ ”
$num≠≠‘ ÷
,≠≠÷ ◊
$num≠≠ÿ €
,≠≠€ ‹
$num≠≠› ﬂ
,≠≠ﬂ ‡
$num≠≠· „
,≠≠„ ‰
$num≠≠Â Ë
,≠≠Ë È
$num≠≠Í Ï
,≠≠Ï Ì
$num≠≠Ó Ò
,≠≠Ò Ú
$num≠≠Û ı
,≠≠ı ˆ
$num≠≠˜ ˘
,≠≠˘ ˙
$num≠≠˚ ˛
,≠≠˛ ˇ
$num≠≠Ä Ç
,≠≠Ç É
$num≠≠Ñ á
,≠≠á à
$num≠≠â ã
,≠≠ã å
$num≠≠ç è
,≠≠è ê
$num≠≠ë ì
,≠≠ì î
$num≠≠ï ó
,≠≠ó ò
$num≠≠ô õ
,≠≠õ ú
$num≠≠ù †
,≠≠† °
$num≠≠¢ §
,≠≠§ •
$num≠≠¶ ©
,≠≠© ™
$num≠≠´ Æ
,≠≠Æ Ø
$num≠≠∞ ≤
,≠≠≤ ≥
$num≠≠¥ ∂
,≠≠∂ ∑
$num≠≠∏ ∫
,≠≠∫ ª
$num≠≠º ø
,≠≠ø ¿
$num≠≠¡ ƒ
,≠≠ƒ ≈
$num≠≠∆ »
,≠≠» …
$num≠≠  Õ
,≠≠Õ Œ
$num≠≠œ —
,≠≠— “
$num≠≠” ’
,≠≠’ ÷
$num≠≠◊ Ÿ
,≠≠Ÿ ⁄
$num≠≠€ ﬁ
,≠≠ﬁ ﬂ
$num≠≠‡ ‚
,≠≠‚ „
$num≠≠‰ Ê
,≠≠Ê Á
$num≠≠Ë Î
,≠≠Î Ï
$num≠≠Ì 
,≠≠ Ò
$num≠≠Ú ı
,≠≠ı ˆ
$num≠≠˜ ˘
,≠≠˘ ˙
$num≠≠˚ ˝
,≠≠˝ ˛
$num≠≠ˇ Å
,≠≠Å Ç
$num≠≠É Ö
,≠≠Ö Ü
$num≠≠á â
,≠≠â ä
$num≠≠ã ç
,≠≠ç é
$num≠≠è ë
,≠≠ë í
$num≠≠ì ñ
,≠≠ñ ó
$num≠≠ò ö
,≠≠ö õ
$num≠≠ú û
,≠≠û ü
$num≠≠† ¢
,≠≠¢ £
$num≠≠§ ¶
,≠≠¶ ß
$num≠≠® ´
,≠≠´ ¨
$num≠≠≠ Ø
,≠≠Ø ∞
$num≠≠± ¥
,≠≠¥ µ
$num≠≠∂ ∏
,≠≠∏ π
$num≠≠∫ Ω
,≠≠Ω æ
$num≠≠ø ¡
,≠≠¡ ¬
$num≠≠√ ∆
,≠≠∆ «
$num≠≠»  
,≠≠  À
$num≠≠Ã œ
,≠≠œ –
$num≠≠— ‘
,≠≠‘ ’
$num≠≠÷ ÿ
,≠≠ÿ Ÿ
$num≠≠⁄ ‹
,≠≠‹ ›
$num≠≠ﬁ ·
,≠≠· ‚
$num≠≠„ Ê
,≠≠Ê Á
$num≠≠Ë Í
,≠≠Í Î
$num≠≠Ï Ó
,≠≠Ó Ô
$num≠≠ Ú
,≠≠Ú Û
$num≠≠Ù ˜
,≠≠˜ ¯
$num≠≠˘ ¸
,≠≠¸ ˝
$num≠≠˛ Ä
,≠≠Ä Å
$num≠≠Ç Ñ
,≠≠Ñ Ö
$num≠≠Ü à
,≠≠à â
$num≠≠ä å
,≠≠å ç
$num≠≠é ê
,≠≠ê ë
$num≠≠í î
,≠≠î ï
$num≠≠ñ ô
,≠≠ô ö
$num≠≠õ ù
,≠≠ù û
$num≠≠ü ¢
,≠≠¢ £
$num≠≠§ ¶
,≠≠¶ ß
$num≠≠® ™
,≠≠™ ´
$num≠≠¨ Æ
,≠≠Æ Ø
$num≠≠∞ ≤
,≠≠≤ ≥
$num≠≠¥ ∂
,≠≠∂ ∑
$num≠≠∏ ∫
,≠≠∫ ª
$num≠≠º ø
,≠≠ø ¿
$num≠≠¡ √
,≠≠√ ƒ
$num≠≠≈ »
,≠≠» …
$num≠≠  Õ
,≠≠Õ Œ
$num≠≠œ —
,≠≠— “
$num≠≠” ÷
,≠≠÷ ◊
$num≠≠ÿ ⁄
,≠≠⁄ €
$num≠≠‹ ﬁ
,≠≠ﬁ ﬂ
$num≠≠‡ ‚
,≠≠‚ „
$num≠≠‰ Ê
,≠≠Ê Á
$num≠≠Ë Í
,≠≠Í Î
$num≠≠Ï Ó
,≠≠Ó Ô
$num≠≠ Û
,≠≠Û Ù
$num≠≠ı ¯
,≠≠¯ ˘
$num≠≠˙ ¸
,≠≠¸ ˝
$num≠≠˛ Å	
,≠≠Å	 Ç	
$num≠≠É	 Ö	
,≠≠Ö	 Ü	
$num≠≠á	 â	
,≠≠â	 ä	
$num≠≠ã	 é	
,≠≠é	 è	
$num≠≠ê	 ì	
,≠≠ì	 î	
$num≠≠ï	 ó	
,≠≠ó	 ò	
$num≠≠ô	 õ	
,≠≠õ	 ú	
$num≠≠ù	 ü	
,≠≠ü	 †	
$num≠≠°	 £	
,≠≠£	 §	
$num≠≠•	 ß	
,≠≠ß	 ®	
$num≠≠©	 ´	
,≠≠´	 ¨	
$num≠≠≠	 Ø	
,≠≠Ø	 ∞	
$num≠≠±	 ≥	
,≠≠≥	 ¥	
$num≠≠µ	 ∑	
,≠≠∑	 ∏	
$num≠≠π	 ª	
,≠≠ª	 º	
$num≠≠Ω	 ¿	
,≠≠¿	 ¡	
$num≠≠¬	 ƒ	
,≠≠ƒ	 ≈	
$num≠≠∆	 …	
,≠≠…	  	
$num≠≠À	 Õ	
,≠≠Õ	 Œ	
$num≠≠œ	 “	
,≠≠“	 ”	
$num≠≠‘	 ◊	
,≠≠◊	 ÿ	
$num≠≠Ÿ	 ‹	
,≠≠‹	 ›	
$num≠≠ﬁ	 ‡	
,≠≠‡	 ·	
$num≠≠‚	 ‰	
,≠≠‰	 Â	
$num≠≠Ê	 Ë	
,≠≠Ë	 È	
$num≠≠Í	 Ì	
,≠≠Ì	 Ó	
$num≠≠Ô	 Ò	
,≠≠Ò	 Ú	
$num≠≠Û	 ı	
,≠≠ı	 ˆ	
$num≠≠˜	 ˙	
,≠≠˙	 ˚	
$num≠≠¸	 ˇ	
,≠≠ˇ	 Ä

$num≠≠Å
 É

,≠≠É
 Ñ

$num≠≠Ö
 à

,≠≠à
 â

$num≠≠ä
 ç

,≠≠ç
 é

$num≠≠è
 ë

,≠≠ë
 í

$num≠≠ì
 ï

,≠≠ï
 ñ

$num≠≠ó
 ô

,≠≠ô
 ö

$num≠≠õ
 ù

,≠≠ù
 û

$num≠≠ü
 ¢

,≠≠¢
 £

$num≠≠§
 ¶

,≠≠¶
 ß

$num≠≠®
 ´

,≠≠´
 ¨

$num≠≠≠
 ∞

,≠≠∞
 ±

$num≠≠≤
 ¥

,≠≠¥
 µ

$num≠≠∂
 ∏

,≠≠∏
 π

$num≠≠∫
 º

,≠≠º
 Ω

$num≠≠æ
 ¿

,≠≠¿
 ¡

$num≠≠¬
 ƒ

,≠≠ƒ
 ≈

$num≠≠∆
 »

,≠≠»
 …

$num≠≠ 
 Ã

,≠≠Ã
 Õ

$num≠≠Œ
 —

,≠≠—
 “

$num≠≠”
 ’

,≠≠’
 ÷

$num≠≠◊
 ⁄

,≠≠⁄
 €

$num≠≠‹
 ﬂ

,≠≠ﬂ
 ‡

$num≠≠·
 „

,≠≠„
 ‰

$num≠≠Â
 Ë

,≠≠Ë
 È

$num≠≠Í
 Ï

,≠≠Ï
 Ì

$num≠≠Ó
 

,≠≠
 Ò

$num≠≠Ú
 ı

,≠≠ı
 ˆ

$num≠≠˜
 ˘

,≠≠˘
 ˙

$num≠≠˚
 ˝

,≠≠˝
 ˛

$num≠≠ˇ
 Å
,≠≠Å Ç
$num≠≠É Ü
,≠≠Ü á
$num≠≠à ä
,≠≠ä ã
$num≠≠å é
,≠≠é è
$num≠≠ê í
,≠≠í ì
$num≠≠î ñ
,≠≠ñ ó
$num≠≠ò õ
,≠≠õ ú
$num≠≠ù ü
,≠≠ü †
$num≠≠° £
,≠≠£ §
$num≠≠• ß
,≠≠ß ®
$num≠≠© ´
,≠≠´ ¨
$num≠≠≠ Ø
,≠≠Ø ∞
$num≠≠± ≥
,≠≠≥ ¥
$num≠≠µ ∑
,≠≠∑ ∏
$num≠≠π ª
,≠≠ª º
$num≠≠Ω ¿
,≠≠¿ ¡
$num≠≠¬ ≈
,≠≠≈ ∆
$num≠≠« …
,≠≠…  
$num≠≠À Õ
,≠≠Õ Œ
$num≠≠œ “
,≠≠“ ”
$num≠≠‘ ÷
,≠≠÷ ◊
$num≠≠ÿ ⁄
,≠≠⁄ €
$num≠≠‹ ﬁ
,≠≠ﬁ ﬂ
$num≠≠‡ „
,≠≠„ ‰
$num≠≠Â Á
,≠≠Á Ë
$num≠≠È Î
,≠≠Î Ï
$num≠≠Ì 
,≠≠ Ò
$num≠≠Ú ı
,≠≠ı ˆ
$num≠≠˜ ˙
,≠≠˙ ˚
$num≠≠¸ ˇ
,≠≠ˇ Ä
$num≠≠Å É
,≠≠É Ñ
$num≠≠Ö à
,≠≠à â
$num≠≠ä ç
,≠≠ç é
$num≠≠è ë
,≠≠ë í
$num≠≠ì ñ
,≠≠ñ ó
$num≠≠ò ö
,≠≠ö õ
$num≠≠ú ü
,≠≠ü †
$num≠≠° §
,≠≠§ •
$num≠≠¶ ©
,≠≠© ™
$num≠≠´ ≠
,≠≠≠ Æ
$num≠≠Ø ≤
,≠≠≤ ≥
$num≠≠¥ ∑
,≠≠∑ ∏
$num≠≠π º
,≠≠º Ω
$num≠≠æ ¿
,≠≠¿ ¡
$num≠≠¬ ƒ
,≠≠ƒ ≈
$num≠≠∆ »
,≠≠» …
$num≠≠  Ã
,≠≠Ã Õ
$num≠≠Œ –
,≠≠– —
$num≠≠“ ‘
,≠≠‘ ’
$num≠≠÷ ÿ
,≠≠ÿ Ÿ
$num≠≠⁄ ‹
,≠≠‹ ›
$num≠≠ﬁ ‡
,≠≠‡ ·
$num≠≠‚ ‰
,≠≠‰ Â
$num≠≠Ê È
,≠≠È Í
$num≠≠Î Ì
,≠≠Ì Ó
$num≠≠Ô Ú
,≠≠Ú Û
$num≠≠Ù ˆ
,≠≠ˆ ˜
$num≠≠¯ ˙
,≠≠˙ ˚
$num≠≠¸ ˛
,≠≠˛ ˇ
$num≠≠Ä É
,≠≠É Ñ
$num≠≠Ö á
,≠≠á à
$num≠≠â ã
,≠≠ã å
$num≠≠ç ê
,≠≠ê ë
$num≠≠í î
,≠≠î ï
$num≠≠ñ ò
,≠≠ò ô
$num≠≠ö ù
,≠≠ù û
$num≠≠ü °
,≠≠° ¢
$num≠≠£ •
,≠≠• ¶
$num≠≠ß ©
,≠≠© ™
$num≠≠´ Æ
,≠≠Æ Ø
$num≠≠∞ ≤
,≠≠≤ ≥
$num≠≠¥ ∑
,≠≠∑ ∏
$num≠≠π ª
,≠≠ª º
$num≠≠Ω ø
,≠≠ø ¿
$num≠≠¡ √
,≠≠√ ƒ
$num≠≠≈ «
,≠≠« »
$num≠≠… À
,≠≠À Ã
$num≠≠Õ –
,≠≠– —
$num≠≠“ ‘
,≠≠‘ ’
$num≠≠÷ Ÿ
,≠≠Ÿ ⁄
$num≠≠€ ﬁ
,≠≠ﬁ ﬂ
$num≠≠‡ „
,≠≠„ ‰
$num≠≠Â Ë
,≠≠Ë È
$num≠≠Í Ï
,≠≠Ï Ì
$num≠≠Ó Ò
,≠≠Ò Ú
$num≠≠Û ı
,≠≠ı ˆ
$num≠≠˜ ˘
,≠≠˘ ˙
$num≠≠˚ ˝
,≠≠˝ ˛
$num≠≠ˇ Å
,≠≠Å Ç
$num≠≠É Ü
,≠≠Ü á
$num≠≠à ã
,≠≠ã å
$num≠≠ç è
,≠≠è ê
$num≠≠ë î
,≠≠î ï
$num≠≠ñ ò
,≠≠ò ô
$num≠≠ö ù
,≠≠ù û
$num≠≠ü ¢
,≠≠¢ £
$num≠≠§ ß
,≠≠ß ®
$num≠≠© ´
,≠≠´ ¨
$num≠≠≠ Ø
,≠≠Ø ∞
$num≠≠± ¥
,≠≠¥ µ
$num≠≠∂ π
,≠≠π ∫
$num≠≠ª Ω
,≠≠Ω æ
$num≠≠ø ¡
,≠≠¡ ¬
$num≠≠√ ∆
,≠≠∆ «
$num≠≠» À
,≠≠À Ã
$num≠≠Õ œ
,≠≠œ –
$num≠≠— ‘
,≠≠‘ ’
$num≠≠÷ ÿ
,≠≠ÿ Ÿ
$num≠≠⁄ ‹
,≠≠‹ ›
$num≠≠ﬁ ‡
}≠≠· ‚
,≠≠‚ „
null≠≠‰ Ë
,≠≠Ë È
new≠≠Í Ì
Guid≠≠Ó Ú
(≠≠Ú Û
$str≠≠Û ô
)≠≠ô ö
}≠≠õ ú
}
ÆÆ 
)
ÆÆ 
;
ÆÆ 
migrationBuilder
∞∞ 
.
∞∞ 

InsertData
∞∞ '
(
∞∞' (
table
±± 
:
±± 
$str
±± "
,
±±" #
columns
≤≤ 
:
≤≤ 
new
≤≤ 
[
≤≤ 
]
≤≤ 
{
≤≤  
$str
≤≤! %
,
≤≤% &
$str
≤≤' .
,
≤≤. /
$str
≤≤0 >
,
≤≤> ?
$str
≤≤@ N
,
≤≤N O
$str
≤≤P Y
,
≤≤Y Z
$str
≤≤[ k
,
≤≤k l
$str
≤≤m s
,
≤≤s t
$str≤≤u Ä
,≤≤Ä Å
$str≤≤Ç ì
,≤≤ì î
$str≤≤ï ù
}≤≤û ü
,≤≤ü †
values
≥≥ 
:
≥≥ 
new
≥≥ 
object
≥≥ "
[
≥≥" #
]
≥≥# $
{
≥≥% &
new
≥≥' *
Guid
≥≥+ /
(
≥≥/ 0
$str
≥≥0 V
)
≥≥V W
,
≥≥W X
$str
≥≥Y ^
,
≥≥^ _
new
≥≥` c
DateTime
≥≥d l
(
≥≥l m
$num
≥≥m q
,
≥≥q r
$num
≥≥s u
,
≥≥u v
$num
≥≥w x
,
≥≥x y
$num
≥≥z {
,
≥≥{ |
$num
≥≥} ~
,
≥≥~ 
$num≥≥Ä Å
,≥≥Å Ç
$num≥≥É Ñ
,≥≥Ñ Ö
DateTimeKind≥≥Ü í
.≥≥í ì
Utc≥≥ì ñ
)≥≥ñ ó
,≥≥ó ò
null≥≥ô ù
,≥≥ù û
false≥≥ü §
,≥≥§ •
null≥≥¶ ™
,≥≥™ ´
$str≥≥¨ µ
,≥≥µ ∂
null≥≥∑ ª
,≥≥ª º
$num≥≥Ω ø
,≥≥ø ¿
new≥≥¡ ƒ
Guid≥≥≈ …
(≥≥…  
$str≥≥  
)≥≥ Ò
}≥≥Ú Û
)≥≥Û Ù
;≥≥Ù ı
migrationBuilder
µµ 
.
µµ 

InsertData
µµ '
(
µµ' (
table
∂∂ 
:
∂∂ 
$str
∂∂ !
,
∂∂! "
columns
∑∑ 
:
∑∑ 
new
∑∑ 
[
∑∑ 
]
∑∑ 
{
∑∑  
$str
∑∑! %
,
∑∑% &
$str
∑∑' 5
,
∑∑5 6
$str
∑∑7 E
,
∑∑E F
$str
∑∑G P
,
∑∑P Q
$str
∑∑R b
,
∑∑b c
$str
∑∑d j
,
∑∑j k
$str
∑∑l w
,
∑∑w x
$str∑∑y Å
}∑∑Ç É
,∑∑É Ñ
values
∏∏ 
:
∏∏ 
new
∏∏ 
object
∏∏ "
[
∏∏" #
]
∏∏# $
{
∏∏% &
new
∏∏' *
Guid
∏∏+ /
(
∏∏/ 0
$str
∏∏0 V
)
∏∏V W
,
∏∏W X
new
∏∏Y \
DateTime
∏∏] e
(
∏∏e f
$num
∏∏f j
,
∏∏j k
$num
∏∏l n
,
∏∏n o
$num
∏∏p q
,
∏∏q r
$num
∏∏s t
,
∏∏t u
$num
∏∏v w
,
∏∏w x
$num
∏∏y z
,
∏∏z {
$num
∏∏| }
,
∏∏} ~
DateTimeKind∏∏ ã
.∏∏ã å
Utc∏∏å è
)∏∏è ê
,∏∏ê ë
null∏∏í ñ
,∏∏ñ ó
false∏∏ò ù
,∏∏ù û
null∏∏ü £
,∏∏£ §
$str∏∏• Æ
,∏∏Æ Ø
null∏∏∞ ¥
,∏∏¥ µ
new∏∏∂ π
Guid∏∏∫ æ
(∏∏æ ø
$str∏∏ø Â
)∏∏Â Ê
}∏∏Á Ë
)∏∏Ë È
;∏∏È Í
migrationBuilder
∫∫ 
.
∫∫ 

InsertData
∫∫ '
(
∫∫' (
table
ªª 
:
ªª 
$str
ªª "
,
ªª" #
columns
ºº 
:
ºº 
new
ºº 
[
ºº 
]
ºº 
{
ºº  
$str
ºº! )
,
ºº) *
$str
ºº+ 3
}
ºº4 5
,
ºº5 6
values
ΩΩ 
:
ΩΩ 
new
ΩΩ 
object
ΩΩ "
[
ΩΩ" #
,
ΩΩ# $
]
ΩΩ$ %
{
ææ 
{
øø 
new
øø 
Guid
øø 
(
øø 
$str
øø E
)
øøE F
,
øøF G
new
øøH K
Guid
øøL P
(
øøP Q
$str
øøQ w
)
øøw x
}
øøy z
,
øøz {
{
¿¿ 
new
¿¿ 
Guid
¿¿ 
(
¿¿ 
$str
¿¿ E
)
¿¿E F
,
¿¿F G
new
¿¿H K
Guid
¿¿L P
(
¿¿P Q
$str
¿¿Q w
)
¿¿w x
}
¿¿y z
,
¿¿z {
{
¡¡ 
new
¡¡ 
Guid
¡¡ 
(
¡¡ 
$str
¡¡ E
)
¡¡E F
,
¡¡F G
new
¡¡H K
Guid
¡¡L P
(
¡¡P Q
$str
¡¡Q w
)
¡¡w x
}
¡¡y z
}
¬¬ 
)
¬¬ 
;
¬¬ 
migrationBuilder
ƒƒ 
.
ƒƒ 
CreateIndex
ƒƒ (
(
ƒƒ( )
name
≈≈ 
:
≈≈ 
$str
≈≈ +
,
≈≈+ ,
table
∆∆ 
:
∆∆ 
$str
∆∆ "
,
∆∆" #
column
«« 
:
«« 
$str
««  
)
««  !
;
««! "
migrationBuilder
…… 
.
…… 
CreateIndex
…… (
(
……( )
name
   
:
   
$str
   *
,
  * +
table
ÀÀ 
:
ÀÀ 
$str
ÀÀ !
,
ÀÀ! "
column
ÃÃ 
:
ÃÃ 
$str
ÃÃ  
)
ÃÃ  !
;
ÃÃ! "
migrationBuilder
ŒŒ 
.
ŒŒ 
CreateIndex
ŒŒ (
(
ŒŒ( )
name
œœ 
:
œœ 
$str
œœ 3
,
œœ3 4
table
–– 
:
–– 
$str
–– )
,
––) *
column
—— 
:
—— 
$str
—— !
)
——! "
;
——" #
migrationBuilder
”” 
.
”” 
CreateIndex
”” (
(
””( )
name
‘‘ 
:
‘‘ 
$str
‘‘ 4
,
‘‘4 5
table
’’ 
:
’’ 
$str
’’ *
,
’’* +
column
÷÷ 
:
÷÷ 
$str
÷÷ !
)
÷÷! "
;
÷÷" #
migrationBuilder
ÿÿ 
.
ÿÿ 
CreateIndex
ÿÿ (
(
ÿÿ( )
name
ŸŸ 
:
ŸŸ 
$str
ŸŸ 1
,
ŸŸ1 2
table
⁄⁄ 
:
⁄⁄ 
$str
⁄⁄ $
,
⁄⁄$ %
column
€€ 
:
€€ 
$str
€€ $
)
€€$ %
;
€€% &
migrationBuilder
›› 
.
›› 
CreateIndex
›› (
(
››( )
name
ﬁﬁ 
:
ﬁﬁ 
$str
ﬁﬁ +
,
ﬁﬁ+ ,
table
ﬂﬂ 
:
ﬂﬂ 
$str
ﬂﬂ "
,
ﬂﬂ" #
column
‡‡ 
:
‡‡ 
$str
‡‡  
)
‡‡  !
;
‡‡! "
migrationBuilder
‚‚ 
.
‚‚ 
CreateIndex
‚‚ (
(
‚‚( )
name
„„ 
:
„„ 
$str
„„ 1
,
„„1 2
table
‰‰ 
:
‰‰ 
$str
‰‰ 
,
‰‰ 
column
ÂÂ 
:
ÂÂ 
$str
ÂÂ *
)
ÂÂ* +
;
ÂÂ+ ,
}
ÊÊ 	
	protected
ÈÈ 
override
ÈÈ 
void
ÈÈ 
Down
ÈÈ  $
(
ÈÈ$ %
MigrationBuilder
ÈÈ% 5
migrationBuilder
ÈÈ6 F
)
ÈÈF G
{
ÍÍ 	
migrationBuilder
ÎÎ 
.
ÎÎ 
	DropTable
ÎÎ &
(
ÎÎ& '
name
ÏÏ 
:
ÏÏ 
$str
ÏÏ !
)
ÏÏ! "
;
ÏÏ" #
migrationBuilder
ÓÓ 
.
ÓÓ 
	DropTable
ÓÓ &
(
ÓÓ& '
name
ÔÔ 
:
ÔÔ 
$str
ÔÔ  
)
ÔÔ  !
;
ÔÔ! "
migrationBuilder
ÒÒ 
.
ÒÒ 
	DropTable
ÒÒ &
(
ÒÒ& '
name
ÚÚ 
:
ÚÚ 
$str
ÚÚ (
)
ÚÚ( )
;
ÚÚ) *
migrationBuilder
ÙÙ 
.
ÙÙ 
	DropTable
ÙÙ &
(
ÙÙ& '
name
ıı 
:
ıı 
$str
ıı )
)
ıı) *
;
ıı* +
migrationBuilder
˜˜ 
.
˜˜ 
	DropTable
˜˜ &
(
˜˜& '
name
¯¯ 
:
¯¯ 
$str
¯¯ !
)
¯¯! "
;
¯¯" #
migrationBuilder
˙˙ 
.
˙˙ 
	DropTable
˙˙ &
(
˙˙& '
name
˚˚ 
:
˚˚ 
$str
˚˚ #
)
˚˚# $
;
˚˚$ %
migrationBuilder
˝˝ 
.
˝˝ 
	DropTable
˝˝ &
(
˝˝& '
name
˛˛ 
:
˛˛ 
$str
˛˛ $
)
˛˛$ %
;
˛˛% &
migrationBuilder
ÄÄ 
.
ÄÄ 
	DropTable
ÄÄ &
(
ÄÄ& '
name
ÅÅ 
:
ÅÅ 
$str
ÅÅ 
)
ÅÅ 
;
ÅÅ  
migrationBuilder
ÉÉ 
.
ÉÉ 
	DropTable
ÉÉ &
(
ÉÉ& '
name
ÑÑ 
:
ÑÑ 
$str
ÑÑ 
)
ÑÑ 
;
ÑÑ 
migrationBuilder
ÜÜ 
.
ÜÜ 
	DropTable
ÜÜ &
(
ÜÜ& '
name
áá 
:
áá 
$str
áá 
)
áá 
;
áá 
migrationBuilder
ââ 
.
ââ 
	DropTable
ââ &
(
ââ& '
name
ää 
:
ää 
$str
ää !
)
ää! "
;
ää" #
migrationBuilder
åå 
.
åå 
	DropTable
åå &
(
åå& '
name
çç 
:
çç 
$str
çç '
)
çç' (
;
çç( )
}
éé 	
}
èè 
}êê ââ
YE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Injection\InjectionFactory.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
	Injection  )
{ 
public 

sealed 
class 
InjectionFactory (
:) *'
IDesignTimeDbContextFactory+ F
<F G
BaseContextG R
>R S
{ 
private 
static 
IServiceCollection )
	_services* 3
;3 4
private   
static   
EnvironmentType   &
_environmentType  ' 7
;  7 8
private"" 
static"" 
IConfiguration"" %
_configuration""& 4
;""4 5
private$$ 
static$$ 
ILogger$$ 
_logger$$ &
;$$& '
public&& 
static&& 
void&& 
Build&&  
(&&  !
IServiceCollection&&! 3
services&&4 <
,&&< =
IConfiguration&&> L
configuration&&M Z
,&&Z [
EnvironmentType&&\ k
environment&&l w
,&&w x
ILogger	&&y Ä
logger
&&Å á
)
&&á à
{'' 	
	_services(( 
=(( 
services((  
;((  !
_configuration)) 
=)) 
configuration)) *
;))* +
_environmentType** 
=** 
environment** *
;*** +
_logger++ 
=++ 
logger++ 
;++ 
ConfigureDbContext-- 
(-- 
)--  
;--  !'
LoadServicesAndRepositories.. '
(..' (
)..( )
;..) *#
EnsureMigrationsApplied// #
(//# $
)//$ %
;//% &
}00 	
private22 
static22 
void22 
ConfigureDbContext22 .
(22. /
)22/ 0
{33 	
if44 
(44 
_environmentType44  
!=44! #
EnvironmentType44$ 3
.443 4
Test444 8
)448 9
{55 
var77 
_connectionString77 %
=77& '
_configuration77( 6
.776 7
GetConnectionString777 J
(77J K
$str77K ^
)77^ _
;77_ `
_logger;; 
.;; 
LogInformation;; &
(;;& '
string;;' -
.;;- .
Concat;;. 4
(;;4 5
$";;5 7
$str;;7 g
";;g h
.;;h i
Fill;;i m
(;;m n
$char;;n q
,;;q r
ConstantsGeneral	;;s É
.
;;É Ñ!
DEFAULT_FILL_LENGHT
;;Ñ ó
)
;;ó ò
,
;;ò ô
(
;;ö õ
string
;;õ °
.
;;° ¢
IsNullOrEmpty
;;¢ Ø
(
;;Ø ∞
_connectionString
;;∞ ¡
)
;;¡ ¬
?
;;√ ƒ
$str
;;≈ Ã
:
;;Õ Œ
$str
;;œ Ÿ
)
;;Ÿ ⁄
)
;;⁄ €
)
;;€ ‹
;
;;‹ ›
	_services== 
.== 
AddDbContext== &
<==& '
BaseContext==' 2
>==2 3
(==3 4
options==4 ;
=>==< >
options>> 
.>> 
	UseNpgsql>> %
(>>% &
_connectionString?? %
,??% &!
postgresOptionsAction@@ )
=>@@* ,
{AA !
postgresOptionsActionBB -
.BB- . 
EnableRetryOnFailureBB. B
(BBB C
maxRetryCountBBC P
:BBP Q
$numBBR S
,BBS T
maxRetryDelayCC )
:CC) *
TimeSpanCC+ 3
.CC3 4
FromSecondsCC4 ?
(CC? @
$numCC@ B
)CCB C
,CCC D
errorCodesToAddDD +
:DD+ ,
nullDD- 1
)DD1 2
;DD2 3
optionsFF 
.FF  &
EnableSensitiveDataLoggingFF  :
(FF: ;
)FF; <
;FF< =
}HH 
)II 
)II 
;II 
}JJ 
}KK 	
publicMM 
BaseContextMM 
CreateDbContextMM *
(MM* +
stringMM+ 1
[MM1 2
]MM2 3
argsMM4 8
)MM8 9
{NN 	
varQQ 
_connectionStringQQ !
=QQ" #
_configurationQQ$ 2
.QQ2 3
GetConnectionStringQQ3 F
(QQF G
$strQQG Z
)QQZ [
;QQ[ \
_loggerUU 
.UU 
LogInformationUU "
(UU" #
stringUU# )
.UU) *
ConcatUU* 0
(UU0 1
$"UU1 3
$strUU3 `
"UU` a
.UUa b
FillUUb f
(UUf g
$charUUg j
,UUj k
ConstantsGeneralUUl |
.UU| } 
DEFAULT_FILL_LENGHT	UU} ê
)
UUê ë
,
UUë í
(
UUì î
string
UUî ö
.
UUö õ
IsNullOrEmpty
UUõ ®
(
UU® ©
_connectionString
UU© ∫
)
UU∫ ª
?
UUº Ω
$str
UUæ ≈
:
UU∆ «
$str
UU» “
)
UU“ ”
)
UU” ‘
)
UU‘ ’
;
UU’ ÷
varWW 
optionsBuilderWW 
=WW  
newWW! $#
DbContextOptionsBuilderWW% <
<WW< =
BaseContextWW= H
>WWH I
(WWI J
)WWJ K
;WWK L
optionsBuilderXX 
.XX 
	UseNpgsqlXX $
(XX$ %
_connectionStringYY !
+=YY" $
$strYY% :
,YY: ;!
postgresOptionsActionZZ %
=>ZZ& (
{[[ !
postgresOptionsAction\\ )
.\\) * 
EnableRetryOnFailure\\* >
(\\> ?
maxRetryCount\\? L
:\\L M
$num\\N O
,\\O P
maxRetryDelay]]< I
:]]I J
TimeSpan]]K S
.]]S T
FromSeconds]]T _
(]]_ `
$num]]` b
)]]b c
,]]c d
errorCodesToAdd^^< K
:^^K L
null^^M Q
)^^Q R
;^^R S
optionsBuilder`` "
.``" #&
EnableSensitiveDataLogging``# =
(``= >
)``> ?
;``? @
}bb 
)cc 
;cc 
optionsBuilderee 
.ee &
EnableSensitiveDataLoggingee 5
(ee5 6
trueee6 :
)ee: ;
;ee; <
returngg 
newgg 
BaseContextgg "
(gg" #
optionsBuildergg# 1
.gg1 2
Optionsgg2 9
)gg9 :
;gg: ;
}hh 	
privatejj 
staticjj 
voidjj '
LoadServicesAndRepositoriesjj 7
(jj7 8
)jj8 9
{kk 	
	_servicesnn 
.nn 
	AddScopednn 
<nn  
IUserServicenn  ,
,nn, -
UserServicenn. 9
>nn9 :
(nn: ;
)nn; <
;nn< =
	_servicesoo 
.oo 
	AddScopedoo 
<oo  
IManagerServiceoo  /
,oo/ 0
ManagerServiceoo1 ?
>oo? @
(oo@ A
)ooA B
;ooB C
	_servicespp 
.pp 
	AddScopedpp 
<pp  
IEmployeeServicepp  0
,pp0 1
EmployeeServicepp2 A
>ppA B
(ppB C
)ppC D
;ppD E
	_servicesqq 
.qq 
	AddScopedqq 
<qq   
INotificationServiceqq  4
,qq4 5
NotificationServiceqq6 I
>qqI J
(qqJ K
)qqK L
;qqL M
	_servicesrr 
.rr 
	AddScopedrr 
<rr  "
IUserValidationServicerr  6
,rr6 7!
UserValidationServicerr8 M
>rrM N
(rrN O
)rrO P
;rrP Q
	_servicesss 
.ss 
	AddScopedss 
<ss  
IRoleServicess  ,
,ss, -
RoleServicess. 9
>ss9 :
(ss: ;
)ss; <
;ss< =
	_servicestt 
.tt 
	AddScopedtt 
<tt  
ISupplierServicett  0
,tt0 1
SupplierServicett2 A
>ttA B
(ttB C
)ttC D
;ttD E
	_servicesuu 
.uu 
	AddScopeduu 
<uu  
IStockServiceuu  -
,uu- .
StockServiceuu/ ;
>uu; <
(uu< =
)uu= >
;uu> ?
	_servicesvv 
.vv 
	AddScopedvv 
<vv  
IRegisterInServicevv  2
,vv2 3
RegisterInServicevv4 E
>vvE F
(vvF G
)vvG H
;vvH I
	_servicesww 
.ww 
	AddScopedww 
<ww  #
IRegisterInStockServiceww  7
,ww7 8"
RegisterInStockServiceww9 O
>wwO P
(wwP Q
)wwQ R
;wwR S
	_servicesxx 
.xx 
	AddScopedxx 
<xx  
IRegisterOutServicexx  3
,xx3 4
RegisterOutServicexx5 G
>xxG H
(xxH I
)xxI J
;xxJ K
	_servicesyy 
.yy 
	AddScopedyy 
<yy  $
IRegisterOutStockServiceyy  8
,yy8 9#
RegisterOutStockServiceyy: Q
>yyQ R
(yyR S
)yyS T
;yyT U
	_serviceszz 
.zz 
	AddScopedzz 
<zz  
IStockTypeServicezz  1
,zz1 2
StockTypeServicezz3 C
>zzC D
(zzD E
)zzE F
;zzF G
	_services{{ 
.{{ 
	AddScoped{{ 
<{{  
ITaskNoteService{{  0
,{{0 1
TaskNoteService{{2 A
>{{A B
({{B C
){{C D
;{{D E
_logger}} 
.}} 
LogInformation}} "
(}}" #
string}}# )
.}}) *
Concat}}* 0
(}}0 1
$"}}1 3
$str}}3 O
"}}O P
.}}P Q
Fill}}Q U
(}}U V
$char}}V Y
,}}Y Z
ConstantsGeneral}}[ k
.}}k l
DEFAULT_FILL_LENGHT}}l 
)	}} Ä
,
}}Ä Å
$str
}}Ç å
)
}}å ç
)
}}ç é
;
}}é è
	_services
ÉÉ 
.
ÉÉ 
	AddScoped
ÉÉ 
<
ÉÉ  
IJwtService
ÉÉ  +
,
ÉÉ+ ,

JwtService
ÉÉ- 7
>
ÉÉ7 8
(
ÉÉ8 9
)
ÉÉ9 :
;
ÉÉ: ;
	_services
ÑÑ 
.
ÑÑ 
	AddScoped
ÑÑ 
<
ÑÑ  
IOAuthService
ÑÑ  -
,
ÑÑ- .
OAuthService
ÑÑ/ ;
>
ÑÑ; <
(
ÑÑ< =
)
ÑÑ= >
;
ÑÑ> ?
	_services
ÖÖ 
.
ÖÖ 
	AddScoped
ÖÖ 
<
ÖÖ  
ISignInService
ÖÖ  .
,
ÖÖ. /
SignInService
ÖÖ0 =
>
ÖÖ= >
(
ÖÖ> ?
)
ÖÖ? @
;
ÖÖ@ A
	_services
ÜÜ 
.
ÜÜ 
	AddScoped
ÜÜ 
<
ÜÜ  
ISignUpService
ÜÜ  .
,
ÜÜ. /
SignUpService
ÜÜ0 =
>
ÜÜ= >
(
ÜÜ> ?
)
ÜÜ? @
;
ÜÜ@ A
	_services
áá 
.
áá 
	AddScoped
áá 
<
áá  
IS3FileService
áá  .
,
áá. /
S3FileService
áá0 =
>
áá= >
(
áá> ?
)
áá? @
;
áá@ A
	_services
àà 
.
àà 
	AddScoped
àà 
<
àà  
IServiceContext
àà  /
,
àà/ 0
ServiceContext
àà1 ?
>
àà? @
(
àà@ A
)
ààA B
;
ààB C
	_services
ââ 
.
ââ 
	AddScoped
ââ 
<
ââ  
IReportService
ââ  .
,
ââ. /
ReportService
ââ0 =
>
ââ= >
(
ââ> ?
)
ââ? @
;
ââ@ A
_logger
ãã 
.
ãã 
LogInformation
ãã "
(
ãã" #
string
ãã# )
.
ãã) *
Concat
ãã* 0
(
ãã0 1
$"
ãã1 3
$str
ãã3 U
"
ããU V
.
ããV W
Fill
ããW [
(
ãã[ \
$char
ãã\ _
,
ãã_ `
ConstantsGeneral
ããa q
.
ããq r"
DEFAULT_FILL_LENGHTããr Ö
)ããÖ Ü
,ããÜ á
$strããà í
)ããí ì
)ããì î
;ããî ï
	_services
ëë 
.
ëë 
	AddScoped
ëë 
<
ëë  
IUserRepository
ëë  /
,
ëë/ 0
UserRepository
ëë1 ?
>
ëë? @
(
ëë@ A
)
ëëA B
;
ëëB C
	_services
íí 
.
íí 
	AddScoped
íí 
<
íí  
IRoleRepository
íí  /
,
íí/ 0
RoleRepository
íí1 ?
>
íí? @
(
íí@ A
)
ííA B
;
ííB C
	_services
ìì 
.
ìì 
	AddScoped
ìì 
<
ìì   
IRepositoryContext
ìì  2
,
ìì2 3
RepositoryContext
ìì4 E
>
ììE F
(
ììF G
)
ììG H
;
ììH I
	_services
îî 
.
îî 
	AddScoped
îî 
<
îî   
IManagerRepository
îî  2
,
îî2 3
ManagerRepository
îî4 E
>
îîE F
(
îîF G
)
îîG H
;
îîH I
	_services
ïï 
.
ïï 
	AddScoped
ïï 
<
ïï  !
IEmployeeRepository
ïï  3
,
ïï3 4 
EmployeeRepository
ïï5 G
>
ïïG H
(
ïïH I
)
ïïI J
;
ïïJ K
	_services
ññ 
.
ññ 
	AddScoped
ññ 
<
ññ  '
IUserValidationRepository
ññ  9
,
ññ9 :&
UserValidationRepository
ññ; S
>
ññS T
(
ññT U
)
ññU V
;
ññV W
	_services
óó 
.
óó 
	AddScoped
óó 
<
óó  !
ISupplierRepository
óó  3
,
óó3 4 
SupplierRepository
óó5 G
>
óóG H
(
óóH I
)
óóI J
;
óóJ K
	_services
òò 
.
òò 
	AddScoped
òò 
<
òò  
IStockRepository
òò  0
,
òò0 1
StockRepository
òò2 A
>
òòA B
(
òòB C
)
òòC D
;
òòD E
	_services
ôô 
.
ôô 
	AddScoped
ôô 
<
ôô  #
IRegisterInRepository
ôô  5
,
ôô5 6"
RegisterInRepository
ôô7 K
>
ôôK L
(
ôôL M
)
ôôM N
;
ôôN O
	_services
öö 
.
öö 
	AddScoped
öö 
<
öö  (
IRegisterInStockRepository
öö  :
,
öö: ;'
RegisterInStockRepository
öö< U
>
ööU V
(
ööV W
)
ööW X
;
ööX Y
	_services
õõ 
.
õõ 
	AddScoped
õõ 
<
õõ  $
IRegisterOutRepository
õõ  6
,
õõ6 7#
RegisterOutRepository
õõ8 M
>
õõM N
(
õõN O
)
õõO P
;
õõP Q
	_services
úú 
.
úú 
	AddScoped
úú 
<
úú  )
IRegisterOutStockRepository
úú  ;
,
úú; <(
RegisterOutStockRepository
úú= W
>
úúW X
(
úúX Y
)
úúY Z
;
úúZ [
	_services
ùù 
.
ùù 
	AddScoped
ùù 
<
ùù  "
IStockTypeRepository
ùù  4
,
ùù4 5!
StockTypeRepository
ùù6 I
>
ùùI J
(
ùùJ K
)
ùùK L
;
ùùL M
	_services
ûû 
.
ûû 
	AddScoped
ûû 
<
ûû  !
ITaskNoteRepository
ûû  3
,
ûû3 4 
TaskNoteRepository
ûû5 G
>
ûûG H
(
ûûH I
)
ûûI J
;
ûûJ K
_logger
†† 
.
†† 
LogInformation
†† "
(
††" #
string
††# )
.
††) *
Concat
††* 0
(
††0 1
$"
††1 3
$str
††3 S
"
††S T
.
††T U
Fill
††U Y
(
††Y Z
$char
††Z ]
,
††] ^
ConstantsGeneral
††_ o
.
††o p"
DEFAULT_FILL_LENGHT††p É
)††É Ñ
,††Ñ Ö
$str††Ü ê
)††ê ë
)††ë í
;††í ì
}
££ 	
private
•• 
static
•• 
void
•• %
EnsureMigrationsApplied
•• 3
(
••3 4
)
••4 5
{
¶¶ 	
using
ßß 
(
ßß 
var
ßß 
scope
ßß 
=
ßß 
	_services
ßß (
.
ßß( )"
BuildServiceProvider
ßß) =
(
ßß= >
)
ßß> ?
.
ßß? @
CreateScope
ßß@ K
(
ßßK L
)
ßßL M
)
ßßM N
{
®® 
var
©© 
context
©© 
=
©© 
scope
©© #
.
©©# $
ServiceProvider
©©$ 3
.
©©3 4 
GetRequiredService
©©4 F
<
©©F G
BaseContext
©©G R
>
©©R S
(
©©S T
)
©©T U
;
©©U V
if
™™ 
(
™™ 
context
™™ 
.
™™ 
Database
™™ $
.
™™$ %
IsRelational
™™% 1
(
™™1 2
)
™™2 3
&&
™™4 6
context
™™7 >
.
™™> ?
Database
™™? G
.
™™G H"
GetPendingMigrations
™™H \
(
™™\ ]
)
™™] ^
.
™™^ _
Any
™™_ b
(
™™b c
)
™™c d
)
™™d e
{
´´ 
context
¨¨ 
.
¨¨ 
Database
¨¨ $
.
¨¨$ %
Migrate
¨¨% ,
(
¨¨, -
)
¨¨- .
;
¨¨. /
}
≠≠ 
}
ÆÆ 
}
ØØ 	
}
∞∞ 
}±± ⁄
sE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Context\SeedConfiguration\SeedStockTypeConfiguration.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Context  '
.' (
SeedConfiguration( 9
{ 
public 

class &
SeedStockTypeConfiguration +
:, -$
IEntityTypeConfiguration. F
<F G
	StockTypeG P
>P Q
{		 
public

 
void

 
	Configure

 
(

 
EntityTypeBuilder

 /
<

/ 0
	StockType

0 9
>

9 :
builder

; B
)

B C
{ 	
builder 
. 
HasData 
( #
ConstantStockTypeSeeder 3
.3 4

StockTypes4 >
(> ?
)? @
)@ A
;A B
} 	
} 
} ¬
oE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Context\SeedConfiguration\SeedStockConfiguration.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Context  '
.' (
SeedConfiguration( 9
{ 
public 

class "
SeedStockConfiguration '
:( )$
IEntityTypeConfiguration* B
<B C
StockC H
>H I
{		 
public

 
void

 
	Configure

 
(

 
EntityTypeBuilder

 /
<

/ 0
Stock

0 5
>

5 6
builder

7 >
)

> ?
{ 	
builder 
. 
HasData 
( 
ConstantStockSeeder /
./ 0
Stocks0 6
(6 7
)7 8
)8 9
;9 :
} 	
} 
} Ï
nE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Context\SeedConfiguration\SeedRoleConfiguration.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Context  '
.' (
SeedConfiguration( 9
{ 
public 

class !
SeedRoleConfiguration &
:' ($
IEntityTypeConfiguration) A
<A B
RoleB F
>F G
{		 
public

 
void

 
	Configure

 
(

 
EntityTypeBuilder

 /
<

/ 0
Role

0 4
>

4 5
builder

6 =
)

= >
{ 	
foreach 
( 
var 
item 
in  
ConstantSeederRole! 3
.3 4
Roles4 9
)9 :
{ 
var 
role 
= 
new 
Role #
{ 
Id 
= 
item 
. 
Id  
,  !
Name 
= 
item 
.  
Name  $
,$ %
UserType 
= 
item #
.# $
Type$ (
,( )
CreationDate  
=! "
ConstantSeeder# 1
.1 2!
DEFAULT_SEED_DATETIME2 G
,G H
DeletionDate  
=! "
null# '
,' (
LastChangeDate "
=# $
null% )
} 
; 
builder 
. 
HasData 
(  
role  $
)$ %
;% &
} 
} 	
} 
} 
ÄE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Context\SeedConfiguration\SeedDev\SeedUserValidationConfiguration.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Context  '
.' (
SeedConfiguration( 9
.9 :
SeedDev: A
{ 
internal 
class +
SeedUserValidationConfiguration 2
:3 4$
IEntityTypeConfiguration5 M
<M N
UserValidationN \
>\ ]
{		 
public

 
void

 
	Configure

 
(

 
EntityTypeBuilder

 /
<

/ 0
UserValidation

0 >
>

> ?
builder

@ G
)

G H
{ 	
builder 
. 
HasData 
( (
ConstantSeederUserValidation 8
.8 9!
MasterUserValidations9 N
(N O
)O P
)P Q
;Q R
builder 
. 
HasData 
( (
ConstantSeederUserValidation 8
.8 9"
ManagerUserValidations9 O
(O P
)P Q
)Q R
;R S
builder 
. 
HasData 
( (
ConstantSeederUserValidation 8
.8 9#
EmployeeUserValidations9 P
(P Q
)Q R
)R S
;S T
} 	
} 
} ≥
zE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Context\SeedConfiguration\SeedDev\SeedUserRoleConfiguration.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Context  '
.' (
SeedConfiguration( 9
.9 :
SeedDev: A
{ 
internal 
class %
SeedUserRoleConfiguration ,
:- .$
IEntityTypeConfiguration/ G
<G H
UserRoleH P
>P Q
{		 
public

 
void

 
	Configure

 
(

 
EntityTypeBuilder

 /
<

/ 0
UserRole

0 8
>

8 9
builder

: A
)

A B
{ 	
builder 
. 
HasData 
( "
ConstantSeederUserRole 2
.2 3
MasterUserRoles3 B
(B C
)C D
)D E
;E F
builder 
. 
HasData 
( "
ConstantSeederUserRole 2
.2 3
ManagerUserRoles3 C
(C D
)D E
)E F
;F G
builder 
. 
HasData 
( "
ConstantSeederUserRole 2
.2 3
EmployeeUserRoles3 D
(D E
)E F
)F G
;G H
} 	
} 
} ã
vE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Context\SeedConfiguration\SeedDev\SeedUserConfiguration.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Context  '
.' (
SeedConfiguration( 9
.9 :
SeedDev: A
{ 
internal 
class !
SeedUserConfiguration (
:) *$
IEntityTypeConfiguration+ C
<C D
UserD H
>H I
{		 
public

 
void

 
	Configure

 
(

 
EntityTypeBuilder

 /
<

/ 0
User

0 4
>

4 5
builder

6 =
)

= >
{ 	
builder 
. 
HasData 
( 
ConstantSeederUser .
.. /
MasterUsers/ :
(: ;
); <
)< =
;= >
builder 
. 
HasData 
( 
ConstantSeederUser .
.. /
ManagerUsers/ ;
(; <
)< =
)= >
;> ?
builder 
. 
HasData 
( 
ConstantSeederUser .
.. /
EmployeeUsers/ <
(< =
)= >
)> ?
;? @
} 	
} 
} ˙
yE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Context\SeedConfiguration\SeedDev\SeedManagerConfiguration.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Context  '
.' (
SeedConfiguration( 9
.9 :
SeedDev: A
{ 
public 

class $
SeedManagerConfiguration )
:* +$
IEntityTypeConfiguration, D
<D E
ManagerE L
>L M
{		 
public

 
void

 
	Configure

 
(

 
EntityTypeBuilder

 /
<

/ 0
Manager

0 7
>

7 8
builder

9 @
)

@ A
{ 	
builder 
. 
HasData 
( !
ConstantSeederManager 1
.1 2
Managers2 :
(: ;
); <
)< =
;= >
} 	
} 
} Ä
zE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Context\SeedConfiguration\SeedDev\SeedEmployeeConfiguration.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Context  '
.' (
SeedConfiguration( 9
.9 :
SeedDev: A
{ 
public 

class %
SeedEmployeeConfiguration *
:+ ,$
IEntityTypeConfiguration- E
<E F
EmployeeF N
>N O
{		 
public

 
void

 
	Configure

 
(

 
EntityTypeBuilder

 /
<

/ 0
Employee

0 8
>

8 9
builder

: A
)

A B
{ 	
builder 
. 
HasData 
( "
ConstantSeederEmployee 2
.2 3
	Employees3 <
(< =
)= >
)> ?
;? @
} 	
} 
} ‘
jE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Context\RepositoryContext\RepositoryContext.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Context  '
.' (
RepositoryContext( 9
{ 
public 

class 
RepositoryContext "
:# $
IRepositoryContext% 7
{ 
public 
IMapper 
Mapper 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
RepositoryContext		  
(		  !
IMapper		! (
mapper		) /
)		/ 0
{

 	
Mapper 
= 
mapper 
; 
} 	
} 
} π
kE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Context\RepositoryContext\IRepositoryContext.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Context  '
.' (
RepositoryContext( 9
{ 
public 

	interface 
IRepositoryContext '
{ 
IMapper 
Mapper 
{ 
get 
; 
set !
;! "
}# $
} 
}		 ıA
RE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Context\BaseContext.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
Context  '
{ 
public		 

partial		 
class		 
BaseContext		 $
:		% &
	DbContext		' 0
{

 
public 
DbSet 
< 
Role 
> 
Roles  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DbSet 
< 
User 
> 
Users  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DbSet 
< 
UserValidation #
># $
UserValidations% 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
DbSet 
< 
UserRole 
> 
	UserRoles (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
DbSet 
< 
Manager 
> 
Managers &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DbSet 
< 
Employee 
> 
	Employees (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
DbSet 
< 
Supplier 
> 
	Suppliers (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
DbSet 
< 
Stock 
> 
Stocks "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DbSet 
< 

RegisterIn 
>  
RegistersIn! ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
DbSet 
< 
RegisterInStock $
>$ %
RegisterInStocks& 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public 
DbSet 
< 
RegisterOut  
>  !
RegistersOut" .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
DbSet 
< 
RegisterOutStock %
>% &
RegisterOutStocks' 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
public 
DbSet 
< 
	StockType 
> 

StockTypes  *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
DbSet 
< 
TaskNote 
> 
	TaskNotes (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
BaseContext 
( 
DbContextOptions +
<+ ,
BaseContext, 7
>7 8
options9 @
)@ A
: 
base 
( 
options 
) 
{ 	
} 	
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{   	
if!! 
(!! 
!!! 
optionsBuilder!! 
.!!  
IsConfigured!!  ,
)!!, -
{"" 
throw## 
new## 
System##  
.##  !
	Exception##! *
(##* +
$str##+ M
)##M N
;##N O
}$$ 
}%% 	
	protected'' 
override'' 
void'' 
OnModelCreating''  /
(''/ 0
ModelBuilder''0 <
modelBuilder''= I
)''I J
{(( 	
foreach)) 
()) 
var)) 
relationship)) %
in))& (
modelBuilder))) 5
.))5 6
Model))6 ;
.)); <
GetEntityTypes))< J
())J K
)))K L
.))L M

SelectMany))M W
())W X
e))X Y
=>))Z \
e))] ^
.))^ _
GetForeignKeys))_ m
())m n
)))n o
)))o p
)))p q
relationship** 
.** 
DeleteBehavior** +
=**, -
DeleteBehavior**. <
.**< =
NoAction**= E
;**E F
modelBuilder,, 
.,, 
Entity,, 
<,,  
UserRole,,  (
>,,( )
(,,) *
),,* +
.,,+ ,
HasKey,,, 2
(,,2 3
x,,3 4
=>,,5 7
new,,8 ;
{,,< =
x,,> ?
.,,? @
UserId,,@ F
,,,F G
x,,H I
.,,I J
RoleId,,J P
},,Q R
),,R S
;,,S T
modelBuilder.. 
... 
Entity.. 
<..  
RegisterInStock..  /
>../ 0
(..0 1
)..1 2
...2 3
HasKey..3 9
(..9 :
x..: ;
=>..< >
new..? B
{..C D
x..E F
...F G
RegisterInId..G S
,..S T
x..U V
...V W
StockId..W ^
}.._ `
)..` a
;..a b
modelBuilder00 
.00 
Entity00 
<00  
RegisterOutStock00  0
>000 1
(001 2
)002 3
.003 4
HasKey004 :
(00: ;
x00; <
=>00= ?
new00@ C
{00D E
x00F G
.00G H
RegisterOutId00H U
,00U V
x00W X
.00X Y
StockId00Y `
}00a b
)00b c
;00c d"
OnModelCreatingPartial22 "
(22" #
modelBuilder22# /
)22/ 0
;220 1
SeedDatabase44 
(44 
modelBuilder44 %
)44% &
;44& '
}55 	
private77 
void77 
SeedDatabase77 !
(77! "
ModelBuilder77" .
modelBuilder77/ ;
)77; <
{88 	
modelBuilder99 
.99 
ApplyConfiguration99 +
(99+ ,
new99, /!
SeedRoleConfiguration990 E
(99E F
)99F G
)99G H
;99H I
modelBuilder== 
.== 
ApplyConfiguration== +
(==+ ,
new==, /!
SeedUserConfiguration==0 E
(==E F
)==F G
)==G H
;==H I
modelBuilder>> 
.>> 
ApplyConfiguration>> +
(>>+ ,
new>>, /%
SeedUserRoleConfiguration>>0 I
(>>I J
)>>J K
)>>K L
;>>L M
modelBuilder?? 
.?? 
ApplyConfiguration?? +
(??+ ,
new??, /+
SeedUserValidationConfiguration??0 O
(??O P
)??P Q
)??Q R
;??R S
modelBuilder@@ 
.@@ 
ApplyConfiguration@@ +
(@@+ ,
new@@, /%
SeedEmployeeConfiguration@@0 I
(@@I J
)@@J K
)@@K L
;@@L M
modelBuilderAA 
.AA 
ApplyConfigurationAA +
(AA+ ,
newAA, /$
SeedManagerConfigurationAA0 H
(AAH I
)AAI J
)AAJ K
;AAK L
modelBuilderEE 
.EE 
ApplyConfigurationEE +
(EE+ ,
newEE, /&
SeedStockTypeConfigurationEE0 J
(EEJ K
)EEK L
)EEL M
;EEM N
modelBuilderFF 
.FF 
ApplyConfigurationFF +
(FF+ ,
newFF, /"
SeedStockConfigurationFF0 F
(FFF G
)FFG H
)FFH I
;FFI J
}GG 	
partialII 
voidII "
OnModelCreatingPartialII +
(II+ ,
ModelBuilderII, 8
modelBuilderII9 E
)IIE F
;IIF G
}JJ 
}KK Ω
oE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Constants\SeederDev\ConstantSeederUserValidation.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
	Constants  )
.) *
	SeederDev* 3
{ 
internal 
static 
class (
ConstantSeederUserValidation 6
{ 
internal		 
static		 
List		 
<		 
UserValidation		 +
>		+ ,!
MasterUserValidations		- B
(		B C
)		C D
=>		E G
new

 
List

 
<

 
UserValidation

 #
>

# $
{ 
new 
( 
) 
{ 
Id 
= 
new 
Guid !
(! "
$str" H
)H I
,I J
EmailValidated "
=# $
true% )
,) * 
PhoneNumberValidated (
=) *
true+ /
,/ 0
CreationDate  
=! "
ConstantSeeder# 1
.1 2!
DEFAULT_SEED_DATETIME2 G
} 
} 
; 
internal 
static 
List 
< 
UserValidation +
>+ ,"
ManagerUserValidations- C
(C D
)D E
=>F H
new 
List 
< 
UserValidation #
># $
{ 
new 
( 
) 
{ 
Id 
= 
new 
Guid !
(! "
$str" H
)H I
,I J
EmailValidated "
=# $
true% )
,) * 
PhoneNumberValidated (
=) *
true+ /
,/ 0
CreationDate  
=! "
ConstantSeeder# 1
.1 2!
DEFAULT_SEED_DATETIME2 G
} 
} 
; 
internal!! 
static!! 
List!! 
<!! 
UserValidation!! +
>!!+ ,#
EmployeeUserValidations!!- D
(!!D E
)!!E F
=>!!G I
new"" 
("" 
)"" 
{## 
new$$ 
($$ 
)$$ 
{%% 
Id&& 
=&& 
new&& 
Guid&& !
(&&! "
$str&&" H
)&&H I
,&&I J
EmailValidated'' "
=''# $
true''% )
,'') * 
PhoneNumberValidated(( (
=(() *
true((+ /
,((/ 0
CreationDate))  
=))! "
ConstantSeeder))# 1
.))1 2!
DEFAULT_SEED_DATETIME))2 G
}** 
}++ 
;++ 
},, 
}-- æ
iE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Constants\SeederDev\ConstantSeederUserRole.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
	Constants  )
.) *
	SeederDev* 3
{ 
internal 
static 
class "
ConstantSeederUserRole 0
{		 
internal

 
static

 
List

 
<

 
UserRole

 %
>

% &
MasterUserRoles

' 6
(

6 7
)

7 8
=>

9 ;
new 
( 
) 
{ 
new 
( 
) 
{ 
UserId 
= 
ConstantSeederUser /
./ 0
MasterUsers0 ;
(; <
)< =
[= >
$num> ?
]? @
.@ A
IdA C
,C D
RoleId 
= 
ConstantSeederRole /
./ 0
Roles0 5
.5 6
First6 ;
(; <
x< =
=>> @
xA B
.B C
TypeC G
==H J
UserTypeK S
.S T
MasterT Z
)Z [
.[ \
Id\ ^
} 
} 
; 
internal 
static 
List 
< 
UserRole %
>% &
ManagerUserRoles' 7
(7 8
)8 9
=>: <
new 
( 
) 
{ 
new 
( 
) 
{ 
UserId 
= 
ConstantSeederUser /
./ 0
ManagerUsers0 <
(< =
)= >
[> ?
$num? @
]@ A
.A B
IdB D
,D E
RoleId 
= 
ConstantSeederRole /
./ 0
Roles0 5
.5 6
First6 ;
(; <
x< =
=>> @
xA B
.B C
TypeC G
==H J
UserTypeK S
.S T
ManagerT [
)[ \
.\ ]
Id] _
} 
} 
; 
internal 
static 
List 
< 
UserRole %
>% &
EmployeeUserRoles' 8
(8 9
)9 :
=>; =
new 
( 
) 
{   
new!! 
(!! 
)!! 
{"" 
UserId## "
=### $
ConstantSeederUser##% 7
.##7 8
EmployeeUsers##8 E
(##E F
)##F G
[##G H
$num##H I
]##I J
.##J K
Id##K M
,##M N
RoleId$$ "
=$$# $
ConstantSeederRole$$% 7
.$$7 8
Roles$$8 =
.$$= >
First$$> C
($$C D
x$$D E
=>$$F H
x$$I J
.$$J K
Type$$K O
==$$P R
UserType$$S [
.$$[ \
Employee$$\ d
)$$d e
.$$e f
Id$$f h
}%% 
}&& 
;&& 
}'' 
}(( ø"
eE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Constants\SeederDev\ConstantSeederUser.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
	Constants  )
.) *
	SeederDev* 3
{ 
internal 
static 
class 
ConstantSeederUser ,
{		 
internal

 
static

 
List

 
<

 
User

 !
>

! "
EmployeeUsers

# 0
(

0 1
)

1 2
=>

3 5
new 
List 
< 
User 
> 
{ 
new 
( 
) 
{ 
Id 
= 
new 
Guid !
(! "
$str" H
)H I
,I J
UserValidationId $
=% &(
ConstantSeederUserValidation' C
.C D#
EmployeeUserValidationsD [
([ \
)\ ]
[] ^
$num^ _
]_ `
.` a
Ida c
,c d
Email 
= 
$str ?
,? @
Name 
= 
$str $
,$ %%
FireBaseCloudMessageToken -
=. /
$str	0 ’
,
’ ÷
Password 
= 
Encoding '
.' (
UTF8( ,
., -
GetBytes- 5
(5 6
$str	6 ê
)
ê ë
,
ë í
CreationDate  
=! "
ConstantSeeder# 1
.1 2!
DEFAULT_SEED_DATETIME2 G
} 
} 
; 
internal 
static 
List 
< 
User !
>! "
MasterUsers# .
(. /
)/ 0
=>1 3
new 
List 
< 
User 
> 
{ 
new 
( 
) 
{ 
Id 
= 
new 
Guid !
(! "
$str" H
)H I
,I J
UserValidationId $
=% &(
ConstantSeederUserValidation' C
.C D!
MasterUserValidationsD Y
(Y Z
)Z [
[[ \
$num\ ]
]] ^
.^ _
Id_ a
,a b
Email   
=   
$str   =
,  = >
Name!! 
=!! 
$str!! $
,!!$ %%
FireBaseCloudMessageToken"" -
="". /
$str	""0 ’
,
""’ ÷
Password## 
=## 
Encoding## '
.##' (
UTF8##( ,
.##, -
GetBytes##- 5
(##5 6
$str	##6 ê
)
##ê ë
,
##ë í
CreationDate$$  
=$$! "
ConstantSeeder$$# 1
.$$1 2!
DEFAULT_SEED_DATETIME$$2 G
}%% 
,%% 
}&& 
;&& 
internal(( 
static(( 
List(( 
<(( 
User(( !
>((! "
ManagerUsers((# /
(((/ 0
)((0 1
=>((2 4
new)) 
List)) 
<)) 
User)) 
>)) 
{** 
new++ 
(++ 
)++ 
{,, 
Id-- 
=-- 
new-- 
Guid-- !
(--! "
$str--" H
)--H I
,--I J
UserValidationId.. $
=..% &(
ConstantSeederUserValidation..' C
...C D"
ManagerUserValidations..D Z
(..Z [
)..[ \
[..\ ]
$num..] ^
]..^ _
..._ `
Id..` b
,..b c
Email// 
=// 
$str// >
,//> ?
Name00 
=00 
$str00 $
,00$ %%
FireBaseCloudMessageToken11 -
=11. /
$str	110 ’
,
11’ ÷
Password22 
=22 
Encoding22 '
.22' (
UTF822( ,
.22, -
GetBytes22- 5
(225 6
$str	226 ê
)
22ê ë
,
22ë í
CreationDate33  
=33! "
ConstantSeeder33# 1
.331 2!
DEFAULT_SEED_DATETIME332 G
}44 
,44 
}55 
;55 
}66 
}77 ã
hE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Constants\SeederDev\ConstantSeederManager.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
	Constants  )
.) *
	SeederDev* 3
{ 
internal 
static 
class !
ConstantSeederManager /
{		 
internal

 
static

 
List

 
<

 
Manager

 $
>

$ %
Managers

& .
(

. /
)

/ 0
=>

1 3
new 
( 
) 
{ 
new 
( 
) 
{ 
Id 
= 
new 
Guid !
(! "
$str" H
)H I
,I J
UserId 
= 
ConstantSeederUser /
./ 0
ManagerUsers0 <
(< =
)= >
.> ?
First? D
(D E
xE F
=>G I
xJ K
.K L
EmailL Q
==R T
$strU w
)w x
.x y
Idy {
,{ |
CreationDate  
=! "
ConstantSeeder# 1
.1 2!
DEFAULT_SEED_DATETIME2 G
} 
, 
} 
; 
} 
} Ä
iE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Constants\SeederDev\ConstantSeederEmployee.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
	Constants  )
.) *
	SeederDev* 3
{ 
internal 
static 
class "
ConstantSeederEmployee 0
{		 
internal

 
static

 
List

 
<

 
Employee

 %
>

% &
	Employees

' 0
(

0 1
)

1 2
=>

3 5
new 
( 
) 
{ 
new 
( 
) 
{ 
Id 
= 
new 
Guid !
(! "
$str" H
)H I
,I J
UserId 
= 
ConstantSeederUser /
./ 0
EmployeeUsers0 =
(= >
)> ?
.? @
First@ E
(E F
xF G
=>H J
xK L
.L M
NameM Q
==R T
$strU ^
)^ _
._ `
Id` b
,b c
CreationDate  
=! "
ConstantSeeder# 1
.1 2!
DEFAULT_SEED_DATETIME2 G
} 
} 
; 
} 
} †
`E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Constants\ConstantStockTypeSeeder.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
	Constants  )
{ 
public 

class #
ConstantStockTypeSeeder (
{ 
internal		 
static		 
List		 
<		 
	StockType		 &
>		& '

StockTypes		( 2
(		2 3
)		3 4
=>		5 7
new

 
List

 
<

 
	StockType

 
>

 
{ 
new 
( 
) 
{ 
Id 
= 
Domain 
.  
Entities  (
.( )
Enums) .
.. /
	StockType/ 8
.8 9
Food9 =
.= >
GetDescription> L
(L M
)M N
,N O
CreationDate  
=! "
ConstantSeeder# 1
.1 2!
DEFAULT_SEED_DATETIME2 G
,G H
} 
, 
new 
( 
) 
{ 
Id 
= 
Domain 
.  
Entities  (
.( )
Enums) .
.. /
	StockType/ 8
.8 9
Hygiene9 @
.@ A
GetDescriptionA O
(O P
)P Q
,Q R
CreationDate  
=! "
ConstantSeeder# 1
.1 2!
DEFAULT_SEED_DATETIME2 G
,G H
} 
, 
new 
( 
) 
{ 
Id 
= 
Domain 
.  
Entities  (
.( )
Enums) .
.. /
	StockType/ 8
.8 9
Cleaning9 A
.A B
GetDescriptionB P
(P Q
)Q R
,R S
CreationDate  
=! "
ConstantSeeder# 1
.1 2!
DEFAULT_SEED_DATETIME2 G
,G H
} 
, 
new 
( 
) 
{ 
Id 
= 
Domain 
.  
Entities  (
.( )
Enums) .
.. /
	StockType/ 8
.8 9
Medicine9 A
.A B
GetDescriptionB P
(P Q
)Q R
,R S
CreationDate  
=! "
ConstantSeeder# 1
.1 2!
DEFAULT_SEED_DATETIME2 G
,G H
} 
}   
;   
}!! 
}"" Üﬂ	
\E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Constants\ConstantStockSeeder.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
	Constants  )
{ 
public 

class 
ConstantStockSeeder $
{		 
public

 
static

 
List

 
<

 
Stock

  
>

  !
Stocks

" (
(

( )
)

) *
=>

+ -
new 
List 
< 
Stock 
> 
{ 
new 
Stock 
( 
) 
{ 
Id 
=  !
Guid" &
.& '
Parse' ,
(, -
$str- S
)S T
,T U
NameV Z
=[ \
$str] k
,k l
Descriptionm x
=y z
$str{ }
,} ~
Quantity	 á
=
à â
$num
ä ã
,
ã å
CreationDate
ç ô
=
ö õ
ConstantSeeder
ú ™
.
™ ´#
DEFAULT_SEED_DATETIME
´ ¿
,
¿ ¡
Disable
¬ …
=
  À
false
Ã —
,
— “ 
QuantityLowWarning
” Â
=
Ê Á
$num
Ë È
,
È Í
StockTypeId
Î ˆ
=
˜ ¯
Domain
˘ ˇ
.
ˇ Ä
Entities
Ä à
.
à â
Enums
â é
.
é è
	StockType
è ò
.
ò ô
Food
ô ù
.
ù û
GetDescription
û ¨
(
¨ ≠
)
≠ Æ
}
Æ Ø
,
Ø ∞
new 
Stock 
( 
) 
{ 
Id 
=  !
Guid" &
.& '
Parse' ,
(, -
$str- S
)S T
,T U
NameV Z
=[ \
$str] u
,u v
Description	w Ç
=
É Ñ
$str
Ö á
,
á à
Quantity
â ë
=
í ì
$num
î ï
,
ï ñ
CreationDate
ó £
=
§ •
ConstantSeeder
¶ ¥
.
¥ µ#
DEFAULT_SEED_DATETIME
µ  
,
  À
Disable
Ã ”
=
‘ ’
false
÷ €
,
€ ‹ 
QuantityLowWarning
› Ô
=
 Ò
$num
Ú Û
,
Û Ù
StockTypeId
ı Ä
=
Å Ç
Domain
É â
.
â ä
Entities
ä í
.
í ì
Enums
ì ò
.
ò ô
	StockType
ô ¢
.
¢ £
Food
£ ß
.
ß ®
GetDescription
® ∂
(
∂ ∑
)
∑ ∏
}
∏ π
,
π ∫
new 
Stock 
( 
) 
{ 
Id 
=  !
Guid" &
.& '
Parse' ,
(, -
$str- S
)S T
,T U
NameV Z
=[ \
$str] j
,j k
Descriptionl w
=x y
$strz |
,| }
Quantity	~ Ü
=
á à
$num
â ä
,
ä ã
CreationDate
å ò
=
ô ö
ConstantSeeder
õ ©
.
© ™#
DEFAULT_SEED_DATETIME
™ ø
,
ø ¿
Disable
¡ »
=
…  
false
À –
,
– — 
QuantityLowWarning
“ ‰
=
Â Ê
$num
Á Ë
,
Ë È
StockTypeId
Í ı
=
ˆ ˜
Domain
¯ ˛
.
˛ ˇ
Entities
ˇ á
.
á à
Enums
à ç
.
ç é
	StockType
é ó
.
ó ò
Food
ò ú
.
ú ù
GetDescription
ù ´
(
´ ¨
)
¨ ≠
}
≠ Æ
,
Æ Ø
new 
Stock 
( 
) 
{ 
Id 
=  !
Guid" &
.& '
Parse' ,
(, -
$str- S
)S T
,T U
NameV Z
=[ \
$str] j
,j k
Descriptionl w
=x y
$strz |
,| }
Quantity	~ Ü
=
á à
$num
â ä
,
ä ã
CreationDate
å ò
=
ô ö
ConstantSeeder
õ ©
.
© ™#
DEFAULT_SEED_DATETIME
™ ø
,
ø ¿
Disable
¡ »
=
…  
false
À –
,
– — 
QuantityLowWarning
“ ‰
=
Â Ê
$num
Á Ë
,
Ë È
StockTypeId
Í ı
=
ˆ ˜
Domain
¯ ˛
.
˛ ˇ
Entities
ˇ á
.
á à
Enums
à ç
.
ç é
	StockType
é ó
.
ó ò
Food
ò ú
.
ú ù
GetDescription
ù ´
(
´ ¨
)
¨ ≠
}
≠ Æ
,
Æ Ø
new 
Stock 
( 
) 
{ 
Id 
=  !
Guid" &
.& '
Parse' ,
(, -
$str- S
)S T
,T U
NameV Z
=[ \
$str] i
,i j
Descriptionk v
=w x
$stry {
,{ |
Quantity	} Ö
=
Ü á
$num
à â
,
â ä
CreationDate
ã ó
=
ò ô
ConstantSeeder
ö ®
.
® ©#
DEFAULT_SEED_DATETIME
© æ
,
æ ø
Disable
¿ «
=
» …
false
  œ
,
œ – 
QuantityLowWarning
— „
=
‰ Â
$num
Ê Á
,
Á Ë
StockTypeId
È Ù
=
ı ˆ
Domain
˜ ˝
.
˝ ˛
Entities
˛ Ü
.
Ü á
Enums
á å
.
å ç
	StockType
ç ñ
.
ñ ó
Food
ó õ
.
õ ú
GetDescription
ú ™
(
™ ´
)
´ ¨
}
¨ ≠
,
≠ Æ
new 
Stock 
( 
) 
{ 
Id 
=  !
Guid" &
.& '
Parse' ,
(, -
$str- S
)S T
,T U
NameV Z
=[ \
$str] g
,g h
Descriptioni t
=u v
$strw y
,y z
Quantity	{ É
=
Ñ Ö
$num
Ü á
,
á à
CreationDate
â ï
=
ñ ó
ConstantSeeder
ò ¶
.
¶ ß#
DEFAULT_SEED_DATETIME
ß º
,
º Ω
Disable
æ ≈
=
∆ «
false
» Õ
,
Õ Œ 
QuantityLowWarning
œ ·
=
‚ „
$num
‰ Â
,
Â Ê
StockTypeId
Á Ú
=
Û Ù
Domain
ı ˚
.
˚ ¸
Entities
¸ Ñ
.
Ñ Ö
Enums
Ö ä
.
ä ã
	StockType
ã î
.
î ï
Food
ï ô
.
ô ö
GetDescription
ö ®
(
® ©
)
© ™
}
™ ´
,
´ ¨
new 
Stock 
( 
) 
{ 
Id 
=  !
Guid" &
.& '
Parse' ,
(, -
$str- S
)S T
,T U
NameV Z
=[ \
$str] i
,i j
Descriptionk v
=w x
$stry {
,{ |
Quantity	} Ö
=
Ü á
$num
à â
,
â ä
CreationDate
ã ó
=
ò ô
ConstantSeeder
ö ®
.
® ©#
DEFAULT_SEED_DATETIME
© æ
,
æ ø
Disable
¿ «
=
» …
false
  œ
,
œ – 
QuantityLowWarning
— „
=
‰ Â
$num
Ê Á
,
Á Ë
StockTypeId
È Ù
=
ı ˆ
Domain
˜ ˝
.
˝ ˛
Entities
˛ Ü
.
Ü á
Enums
á å
.
å ç
	StockType
ç ñ
.
ñ ó
Food
ó õ
.
õ ú
GetDescription
ú ™
(
™ ´
)
´ ¨
}
¨ ≠
,
≠ Æ
new 
Stock 
( 
) 
{ 
Id 
=  !
Guid" &
.& '
Parse' ,
(, -
$str- S
)S T
,T U
NameV Z
=[ \
$str] i
,i j
Descriptionk v
=w x
$stry {
,{ |
Quantity	} Ö
=
Ü á
$num
à â
,
â ä
CreationDate
ã ó
=
ò ô
ConstantSeeder
ö ®
.
® ©#
DEFAULT_SEED_DATETIME
© æ
,
æ ø
Disable
¿ «
=
» …
false
  œ
,
œ – 
QuantityLowWarning
— „
=
‰ Â
$num
Ê Á
,
Á Ë
StockTypeId
È Ù
=
ı ˆ
Domain
˜ ˝
.
˝ ˛
Entities
˛ Ü
.
Ü á
Enums
á å
.
å ç
	StockType
ç ñ
.
ñ ó
Food
ó õ
.
õ ú
GetDescription
ú ™
(
™ ´
)
´ ¨
}
¨ ≠
,
≠ Æ
new 
Stock 
( 
) 
{ 
Id 
=  !
Guid" &
.& '
Parse' ,
(, -
$str- S
)S T
,T U
NameV Z
=[ \
$str] h
,h i
Descriptionj u
=v w
$strx z
,z {
Quantity	| Ñ
=
Ö Ü
$num
á à
,
à â
CreationDate
ä ñ
=
ó ò
ConstantSeeder
ô ß
.
ß ®#
DEFAULT_SEED_DATETIME
® Ω
,
Ω æ
Disable
ø ∆
=
« »
false
… Œ
,
Œ œ 
QuantityLowWarning
– ‚
=
„ ‰
$num
Â Ê
,
Ê Á
StockTypeId
Ë Û
=
Ù ı
Domain
ˆ ¸
.
¸ ˝
Entities
˝ Ö
.
Ö Ü
Enums
Ü ã
.
ã å
	StockType
å ï
.
ï ñ
Food
ñ ö
.
ö õ
GetDescription
õ ©
(
© ™
)
™ ´
}
´ ¨
,
¨ ≠
new 
Stock 
( 
) 
{ 
Id 
=  !
Guid" &
.& '
Parse' ,
(, -
$str- S
)S T
,T U
NameV Z
=[ \
$str] h
,h i
Descriptionj u
=v w
$strx z
,z {
Quantity	| Ñ
=
Ö Ü
$num
á à
,
à â
CreationDate
ä ñ
=
ó ò
ConstantSeeder
ô ß
.
ß ®#
DEFAULT_SEED_DATETIME
® Ω
,
Ω æ
Disable
ø ∆
=
« »
false
… Œ
,
Œ œ 
QuantityLowWarning
– ‚
=
„ ‰
$num
Â Ê
,
Ê Á
StockTypeId
Ë Û
=
Ù ı
Domain
ˆ ¸
.
¸ ˝
Entities
˝ Ö
.
Ö Ü
Enums
Ü ã
.
ã å
	StockType
å ï
.
ï ñ
Food
ñ ö
.
ö õ
GetDescription
õ ©
(
© ™
)
™ ´
}
´ ¨
,
¨ ≠
new 
Stock 
( 
) 
{ 
Id 
=  !
Guid" &
.& '
Parse' ,
(, -
$str- S
)S T
,T U
NameV Z
=[ \
$str] c
,c d
Descriptione p
=q r
$strs u
,u v
Quantityw 
=
Ä Å
$num
Ç É
,
É Ñ
CreationDate
Ö ë
=
í ì
ConstantSeeder
î ¢
.
¢ £#
DEFAULT_SEED_DATETIME
£ ∏
,
∏ π
Disable
∫ ¡
=
¬ √
false
ƒ …
,
…   
QuantityLowWarning
À ›
=
ﬁ ﬂ
$num
‡ ·
,
· ‚
StockTypeId
„ Ó
=
Ô 
Domain
Ò ˜
.
˜ ¯
Entities
¯ Ä
.
Ä Å
Enums
Å Ü
.
Ü á
	StockType
á ê
.
ê ë
Food
ë ï
.
ï ñ
GetDescription
ñ §
(
§ •
)
• ¶
}
¶ ß
,
ß ®
new 
Stock 
( 
) 
{ 
Id 
=  !
Guid" &
.& '
Parse' ,
(, -
$str- S
)S T
,T U
NameV Z
=[ \
$str] n
,n o
Descriptionp {
=| }
$str	~ Ä
,
Ä Å
Quantity
Ç ä
=
ã å
$num
ç é
,
é è
CreationDate
ê ú
=
ù û
ConstantSeeder
ü ≠
.
≠ Æ#
DEFAULT_SEED_DATETIME
Æ √
,
√ ƒ
Disable
≈ Ã
=
Õ Œ
false
œ ‘
,
‘ ’ 
QuantityLowWarning
÷ Ë
=
È Í
$num
Î Ï
,
Ï Ì
StockTypeId
Ó ˘
=
˙ ˚
Domain
¸ Ç
.
Ç É
Entities
É ã
.
ã å
Enums
å ë
.
ë í
	StockType
í õ
.
õ ú
Food
ú †
.
† °
GetDescription
° Ø
(
Ø ∞
)
∞ ±
}
± ≤
,
≤ ≥
new 
Stock 
( 
) 
{ 
Id 
=  !
Guid" &
.& '
Parse' ,
(, -
$str- S
)S T
,T U
NameV Z
=[ \
$str] l
,l m
Descriptionn y
=z {
$str| ~
,~ 
Quantity
Ä à
=
â ä
$num
ã å
,
å ç
CreationDate
é ö
=
õ ú
ConstantSeeder
ù ´
.
´ ¨#
DEFAULT_SEED_DATETIME
¨ ¡
,
¡ ¬
Disable
√  
=
À Ã
false
Õ “
,
“ ” 
QuantityLowWarning
‘ Ê
=
Á Ë
$num
È Í
,
Í Î
StockTypeId
Ï ˜
=
¯ ˘
Domain
˙ Ä
.
Ä Å
Entities
Å â
.
â ä
Enums
ä è
.
è ê
	StockType
ê ô
.
ô ö
Food
ö û
.
û ü
GetDescription
ü ≠
(
≠ Æ
)
Æ Ø
}
Ø ∞
,
∞ ±
new 
Stock 
( 
) 
{ 
Id 
=  !
Guid" &
.& '
Parse' ,
(, -
$str- S
)S T
,T U
NameV Z
=[ \
$str] o
,o p
Descriptionq |
=} ~
$str	 Å
,
Å Ç
Quantity
É ã
=
å ç
$num
é è
,
è ê
CreationDate
ë ù
=
û ü
ConstantSeeder
† Æ
.
Æ Ø#
DEFAULT_SEED_DATETIME
Ø ƒ
,
ƒ ≈
Disable
∆ Õ
=
Œ œ
false
– ’
,
’ ÷ 
QuantityLowWarning
◊ È
=
Í Î
$num
Ï Ì
,
Ì Ó
StockTypeId
Ô ˙
=
˚ ¸
Domain
˝ É
.
É Ñ
Entities
Ñ å
.
å ç
Enums
ç í
.
í ì
	StockType
ì ú
.
ú ù
Food
ù °
.
° ¢
GetDescription
¢ ∞
(
∞ ±
)
± ≤
}
≤ ≥
,
≥ ¥
new 
Stock 
( 
) 
{ 
Id 
=  !
Guid" &
.& '
Parse' ,
(, -
$str- S
)S T
,T U
NameV Z
=[ \
$str] j
,j k
Descriptionl w
=x y
$strz |
,| }
Quantity	~ Ü
=
á à
$num
â ä
,
ä ã
CreationDate
å ò
=
ô ö
ConstantSeeder
õ ©
.
© ™#
DEFAULT_SEED_DATETIME
™ ø
,
ø ¿
Disable
¡ »
=
…  
false
À –
,
– — 
QuantityLowWarning
“ ‰
=
Â Ê
$num
Á Ë
,
Ë È
StockTypeId
Í ı
=
ˆ ˜
Domain
¯ ˛
.
˛ ˇ
Entities
ˇ á
.
á à
Enums
à ç
.
ç é
	StockType
é ó
.
ó ò
Food
ò ú
.
ú ù
GetDescription
ù ´
(
´ ¨
)
¨ ≠
}
≠ Æ
,
Æ Ø
new 
Stock 
( 
) 
{ 
Id 
=  !
Guid" &
.& '
Parse' ,
(, -
$str- S
)S T
,T U
NameV Z
=[ \
$str] i
,i j
Descriptionk v
=w x
$stry {
,{ |
Quantity	} Ö
=
Ü á
$num
à â
,
â ä
CreationDate
ã ó
=
ò ô
ConstantSeeder
ö ®
.
® ©#
DEFAULT_SEED_DATETIME
© æ
,
æ ø
Disable
¿ «
=
» …
false
  œ
,
œ – 
QuantityLowWarning
— „
=
‰ Â
$num
Ê Á
,
Á Ë
StockTypeId
È Ù
=
ı ˆ
Domain
˜ ˝
.
˝ ˛
Entities
˛ Ü
.
Ü á
Enums
á å
.
å ç
	StockType
ç ñ
.
ñ ó
Food
ó õ
.
õ ú
GetDescription
ú ™
(
™ ´
)
´ ¨
}
¨ ≠
,
≠ Æ
new 
Stock 
( 
) 
{ 
Id 
=  !
Guid" &
.& '
Parse' ,
(, -
$str- S
)S T
,T U
NameV Z
=[ \
$str] i
,i j
Descriptionk v
=w x
$stry {
,{ |
Quantity	} Ö
=
Ü á
$num
à â
,
â ä
CreationDate
ã ó
=
ò ô
ConstantSeeder
ö ®
.
® ©#
DEFAULT_SEED_DATETIME
© æ
,
æ ø
Disable
¿ «
=
» …
false
  œ
,
œ – 
QuantityLowWarning
— „
=
‰ Â
$num
Ê Á
,
Á Ë
StockTypeId
È Ù
=
ı ˆ
Domain
˜ ˝
.
˝ ˛
Entities
˛ Ü
.
Ü á
Enums
á å
.
å ç
	StockType
ç ñ
.
ñ ó
Food
ó õ
.
õ ú
GetDescription
ú ™
(
™ ´
)
´ ¨
}
¨ ≠
,
≠ Æ
new 
Stock 
( 
) 
{ 
Id 
=  !
Guid" &
.& '
Parse' ,
(, -
$str- S
)S T
,T U
NameV Z
=[ \
$str] h
,h i
Descriptionj u
=v w
$strx z
,z {
Quantity	| Ñ
=
Ö Ü
$num
á à
,
à â
CreationDate
ä ñ
=
ó ò
ConstantSeeder
ô ß
.
ß ®#
DEFAULT_SEED_DATETIME
® Ω
,
Ω æ
Disable
ø ∆
=
« »
false
… Œ
,
Œ œ 
QuantityLowWarning
– ‚
=
„ ‰
$num
Â Ê
,
Ê Á
StockTypeId
Ë Û
=
Ù ı
Domain
ˆ ¸
.
¸ ˝
Entities
˝ Ö
.
Ö Ü
Enums
Ü ã
.
ã å
	StockType
å ï
.
ï ñ
Food
ñ ö
.
ö õ
GetDescription
õ ©
(
© ™
)
™ ´
}
´ ¨
,
¨ ≠
new 
Stock 
( 
) 
{ 
Id 
=  !
Guid" &
.& '
Parse' ,
(, -
$str- S
)S T
,T U
NameV Z
=[ \
$str] b
,b c
Descriptiond o
=p q
$strr t
,t u
Quantityv ~
=	 Ä
$num
Å Ç
,
Ç É
CreationDate
Ñ ê
=
ë í
ConstantSeeder
ì °
.
° ¢#
DEFAULT_SEED_DATETIME
¢ ∑
,
∑ ∏
Disable
π ¿
=
¡ ¬
false
√ »
,
» … 
QuantityLowWarning
  ‹
=
› ﬁ
$num
ﬂ ‡
,
‡ ·
StockTypeId
‚ Ì
=
Ó Ô
Domain
 ˆ
.
ˆ ˜
Entities
˜ ˇ
.
ˇ Ä
Enums
Ä Ö
.
Ö Ü
	StockType
Ü è
.
è ê
Food
ê î
.
î ï
GetDescription
ï £
(
£ §
)
§ •
}
• ¶
,
¶ ß
new   
Stock   
(   
)   
{   
Id   
=    !
Guid  " &
.  & '
Parse  ' ,
(  , -
$str  - S
)  S T
,  T U
Name  V Z
=  [ \
$str  ] u
,  u v
Description	  w Ç
=
  É Ñ
$str
  Ö á
,
  á à
Quantity
  â ë
=
  í ì
$num
  î ï
,
  ï ñ
CreationDate
  ó £
=
  § •
ConstantSeeder
  ¶ ¥
.
  ¥ µ#
DEFAULT_SEED_DATETIME
  µ  
,
    À
Disable
  Ã ”
=
  ‘ ’
false
  ÷ €
,
  € ‹ 
QuantityLowWarning
  › Ô
=
   Ò
$num
  Ú Û
,
  Û Ù
StockTypeId
  ı Ä
=
  Å Ç
Domain
  É â
.
  â ä
Entities
  ä í
.
  í ì
Enums
  ì ò
.
  ò ô
	StockType
  ô ¢
.
  ¢ £
Food
  £ ß
.
  ß ®
GetDescription
  ® ∂
(
  ∂ ∑
)
  ∑ ∏
}
  ∏ π
,
  π ∫
new!! 
Stock!! 
(!! 
)!! 
{!! 
Id!! 
=!!  !
Guid!!" &
.!!& '
Parse!!' ,
(!!, -
$str!!- S
)!!S T
,!!T U
Name!!V Z
=!![ \
$str!!] m
,!!m n
Description!!o z
=!!{ |
$str!!} 
,	!! Ä
Quantity
!!Å â
=
!!ä ã
$num
!!å ç
,
!!ç é
CreationDate
!!è õ
=
!!ú ù
ConstantSeeder
!!û ¨
.
!!¨ ≠#
DEFAULT_SEED_DATETIME
!!≠ ¬
,
!!¬ √
Disable
!!ƒ À
=
!!Ã Õ
false
!!Œ ”
,
!!” ‘ 
QuantityLowWarning
!!’ Á
=
!!Ë È
$num
!!Í Î
,
!!Î Ï
StockTypeId
!!Ì ¯
=
!!˘ ˙
Domain
!!˚ Å
.
!!Å Ç
Entities
!!Ç ä
.
!!ä ã
Enums
!!ã ê
.
!!ê ë
	StockType
!!ë ö
.
!!ö õ
Food
!!õ ü
.
!!ü †
GetDescription
!!† Æ
(
!!Æ Ø
)
!!Ø ∞
}
!!∞ ±
,
!!± ≤
new"" 
Stock"" 
("" 
)"" 
{"" 
Id"" 
=""  !
Guid""" &
.""& '
Parse""' ,
("", -
$str""- S
)""S T
,""T U
Name""V Z
=""[ \
$str""] h
,""h i
Description""j u
=""v w
$str""x z
,""z {
Quantity	""| Ñ
=
""Ö Ü
$num
""á à
,
""à â
CreationDate
""ä ñ
=
""ó ò
ConstantSeeder
""ô ß
.
""ß ®#
DEFAULT_SEED_DATETIME
""® Ω
,
""Ω æ
Disable
""ø ∆
=
""« »
false
""… Œ
,
""Œ œ 
QuantityLowWarning
""– ‚
=
""„ ‰
$num
""Â Ê
,
""Ê Á
StockTypeId
""Ë Û
=
""Ù ı
Domain
""ˆ ¸
.
""¸ ˝
Entities
""˝ Ö
.
""Ö Ü
Enums
""Ü ã
.
""ã å
	StockType
""å ï
.
""ï ñ
Food
""ñ ö
.
""ö õ
GetDescription
""õ ©
(
""© ™
)
""™ ´
}
""´ ¨
,
""¨ ≠
new## 
Stock## 
(## 
)## 
{## 
Id## 
=##  !
Guid##" &
.##& '
Parse##' ,
(##, -
$str##- S
)##S T
,##T U
Name##V Z
=##[ \
$str##] n
,##n o
Description##p {
=##| }
$str	##~ Ä
,
##Ä Å
Quantity
##Ç ä
=
##ã å
$num
##ç é
,
##é è
CreationDate
##ê ú
=
##ù û
ConstantSeeder
##ü ≠
.
##≠ Æ#
DEFAULT_SEED_DATETIME
##Æ √
,
##√ ƒ
Disable
##≈ Ã
=
##Õ Œ
false
##œ ‘
,
##‘ ’ 
QuantityLowWarning
##÷ Ë
=
##È Í
$num
##Î Ï
,
##Ï Ì
StockTypeId
##Ó ˘
=
##˙ ˚
Domain
##¸ Ç
.
##Ç É
Entities
##É ã
.
##ã å
Enums
##å ë
.
##ë í
	StockType
##í õ
.
##õ ú
Food
##ú †
.
##† °
GetDescription
##° Ø
(
##Ø ∞
)
##∞ ±
}
##± ≤
,
##≤ ≥
new$$ 
Stock$$ 
($$ 
)$$ 
{$$ 
Id$$ 
=$$  !
Guid$$" &
.$$& '
Parse$$' ,
($$, -
$str$$- S
)$$S T
,$$T U
Name$$V Z
=$$[ \
$str$$] v
,$$v w
Description	$$x É
=
$$Ñ Ö
$str
$$Ü à
,
$$à â
Quantity
$$ä í
=
$$ì î
$num
$$ï ñ
,
$$ñ ó
CreationDate
$$ò §
=
$$• ¶
ConstantSeeder
$$ß µ
.
$$µ ∂#
DEFAULT_SEED_DATETIME
$$∂ À
,
$$À Ã
Disable
$$Õ ‘
=
$$’ ÷
false
$$◊ ‹
,
$$‹ › 
QuantityLowWarning
$$ﬁ 
=
$$Ò Ú
$num
$$Û Ù
,
$$Ù ı
StockTypeId
$$ˆ Å
=
$$Ç É
Domain
$$Ñ ä
.
$$ä ã
Entities
$$ã ì
.
$$ì î
Enums
$$î ô
.
$$ô ö
	StockType
$$ö £
.
$$£ §
Food
$$§ ®
.
$$® ©
GetDescription
$$© ∑
(
$$∑ ∏
)
$$∏ π
}
$$π ∫
,
$$∫ ª
new%% 
Stock%% 
(%% 
)%% 
{%% 
Id%% 
=%%  !
Guid%%" &
.%%& '
Parse%%' ,
(%%, -
$str%%- S
)%%S T
,%%T U
Name%%V Z
=%%[ \
$str%%] q
,%%q r
Description%%s ~
=	%% Ä
$str
%%Å É
,
%%É Ñ
Quantity
%%Ö ç
=
%%é è
$num
%%ê ë
,
%%ë í
CreationDate
%%ì ü
=
%%† °
ConstantSeeder
%%¢ ∞
.
%%∞ ±#
DEFAULT_SEED_DATETIME
%%± ∆
,
%%∆ «
Disable
%%» œ
=
%%– —
false
%%“ ◊
,
%%◊ ÿ 
QuantityLowWarning
%%Ÿ Î
=
%%Ï Ì
$num
%%Ó Ô
,
%%Ô 
StockTypeId
%%Ò ¸
=
%%˝ ˛
Domain
%%ˇ Ö
.
%%Ö Ü
Entities
%%Ü é
.
%%é è
Enums
%%è î
.
%%î ï
	StockType
%%ï û
.
%%û ü
Food
%%ü £
.
%%£ §
GetDescription
%%§ ≤
(
%%≤ ≥
)
%%≥ ¥
}
%%¥ µ
,
%%µ ∂
new&& 
Stock&& 
(&& 
)&& 
{&& 
Id&& 
=&&  !
Guid&&" &
.&&& '
Parse&&' ,
(&&, -
$str&&- S
)&&S T
,&&T U
Name&&V Z
=&&[ \
$str&&] q
,&&q r
Description&&s ~
=	&& Ä
$str
&&Å É
,
&&É Ñ
Quantity
&&Ö ç
=
&&é è
$num
&&ê ë
,
&&ë í
CreationDate
&&ì ü
=
&&† °
ConstantSeeder
&&¢ ∞
.
&&∞ ±#
DEFAULT_SEED_DATETIME
&&± ∆
,
&&∆ «
Disable
&&» œ
=
&&– —
false
&&“ ◊
,
&&◊ ÿ 
QuantityLowWarning
&&Ÿ Î
=
&&Ï Ì
$num
&&Ó Ô
,
&&Ô 
StockTypeId
&&Ò ¸
=
&&˝ ˛
Domain
&&ˇ Ö
.
&&Ö Ü
Entities
&&Ü é
.
&&é è
Enums
&&è î
.
&&î ï
	StockType
&&ï û
.
&&û ü
Food
&&ü £
.
&&£ §
GetDescription
&&§ ≤
(
&&≤ ≥
)
&&≥ ¥
}
&&¥ µ
,
&&µ ∂
new'' 
Stock'' 
('' 
)'' 
{'' 
Id'' 
=''  !
Guid''" &
.''& '
Parse''' ,
('', -
$str''- S
)''S T
,''T U
Name''V Z
=''[ \
$str''] p
,''p q
Description''r }
=''~ 
$str
''Ä Ç
,
''Ç É
Quantity
''Ñ å
=
''ç é
$num
''è ê
,
''ê ë
CreationDate
''í û
=
''ü †
ConstantSeeder
''° Ø
.
''Ø ∞#
DEFAULT_SEED_DATETIME
''∞ ≈
,
''≈ ∆
Disable
''« Œ
=
''œ –
false
''— ÷
,
''÷ ◊ 
QuantityLowWarning
''ÿ Í
=
''Î Ï
$num
''Ì Ó
,
''Ó Ô
StockTypeId
'' ˚
=
''¸ ˝
Domain
''˛ Ñ
.
''Ñ Ö
Entities
''Ö ç
.
''ç é
Enums
''é ì
.
''ì î
	StockType
''î ù
.
''ù û
Food
''û ¢
.
''¢ £
GetDescription
''£ ±
(
''± ≤
)
''≤ ≥
}
''≥ ¥
,
''¥ µ
new(( 
Stock(( 
((( 
)(( 
{(( 
Id(( 
=((  !
Guid((" &
.((& '
Parse((' ,
(((, -
$str((- S
)((S T
,((T U
Name((V Z
=(([ \
$str((] v
,((v w
Description	((x É
=
((Ñ Ö
$str
((Ü à
,
((à â
Quantity
((ä í
=
((ì î
$num
((ï ñ
,
((ñ ó
CreationDate
((ò §
=
((• ¶
ConstantSeeder
((ß µ
.
((µ ∂#
DEFAULT_SEED_DATETIME
((∂ À
,
((À Ã
Disable
((Õ ‘
=
((’ ÷
false
((◊ ‹
,
((‹ › 
QuantityLowWarning
((ﬁ 
=
((Ò Ú
$num
((Û Ù
,
((Ù ı
StockTypeId
((ˆ Å
=
((Ç É
Domain
((Ñ ä
.
((ä ã
Entities
((ã ì
.
((ì î
Enums
((î ô
.
((ô ö
	StockType
((ö £
.
((£ §
Food
((§ ®
.
((® ©
GetDescription
((© ∑
(
((∑ ∏
)
((∏ π
}
((π ∫
,
((∫ ª
new)) 
Stock)) 
()) 
))) 
{)) 
Id)) 
=))  !
Guid))" &
.))& '
Parse))' ,
()), -
$str))- S
)))S T
,))T U
Name))V Z
=))[ \
$str))] w
,))w x
Description	))y Ñ
=
))Ö Ü
$str
))á â
,
))â ä
Quantity
))ã ì
=
))î ï
$num
))ñ ó
,
))ó ò
CreationDate
))ô •
=
))¶ ß
ConstantSeeder
))® ∂
.
))∂ ∑#
DEFAULT_SEED_DATETIME
))∑ Ã
,
))Ã Õ
Disable
))Œ ’
=
))÷ ◊
false
))ÿ ›
,
))› ﬁ 
QuantityLowWarning
))ﬂ Ò
=
))Ú Û
$num
))Ù ı
,
))ı ˆ
StockTypeId
))˜ Ç
=
))É Ñ
Domain
))Ö ã
.
))ã å
Entities
))å î
.
))î ï
Enums
))ï ö
.
))ö õ
	StockType
))õ §
.
))§ •
Food
))• ©
.
))© ™
GetDescription
))™ ∏
(
))∏ π
)
))π ∫
}
))∫ ª
,
))ª º
new** 
Stock** 
(** 
)** 
{** 
Id** 
=**  !
Guid**" &
.**& '
Parse**' ,
(**, -
$str**- S
)**S T
,**T U
Name**V Z
=**[ \
$str**] t
,**t u
Description	**v Å
=
**Ç É
$str
**Ñ Ü
,
**Ü á
Quantity
**à ê
=
**ë í
$num
**ì î
,
**î ï
CreationDate
**ñ ¢
=
**£ §
ConstantSeeder
**• ≥
.
**≥ ¥#
DEFAULT_SEED_DATETIME
**¥ …
,
**…  
Disable
**À “
=
**” ‘
false
**’ ⁄
,
**⁄ € 
QuantityLowWarning
**‹ Ó
=
**Ô 
$num
**Ò Ú
,
**Ú Û
StockTypeId
**Ù ˇ
=
**Ä Å
Domain
**Ç à
.
**à â
Entities
**â ë
.
**ë í
Enums
**í ó
.
**ó ò
	StockType
**ò °
.
**° ¢
Food
**¢ ¶
.
**¶ ß
GetDescription
**ß µ
(
**µ ∂
)
**∂ ∑
}
**∑ ∏
,
**∏ π
new++ 
Stock++ 
(++ 
)++ 
{++ 
Id++ 
=++  !
Guid++" &
.++& '
Parse++' ,
(++, -
$str++- S
)++S T
,++T U
Name++V Z
=++[ \
$str++] s
,++s t
Description	++u Ä
=
++Å Ç
$str
++É Ö
,
++Ö Ü
Quantity
++á è
=
++ê ë
$num
++í ì
,
++ì î
CreationDate
++ï °
=
++¢ £
ConstantSeeder
++§ ≤
.
++≤ ≥#
DEFAULT_SEED_DATETIME
++≥ »
,
++» …
Disable
++  —
=
++“ ”
false
++‘ Ÿ
,
++Ÿ ⁄ 
QuantityLowWarning
++€ Ì
=
++Ó Ô
$num
++ Ò
,
++Ò Ú
StockTypeId
++Û ˛
=
++ˇ Ä
Domain
++Å á
.
++á à
Entities
++à ê
.
++ê ë
Enums
++ë ñ
.
++ñ ó
	StockType
++ó †
.
++† °
Food
++° •
.
++• ¶
GetDescription
++¶ ¥
(
++¥ µ
)
++µ ∂
}
++∂ ∑
,
++∑ ∏
new,, 
Stock,, 
(,, 
),, 
{,, 
Id,, 
=,,  !
Guid,," &
.,,& '
Parse,,' ,
(,,, -
$str,,- S
),,S T
,,,T U
Name,,V Z
=,,[ \
$str,,] s
,,,s t
Description	,,u Ä
=
,,Å Ç
$str
,,É Ö
,
,,Ö Ü
Quantity
,,á è
=
,,ê ë
$num
,,í ì
,
,,ì î
CreationDate
,,ï °
=
,,¢ £
ConstantSeeder
,,§ ≤
.
,,≤ ≥#
DEFAULT_SEED_DATETIME
,,≥ »
,
,,» …
Disable
,,  —
=
,,“ ”
false
,,‘ Ÿ
,
,,Ÿ ⁄ 
QuantityLowWarning
,,€ Ì
=
,,Ó Ô
$num
,, Ò
,
,,Ò Ú
StockTypeId
,,Û ˛
=
,,ˇ Ä
Domain
,,Å á
.
,,á à
Entities
,,à ê
.
,,ê ë
Enums
,,ë ñ
.
,,ñ ó
	StockType
,,ó †
.
,,† °
Food
,,° •
.
,,• ¶
GetDescription
,,¶ ¥
(
,,¥ µ
)
,,µ ∂
}
,,∂ ∑
,
,,∑ ∏
new-- 
Stock-- 
(-- 
)-- 
{-- 
Id-- 
=--  !
Guid--" &
.--& '
Parse--' ,
(--, -
$str--- S
)--S T
,--T U
Name--V Z
=--[ \
$str--] s
,--s t
Description	--u Ä
=
--Å Ç
$str
--É Ö
,
--Ö Ü
Quantity
--á è
=
--ê ë
$num
--í ì
,
--ì î
CreationDate
--ï °
=
--¢ £
ConstantSeeder
--§ ≤
.
--≤ ≥#
DEFAULT_SEED_DATETIME
--≥ »
,
--» …
Disable
--  —
=
--“ ”
false
--‘ Ÿ
,
--Ÿ ⁄ 
QuantityLowWarning
--€ Ì
=
--Ó Ô
$num
-- Ò
,
--Ò Ú
StockTypeId
--Û ˛
=
--ˇ Ä
Domain
--Å á
.
--á à
Entities
--à ê
.
--ê ë
Enums
--ë ñ
.
--ñ ó
	StockType
--ó †
.
--† °
Food
--° •
.
--• ¶
GetDescription
--¶ ¥
(
--¥ µ
)
--µ ∂
}
--∂ ∑
,
--∑ ∏
new.. 
Stock.. 
(.. 
).. 
{.. 
Id.. 
=..  !
Guid.." &
...& '
Parse..' ,
(.., -
$str..- S
)..S T
,..T U
Name..V Z
=..[ \
$str..] s
,..s t
Description	..u Ä
=
..Å Ç
$str
..É Ö
,
..Ö Ü
Quantity
..á è
=
..ê ë
$num
..í ì
,
..ì î
CreationDate
..ï °
=
..¢ £
ConstantSeeder
..§ ≤
.
..≤ ≥#
DEFAULT_SEED_DATETIME
..≥ »
,
..» …
Disable
..  —
=
..“ ”
false
..‘ Ÿ
,
..Ÿ ⁄ 
QuantityLowWarning
..€ Ì
=
..Ó Ô
$num
.. Ò
,
..Ò Ú
StockTypeId
..Û ˛
=
..ˇ Ä
Domain
..Å á
.
..á à
Entities
..à ê
.
..ê ë
Enums
..ë ñ
.
..ñ ó
	StockType
..ó †
.
..† °
Food
..° •
.
..• ¶
GetDescription
..¶ ¥
(
..¥ µ
)
..µ ∂
}
..∂ ∑
,
..∑ ∏
new// 
Stock// 
(// 
)// 
{// 
Id// 
=//  !
Guid//" &
.//& '
Parse//' ,
(//, -
$str//- S
)//S T
,//T U
Name//V Z
=//[ \
$str//] e
,//e f
Description//g r
=//s t
$str//u w
,//w x
Quantity	//y Å
=
//Ç É
$num
//Ñ Ö
,
//Ö Ü
CreationDate
//á ì
=
//î ï
ConstantSeeder
//ñ §
.
//§ •#
DEFAULT_SEED_DATETIME
//• ∫
,
//∫ ª
Disable
//º √
=
//ƒ ≈
false
//∆ À
,
//À Ã 
QuantityLowWarning
//Õ ﬂ
=
//‡ ·
$num
//‚ „
,
//„ ‰
StockTypeId
//Â 
=
//Ò Ú
Domain
//Û ˘
.
//˘ ˙
Entities
//˙ Ç
.
//Ç É
Enums
//É à
.
//à â
	StockType
//â í
.
//í ì
Food
//ì ó
.
//ó ò
GetDescription
//ò ¶
(
//¶ ß
)
//ß ®
}
//® ©
,
//© ™
new00 
Stock00 
(00 
)00 
{00 
Id00 
=00  !
Guid00" &
.00& '
Parse00' ,
(00, -
$str00- S
)00S T
,00T U
Name00V Z
=00[ \
$str00] j
,00j k
Description00l w
=00x y
$str00z |
,00| }
Quantity	00~ Ü
=
00á à
$num
00â ä
,
00ä ã
CreationDate
00å ò
=
00ô ö
ConstantSeeder
00õ ©
.
00© ™#
DEFAULT_SEED_DATETIME
00™ ø
,
00ø ¿
Disable
00¡ »
=
00…  
false
00À –
,
00– — 
QuantityLowWarning
00“ ‰
=
00Â Ê
$num
00Á Ë
,
00Ë È
StockTypeId
00Í ı
=
00ˆ ˜
Domain
00¯ ˛
.
00˛ ˇ
Entities
00ˇ á
.
00á à
Enums
00à ç
.
00ç é
	StockType
00é ó
.
00ó ò
Food
00ò ú
.
00ú ù
GetDescription
00ù ´
(
00´ ¨
)
00¨ ≠
}
00≠ Æ
,
00Æ Ø
new11 
Stock11 
(11 
)11 
{11 
Id11 
=11  !
Guid11" &
.11& '
Parse11' ,
(11, -
$str11- S
)11S T
,11T U
Name11V Z
=11[ \
$str11] j
,11j k
Description11l w
=11x y
$str11z |
,11| }
Quantity	11~ Ü
=
11á à
$num
11â ä
,
11ä ã
CreationDate
11å ò
=
11ô ö
ConstantSeeder
11õ ©
.
11© ™#
DEFAULT_SEED_DATETIME
11™ ø
,
11ø ¿
Disable
11¡ »
=
11…  
false
11À –
,
11– — 
QuantityLowWarning
11“ ‰
=
11Â Ê
$num
11Á Ë
,
11Ë È
StockTypeId
11Í ı
=
11ˆ ˜
Domain
11¯ ˛
.
11˛ ˇ
Entities
11ˇ á
.
11á à
Enums
11à ç
.
11ç é
	StockType
11é ó
.
11ó ò
Food
11ò ú
.
11ú ù
GetDescription
11ù ´
(
11´ ¨
)
11¨ ≠
}
11≠ Æ
,
11Æ Ø
new22 
Stock22 
(22 
)22 
{22 
Id22 
=22  !
Guid22" &
.22& '
Parse22' ,
(22, -
$str22- S
)22S T
,22T U
Name22V Z
=22[ \
$str22] i
,22i j
Description22k v
=22w x
$str22y {
,22{ |
Quantity	22} Ö
=
22Ü á
$num
22à â
,
22â ä
CreationDate
22ã ó
=
22ò ô
ConstantSeeder
22ö ®
.
22® ©#
DEFAULT_SEED_DATETIME
22© æ
,
22æ ø
Disable
22¿ «
=
22» …
false
22  œ
,
22œ – 
QuantityLowWarning
22— „
=
22‰ Â
$num
22Ê Á
,
22Á Ë
StockTypeId
22È Ù
=
22ı ˆ
Domain
22˜ ˝
.
22˝ ˛
Entities
22˛ Ü
.
22Ü á
Enums
22á å
.
22å ç
	StockType
22ç ñ
.
22ñ ó
Food
22ó õ
.
22õ ú
GetDescription
22ú ™
(
22™ ´
)
22´ ¨
}
22¨ ≠
,
22≠ Æ
new33 
Stock33 
(33 
)33 
{33 
Id33 
=33  !
Guid33" &
.33& '
Parse33' ,
(33, -
$str33- S
)33S T
,33T U
Name33V Z
=33[ \
$str33] q
,33q r
Description33s ~
=	33 Ä
$str
33Å É
,
33É Ñ
Quantity
33Ö ç
=
33é è
$num
33ê ë
,
33ë í
CreationDate
33ì ü
=
33† °
ConstantSeeder
33¢ ∞
.
33∞ ±#
DEFAULT_SEED_DATETIME
33± ∆
,
33∆ «
Disable
33» œ
=
33– —
false
33“ ◊
,
33◊ ÿ 
QuantityLowWarning
33Ÿ Î
=
33Ï Ì
$num
33Ó Ô
,
33Ô 
StockTypeId
33Ò ¸
=
33˝ ˛
Domain
33ˇ Ö
.
33Ö Ü
Entities
33Ü é
.
33é è
Enums
33è î
.
33î ï
	StockType
33ï û
.
33û ü
Food
33ü £
.
33£ §
GetDescription
33§ ≤
(
33≤ ≥
)
33≥ ¥
}
33¥ µ
,
33µ ∂
new44 
Stock44 
(44 
)44 
{44 
Id44 
=44  !
Guid44" &
.44& '
Parse44' ,
(44, -
$str44- S
)44S T
,44T U
Name44V Z
=44[ \
$str44] o
,44o p
Description44q |
=44} ~
$str	44 Å
,
44Å Ç
Quantity
44É ã
=
44å ç
$num
44é è
,
44è ê
CreationDate
44ë ù
=
44û ü
ConstantSeeder
44† Æ
.
44Æ Ø#
DEFAULT_SEED_DATETIME
44Ø ƒ
,
44ƒ ≈
Disable
44∆ Õ
=
44Œ œ
false
44– ’
,
44’ ÷ 
QuantityLowWarning
44◊ È
=
44Í Î
$num
44Ï Ì
,
44Ì Ó
StockTypeId
44Ô ˙
=
44˚ ¸
Domain
44˝ É
.
44É Ñ
Entities
44Ñ å
.
44å ç
Enums
44ç í
.
44í ì
	StockType
44ì ú
.
44ú ù
Food
44ù °
.
44° ¢
GetDescription
44¢ ∞
(
44∞ ±
)
44± ≤
}
44≤ ≥
,
44≥ ¥
new55 
Stock55 
(55 
)55 
{55 
Id55 
=55  !
Guid55" &
.55& '
Parse55' ,
(55, -
$str55- S
)55S T
,55T U
Name55V Z
=55[ \
$str55] g
,55g h
Description55i t
=55u v
$str55w y
,55y z
Quantity	55{ É
=
55Ñ Ö
$num
55Ü á
,
55á à
CreationDate
55â ï
=
55ñ ó
ConstantSeeder
55ò ¶
.
55¶ ß#
DEFAULT_SEED_DATETIME
55ß º
,
55º Ω
Disable
55æ ≈
=
55∆ «
false
55» Õ
,
55Õ Œ 
QuantityLowWarning
55œ ·
=
55‚ „
$num
55‰ Â
,
55Â Ê
StockTypeId
55Á Ú
=
55Û Ù
Domain
55ı ˚
.
55˚ ¸
Entities
55¸ Ñ
.
55Ñ Ö
Enums
55Ö ä
.
55ä ã
	StockType
55ã î
.
55î ï
Food
55ï ô
.
55ô ö
GetDescription
55ö ®
(
55® ©
)
55© ™
}
55™ ´
,
55´ ¨
new66 
Stock66 
(66 
)66 
{66 
Id66 
=66  !
Guid66" &
.66& '
Parse66' ,
(66, -
$str66- S
)66S T
,66T U
Name66V Z
=66[ \
$str66] k
,66k l
Description66m x
=66y z
$str66{ }
,66} ~
Quantity	66 á
=
66à â
$num
66ä ã
,
66ã å
CreationDate
66ç ô
=
66ö õ
ConstantSeeder
66ú ™
.
66™ ´#
DEFAULT_SEED_DATETIME
66´ ¿
,
66¿ ¡
Disable
66¬ …
=
66  À
false
66Ã —
,
66— “ 
QuantityLowWarning
66” Â
=
66Ê Á
$num
66Ë È
,
66È Í
StockTypeId
66Î ˆ
=
66˜ ¯
Domain
66˘ ˇ
.
66ˇ Ä
Entities
66Ä à
.
66à â
Enums
66â é
.
66é è
	StockType
66è ò
.
66ò ô
Food
66ô ù
.
66ù û
GetDescription
66û ¨
(
66¨ ≠
)
66≠ Æ
}
66Æ Ø
,
66Ø ∞
new77 
Stock77 
(77 
)77 
{77 
Id77 
=77  !
Guid77" &
.77& '
Parse77' ,
(77, -
$str77- S
)77S T
,77T U
Name77V Z
=77[ \
$str77] f
,77f g
Description77h s
=77t u
$str77v x
,77x y
Quantity	77z Ç
=
77É Ñ
$num
77Ö Ü
,
77Ü á
CreationDate
77à î
=
77ï ñ
ConstantSeeder
77ó •
.
77• ¶#
DEFAULT_SEED_DATETIME
77¶ ª
,
77ª º
Disable
77Ω ƒ
=
77≈ ∆
false
77« Ã
,
77Ã Õ 
QuantityLowWarning
77Œ ‡
=
77· ‚
$num
77„ ‰
,
77‰ Â
StockTypeId
77Ê Ò
=
77Ú Û
Domain
77Ù ˙
.
77˙ ˚
Entities
77˚ É
.
77É Ñ
Enums
77Ñ â
.
77â ä
	StockType
77ä ì
.
77ì î
Food
77î ò
.
77ò ô
GetDescription
77ô ß
(
77ß ®
)
77® ©
}
77© ™
,
77™ ´
new88 
Stock88 
(88 
)88 
{88 
Id88 
=88  !
Guid88" &
.88& '
Parse88' ,
(88, -
$str88- S
)88S T
,88T U
Name88V Z
=88[ \
$str88] i
,88i j
Description88k v
=88w x
$str88y {
,88{ |
Quantity	88} Ö
=
88Ü á
$num
88à â
,
88â ä
CreationDate
88ã ó
=
88ò ô
ConstantSeeder
88ö ®
.
88® ©#
DEFAULT_SEED_DATETIME
88© æ
,
88æ ø
Disable
88¿ «
=
88» …
false
88  œ
,
88œ – 
QuantityLowWarning
88— „
=
88‰ Â
$num
88Ê Á
,
88Á Ë
StockTypeId
88È Ù
=
88ı ˆ
Domain
88˜ ˝
.
88˝ ˛
Entities
88˛ Ü
.
88Ü á
Enums
88á å
.
88å ç
	StockType
88ç ñ
.
88ñ ó
Food
88ó õ
.
88õ ú
GetDescription
88ú ™
(
88™ ´
)
88´ ¨
}
88¨ ≠
,
88≠ Æ
new99 
Stock99 
(99 
)99 
{99 
Id99 
=99  !
Guid99" &
.99& '
Parse99' ,
(99, -
$str99- S
)99S T
,99T U
Name99V Z
=99[ \
$str99] d
,99d e
Description99f q
=99r s
$str99t v
,99v w
Quantity	99x Ä
=
99Å Ç
$num
99É Ñ
,
99Ñ Ö
CreationDate
99Ü í
=
99ì î
ConstantSeeder
99ï £
.
99£ §#
DEFAULT_SEED_DATETIME
99§ π
,
99π ∫
Disable
99ª ¬
=
99√ ƒ
false
99≈  
,
99  À 
QuantityLowWarning
99Ã ﬁ
=
99ﬂ ‡
$num
99· ‚
,
99‚ „
StockTypeId
99‰ Ô
=
99 Ò
Domain
99Ú ¯
.
99¯ ˘
Entities
99˘ Å
.
99Å Ç
Enums
99Ç á
.
99á à
	StockType
99à ë
.
99ë í
Food
99í ñ
.
99ñ ó
GetDescription
99ó •
(
99• ¶
)
99¶ ß
}
99ß ®
,
99® ©
new:: 
Stock:: 
(:: 
):: 
{:: 
Id:: 
=::  !
Guid::" &
.::& '
Parse::' ,
(::, -
$str::- S
)::S T
,::T U
Name::V Z
=::[ \
$str::] o
,::o p
Description::q |
=::} ~
$str	:: Å
,
::Å Ç
Quantity
::É ã
=
::å ç
$num
::é è
,
::è ê
CreationDate
::ë ù
=
::û ü
ConstantSeeder
::† Æ
.
::Æ Ø#
DEFAULT_SEED_DATETIME
::Ø ƒ
,
::ƒ ≈
Disable
::∆ Õ
=
::Œ œ
false
::– ’
,
::’ ÷ 
QuantityLowWarning
::◊ È
=
::Í Î
$num
::Ï Ì
,
::Ì Ó
StockTypeId
::Ô ˙
=
::˚ ¸
Domain
::˝ É
.
::É Ñ
Entities
::Ñ å
.
::å ç
Enums
::ç í
.
::í ì
	StockType
::ì ú
.
::ú ù
Food
::ù °
.
::° ¢
GetDescription
::¢ ∞
(
::∞ ±
)
::± ≤
}
::≤ ≥
,
::≥ ¥
new;; 
Stock;; 
(;; 
);; 
{;; 
Id;; 
=;;  !
Guid;;" &
.;;& '
Parse;;' ,
(;;, -
$str;;- S
);;S T
,;;T U
Name;;V Z
=;;[ \
$str;;] j
,;;j k
Description;;l w
=;;x y
$str;;z |
,;;| }
Quantity	;;~ Ü
=
;;á à
$num
;;â ä
,
;;ä ã
CreationDate
;;å ò
=
;;ô ö
ConstantSeeder
;;õ ©
.
;;© ™#
DEFAULT_SEED_DATETIME
;;™ ø
,
;;ø ¿
Disable
;;¡ »
=
;;…  
false
;;À –
,
;;– — 
QuantityLowWarning
;;“ ‰
=
;;Â Ê
$num
;;Á Ë
,
;;Ë È
StockTypeId
;;Í ı
=
;;ˆ ˜
Domain
;;¯ ˛
.
;;˛ ˇ
Entities
;;ˇ á
.
;;á à
Enums
;;à ç
.
;;ç é
	StockType
;;é ó
.
;;ó ò
Food
;;ò ú
.
;;ú ù
GetDescription
;;ù ´
(
;;´ ¨
)
;;¨ ≠
}
;;≠ Æ
,
;;Æ Ø
new<< 
Stock<< 
(<< 
)<< 
{<< 
Id<< 
=<<  !
Guid<<" &
.<<& '
Parse<<' ,
(<<, -
$str<<- S
)<<S T
,<<T U
Name<<V Z
=<<[ \
$str<<] g
,<<g h
Description<<i t
=<<u v
$str<<w y
,<<y z
Quantity	<<{ É
=
<<Ñ Ö
$num
<<Ü á
,
<<á à
CreationDate
<<â ï
=
<<ñ ó
ConstantSeeder
<<ò ¶
.
<<¶ ß#
DEFAULT_SEED_DATETIME
<<ß º
,
<<º Ω
Disable
<<æ ≈
=
<<∆ «
false
<<» Õ
,
<<Õ Œ 
QuantityLowWarning
<<œ ·
=
<<‚ „
$num
<<‰ Â
,
<<Â Ê
StockTypeId
<<Á Ú
=
<<Û Ù
Domain
<<ı ˚
.
<<˚ ¸
Entities
<<¸ Ñ
.
<<Ñ Ö
Enums
<<Ö ä
.
<<ä ã
	StockType
<<ã î
.
<<î ï
Food
<<ï ô
.
<<ô ö
GetDescription
<<ö ®
(
<<® ©
)
<<© ™
}
<<™ ´
,
<<´ ¨
new== 
Stock== 
(== 
)== 
{== 
Id== 
===  !
Guid==" &
.==& '
Parse==' ,
(==, -
$str==- S
)==S T
,==T U
Name==V Z
===[ \
$str==] g
,==g h
Description==i t
===u v
$str==w y
,==y z
Quantity	=={ É
=
==Ñ Ö
$num
==Ü á
,
==á à
CreationDate
==â ï
=
==ñ ó
ConstantSeeder
==ò ¶
.
==¶ ß#
DEFAULT_SEED_DATETIME
==ß º
,
==º Ω
Disable
==æ ≈
=
==∆ «
false
==» Õ
,
==Õ Œ 
QuantityLowWarning
==œ ·
=
==‚ „
$num
==‰ Â
,
==Â Ê
StockTypeId
==Á Ú
=
==Û Ù
Domain
==ı ˚
.
==˚ ¸
Entities
==¸ Ñ
.
==Ñ Ö
Enums
==Ö ä
.
==ä ã
	StockType
==ã î
.
==î ï
Food
==ï ô
.
==ô ö
GetDescription
==ö ®
(
==® ©
)
==© ™
}
==™ ´
,
==´ ¨
new>> 
Stock>> 
(>> 
)>> 
{>> 
Id>> 
=>>  !
Guid>>" &
.>>& '
Parse>>' ,
(>>, -
$str>>- S
)>>S T
,>>T U
Name>>V Z
=>>[ \
$str>>] f
,>>f g
Description>>h s
=>>t u
$str>>v x
,>>x y
Quantity	>>z Ç
=
>>É Ñ
$num
>>Ö Ü
,
>>Ü á
CreationDate
>>à î
=
>>ï ñ
ConstantSeeder
>>ó •
.
>>• ¶#
DEFAULT_SEED_DATETIME
>>¶ ª
,
>>ª º
Disable
>>Ω ƒ
=
>>≈ ∆
false
>>« Ã
,
>>Ã Õ 
QuantityLowWarning
>>Œ ‡
=
>>· ‚
$num
>>„ ‰
,
>>‰ Â
StockTypeId
>>Ê Ò
=
>>Ú Û
Domain
>>Ù ˙
.
>>˙ ˚
Entities
>>˚ É
.
>>É Ñ
Enums
>>Ñ â
.
>>â ä
	StockType
>>ä ì
.
>>ì î
Food
>>î ò
.
>>ò ô
GetDescription
>>ô ß
(
>>ß ®
)
>>® ©
}
>>© ™
,
>>™ ´
new?? 
Stock?? 
(?? 
)?? 
{?? 
Id?? 
=??  !
Guid??" &
.??& '
Parse??' ,
(??, -
$str??- S
)??S T
,??T U
Name??V Z
=??[ \
$str??] h
,??h i
Description??j u
=??v w
$str??x z
,??z {
Quantity	??| Ñ
=
??Ö Ü
$num
??á à
,
??à â
CreationDate
??ä ñ
=
??ó ò
ConstantSeeder
??ô ß
.
??ß ®#
DEFAULT_SEED_DATETIME
??® Ω
,
??Ω æ
Disable
??ø ∆
=
??« »
false
??… Œ
,
??Œ œ 
QuantityLowWarning
??– ‚
=
??„ ‰
$num
??Â Ê
,
??Ê Á
StockTypeId
??Ë Û
=
??Ù ı
Domain
??ˆ ¸
.
??¸ ˝
Entities
??˝ Ö
.
??Ö Ü
Enums
??Ü ã
.
??ã å
	StockType
??å ï
.
??ï ñ
Food
??ñ ö
.
??ö õ
GetDescription
??õ ©
(
??© ™
)
??™ ´
}
??´ ¨
,
??¨ ≠
new@@ 
Stock@@ 
(@@ 
)@@ 
{@@ 
Id@@ 
=@@  !
Guid@@" &
.@@& '
Parse@@' ,
(@@, -
$str@@- S
)@@S T
,@@T U
Name@@V Z
=@@[ \
$str@@] d
,@@d e
Description@@f q
=@@r s
$str@@t v
,@@v w
Quantity	@@x Ä
=
@@Å Ç
$num
@@É Ñ
,
@@Ñ Ö
CreationDate
@@Ü í
=
@@ì î
ConstantSeeder
@@ï £
.
@@£ §#
DEFAULT_SEED_DATETIME
@@§ π
,
@@π ∫
Disable
@@ª ¬
=
@@√ ƒ
false
@@≈  
,
@@  À 
QuantityLowWarning
@@Ã ﬁ
=
@@ﬂ ‡
$num
@@· ‚
,
@@‚ „
StockTypeId
@@‰ Ô
=
@@ Ò
Domain
@@Ú ¯
.
@@¯ ˘
Entities
@@˘ Å
.
@@Å Ç
Enums
@@Ç á
.
@@á à
	StockType
@@à ë
.
@@ë í
Food
@@í ñ
.
@@ñ ó
GetDescription
@@ó •
(
@@• ¶
)
@@¶ ß
}
@@ß ®
,
@@® ©
newAA 
StockAA 
(AA 
)AA 
{AA 
IdAA 
=AA  !
GuidAA" &
.AA& '
ParseAA' ,
(AA, -
$strAA- S
)AAS T
,AAT U
NameAAV Z
=AA[ \
$strAA] n
,AAn o
DescriptionAAp {
=AA| }
$str	AA~ Ä
,
AAÄ Å
Quantity
AAÇ ä
=
AAã å
$num
AAç é
,
AAé è
CreationDate
AAê ú
=
AAù û
ConstantSeeder
AAü ≠
.
AA≠ Æ#
DEFAULT_SEED_DATETIME
AAÆ √
,
AA√ ƒ
Disable
AA≈ Ã
=
AAÕ Œ
false
AAœ ‘
,
AA‘ ’ 
QuantityLowWarning
AA÷ Ë
=
AAÈ Í
$num
AAÎ Ï
,
AAÏ Ì
StockTypeId
AAÓ ˘
=
AA˙ ˚
Domain
AA¸ Ç
.
AAÇ É
Entities
AAÉ ã
.
AAã å
Enums
AAå ë
.
AAë í
	StockType
AAí õ
.
AAõ ú
Food
AAú †
.
AA† °
GetDescription
AA° Ø
(
AAØ ∞
)
AA∞ ±
}
AA± ≤
,
AA≤ ≥
newBB 
StockBB 
(BB 
)BB 
{BB 
IdBB 
=BB  !
GuidBB" &
.BB& '
ParseBB' ,
(BB, -
$strBB- S
)BBS T
,BBT U
NameBBV Z
=BB[ \
$strBB] l
,BBl m
DescriptionBBn y
=BBz {
$strBB| ~
,BB~ 
Quantity
BBÄ à
=
BBâ ä
$num
BBã å
,
BBå ç
CreationDate
BBé ö
=
BBõ ú
ConstantSeeder
BBù ´
.
BB´ ¨#
DEFAULT_SEED_DATETIME
BB¨ ¡
,
BB¡ ¬
Disable
BB√  
=
BBÀ Ã
false
BBÕ “
,
BB“ ” 
QuantityLowWarning
BB‘ Ê
=
BBÁ Ë
$num
BBÈ Í
,
BBÍ Î
StockTypeId
BBÏ ˜
=
BB¯ ˘
Domain
BB˙ Ä
.
BBÄ Å
Entities
BBÅ â
.
BBâ ä
Enums
BBä è
.
BBè ê
	StockType
BBê ô
.
BBô ö
Food
BBö û
.
BBû ü
GetDescription
BBü ≠
(
BB≠ Æ
)
BBÆ Ø
}
BBØ ∞
,
BB∞ ±
newCC 
StockCC 
(CC 
)CC 
{CC 
IdCC 
=CC  !
GuidCC" &
.CC& '
ParseCC' ,
(CC, -
$strCC- S
)CCS T
,CCT U
NameCCV Z
=CC[ \
$strCC] d
,CCd e
DescriptionCCf q
=CCr s
$strCCt v
,CCv w
Quantity	CCx Ä
=
CCÅ Ç
$num
CCÉ Ñ
,
CCÑ Ö
CreationDate
CCÜ í
=
CCì î
ConstantSeeder
CCï £
.
CC£ §#
DEFAULT_SEED_DATETIME
CC§ π
,
CCπ ∫
Disable
CCª ¬
=
CC√ ƒ
false
CC≈  
,
CC  À 
QuantityLowWarning
CCÃ ﬁ
=
CCﬂ ‡
$num
CC· ‚
,
CC‚ „
StockTypeId
CC‰ Ô
=
CC Ò
Domain
CCÚ ¯
.
CC¯ ˘
Entities
CC˘ Å
.
CCÅ Ç
Enums
CCÇ á
.
CCá à
	StockType
CCà ë
.
CCë í
Food
CCí ñ
.
CCñ ó
GetDescription
CCó •
(
CC• ¶
)
CC¶ ß
}
CCß ®
,
CC® ©
newDD 
StockDD 
(DD 
)DD 
{DD 
IdDD 
=DD  !
GuidDD" &
.DD& '
ParseDD' ,
(DD, -
$strDD- S
)DDS T
,DDT U
NameDDV Z
=DD[ \
$strDD] k
,DDk l
DescriptionDDm x
=DDy z
$strDD{ }
,DD} ~
Quantity	DD á
=
DDà â
$num
DDä ã
,
DDã å
CreationDate
DDç ô
=
DDö õ
ConstantSeeder
DDú ™
.
DD™ ´#
DEFAULT_SEED_DATETIME
DD´ ¿
,
DD¿ ¡
Disable
DD¬ …
=
DD  À
false
DDÃ —
,
DD— “ 
QuantityLowWarning
DD” Â
=
DDÊ Á
$num
DDË È
,
DDÈ Í
StockTypeId
DDÎ ˆ
=
DD˜ ¯
Domain
DD˘ ˇ
.
DDˇ Ä
Entities
DDÄ à
.
DDà â
Enums
DDâ é
.
DDé è
	StockType
DDè ò
.
DDò ô
Food
DDô ù
.
DDù û
GetDescription
DDû ¨
(
DD¨ ≠
)
DD≠ Æ
}
DDÆ Ø
,
DDØ ∞
newEE 
StockEE 
(EE 
)EE 
{EE 
IdEE 
=EE  !
GuidEE" &
.EE& '
ParseEE' ,
(EE, -
$strEE- S
)EES T
,EET U
NameEEV Z
=EE[ \
$strEE] c
,EEc d
DescriptionEEe p
=EEq r
$strEEs u
,EEu v
QuantityEEw 
=
EEÄ Å
$num
EEÇ É
,
EEÉ Ñ
CreationDate
EEÖ ë
=
EEí ì
ConstantSeeder
EEî ¢
.
EE¢ £#
DEFAULT_SEED_DATETIME
EE£ ∏
,
EE∏ π
Disable
EE∫ ¡
=
EE¬ √
false
EEƒ …
,
EE…   
QuantityLowWarning
EEÀ ›
=
EEﬁ ﬂ
$num
EE‡ ·
,
EE· ‚
StockTypeId
EE„ Ó
=
EEÔ 
Domain
EEÒ ˜
.
EE˜ ¯
Entities
EE¯ Ä
.
EEÄ Å
Enums
EEÅ Ü
.
EEÜ á
	StockType
EEá ê
.
EEê ë
Food
EEë ï
.
EEï ñ
GetDescription
EEñ §
(
EE§ •
)
EE• ¶
}
EE¶ ß
,
EEß ®
newFF 
StockFF 
(FF 
)FF 
{FF 
IdFF 
=FF  !
GuidFF" &
.FF& '
ParseFF' ,
(FF, -
$strFF- S
)FFS T
,FFT U
NameFFV Z
=FF[ \
$strFF] h
,FFh i
DescriptionFFj u
=FFv w
$strFFx z
,FFz {
Quantity	FF| Ñ
=
FFÖ Ü
$num
FFá à
,
FFà â
CreationDate
FFä ñ
=
FFó ò
ConstantSeeder
FFô ß
.
FFß ®#
DEFAULT_SEED_DATETIME
FF® Ω
,
FFΩ æ
Disable
FFø ∆
=
FF« »
false
FF… Œ
,
FFŒ œ 
QuantityLowWarning
FF– ‚
=
FF„ ‰
$num
FFÂ Ê
,
FFÊ Á
StockTypeId
FFË Û
=
FFÙ ı
Domain
FFˆ ¸
.
FF¸ ˝
Entities
FF˝ Ö
.
FFÖ Ü
Enums
FFÜ ã
.
FFã å
	StockType
FFå ï
.
FFï ñ
Food
FFñ ö
.
FFö õ
GetDescription
FFõ ©
(
FF© ™
)
FF™ ´
}
FF´ ¨
,
FF¨ ≠
newGG 
StockGG 
(GG 
)GG 
{GG 
IdGG 
=GG  !
GuidGG" &
.GG& '
ParseGG' ,
(GG, -
$strGG- S
)GGS T
,GGT U
NameGGV Z
=GG[ \
$strGG] g
,GGg h
DescriptionGGi t
=GGu v
$strGGw y
,GGy z
Quantity	GG{ É
=
GGÑ Ö
$num
GGÜ á
,
GGá à
CreationDate
GGâ ï
=
GGñ ó
ConstantSeeder
GGò ¶
.
GG¶ ß#
DEFAULT_SEED_DATETIME
GGß º
,
GGº Ω
Disable
GGæ ≈
=
GG∆ «
false
GG» Õ
,
GGÕ Œ 
QuantityLowWarning
GGœ ·
=
GG‚ „
$num
GG‰ Â
,
GGÂ Ê
StockTypeId
GGÁ Ú
=
GGÛ Ù
Domain
GGı ˚
.
GG˚ ¸
Entities
GG¸ Ñ
.
GGÑ Ö
Enums
GGÖ ä
.
GGä ã
	StockType
GGã î
.
GGî ï
Food
GGï ô
.
GGô ö
GetDescription
GGö ®
(
GG® ©
)
GG© ™
}
GG™ ´
,
GG´ ¨
newHH 
StockHH 
(HH 
)HH 
{HH 
IdHH 
=HH  !
GuidHH" &
.HH& '
ParseHH' ,
(HH, -
$strHH- S
)HHS T
,HHT U
NameHHV Z
=HH[ \
$strHH] i
,HHi j
DescriptionHHk v
=HHw x
$strHHy {
,HH{ |
Quantity	HH} Ö
=
HHÜ á
$num
HHà â
,
HHâ ä
CreationDate
HHã ó
=
HHò ô
ConstantSeeder
HHö ®
.
HH® ©#
DEFAULT_SEED_DATETIME
HH© æ
,
HHæ ø
Disable
HH¿ «
=
HH» …
false
HH  œ
,
HHœ – 
QuantityLowWarning
HH— „
=
HH‰ Â
$num
HHÊ Á
,
HHÁ Ë
StockTypeId
HHÈ Ù
=
HHı ˆ
Domain
HH˜ ˝
.
HH˝ ˛
Entities
HH˛ Ü
.
HHÜ á
Enums
HHá å
.
HHå ç
	StockType
HHç ñ
.
HHñ ó
Food
HHó õ
.
HHõ ú
GetDescription
HHú ™
(
HH™ ´
)
HH´ ¨
}
HH¨ ≠
,
HH≠ Æ
newII 
StockII 
(II 
)II 
{II 
IdII 
=II  !
GuidII" &
.II& '
ParseII' ,
(II, -
$strII- S
)IIS T
,IIT U
NameIIV Z
=II[ \
$strII] h
,IIh i
DescriptionIIj u
=IIv w
$strIIx z
,IIz {
Quantity	II| Ñ
=
IIÖ Ü
$num
IIá à
,
IIà â
CreationDate
IIä ñ
=
IIó ò
ConstantSeeder
IIô ß
.
IIß ®#
DEFAULT_SEED_DATETIME
II® Ω
,
IIΩ æ
Disable
IIø ∆
=
II« »
false
II… Œ
,
IIŒ œ 
QuantityLowWarning
II– ‚
=
II„ ‰
$num
IIÂ Ê
,
IIÊ Á
StockTypeId
IIË Û
=
IIÙ ı
Domain
IIˆ ¸
.
II¸ ˝
Entities
II˝ Ö
.
IIÖ Ü
Enums
IIÜ ã
.
IIã å
	StockType
IIå ï
.
IIï ñ
Food
IIñ ö
.
IIö õ
GetDescription
IIõ ©
(
II© ™
)
II™ ´
}
II´ ¨
,
II¨ ≠
newJJ 
StockJJ 
(JJ 
)JJ 
{JJ 
IdJJ 
=JJ  !
GuidJJ" &
.JJ& '
ParseJJ' ,
(JJ, -
$strJJ- S
)JJS T
,JJT U
NameJJV Z
=JJ[ \
$strJJ] b
,JJb c
DescriptionJJd o
=JJp q
$strJJr t
,JJt u
QuantityJJv ~
=	JJ Ä
$num
JJÅ Ç
,
JJÇ É
CreationDate
JJÑ ê
=
JJë í
ConstantSeeder
JJì °
.
JJ° ¢#
DEFAULT_SEED_DATETIME
JJ¢ ∑
,
JJ∑ ∏
Disable
JJπ ¿
=
JJ¡ ¬
false
JJ√ »
,
JJ» … 
QuantityLowWarning
JJ  ‹
=
JJ› ﬁ
$num
JJﬂ ‡
,
JJ‡ ·
StockTypeId
JJ‚ Ì
=
JJÓ Ô
Domain
JJ ˆ
.
JJˆ ˜
Entities
JJ˜ ˇ
.
JJˇ Ä
Enums
JJÄ Ö
.
JJÖ Ü
	StockType
JJÜ è
.
JJè ê
Food
JJê î
.
JJî ï
GetDescription
JJï £
(
JJ£ §
)
JJ§ •
}
JJ• ¶
,
JJ¶ ß
newKK 
StockKK 
(KK 
)KK 
{KK 
IdKK 
=KK  !
GuidKK" &
.KK& '
ParseKK' ,
(KK, -
$strKK- S
)KKS T
,KKT U
NameKKV Z
=KK[ \
$strKK] i
,KKi j
DescriptionKKk v
=KKw x
$strKKy {
,KK{ |
Quantity	KK} Ö
=
KKÜ á
$num
KKà â
,
KKâ ä
CreationDate
KKã ó
=
KKò ô
ConstantSeeder
KKö ®
.
KK® ©#
DEFAULT_SEED_DATETIME
KK© æ
,
KKæ ø
Disable
KK¿ «
=
KK» …
false
KK  œ
,
KKœ – 
QuantityLowWarning
KK— „
=
KK‰ Â
$num
KKÊ Á
,
KKÁ Ë
StockTypeId
KKÈ Ù
=
KKı ˆ
Domain
KK˜ ˝
.
KK˝ ˛
Entities
KK˛ Ü
.
KKÜ á
Enums
KKá å
.
KKå ç
	StockType
KKç ñ
.
KKñ ó
Food
KKó õ
.
KKõ ú
GetDescription
KKú ™
(
KK™ ´
)
KK´ ¨
}
KK¨ ≠
,
KK≠ Æ
newLL 
StockLL 
(LL 
)LL 
{LL 
IdLL 
=LL  !
GuidLL" &
.LL& '
ParseLL' ,
(LL, -
$strLL- S
)LLS T
,LLT U
NameLLV Z
=LL[ \
$strLL] l
,LLl m
DescriptionLLn y
=LLz {
$strLL| ~
,LL~ 
Quantity
LLÄ à
=
LLâ ä
$num
LLã å
,
LLå ç
CreationDate
LLé ö
=
LLõ ú
ConstantSeeder
LLù ´
.
LL´ ¨#
DEFAULT_SEED_DATETIME
LL¨ ¡
,
LL¡ ¬
Disable
LL√  
=
LLÀ Ã
false
LLÕ “
,
LL“ ” 
QuantityLowWarning
LL‘ Ê
=
LLÁ Ë
$num
LLÈ Í
,
LLÍ Î
StockTypeId
LLÏ ˜
=
LL¯ ˘
Domain
LL˙ Ä
.
LLÄ Å
Entities
LLÅ â
.
LLâ ä
Enums
LLä è
.
LLè ê
	StockType
LLê ô
.
LLô ö
Food
LLö û
.
LLû ü
GetDescription
LLü ≠
(
LL≠ Æ
)
LLÆ Ø
}
LLØ ∞
,
LL∞ ±
newMM 
StockMM 
(MM 
)MM 
{MM 
IdMM 
=MM  !
GuidMM" &
.MM& '
ParseMM' ,
(MM, -
$strMM- S
)MMS T
,MMT U
NameMMV Z
=MM[ \
$strMM] g
,MMg h
DescriptionMMi t
=MMu v
$strMMw y
,MMy z
Quantity	MM{ É
=
MMÑ Ö
$num
MMÜ á
,
MMá à
CreationDate
MMâ ï
=
MMñ ó
ConstantSeeder
MMò ¶
.
MM¶ ß#
DEFAULT_SEED_DATETIME
MMß º
,
MMº Ω
Disable
MMæ ≈
=
MM∆ «
false
MM» Õ
,
MMÕ Œ 
QuantityLowWarning
MMœ ·
=
MM‚ „
$num
MM‰ Â
,
MMÂ Ê
StockTypeId
MMÁ Ú
=
MMÛ Ù
Domain
MMı ˚
.
MM˚ ¸
Entities
MM¸ Ñ
.
MMÑ Ö
Enums
MMÖ ä
.
MMä ã
	StockType
MMã î
.
MMî ï
Food
MMï ô
.
MMô ö
GetDescription
MMö ®
(
MM® ©
)
MM© ™
}
MM™ ´
,
MM´ ¨
newNN 
StockNN 
(NN 
)NN 
{NN 
IdNN 
=NN  !
GuidNN" &
.NN& '
ParseNN' ,
(NN, -
$strNN- S
)NNS T
,NNT U
NameNNV Z
=NN[ \
$strNN] j
,NNj k
DescriptionNNl w
=NNx y
$strNNz |
,NN| }
Quantity	NN~ Ü
=
NNá à
$num
NNâ ä
,
NNä ã
CreationDate
NNå ò
=
NNô ö
ConstantSeeder
NNõ ©
.
NN© ™#
DEFAULT_SEED_DATETIME
NN™ ø
,
NNø ¿
Disable
NN¡ »
=
NN…  
false
NNÀ –
,
NN– — 
QuantityLowWarning
NN“ ‰
=
NNÂ Ê
$num
NNÁ Ë
,
NNË È
StockTypeId
NNÍ ı
=
NNˆ ˜
Domain
NN¯ ˛
.
NN˛ ˇ
Entities
NNˇ á
.
NNá à
Enums
NNà ç
.
NNç é
	StockType
NNé ó
.
NNó ò
Food
NNò ú
.
NNú ù
GetDescription
NNù ´
(
NN´ ¨
)
NN¨ ≠
}
NN≠ Æ
,
NNÆ Ø
newOO 
StockOO 
(OO 
)OO 
{OO 
IdOO 
=OO  !
GuidOO" &
.OO& '
ParseOO' ,
(OO, -
$strOO- S
)OOS T
,OOT U
NameOOV Z
=OO[ \
$strOO] i
,OOi j
DescriptionOOk v
=OOw x
$strOOy {
,OO{ |
Quantity	OO} Ö
=
OOÜ á
$num
OOà â
,
OOâ ä
CreationDate
OOã ó
=
OOò ô
ConstantSeeder
OOö ®
.
OO® ©#
DEFAULT_SEED_DATETIME
OO© æ
,
OOæ ø
Disable
OO¿ «
=
OO» …
false
OO  œ
,
OOœ – 
QuantityLowWarning
OO— „
=
OO‰ Â
$num
OOÊ Á
,
OOÁ Ë
StockTypeId
OOÈ Ù
=
OOı ˆ
Domain
OO˜ ˝
.
OO˝ ˛
Entities
OO˛ Ü
.
OOÜ á
Enums
OOá å
.
OOå ç
	StockType
OOç ñ
.
OOñ ó
Food
OOó õ
.
OOõ ú
GetDescription
OOú ™
(
OO™ ´
)
OO´ ¨
}
OO¨ ≠
,
OO≠ Æ
newPP 
StockPP 
(PP 
)PP 
{PP 
IdPP 
=PP  !
GuidPP" &
.PP& '
ParsePP' ,
(PP, -
$strPP- S
)PPS T
,PPT U
NamePPV Z
=PP[ \
$strPP] i
,PPi j
DescriptionPPk v
=PPw x
$strPPy {
,PP{ |
Quantity	PP} Ö
=
PPÜ á
$num
PPà â
,
PPâ ä
CreationDate
PPã ó
=
PPò ô
ConstantSeeder
PPö ®
.
PP® ©#
DEFAULT_SEED_DATETIME
PP© æ
,
PPæ ø
Disable
PP¿ «
=
PP» …
false
PP  œ
,
PPœ – 
QuantityLowWarning
PP— „
=
PP‰ Â
$num
PPÊ Á
,
PPÁ Ë
StockTypeId
PPÈ Ù
=
PPı ˆ
Domain
PP˜ ˝
.
PP˝ ˛
Entities
PP˛ Ü
.
PPÜ á
Enums
PPá å
.
PPå ç
	StockType
PPç ñ
.
PPñ ó
Food
PPó õ
.
PPõ ú
GetDescription
PPú ™
(
PP™ ´
)
PP´ ¨
}
PP¨ ≠
,
PP≠ Æ
newQQ 
StockQQ 
(QQ 
)QQ 
{QQ 
IdQQ 
=QQ  !
GuidQQ" &
.QQ& '
ParseQQ' ,
(QQ, -
$strQQ- S
)QQS T
,QQT U
NameQQV Z
=QQ[ \
$strQQ] p
,QQp q
DescriptionQQr }
=QQ~ 
$str
QQÄ Ç
,
QQÇ É
Quantity
QQÑ å
=
QQç é
$num
QQè ê
,
QQê ë
CreationDate
QQí û
=
QQü †
ConstantSeeder
QQ° Ø
.
QQØ ∞#
DEFAULT_SEED_DATETIME
QQ∞ ≈
,
QQ≈ ∆
Disable
QQ« Œ
=
QQœ –
false
QQ— ÷
,
QQ÷ ◊ 
QuantityLowWarning
QQÿ Í
=
QQÎ Ï
$num
QQÌ Ó
,
QQÓ Ô
StockTypeId
QQ ˚
=
QQ¸ ˝
Domain
QQ˛ Ñ
.
QQÑ Ö
Entities
QQÖ ç
.
QQç é
Enums
QQé ì
.
QQì î
	StockType
QQî ù
.
QQù û
Food
QQû ¢
.
QQ¢ £
GetDescription
QQ£ ±
(
QQ± ≤
)
QQ≤ ≥
}
QQ≥ ¥
,
QQ¥ µ
newRR 
StockRR 
(RR 
)RR 
{RR 
IdRR 
=RR  !
GuidRR" &
.RR& '
ParseRR' ,
(RR, -
$strRR- S
)RRS T
,RRT U
NameRRV Z
=RR[ \
$strRR] f
,RRf g
DescriptionRRh s
=RRt u
$strRRv x
,RRx y
Quantity	RRz Ç
=
RRÉ Ñ
$num
RRÖ Ü
,
RRÜ á
CreationDate
RRà î
=
RRï ñ
ConstantSeeder
RRó •
.
RR• ¶#
DEFAULT_SEED_DATETIME
RR¶ ª
,
RRª º
Disable
RRΩ ƒ
=
RR≈ ∆
false
RR« Ã
,
RRÃ Õ 
QuantityLowWarning
RRŒ ‡
=
RR· ‚
$num
RR„ ‰
,
RR‰ Â
StockTypeId
RRÊ Ò
=
RRÚ Û
Domain
RRÙ ˙
.
RR˙ ˚
Entities
RR˚ É
.
RRÉ Ñ
Enums
RRÑ â
.
RRâ ä
	StockType
RRä ì
.
RRì î
Food
RRî ò
.
RRò ô
GetDescription
RRô ß
(
RRß ®
)
RR® ©
}
RR© ™
,
RR™ ´
newSS 
StockSS 
(SS 
)SS 
{SS 
IdSS 
=SS  !
GuidSS" &
.SS& '
ParseSS' ,
(SS, -
$strSS- S
)SSS T
,SST U
NameSSV Z
=SS[ \
$strSS] p
,SSp q
DescriptionSSr }
=SS~ 
$str
SSÄ Ç
,
SSÇ É
Quantity
SSÑ å
=
SSç é
$num
SSè ê
,
SSê ë
CreationDate
SSí û
=
SSü †
ConstantSeeder
SS° Ø
.
SSØ ∞#
DEFAULT_SEED_DATETIME
SS∞ ≈
,
SS≈ ∆
Disable
SS« Œ
=
SSœ –
false
SS— ÷
,
SS÷ ◊ 
QuantityLowWarning
SSÿ Í
=
SSÎ Ï
$num
SSÌ Ó
,
SSÓ Ô
StockTypeId
SS ˚
=
SS¸ ˝
Domain
SS˛ Ñ
.
SSÑ Ö
Entities
SSÖ ç
.
SSç é
Enums
SSé ì
.
SSì î
	StockType
SSî ù
.
SSù û
Food
SSû ¢
.
SS¢ £
GetDescription
SS£ ±
(
SS± ≤
)
SS≤ ≥
}
SS≥ ¥
,
SS¥ µ
newUU 
StockUU 
(UU 
)UU 
{UU 
IdUU 
=UU  !
GuidUU" &
.UU& '
ParseUU' ,
(UU, -
$strUU- S
)UUS T
,UUT U
NameUUV Z
=UU[ \
$strUU] t
,UUt u
Description	UUu Ä
=
UUÅ Ç
$str
UUÉ Ö
,
UUÖ Ü
Quantity
UUÜ é
=
UUè ê
$num
UUë í
,
UUí ì
CreationDate
UUì ü
=
UU† °
ConstantSeeder
UU¢ ∞
.
UU∞ ±#
DEFAULT_SEED_DATETIME
UU± ∆
,
UU∆ « 
QuantityLowWarning
UU« Ÿ
=
UU⁄ €
$num
UU‹ ›
,
UU› ﬁ
StockTypeId
UUﬂ Í
=
UUÎ Ï
Domain
UUÌ Û
.
UUÛ Ù
Entities
UUÙ ¸
.
UU¸ ˝
Enums
UU˝ Ç
.
UUÇ É
	StockType
UUÉ å
.
UUå ç
Hygiene
UUç î
.
UUî ï
GetDescription
UUï £
(
UU£ §
)
UU§ •
}
UU• ¶
,
UU¶ ß
newVV 
StockVV 
(VV 
)VV 
{VV 
IdVV 
=VV  !
GuidVV" &
.VV& '
ParseVV' ,
(VV, -
$strVV- S
)VVS T
,VVT U
NameVVV Z
=VV[ \
$strVV] k
,VVk l
DescriptionVVl w
=VVx y
$strVVz |
,VV| }
Quantity	VV} Ö
=
VVÜ á
$num
VVà â
,
VVâ ä
CreationDate
VVä ñ
=
VVó ò
ConstantSeeder
VVô ß
.
VVß ®#
DEFAULT_SEED_DATETIME
VV® Ω
,
VVΩ æ 
QuantityLowWarning
VVæ –
=
VV— “
$num
VV” ‘
,
VV‘ ’
StockTypeId
VV÷ ·
=
VV‚ „
Domain
VV‰ Í
.
VVÍ Î
Entities
VVÎ Û
.
VVÛ Ù
Enums
VVÙ ˘
.
VV˘ ˙
	StockType
VV˙ É
.
VVÉ Ñ
Hygiene
VVÑ ã
.
VVã å
GetDescription
VVå ö
(
VVö õ
)
VVõ ú
}
VVú ù
,
VVù û
newWW 
StockWW 
(WW 
)WW 
{WW 
IdWW 
=WW  !
GuidWW" &
.WW& '
ParseWW' ,
(WW, -
$strWW- S
)WWS T
,WWT U
NameWWV Z
=WW[ \
$strWW] h
,WWh i
DescriptionWWi t
=WWu v
$strWWw y
,WWy z
Quantity	WWz Ç
=
WWÉ Ñ
$num
WWÖ Ü
,
WWÜ á
CreationDate
WWá ì
=
WWî ï
ConstantSeeder
WWñ §
.
WW§ •#
DEFAULT_SEED_DATETIME
WW• ∫
,
WW∫ ª 
QuantityLowWarning
WWª Õ
=
WWŒ œ
$num
WW– —
,
WW— “
StockTypeId
WW” ﬁ
=
WWﬂ ‡
Domain
WW· Á
.
WWÁ Ë
Entities
WWË 
.
WW Ò
Enums
WWÒ ˆ
.
WWˆ ˜
	StockType
WW˜ Ä
.
WWÄ Å
Hygiene
WWÅ à
.
WWà â
GetDescription
WWâ ó
(
WWó ò
)
WWò ô
}
WWô ö
,
WWö õ
newXX 
StockXX 
(XX 
)XX 
{XX 
IdXX 
=XX  !
GuidXX" &
.XX& '
ParseXX' ,
(XX, -
$strXX- S
)XXS T
,XXT U
NameXXV Z
=XX[ \
$strXX] l
,XXl m
DescriptionXXm x
=XXy z
$strXX{ }
,XX} ~
Quantity	XX~ Ü
=
XXá à
$num
XXâ ä
,
XXä ã
CreationDate
XXã ó
=
XXò ô
ConstantSeeder
XXö ®
.
XX® ©#
DEFAULT_SEED_DATETIME
XX© æ
,
XXæ ø 
QuantityLowWarning
XXø —
=
XX“ ”
$num
XX‘ ’
,
XX’ ÷
StockTypeId
XX◊ ‚
=
XX„ ‰
Domain
XXÂ Î
.
XXÎ Ï
Entities
XXÏ Ù
.
XXÙ ı
Enums
XXı ˙
.
XX˙ ˚
	StockType
XX˚ Ñ
.
XXÑ Ö
Hygiene
XXÖ å
.
XXå ç
GetDescription
XXç õ
(
XXõ ú
)
XXú ù
}
XXù û
,
XXû ü
newYY 
StockYY 
(YY 
)YY 
{YY 
IdYY 
=YY  !
GuidYY" &
.YY& '
ParseYY' ,
(YY, -
$strYY- S
)YYS T
,YYT U
NameYYV Z
=YY[ \
$strYY] k
,YYk l
DescriptionYYl w
=YYx y
$strYYz |
,YY| }
Quantity	YY} Ö
=
YYÜ á
$num
YYà â
,
YYâ ä
CreationDate
YYä ñ
=
YYó ò
ConstantSeeder
YYô ß
.
YYß ®#
DEFAULT_SEED_DATETIME
YY® Ω
,
YYΩ æ 
QuantityLowWarning
YYæ –
=
YY— “
$num
YY” ‘
,
YY‘ ’
StockTypeId
YY÷ ·
=
YY‚ „
Domain
YY‰ Í
.
YYÍ Î
Entities
YYÎ Û
.
YYÛ Ù
Enums
YYÙ ˘
.
YY˘ ˙
	StockType
YY˙ É
.
YYÉ Ñ
Hygiene
YYÑ ã
.
YYã å
GetDescription
YYå ö
(
YYö õ
)
YYõ ú
}
YYú ù
,
YYù û
newZZ 
StockZZ 
(ZZ 
)ZZ 
{ZZ 
IdZZ 
=ZZ  !
GuidZZ" &
.ZZ& '
ParseZZ' ,
(ZZ, -
$strZZ- S
)ZZS T
,ZZT U
NameZZV Z
=ZZ[ \
$strZZ] k
,ZZk l
DescriptionZZl w
=ZZx y
$strZZz |
,ZZ| }
Quantity	ZZ} Ö
=
ZZÜ á
$num
ZZà â
,
ZZâ ä
CreationDate
ZZä ñ
=
ZZó ò
ConstantSeeder
ZZô ß
.
ZZß ®#
DEFAULT_SEED_DATETIME
ZZ® Ω
,
ZZΩ æ 
QuantityLowWarning
ZZæ –
=
ZZ— “
$num
ZZ” ‘
,
ZZ‘ ’
StockTypeId
ZZ÷ ·
=
ZZ‚ „
Domain
ZZ‰ Í
.
ZZÍ Î
Entities
ZZÎ Û
.
ZZÛ Ù
Enums
ZZÙ ˘
.
ZZ˘ ˙
	StockType
ZZ˙ É
.
ZZÉ Ñ
Hygiene
ZZÑ ã
.
ZZã å
GetDescription
ZZå ö
(
ZZö õ
)
ZZõ ú
}
ZZú ù
,
ZZù û
new[[ 
Stock[[ 
([[ 
)[[ 
{[[ 
Id[[ 
=[[  !
Guid[[" &
.[[& '
Parse[[' ,
([[, -
$str[[- S
)[[S T
,[[T U
Name[[V Z
=[[[ \
$str[[] g
,[[g h
Description[[h s
=[[t u
$str[[v x
,[[x y
Quantity	[[y Å
=
[[Ç É
$num
[[Ñ Ö
,
[[Ö Ü
CreationDate
[[Ü í
=
[[ì î
ConstantSeeder
[[ï £
.
[[£ §#
DEFAULT_SEED_DATETIME
[[§ π
,
[[π ∫ 
QuantityLowWarning
[[∫ Ã
=
[[Õ Œ
$num
[[œ –
,
[[– —
StockTypeId
[[“ ›
=
[[ﬁ ﬂ
Domain
[[‡ Ê
.
[[Ê Á
Entities
[[Á Ô
.
[[Ô 
Enums
[[ ı
.
[[ı ˆ
	StockType
[[ˆ ˇ
.
[[ˇ Ä
Hygiene
[[Ä á
.
[[á à
GetDescription
[[à ñ
(
[[ñ ó
)
[[ó ò
}
[[ò ô
,
[[ô ö
new\\ 
Stock\\ 
(\\ 
)\\ 
{\\ 
Id\\ 
=\\  !
Guid\\" &
.\\& '
Parse\\' ,
(\\, -
$str\\- S
)\\S T
,\\T U
Name\\V Z
=\\[ \
$str\\] o
,\\o p
Description\\p {
=\\| }
$str	\\~ Ä
,
\\Ä Å
Quantity
\\Å â
=
\\ä ã
$num
\\å ç
,
\\ç é
CreationDate
\\é ö
=
\\õ ú
ConstantSeeder
\\ù ´
.
\\´ ¨#
DEFAULT_SEED_DATETIME
\\¨ ¡
,
\\¡ ¬ 
QuantityLowWarning
\\¬ ‘
=
\\’ ÷
$num
\\◊ ÿ
,
\\ÿ Ÿ
StockTypeId
\\⁄ Â
=
\\Ê Á
Domain
\\Ë Ó
.
\\Ó Ô
Entities
\\Ô ˜
.
\\˜ ¯
Enums
\\¯ ˝
.
\\˝ ˛
	StockType
\\˛ á
.
\\á à
Hygiene
\\à è
.
\\è ê
GetDescription
\\ê û
(
\\û ü
)
\\ü †
}
\\† °
,
\\° ¢
new]] 
Stock]] 
(]] 
)]] 
{]] 
Id]] 
=]]  !
Guid]]" &
.]]& '
Parse]]' ,
(]], -
$str]]- S
)]]S T
,]]T U
Name]]V Z
=]][ \
$str]]] o
,]]o p
Description]]p {
=]]| }
$str	]]~ Ä
,
]]Ä Å
Quantity
]]Å â
=
]]ä ã
$num
]]å ç
,
]]ç é
CreationDate
]]é ö
=
]]õ ú
ConstantSeeder
]]ù ´
.
]]´ ¨#
DEFAULT_SEED_DATETIME
]]¨ ¡
,
]]¡ ¬ 
QuantityLowWarning
]]¬ ‘
=
]]’ ÷
$num
]]◊ ÿ
,
]]ÿ Ÿ
StockTypeId
]]⁄ Â
=
]]Ê Á
Domain
]]Ë Ó
.
]]Ó Ô
Entities
]]Ô ˜
.
]]˜ ¯
Enums
]]¯ ˝
.
]]˝ ˛
	StockType
]]˛ á
.
]]á à
Hygiene
]]à è
.
]]è ê
GetDescription
]]ê û
(
]]û ü
)
]]ü †
}
]]† °
,
]]° ¢
new^^ 
Stock^^ 
(^^ 
)^^ 
{^^ 
Id^^ 
=^^  !
Guid^^" &
.^^& '
Parse^^' ,
(^^, -
$str^^- S
)^^S T
,^^T U
Name^^V Z
=^^[ \
$str^^] o
,^^o p
Description^^p {
=^^| }
$str	^^~ Ä
,
^^Ä Å
Quantity
^^Å â
=
^^ä ã
$num
^^å ç
,
^^ç é
CreationDate
^^é ö
=
^^õ ú
ConstantSeeder
^^ù ´
.
^^´ ¨#
DEFAULT_SEED_DATETIME
^^¨ ¡
,
^^¡ ¬ 
QuantityLowWarning
^^¬ ‘
=
^^’ ÷
$num
^^◊ ÿ
,
^^ÿ Ÿ
StockTypeId
^^⁄ Â
=
^^Ê Á
Domain
^^Ë Ó
.
^^Ó Ô
Entities
^^Ô ˜
.
^^˜ ¯
Enums
^^¯ ˝
.
^^˝ ˛
	StockType
^^˛ á
.
^^á à
Hygiene
^^à è
.
^^è ê
GetDescription
^^ê û
(
^^û ü
)
^^ü †
}
^^† °
,
^^° ¢
new__ 
Stock__ 
(__ 
)__ 
{__ 
Id__ 
=__  !
Guid__" &
.__& '
Parse__' ,
(__, -
$str__- S
)__S T
,__T U
Name__V Z
=__[ \
$str__] d
,__d e
Description__e p
=__q r
$str__s u
,__u v
Quantity__v ~
=	__ Ä
$num
__Å Ç
,
__Ç É
CreationDate
__É è
=
__ê ë
ConstantSeeder
__í †
.
__† °#
DEFAULT_SEED_DATETIME
__° ∂
,
__∂ ∑ 
QuantityLowWarning
__∑ …
=
__  À
$num
__Ã Õ
,
__Õ Œ
StockTypeId
__œ ⁄
=
__€ ‹
Domain
__› „
.
__„ ‰
Entities
__‰ Ï
.
__Ï Ì
Enums
__Ì Ú
.
__Ú Û
	StockType
__Û ¸
.
__¸ ˝
Hygiene
__˝ Ñ
.
__Ñ Ö
GetDescription
__Ö ì
(
__ì î
)
__î ï
}
__ï ñ
,
__ñ ó
new`` 
Stock`` 
(`` 
)`` 
{`` 
Id`` 
=``  !
Guid``" &
.``& '
Parse``' ,
(``, -
$str``- S
)``S T
,``T U
Name``V Z
=``[ \
$str``] m
,``m n
Description``n y
=``z {
$str``| ~
,``~ 
Quantity	`` á
=
``à â
$num
``ä ã
,
``ã å
CreationDate
``å ò
=
``ô ö
ConstantSeeder
``õ ©
.
``© ™#
DEFAULT_SEED_DATETIME
``™ ø
,
``ø ¿ 
QuantityLowWarning
``¿ “
=
``” ‘
$num
``’ ÷
,
``÷ ◊
StockTypeId
``ÿ „
=
``‰ Â
Domain
``Ê Ï
.
``Ï Ì
Entities
``Ì ı
.
``ı ˆ
Enums
``ˆ ˚
.
``˚ ¸
	StockType
``¸ Ö
.
``Ö Ü
Hygiene
``Ü ç
.
``ç é
GetDescription
``é ú
(
``ú ù
)
``ù û
}
``û ü
,
``ü †
newaa 
Stockaa 
(aa 
)aa 
{aa 
Idaa 
=aa  !
Guidaa" &
.aa& '
Parseaa' ,
(aa, -
$straa- S
)aaS T
,aaT U
NameaaV Z
=aa[ \
$straa] k
,aak l
Descriptionaal w
=aax y
$straaz |
,aa| }
Quantity	aa} Ö
=
aaÜ á
$num
aaà â
,
aaâ ä
CreationDate
aaä ñ
=
aaó ò
ConstantSeeder
aaô ß
.
aaß ®#
DEFAULT_SEED_DATETIME
aa® Ω
,
aaΩ æ 
QuantityLowWarning
aaæ –
=
aa— “
$num
aa” ‘
,
aa‘ ’
StockTypeId
aa÷ ·
=
aa‚ „
Domain
aa‰ Í
.
aaÍ Î
Entities
aaÎ Û
.
aaÛ Ù
Enums
aaÙ ˘
.
aa˘ ˙
	StockType
aa˙ É
.
aaÉ Ñ
Hygiene
aaÑ ã
.
aaã å
GetDescription
aaå ö
(
aaö õ
)
aaõ ú
}
aaú ù
,
aaù û
newbb 
Stockbb 
(bb 
)bb 
{bb 
Idbb 
=bb  !
Guidbb" &
.bb& '
Parsebb' ,
(bb, -
$strbb- S
)bbS T
,bbT U
NamebbV Z
=bb[ \
$strbb] v
,bbv w
Description	bbw Ç
=
bbÉ Ñ
$str
bbÖ á
,
bbá à
Quantity
bbà ê
=
bbë í
$num
bbì î
,
bbî ï
CreationDate
bbï °
=
bb¢ £
ConstantSeeder
bb§ ≤
.
bb≤ ≥#
DEFAULT_SEED_DATETIME
bb≥ »
,
bb» … 
QuantityLowWarning
bb… €
=
bb‹ ›
$num
bbﬁ ﬂ
,
bbﬂ ‡
StockTypeId
bb· Ï
=
bbÌ Ó
Domain
bbÔ ı
.
bbı ˆ
Entities
bbˆ ˛
.
bb˛ ˇ
Enums
bbˇ Ñ
.
bbÑ Ö
	StockType
bbÖ é
.
bbé è
Hygiene
bbè ñ
.
bbñ ó
GetDescription
bbó •
(
bb• ¶
)
bb¶ ß
}
bbß ®
,
bb® ©
newcc 
Stockcc 
(cc 
)cc 
{cc 
Idcc 
=cc  !
Guidcc" &
.cc& '
Parsecc' ,
(cc, -
$strcc- S
)ccS T
,ccT U
NameccV Z
=cc[ \
$strcc] q
,ccq r
Descriptionccr }
=cc~ 
$str
ccÄ Ç
,
ccÇ É
Quantity
ccÉ ã
=
ccå ç
$num
ccé è
,
ccè ê
CreationDate
ccê ú
=
ccù û
ConstantSeeder
ccü ≠
.
cc≠ Æ#
DEFAULT_SEED_DATETIME
ccÆ √
,
cc√ ƒ 
QuantityLowWarning
ccƒ ÷
=
cc◊ ÿ
$num
ccŸ ⁄
,
cc⁄ €
StockTypeId
cc‹ Á
=
ccË È
Domain
ccÍ 
.
cc Ò
Entities
ccÒ ˘
.
cc˘ ˙
Enums
cc˙ ˇ
.
ccˇ Ä
	StockType
ccÄ â
.
ccâ ä
Hygiene
ccä ë
.
ccë í
GetDescription
ccí †
(
cc† °
)
cc° ¢
}
cc¢ £
,
cc£ §
newdd 
Stockdd 
(dd 
)dd 
{dd 
Iddd 
=dd  !
Guiddd" &
.dd& '
Parsedd' ,
(dd, -
$strdd- S
)ddS T
,ddT U
NameddV Z
=dd[ \
$strdd] n
,ddn o
Descriptionddo z
=dd{ |
$strdd} 
,	dd Ä
Quantity
ddÄ à
=
ddâ ä
$num
ddã å
,
ddå ç
CreationDate
ddç ô
=
ddö õ
ConstantSeeder
ddú ™
.
dd™ ´#
DEFAULT_SEED_DATETIME
dd´ ¿
,
dd¿ ¡ 
QuantityLowWarning
dd¡ ”
=
dd‘ ’
$num
dd÷ ◊
,
dd◊ ÿ
StockTypeId
ddŸ ‰
=
ddÂ Ê
Domain
ddÁ Ì
.
ddÌ Ó
Entities
ddÓ ˆ
.
ddˆ ˜
Enums
dd˜ ¸
.
dd¸ ˝
	StockType
dd˝ Ü
.
ddÜ á
Hygiene
ddá é
.
ddé è
GetDescription
ddè ù
(
ddù û
)
ddû ü
}
ddü †
,
dd† °
newee 
Stockee 
(ee 
)ee 
{ee 
Idee 
=ee  !
Guidee" &
.ee& '
Parseee' ,
(ee, -
$stree- S
)eeS T
,eeT U
NameeeV Z
=ee[ \
$stree] n
,een o
Descriptioneeo z
=ee{ |
$stree} 
,	ee Ä
Quantity
eeÄ à
=
eeâ ä
$num
eeã å
,
eeå ç
CreationDate
eeç ô
=
eeö õ
ConstantSeeder
eeú ™
.
ee™ ´#
DEFAULT_SEED_DATETIME
ee´ ¿
,
ee¿ ¡ 
QuantityLowWarning
ee¡ ”
=
ee‘ ’
$num
ee÷ ◊
,
ee◊ ÿ
StockTypeId
eeŸ ‰
=
eeÂ Ê
Domain
eeÁ Ì
.
eeÌ Ó
Entities
eeÓ ˆ
.
eeˆ ˜
Enums
ee˜ ¸
.
ee¸ ˝
	StockType
ee˝ Ü
.
eeÜ á
Hygiene
eeá é
.
eeé è
GetDescription
eeè ù
(
eeù û
)
eeû ü
}
eeü †
,
ee† °
newff 
Stockff 
(ff 
)ff 
{ff 
Idff 
=ff  !
Guidff" &
.ff& '
Parseff' ,
(ff, -
$strff- S
)ffS T
,ffT U
NameffV Z
=ff[ \
$strff] n
,ffn o
Descriptionffo z
=ff{ |
$strff} 
,	ff Ä
Quantity
ffÄ à
=
ffâ ä
$num
ffã å
,
ffå ç
CreationDate
ffç ô
=
ffö õ
ConstantSeeder
ffú ™
.
ff™ ´#
DEFAULT_SEED_DATETIME
ff´ ¿
,
ff¿ ¡ 
QuantityLowWarning
ff¡ ”
=
ff‘ ’
$num
ff÷ ◊
,
ff◊ ÿ
StockTypeId
ffŸ ‰
=
ffÂ Ê
Domain
ffÁ Ì
.
ffÌ Ó
Entities
ffÓ ˆ
.
ffˆ ˜
Enums
ff˜ ¸
.
ff¸ ˝
	StockType
ff˝ Ü
.
ffÜ á
Hygiene
ffá é
.
ffé è
GetDescription
ffè ù
(
ffù û
)
ffû ü
}
ffü †
,
ff† °
newgg 
Stockgg 
(gg 
)gg 
{gg 
Idgg 
=gg  !
Guidgg" &
.gg& '
Parsegg' ,
(gg, -
$strgg- S
)ggS T
,ggT U
NameggV Z
=gg[ \
$strgg] o
,ggo p
Descriptionggp {
=gg| }
$str	gg~ Ä
,
ggÄ Å
Quantity
ggÅ â
=
ggä ã
$num
ggå ç
,
ggç é
CreationDate
ggé ö
=
ggõ ú
ConstantSeeder
ggù ´
.
gg´ ¨#
DEFAULT_SEED_DATETIME
gg¨ ¡
,
gg¡ ¬ 
QuantityLowWarning
gg¬ ‘
=
gg’ ÷
$num
gg◊ ÿ
,
ggÿ Ÿ
StockTypeId
gg⁄ Â
=
ggÊ Á
Domain
ggË Ó
.
ggÓ Ô
Entities
ggÔ ˜
.
gg˜ ¯
Enums
gg¯ ˝
.
gg˝ ˛
	StockType
gg˛ á
.
ggá à
Hygiene
ggà è
.
ggè ê
GetDescription
ggê û
(
ggû ü
)
ggü †
}
gg† °
,
gg° ¢
newhh 
Stockhh 
(hh 
)hh 
{hh 
Idhh 
=hh  !
Guidhh" &
.hh& '
Parsehh' ,
(hh, -
$strhh- S
)hhS T
,hhT U
NamehhV Z
=hh[ \
$strhh] l
,hhl m
Descriptionhhm x
=hhy z
$strhh{ }
,hh} ~
Quantity	hh~ Ü
=
hhá à
$num
hhâ ä
,
hhä ã
CreationDate
hhã ó
=
hhò ô
ConstantSeeder
hhö ®
.
hh® ©#
DEFAULT_SEED_DATETIME
hh© æ
,
hhæ ø 
QuantityLowWarning
hhø —
=
hh“ ”
$num
hh‘ ’
,
hh’ ÷
StockTypeId
hh◊ ‚
=
hh„ ‰
Domain
hhÂ Î
.
hhÎ Ï
Entities
hhÏ Ù
.
hhÙ ı
Enums
hhı ˙
.
hh˙ ˚
	StockType
hh˚ Ñ
.
hhÑ Ö
Hygiene
hhÖ å
.
hhå ç
GetDescription
hhç õ
(
hhõ ú
)
hhú ù
}
hhù û
,
hhû ü
newii 
Stockii 
(ii 
)ii 
{ii 
Idii 
=ii  !
Guidii" &
.ii& '
Parseii' ,
(ii, -
$strii- S
)iiS T
,iiT U
NameiiV Z
=ii[ \
$strii] l
,iil m
Descriptioniim x
=iiy z
$strii{ }
,ii} ~
Quantity	ii~ Ü
=
iiá à
$num
iiâ ä
,
iiä ã
CreationDate
iiã ó
=
iiò ô
ConstantSeeder
iiö ®
.
ii® ©#
DEFAULT_SEED_DATETIME
ii© æ
,
iiæ ø 
QuantityLowWarning
iiø —
=
ii“ ”
$num
ii‘ ’
,
ii’ ÷
StockTypeId
ii◊ ‚
=
ii„ ‰
Domain
iiÂ Î
.
iiÎ Ï
Entities
iiÏ Ù
.
iiÙ ı
Enums
iiı ˙
.
ii˙ ˚
	StockType
ii˚ Ñ
.
iiÑ Ö
Hygiene
iiÖ å
.
iiå ç
GetDescription
iiç õ
(
iiõ ú
)
iiú ù
}
iiù û
,
iiû ü
newjj 
Stockjj 
(jj 
)jj 
{jj 
Idjj 
=jj  !
Guidjj" &
.jj& '
Parsejj' ,
(jj, -
$strjj- S
)jjS T
,jjT U
NamejjV Z
=jj[ \
$strjj] l
,jjl m
Descriptionjjm x
=jjy z
$strjj{ }
,jj} ~
Quantity	jj~ Ü
=
jjá à
$num
jjâ ä
,
jjä ã
CreationDate
jjã ó
=
jjò ô
ConstantSeeder
jjö ®
.
jj® ©#
DEFAULT_SEED_DATETIME
jj© æ
,
jjæ ø 
QuantityLowWarning
jjø —
=
jj“ ”
$num
jj‘ ’
,
jj’ ÷
StockTypeId
jj◊ ‚
=
jj„ ‰
Domain
jjÂ Î
.
jjÎ Ï
Entities
jjÏ Ù
.
jjÙ ı
Enums
jjı ˙
.
jj˙ ˚
	StockType
jj˚ Ñ
.
jjÑ Ö
Hygiene
jjÖ å
.
jjå ç
GetDescription
jjç õ
(
jjõ ú
)
jjú ù
}
jjù û
,
jjû ü
newkk 
Stockkk 
(kk 
)kk 
{kk 
Idkk 
=kk  !
Guidkk" &
.kk& '
Parsekk' ,
(kk, -
$strkk- S
)kkS T
,kkT U
NamekkV Z
=kk[ \
$strkk] q
,kkq r
Descriptionkkr }
=kk~ 
$str
kkÄ Ç
,
kkÇ É
Quantity
kkÉ ã
=
kkå ç
$num
kké è
,
kkè ê
CreationDate
kkê ú
=
kkù û
ConstantSeeder
kkü ≠
.
kk≠ Æ#
DEFAULT_SEED_DATETIME
kkÆ √
,
kk√ ƒ 
QuantityLowWarning
kkƒ ÷
=
kk◊ ÿ
$num
kkŸ ⁄
,
kk⁄ €
StockTypeId
kk‹ Á
=
kkË È
Domain
kkÍ 
.
kk Ò
Entities
kkÒ ˘
.
kk˘ ˙
Enums
kk˙ ˇ
.
kkˇ Ä
	StockType
kkÄ â
.
kkâ ä
Hygiene
kkä ë
.
kkë í
GetDescription
kkí †
(
kk† °
)
kk° ¢
}
kk¢ £
,
kk£ §
newll 
Stockll 
(ll 
)ll 
{ll 
Idll 
=ll  !
Guidll" &
.ll& '
Parsell' ,
(ll, -
$strll- S
)llS T
,llT U
NamellV Z
=ll[ \
$strll] p
,llp q
Descriptionllq |
=ll} ~
$str	ll Å
,
llÅ Ç
Quantity
llÇ ä
=
llã å
$num
llç é
,
llé è
CreationDate
llè õ
=
llú ù
ConstantSeeder
llû ¨
.
ll¨ ≠#
DEFAULT_SEED_DATETIME
ll≠ ¬
,
ll¬ √ 
QuantityLowWarning
ll√ ’
=
ll÷ ◊
$num
llÿ Ÿ
,
llŸ ⁄
StockTypeId
ll€ Ê
=
llÁ Ë
Domain
llÈ Ô
.
llÔ 
Entities
ll ¯
.
ll¯ ˘
Enums
ll˘ ˛
.
ll˛ ˇ
	StockType
llˇ à
.
llà â
Hygiene
llâ ê
.
llê ë
GetDescription
llë ü
(
llü †
)
ll† °
}
ll° ¢
,
ll¢ £
newmm 
Stockmm 
(mm 
)mm 
{mm 
Idmm 
=mm  !
Guidmm" &
.mm& '
Parsemm' ,
(mm, -
$strmm- S
)mmS T
,mmT U
NamemmV Z
=mm[ \
$strmm] r
,mmr s
Descriptionmms ~
=	mm Ä
$str
mmÅ É
,
mmÉ Ñ
Quantity
mmÑ å
=
mmç é
$num
mmè ê
,
mmê ë
CreationDate
mmë ù
=
mmû ü
ConstantSeeder
mm† Æ
.
mmÆ Ø#
DEFAULT_SEED_DATETIME
mmØ ƒ
,
mmƒ ≈ 
QuantityLowWarning
mm≈ ◊
=
mmÿ Ÿ
$num
mm⁄ €
,
mm€ ‹
StockTypeId
mm› Ë
=
mmÈ Í
Domain
mmÎ Ò
.
mmÒ Ú
Entities
mmÚ ˙
.
mm˙ ˚
Enums
mm˚ Ä
.
mmÄ Å
	StockType
mmÅ ä
.
mmä ã
Hygiene
mmã í
.
mmí ì
GetDescription
mmì °
(
mm° ¢
)
mm¢ £
}
mm£ §
,
mm§ •
newnn 
Stocknn 
(nn 
)nn 
{nn 
Idnn 
=nn  !
Guidnn" &
.nn& '
Parsenn' ,
(nn, -
$strnn- S
)nnS T
,nnT U
NamennV Z
=nn[ \
$strnn] t
,nnt u
Description	nnu Ä
=
nnÅ Ç
$str
nnÉ Ö
,
nnÖ Ü
Quantity
nnÜ é
=
nnè ê
$num
nnë í
,
nní ì
CreationDate
nnì ü
=
nn† °
ConstantSeeder
nn¢ ∞
.
nn∞ ±#
DEFAULT_SEED_DATETIME
nn± ∆
,
nn∆ « 
QuantityLowWarning
nn« Ÿ
=
nn⁄ €
$num
nn‹ ›
,
nn› ﬁ
StockTypeId
nnﬂ Í
=
nnÎ Ï
Domain
nnÌ Û
.
nnÛ Ù
Entities
nnÙ ¸
.
nn¸ ˝
Enums
nn˝ Ç
.
nnÇ É
	StockType
nnÉ å
.
nnå ç
Hygiene
nnç î
.
nnî ï
GetDescription
nnï £
(
nn£ §
)
nn§ •
}
nn• ¶
,
nn¶ ß
newoo 
Stockoo 
(oo 
)oo 
{oo 
Idoo 
=oo  !
Guidoo" &
.oo& '
Parseoo' ,
(oo, -
$stroo- S
)ooS T
,ooT U
NameooV Z
=oo[ \
$stroo] q
,ooq r
Descriptionoor }
=oo~ 
$str
ooÄ Ç
,
ooÇ É
Quantity
ooÉ ã
=
ooå ç
$num
ooé è
,
ooè ê
CreationDate
ooê ú
=
ooù û
ConstantSeeder
ooü ≠
.
oo≠ Æ#
DEFAULT_SEED_DATETIME
ooÆ √
,
oo√ ƒ 
QuantityLowWarning
ooƒ ÷
=
oo◊ ÿ
$num
ooŸ ⁄
,
oo⁄ €
StockTypeId
oo‹ Á
=
ooË È
Domain
ooÍ 
.
oo Ò
Entities
ooÒ ˘
.
oo˘ ˙
Enums
oo˙ ˇ
.
ooˇ Ä
	StockType
ooÄ â
.
ooâ ä
Hygiene
ooä ë
.
ooë í
GetDescription
ooí †
(
oo† °
)
oo° ¢
}
oo¢ £
,
oo£ §
newpp 
Stockpp 
(pp 
)pp 
{pp 
Idpp 
=pp  !
Guidpp" &
.pp& '
Parsepp' ,
(pp, -
$strpp- S
)ppS T
,ppT U
NameppV Z
=pp[ \
$strpp] j
,ppj k
Descriptionppk v
=ppw x
$strppy {
,pp{ |
Quantity	pp| Ñ
=
ppÖ Ü
$num
ppá à
,
ppà â
CreationDate
ppâ ï
=
ppñ ó
ConstantSeeder
ppò ¶
.
pp¶ ß#
DEFAULT_SEED_DATETIME
ppß º
,
ppº Ω 
QuantityLowWarning
ppΩ œ
=
pp– —
$num
pp“ ”
,
pp” ‘
StockTypeId
pp’ ‡
=
pp· ‚
Domain
pp„ È
.
ppÈ Í
Entities
ppÍ Ú
.
ppÚ Û
Enums
ppÛ ¯
.
pp¯ ˘
	StockType
pp˘ Ç
.
ppÇ É
Hygiene
ppÉ ä
.
ppä ã
GetDescription
ppã ô
(
ppô ö
)
ppö õ
}
ppõ ú
,
ppú ù
newqq 
Stockqq 
(qq 
)qq 
{qq 
Idqq 
=qq  !
Guidqq" &
.qq& '
Parseqq' ,
(qq, -
$strqq- S
)qqS T
,qqT U
NameqqV Z
=qq[ \
$strqq] o
,qqo p
Descriptionqqp {
=qq| }
$str	qq~ Ä
,
qqÄ Å
Quantity
qqÅ â
=
qqä ã
$num
qqå ç
,
qqç é
CreationDate
qqé ö
=
qqõ ú
ConstantSeeder
qqù ´
.
qq´ ¨#
DEFAULT_SEED_DATETIME
qq¨ ¡
,
qq¡ ¬ 
QuantityLowWarning
qq¬ ‘
=
qq’ ÷
$num
qq◊ ÿ
,
qqÿ Ÿ
StockTypeId
qq⁄ Â
=
qqÊ Á
Domain
qqË Ó
.
qqÓ Ô
Entities
qqÔ ˜
.
qq˜ ¯
Enums
qq¯ ˝
.
qq˝ ˛
	StockType
qq˛ á
.
qqá à
Hygiene
qqà è
.
qqè ê
GetDescription
qqê û
(
qqû ü
)
qqü †
}
qq† °
,
qq° ¢
newrr 
Stockrr 
(rr 
)rr 
{rr 
Idrr 
=rr  !
Guidrr" &
.rr& '
Parserr' ,
(rr, -
$strrr- S
)rrS T
,rrT U
NamerrV Z
=rr[ \
$strrr] n
,rrn o
Descriptionrro z
=rr{ |
$strrr} 
,	rr Ä
Quantity
rrÄ à
=
rrâ ä
$num
rrã å
,
rrå ç
CreationDate
rrç ô
=
rrö õ
ConstantSeeder
rrú ™
.
rr™ ´#
DEFAULT_SEED_DATETIME
rr´ ¿
,
rr¿ ¡ 
QuantityLowWarning
rr¡ ”
=
rr‘ ’
$num
rr÷ ◊
,
rr◊ ÿ
StockTypeId
rrŸ ‰
=
rrÂ Ê
Domain
rrÁ Ì
.
rrÌ Ó
Entities
rrÓ ˆ
.
rrˆ ˜
Enums
rr˜ ¸
.
rr¸ ˝
	StockType
rr˝ Ü
.
rrÜ á
Hygiene
rrá é
.
rré è
GetDescription
rrè ù
(
rrù û
)
rrû ü
}
rrü †
,
rr† °
newss 
Stockss 
(ss 
)ss 
{ss 
Idss 
=ss  !
Guidss" &
.ss& '
Parsess' ,
(ss, -
$strss- S
)ssS T
,ssT U
NamessV Z
=ss[ \
$strss] s
,sss t
Descriptionsst 
=
ssÄ Å
$str
ssÇ Ñ
,
ssÑ Ö
Quantity
ssÖ ç
=
ssé è
$num
ssê ë
,
ssë í
CreationDate
ssí û
=
ssü †
ConstantSeeder
ss° Ø
.
ssØ ∞#
DEFAULT_SEED_DATETIME
ss∞ ≈
,
ss≈ ∆ 
QuantityLowWarning
ss∆ ÿ
=
ssŸ ⁄
$num
ss€ ‹
,
ss‹ ›
StockTypeId
ssﬁ È
=
ssÍ Î
Domain
ssÏ Ú
.
ssÚ Û
Entities
ssÛ ˚
.
ss˚ ¸
Enums
ss¸ Å
.
ssÅ Ç
	StockType
ssÇ ã
.
ssã å
Hygiene
sså ì
.
ssì î
GetDescription
ssî ¢
(
ss¢ £
)
ss£ §
}
ss§ •
,
ss• ¶
newtt 
Stocktt 
(tt 
)tt 
{tt 
Idtt 
=tt  !
Guidtt" &
.tt& '
Parsett' ,
(tt, -
$strtt- S
)ttS T
,ttT U
NamettV Z
=tt[ \
$strtt] n
,ttn o
Descriptiontto z
=tt{ |
$strtt} 
,	tt Ä
Quantity
ttÄ à
=
ttâ ä
$num
ttã å
,
ttå ç
CreationDate
ttç ô
=
ttö õ
ConstantSeeder
ttú ™
.
tt™ ´#
DEFAULT_SEED_DATETIME
tt´ ¿
,
tt¿ ¡ 
QuantityLowWarning
tt¡ ”
=
tt‘ ’
$num
tt÷ ◊
,
tt◊ ÿ
StockTypeId
ttŸ ‰
=
ttÂ Ê
Domain
ttÁ Ì
.
ttÌ Ó
Entities
ttÓ ˆ
.
ttˆ ˜
Enums
tt˜ ¸
.
tt¸ ˝
	StockType
tt˝ Ü
.
ttÜ á
Hygiene
ttá é
.
tté è
GetDescription
ttè ù
(
ttù û
)
ttû ü
}
ttü †
,
tt† °
newuu 
Stockuu 
(uu 
)uu 
{uu 
Iduu 
=uu  !
Guiduu" &
.uu& '
Parseuu' ,
(uu, -
$struu- S
)uuS T
,uuT U
NameuuV Z
=uu[ \
$struu] f
,uuf g
Descriptionuug r
=uus t
$struuu w
,uuw x
Quantity	uux Ä
=
uuÅ Ç
$num
uuÉ Ñ
,
uuÑ Ö
CreationDate
uuÖ ë
=
uuí ì
ConstantSeeder
uuî ¢
.
uu¢ £#
DEFAULT_SEED_DATETIME
uu£ ∏
,
uu∏ π 
QuantityLowWarning
uuπ À
=
uuÃ Õ
$num
uuŒ œ
,
uuœ –
StockTypeId
uu— ‹
=
uu› ﬁ
Domain
uuﬂ Â
.
uuÂ Ê
Entities
uuÊ Ó
.
uuÓ Ô
Enums
uuÔ Ù
.
uuÙ ı
	StockType
uuı ˛
.
uu˛ ˇ
Hygiene
uuˇ Ü
.
uuÜ á
GetDescription
uuá ï
(
uuï ñ
)
uuñ ó
}
uuó ò
,
uuò ô
newvv 
Stockvv 
(vv 
)vv 
{vv 
Idvv 
=vv  !
Guidvv" &
.vv& '
Parsevv' ,
(vv, -
$strvv- S
)vvS T
,vvT U
NamevvV Z
=vv[ \
$strvv] o
,vvo p
Descriptionvvp {
=vv| }
$str	vv~ Ä
,
vvÄ Å
Quantity
vvÅ â
=
vvä ã
$num
vvå ç
,
vvç é
CreationDate
vvé ö
=
vvõ ú
ConstantSeeder
vvù ´
.
vv´ ¨#
DEFAULT_SEED_DATETIME
vv¨ ¡
,
vv¡ ¬ 
QuantityLowWarning
vv¬ ‘
=
vv’ ÷
$num
vv◊ ÿ
,
vvÿ Ÿ
StockTypeId
vv⁄ Â
=
vvÊ Á
Domain
vvË Ó
.
vvÓ Ô
Entities
vvÔ ˜
.
vv˜ ¯
Enums
vv¯ ˝
.
vv˝ ˛
	StockType
vv˛ á
.
vvá à
Hygiene
vvà è
.
vvè ê
GetDescription
vvê û
(
vvû ü
)
vvü †
}
vv† °
,
vv° ¢
newww 
Stockww 
(ww 
)ww 
{ww 
Idww 
=ww  !
Guidww" &
.ww& '
Parseww' ,
(ww, -
$strww- S
)wwS T
,wwT U
NamewwV Z
=ww[ \
$strww] i
,wwi j
Descriptionwwj u
=wwv w
$strwwx z
,wwz {
Quantity	ww{ É
=
wwÑ Ö
$num
wwÜ á
,
wwá à
CreationDate
wwà î
=
wwï ñ
ConstantSeeder
wwó •
.
ww• ¶#
DEFAULT_SEED_DATETIME
ww¶ ª
,
wwª º 
QuantityLowWarning
wwº Œ
=
wwœ –
$num
ww— “
,
ww“ ”
StockTypeId
ww‘ ﬂ
=
ww‡ ·
Domain
ww‚ Ë
.
wwË È
Entities
wwÈ Ò
.
wwÒ Ú
Enums
wwÚ ˜
.
ww˜ ¯
	StockType
ww¯ Å
.
wwÅ Ç
Hygiene
wwÇ â
.
wwâ ä
GetDescription
wwä ò
(
wwò ô
)
wwô ö
}
wwö õ
,
wwõ ú
newxx 
Stockxx 
(xx 
)xx 
{xx 
Idxx 
=xx  !
Guidxx" &
.xx& '
Parsexx' ,
(xx, -
$strxx- S
)xxS T
,xxT U
NamexxV Z
=xx[ \
$strxx] n
,xxn o
Descriptionxxo z
=xx{ |
$strxx} 
,	xx Ä
Quantity
xxÄ à
=
xxâ ä
$num
xxã å
,
xxå ç
CreationDate
xxç ô
=
xxö õ
ConstantSeeder
xxú ™
.
xx™ ´#
DEFAULT_SEED_DATETIME
xx´ ¿
,
xx¿ ¡ 
QuantityLowWarning
xx¡ ”
=
xx‘ ’
$num
xx÷ ◊
,
xx◊ ÿ
StockTypeId
xxŸ ‰
=
xxÂ Ê
Domain
xxÁ Ì
.
xxÌ Ó
Entities
xxÓ ˆ
.
xxˆ ˜
Enums
xx˜ ¸
.
xx¸ ˝
	StockType
xx˝ Ü
.
xxÜ á
Hygiene
xxá é
.
xxé è
GetDescription
xxè ù
(
xxù û
)
xxû ü
}
xxü †
,
xx† °
newyy 
Stockyy 
(yy 
)yy 
{yy 
Idyy 
=yy  !
Guidyy" &
.yy& '
Parseyy' ,
(yy, -
$stryy- S
)yyS T
,yyT U
NameyyV Z
=yy[ \
$stryy] i
,yyi j
Descriptionyyj u
=yyv w
$stryyx z
,yyz {
Quantity	yy{ É
=
yyÑ Ö
$num
yyÜ á
,
yyá à
CreationDate
yyà î
=
yyï ñ
ConstantSeeder
yyó •
.
yy• ¶#
DEFAULT_SEED_DATETIME
yy¶ ª
,
yyª º 
QuantityLowWarning
yyº Œ
=
yyœ –
$num
yy— “
,
yy“ ”
StockTypeId
yy‘ ﬂ
=
yy‡ ·
Domain
yy‚ Ë
.
yyË È
Entities
yyÈ Ò
.
yyÒ Ú
Enums
yyÚ ˜
.
yy˜ ¯
	StockType
yy¯ Å
.
yyÅ Ç
Hygiene
yyÇ â
.
yyâ ä
GetDescription
yyä ò
(
yyò ô
)
yyô ö
}
yyö õ
,
yyõ ú
newzz 
Stockzz 
(zz 
)zz 
{zz 
Idzz 
=zz  !
Guidzz" &
.zz& '
Parsezz' ,
(zz, -
$strzz- S
)zzS T
,zzT U
NamezzV Z
=zz[ \
$strzz] j
,zzj k
Descriptionzzk v
=zzw x
$strzzy {
,zz{ |
Quantity	zz| Ñ
=
zzÖ Ü
$num
zzá à
,
zzà â
CreationDate
zzâ ï
=
zzñ ó
ConstantSeeder
zzò ¶
.
zz¶ ß#
DEFAULT_SEED_DATETIME
zzß º
,
zzº Ω 
QuantityLowWarning
zzΩ œ
=
zz– —
$num
zz“ ”
,
zz” ‘
StockTypeId
zz’ ‡
=
zz· ‚
Domain
zz„ È
.
zzÈ Í
Entities
zzÍ Ú
.
zzÚ Û
Enums
zzÛ ¯
.
zz¯ ˘
	StockType
zz˘ Ç
.
zzÇ É
Hygiene
zzÉ ä
.
zzä ã
GetDescription
zzã ô
(
zzô ö
)
zzö õ
}
zzõ ú
,
zzú ù
new{{ 
Stock{{ 
({{ 
){{ 
{{{ 
Id{{ 
={{  !
Guid{{" &
.{{& '
Parse{{' ,
({{, -
$str{{- S
){{S T
,{{T U
Name{{V Z
={{[ \
$str{{] k
,{{k l
Description{{l w
={{x y
$str{{z |
,{{| }
Quantity	{{} Ö
=
{{Ü á
$num
{{à â
,
{{â ä
CreationDate
{{ä ñ
=
{{ó ò
ConstantSeeder
{{ô ß
.
{{ß ®#
DEFAULT_SEED_DATETIME
{{® Ω
,
{{Ω æ 
QuantityLowWarning
{{æ –
=
{{— “
$num
{{” ‘
,
{{‘ ’
StockTypeId
{{÷ ·
=
{{‚ „
Domain
{{‰ Í
.
{{Í Î
Entities
{{Î Û
.
{{Û Ù
Enums
{{Ù ˘
.
{{˘ ˙
	StockType
{{˙ É
.
{{É Ñ
Hygiene
{{Ñ ã
.
{{ã å
GetDescription
{{å ö
(
{{ö õ
)
{{õ ú
}
{{ú ù
,
{{ù û
new|| 
Stock|| 
(|| 
)|| 
{|| 
Id|| 
=||  !
Guid||" &
.||& '
Parse||' ,
(||, -
$str||- S
)||S T
,||T U
Name||V Z
=||[ \
$str||] k
,||k l
Description||l w
=||x y
$str||z |
,||| }
Quantity	||} Ö
=
||Ü á
$num
||à â
,
||â ä
CreationDate
||ä ñ
=
||ó ò
ConstantSeeder
||ô ß
.
||ß ®#
DEFAULT_SEED_DATETIME
||® Ω
,
||Ω æ 
QuantityLowWarning
||æ –
=
||— “
$num
||” ‘
,
||‘ ’
StockTypeId
||÷ ·
=
||‚ „
Domain
||‰ Í
.
||Í Î
Entities
||Î Û
.
||Û Ù
Enums
||Ù ˘
.
||˘ ˙
	StockType
||˙ É
.
||É Ñ
Hygiene
||Ñ ã
.
||ã å
GetDescription
||å ö
(
||ö õ
)
||õ ú
}
||ú ù
,
||ù û
new}} 
Stock}} 
(}} 
)}} 
{}} 
Id}} 
=}}  !
Guid}}" &
.}}& '
Parse}}' ,
(}}, -
$str}}- S
)}}S T
,}}T U
Name}}V Z
=}}[ \
$str}}] o
,}}o p
Description}}p {
=}}| }
$str	}}~ Ä
,
}}Ä Å
Quantity
}}Å â
=
}}ä ã
$num
}}å ç
,
}}ç é
CreationDate
}}é ö
=
}}õ ú
ConstantSeeder
}}ù ´
.
}}´ ¨#
DEFAULT_SEED_DATETIME
}}¨ ¡
,
}}¡ ¬ 
QuantityLowWarning
}}¬ ‘
=
}}’ ÷
$num
}}◊ ÿ
,
}}ÿ Ÿ
StockTypeId
}}⁄ Â
=
}}Ê Á
Domain
}}Ë Ó
.
}}Ó Ô
Entities
}}Ô ˜
.
}}˜ ¯
Enums
}}¯ ˝
.
}}˝ ˛
	StockType
}}˛ á
.
}}á à
Hygiene
}}à è
.
}}è ê
GetDescription
}}ê û
(
}}û ü
)
}}ü †
}
}}† °
,
}}° ¢
new~~ 
Stock~~ 
(~~ 
)~~ 
{~~ 
Id~~ 
=~~  !
Guid~~" &
.~~& '
Parse~~' ,
(~~, -
$str~~- S
)~~S T
,~~T U
Name~~V Z
=~~[ \
$str~~] u
,~~u v
Description	~~v Å
=
~~Ç É
$str
~~Ñ Ü
,
~~Ü á
Quantity
~~á è
=
~~ê ë
$num
~~í ì
,
~~ì î
CreationDate
~~î †
=
~~° ¢
ConstantSeeder
~~£ ±
.
~~± ≤#
DEFAULT_SEED_DATETIME
~~≤ «
,
~~« » 
QuantityLowWarning
~~» ⁄
=
~~€ ‹
$num
~~› ﬁ
,
~~ﬁ ﬂ
StockTypeId
~~‡ Î
=
~~Ï Ì
Domain
~~Ó Ù
.
~~Ù ı
Entities
~~ı ˝
.
~~˝ ˛
Enums
~~˛ É
.
~~É Ñ
	StockType
~~Ñ ç
.
~~ç é
Hygiene
~~é ï
.
~~ï ñ
GetDescription
~~ñ §
(
~~§ •
)
~~• ¶
}
~~¶ ß
,
~~ß ®
new 
Stock 
( 
) 
{ 
Id 
=  !
Guid" &
.& '
Parse' ,
(, -
$str- S
)S T
,T U
NameV Z
=[ \
$str] u
,u v
Description	v Å
=
Ç É
$str
Ñ Ü
,
Ü á
Quantity
á è
=
ê ë
$num
í ì
,
ì î
CreationDate
î †
=
° ¢
ConstantSeeder
£ ±
.
± ≤#
DEFAULT_SEED_DATETIME
≤ «
,
« » 
QuantityLowWarning
» ⁄
=
€ ‹
$num
› ﬁ
,
ﬁ ﬂ
StockTypeId
‡ Î
=
Ï Ì
Domain
Ó Ù
.
Ù ı
Entities
ı ˝
.
˝ ˛
Enums
˛ É
.
É Ñ
	StockType
Ñ ç
.
ç é
Hygiene
é ï
.
ï ñ
GetDescription
ñ §
(
§ •
)
• ¶
}
¶ ß
,
ß ®
new
ÄÄ 
Stock
ÄÄ 
(
ÄÄ 
)
ÄÄ 
{
ÄÄ 
Id
ÄÄ 
=
ÄÄ  !
Guid
ÄÄ" &
.
ÄÄ& '
Parse
ÄÄ' ,
(
ÄÄ, -
$str
ÄÄ- S
)
ÄÄS T
,
ÄÄT U
Name
ÄÄV Z
=
ÄÄ[ \
$str
ÄÄ] u
,
ÄÄu v
DescriptionÄÄv Å
=ÄÄÇ É
$strÄÄÑ Ü
,ÄÄÜ á
QuantityÄÄá è
=ÄÄê ë
$numÄÄí ì
,ÄÄì î
CreationDateÄÄî †
=ÄÄ° ¢
ConstantSeederÄÄ£ ±
.ÄÄ± ≤%
DEFAULT_SEED_DATETIMEÄÄ≤ «
,ÄÄ« »"
QuantityLowWarningÄÄ» ⁄
=ÄÄ€ ‹
$numÄÄ› ﬁ
,ÄÄﬁ ﬂ
StockTypeIdÄÄ‡ Î
=ÄÄÏ Ì
DomainÄÄÓ Ù
.ÄÄÙ ı
EntitiesÄÄı ˝
.ÄÄ˝ ˛
EnumsÄÄ˛ É
.ÄÄÉ Ñ
	StockTypeÄÄÑ ç
.ÄÄç é
HygieneÄÄé ï
.ÄÄï ñ
GetDescriptionÄÄñ §
(ÄÄ§ •
)ÄÄ• ¶
}ÄÄ¶ ß
,ÄÄß ®
new
ÅÅ 
Stock
ÅÅ 
(
ÅÅ 
)
ÅÅ 
{
ÅÅ 
Id
ÅÅ 
=
ÅÅ  !
Guid
ÅÅ" &
.
ÅÅ& '
Parse
ÅÅ' ,
(
ÅÅ, -
$str
ÅÅ- S
)
ÅÅS T
,
ÅÅT U
Name
ÅÅV Z
=
ÅÅ[ \
$str
ÅÅ] g
,
ÅÅg h
Description
ÅÅh s
=
ÅÅt u
$str
ÅÅv x
,
ÅÅx y
QuantityÅÅy Å
=ÅÅÇ É
$numÅÅÑ Ö
,ÅÅÖ Ü
CreationDateÅÅÜ í
=ÅÅì î
ConstantSeederÅÅï £
.ÅÅ£ §%
DEFAULT_SEED_DATETIMEÅÅ§ π
,ÅÅπ ∫"
QuantityLowWarningÅÅ∫ Ã
=ÅÅÕ Œ
$numÅÅœ –
,ÅÅ– —
StockTypeIdÅÅ“ ›
=ÅÅﬁ ﬂ
DomainÅÅ‡ Ê
.ÅÅÊ Á
EntitiesÅÅÁ Ô
.ÅÅÔ 
EnumsÅÅ ı
.ÅÅı ˆ
	StockTypeÅÅˆ ˇ
.ÅÅˇ Ä
HygieneÅÅÄ á
.ÅÅá à
GetDescriptionÅÅà ñ
(ÅÅñ ó
)ÅÅó ò
}ÅÅò ô
,ÅÅô ö
new
ÇÇ 
Stock
ÇÇ 
(
ÇÇ 
)
ÇÇ 
{
ÇÇ 
Id
ÇÇ 
=
ÇÇ  !
Guid
ÇÇ" &
.
ÇÇ& '
Parse
ÇÇ' ,
(
ÇÇ, -
$str
ÇÇ- S
)
ÇÇS T
,
ÇÇT U
Name
ÇÇV Z
=
ÇÇ[ \
$str
ÇÇ] m
,
ÇÇm n
Description
ÇÇn y
=
ÇÇz {
$str
ÇÇ| ~
,
ÇÇ~ 
QuantityÇÇ á
=ÇÇà â
$numÇÇä ã
,ÇÇã å
CreationDateÇÇå ò
=ÇÇô ö
ConstantSeederÇÇõ ©
.ÇÇ© ™%
DEFAULT_SEED_DATETIMEÇÇ™ ø
,ÇÇø ¿"
QuantityLowWarningÇÇ¿ “
=ÇÇ” ‘
$numÇÇ’ ÷
,ÇÇ÷ ◊
StockTypeIdÇÇÿ „
=ÇÇ‰ Â
DomainÇÇÊ Ï
.ÇÇÏ Ì
EntitiesÇÇÌ ı
.ÇÇı ˆ
EnumsÇÇˆ ˚
.ÇÇ˚ ¸
	StockTypeÇÇ¸ Ö
.ÇÇÖ Ü
HygieneÇÇÜ ç
.ÇÇç é
GetDescriptionÇÇé ú
(ÇÇú ù
)ÇÇù û
}ÇÇû ü
,ÇÇü †
new
ÉÉ 
Stock
ÉÉ 
(
ÉÉ 
)
ÉÉ 
{
ÉÉ 
Id
ÉÉ 
=
ÉÉ  !
Guid
ÉÉ" &
.
ÉÉ& '
Parse
ÉÉ' ,
(
ÉÉ, -
$str
ÉÉ- S
)
ÉÉS T
,
ÉÉT U
Name
ÉÉV Z
=
ÉÉ[ \
$str
ÉÉ] o
,
ÉÉo p
Description
ÉÉp {
=
ÉÉ| }
$strÉÉ~ Ä
,ÉÉÄ Å
QuantityÉÉÅ â
=ÉÉä ã
$numÉÉå ç
,ÉÉç é
CreationDateÉÉé ö
=ÉÉõ ú
ConstantSeederÉÉù ´
.ÉÉ´ ¨%
DEFAULT_SEED_DATETIMEÉÉ¨ ¡
,ÉÉ¡ ¬"
QuantityLowWarningÉÉ¬ ‘
=ÉÉ’ ÷
$numÉÉ◊ ÿ
,ÉÉÿ Ÿ
StockTypeIdÉÉ⁄ Â
=ÉÉÊ Á
DomainÉÉË Ó
.ÉÉÓ Ô
EntitiesÉÉÔ ˜
.ÉÉ˜ ¯
EnumsÉÉ¯ ˝
.ÉÉ˝ ˛
	StockTypeÉÉ˛ á
.ÉÉá à
FoodÉÉà å
.ÉÉå ç
GetDescriptionÉÉç õ
(ÉÉõ ú
)ÉÉú ù
}ÉÉù û
,ÉÉû ü
new
ÑÑ 
Stock
ÑÑ 
(
ÑÑ 
)
ÑÑ 
{
ÑÑ 
Id
ÑÑ 
=
ÑÑ  !
Guid
ÑÑ" &
.
ÑÑ& '
Parse
ÑÑ' ,
(
ÑÑ, -
$str
ÑÑ- S
)
ÑÑS T
,
ÑÑT U
Name
ÑÑV Z
=
ÑÑ[ \
$str
ÑÑ] k
,
ÑÑk l
Description
ÑÑl w
=
ÑÑx y
$str
ÑÑz |
,
ÑÑ| }
QuantityÑÑ} Ö
=ÑÑÜ á
$numÑÑà â
,ÑÑâ ä
CreationDateÑÑä ñ
=ÑÑó ò
ConstantSeederÑÑô ß
.ÑÑß ®%
DEFAULT_SEED_DATETIMEÑÑ® Ω
,ÑÑΩ æ"
QuantityLowWarningÑÑæ –
=ÑÑ— “
$numÑÑ” ‘
,ÑÑ‘ ’
StockTypeIdÑÑ÷ ·
=ÑÑ‚ „
DomainÑÑ‰ Í
.ÑÑÍ Î
EntitiesÑÑÎ Û
.ÑÑÛ Ù
EnumsÑÑÙ ˘
.ÑÑ˘ ˙
	StockTypeÑÑ˙ É
.ÑÑÉ Ñ
HygieneÑÑÑ ã
.ÑÑã å
GetDescriptionÑÑå ö
(ÑÑö õ
)ÑÑõ ú
}ÑÑú ù
,ÑÑù û
new
ÖÖ 
Stock
ÖÖ 
(
ÖÖ 
)
ÖÖ 
{
ÖÖ 
Id
ÖÖ 
=
ÖÖ  !
Guid
ÖÖ" &
.
ÖÖ& '
Parse
ÖÖ' ,
(
ÖÖ, -
$str
ÖÖ- S
)
ÖÖS T
,
ÖÖT U
Name
ÖÖV Z
=
ÖÖ[ \
$str
ÖÖ] k
,
ÖÖk l
Description
ÖÖl w
=
ÖÖx y
$str
ÖÖz |
,
ÖÖ| }
QuantityÖÖ} Ö
=ÖÖÜ á
$numÖÖà â
,ÖÖâ ä
CreationDateÖÖä ñ
=ÖÖó ò
ConstantSeederÖÖô ß
.ÖÖß ®%
DEFAULT_SEED_DATETIMEÖÖ® Ω
,ÖÖΩ æ"
QuantityLowWarningÖÖæ –
=ÖÖ— “
$numÖÖ” ‘
,ÖÖ‘ ’
StockTypeIdÖÖ÷ ·
=ÖÖ‚ „
DomainÖÖ‰ Í
.ÖÖÍ Î
EntitiesÖÖÎ Û
.ÖÖÛ Ù
EnumsÖÖÙ ˘
.ÖÖ˘ ˙
	StockTypeÖÖ˙ É
.ÖÖÉ Ñ
HygieneÖÖÑ ã
.ÖÖã å
GetDescriptionÖÖå ö
(ÖÖö õ
)ÖÖõ ú
}ÖÖú ù
,ÖÖù û
new
ÜÜ 
Stock
ÜÜ 
(
ÜÜ 
)
ÜÜ 
{
ÜÜ 
Id
ÜÜ 
=
ÜÜ  !
Guid
ÜÜ" &
.
ÜÜ& '
Parse
ÜÜ' ,
(
ÜÜ, -
$str
ÜÜ- S
)
ÜÜS T
,
ÜÜT U
Name
ÜÜV Z
=
ÜÜ[ \
$str
ÜÜ] n
,
ÜÜn o
Description
ÜÜo z
=
ÜÜ{ |
$str
ÜÜ} 
,ÜÜ Ä
QuantityÜÜÄ à
=ÜÜâ ä
$numÜÜã å
,ÜÜå ç
CreationDateÜÜç ô
=ÜÜö õ
ConstantSeederÜÜú ™
.ÜÜ™ ´%
DEFAULT_SEED_DATETIMEÜÜ´ ¿
,ÜÜ¿ ¡"
QuantityLowWarningÜÜ¡ ”
=ÜÜ‘ ’
$numÜÜ÷ ◊
,ÜÜ◊ ÿ
StockTypeIdÜÜŸ ‰
=ÜÜÂ Ê
DomainÜÜÁ Ì
.ÜÜÌ Ó
EntitiesÜÜÓ ˆ
.ÜÜˆ ˜
EnumsÜÜ˜ ¸
.ÜÜ¸ ˝
	StockTypeÜÜ˝ Ü
.ÜÜÜ á
HygieneÜÜá é
.ÜÜé è
GetDescriptionÜÜè ù
(ÜÜù û
)ÜÜû ü
}ÜÜü †
,ÜÜ† °
new
áá 
Stock
áá 
(
áá 
)
áá 
{
áá 
Id
áá 
=
áá  !
Guid
áá" &
.
áá& '
Parse
áá' ,
(
áá, -
$str
áá- S
)
ááS T
,
ááT U
Name
ááV Z
=
áá[ \
$str
áá] k
,
áák l
Description
áál w
=
ááx y
$str
ááz |
,
áá| }
Quantityáá} Ö
=ááÜ á
$numááà â
,ááâ ä
CreationDateááä ñ
=ááó ò
ConstantSeederááô ß
.ááß ®%
DEFAULT_SEED_DATETIMEáá® Ω
,ááΩ æ"
QuantityLowWarningááæ –
=áá— “
$numáá” ‘
,áá‘ ’
StockTypeIdáá÷ ·
=áá‚ „
Domaináá‰ Í
.ááÍ Î
EntitiesááÎ Û
.ááÛ Ù
EnumsááÙ ˘
.áá˘ ˙
	StockTypeáá˙ É
.ááÉ Ñ
HygieneááÑ ã
.ááã å
GetDescriptionááå ö
(ááö õ
)ááõ ú
}ááú ù
,ááù û
new
àà 
Stock
àà 
(
àà 
)
àà 
{
àà 
Id
àà 
=
àà  !
Guid
àà" &
.
àà& '
Parse
àà' ,
(
àà, -
$str
àà- S
)
ààS T
,
ààT U
Name
ààV Z
=
àà[ \
$str
àà] p
,
ààp q
Description
ààq |
=
àà} ~
$stràà Å
,ààÅ Ç
QuantityààÇ ä
=ààã å
$numààç é
,ààé è
CreationDateààè õ
=ààú ù
ConstantSeederààû ¨
.àà¨ ≠%
DEFAULT_SEED_DATETIMEàà≠ ¬
,àà¬ √"
QuantityLowWarningàà√ ’
=àà÷ ◊
$numààÿ Ÿ
,ààŸ ⁄
StockTypeIdàà€ Ê
=ààÁ Ë
DomainààÈ Ô
.ààÔ 
Entitiesàà ¯
.àà¯ ˘
Enumsàà˘ ˛
.àà˛ ˇ
	StockTypeààˇ à
.ààà â
Hygieneààâ ê
.ààê ë
GetDescriptionààë ü
(ààü †
)àà† °
}àà° ¢
,àà¢ £
new
ââ 
Stock
ââ 
(
ââ 
)
ââ 
{
ââ 
Id
ââ 
=
ââ  !
Guid
ââ" &
.
ââ& '
Parse
ââ' ,
(
ââ, -
$str
ââ- S
)
ââS T
,
ââT U
Name
ââV Z
=
ââ[ \
$str
ââ] j
,
ââj k
Description
ââk v
=
ââw x
$str
âây {
,
ââ{ |
Quantityââ| Ñ
=ââÖ Ü
$numââá à
,ââà â
CreationDateâââ ï
=ââñ ó
ConstantSeederââò ¶
.ââ¶ ß%
DEFAULT_SEED_DATETIMEââß º
,ââº Ω"
QuantityLowWarningââΩ œ
=ââ– —
$numââ“ ”
,ââ” ‘
StockTypeIdââ’ ‡
=ââ· ‚
Domainââ„ È
.ââÈ Í
EntitiesââÍ Ú
.ââÚ Û
EnumsââÛ ¯
.ââ¯ ˘
	StockTypeââ˘ Ç
.ââÇ É
HygieneââÉ ä
.ââä ã
GetDescriptionââã ô
(ââô ö
)ââö õ
}ââõ ú
,ââú ù
new
ää 
Stock
ää 
(
ää 
)
ää 
{
ää 
Id
ää 
=
ää  !
Guid
ää" &
.
ää& '
Parse
ää' ,
(
ää, -
$str
ää- S
)
ääS T
,
ääT U
Name
ääV Z
=
ää[ \
$str
ää] c
,
ääc d
Description
ääd o
=
ääp q
$str
äär t
,
äät u
Quantity
ääu }
=
ää~ 
$numääÄ Å
,ääÅ Ç
CreationDateääÇ é
=ääè ê
ConstantSeederääë ü
.ääü †%
DEFAULT_SEED_DATETIMEää† µ
,ääµ ∂"
QuantityLowWarningää∂ »
=ää…  
$numääÀ Ã
,ääÃ Õ
StockTypeIdääŒ Ÿ
=ää⁄ €
Domainää‹ ‚
.ää‚ „
Entitiesää„ Î
.ääÎ Ï
EnumsääÏ Ò
.ääÒ Ú
	StockTypeääÚ ˚
.ää˚ ¸
Hygieneää¸ É
.ääÉ Ñ
GetDescriptionääÑ í
(ääí ì
)ääì î
}ääî ï
,ääï ñ
new
ãã 
Stock
ãã 
(
ãã 
)
ãã 
{
ãã 
Id
ãã 
=
ãã  !
Guid
ãã" &
.
ãã& '
Parse
ãã' ,
(
ãã, -
$str
ãã- S
)
ããS T
,
ããT U
Name
ããV Z
=
ãã[ \
$str
ãã] m
,
ããm n
Description
ããn y
=
ããz {
$str
ãã| ~
,
ãã~ 
Quantityãã á
=ããà â
$numããä ã
,ããã å
CreationDateããå ò
=ããô ö
ConstantSeederããõ ©
.ãã© ™%
DEFAULT_SEED_DATETIMEãã™ ø
,ããø ¿"
QuantityLowWarningãã¿ “
=ãã” ‘
$numãã’ ÷
,ãã÷ ◊
StockTypeIdããÿ „
=ãã‰ Â
DomainããÊ Ï
.ããÏ Ì
EntitiesããÌ ı
.ããı ˆ
Enumsããˆ ˚
.ãã˚ ¸
	StockTypeãã¸ Ö
.ããÖ Ü
HygieneããÜ ç
.ããç é
GetDescriptionããé ú
(ããú ù
)ããù û
}ããû ü
,ããü †
new
åå 
Stock
åå 
(
åå 
)
åå 
{
åå 
Id
åå 
=
åå  !
Guid
åå" &
.
åå& '
Parse
åå' ,
(
åå, -
$str
åå- S
)
ååS T
,
ååT U
Name
ååV Z
=
åå[ \
$str
åå] o
,
ååo p
Description
ååp {
=
åå| }
$stråå~ Ä
,ååÄ Å
QuantityååÅ â
=ååä ã
$numååå ç
,ååç é
CreationDateååé ö
=ååõ ú
ConstantSeederååù ´
.åå´ ¨%
DEFAULT_SEED_DATETIMEåå¨ ¡
,åå¡ ¬"
QuantityLowWarningåå¬ ‘
=åå’ ÷
$numåå◊ ÿ
,ååÿ Ÿ
StockTypeIdåå⁄ Â
=ååÊ Á
DomainååË Ó
.ååÓ Ô
EntitiesååÔ ˜
.åå˜ ¯
Enumsåå¯ ˝
.åå˝ ˛
	StockTypeåå˛ á
.ååá à
Hygieneååà è
.ååè ê
GetDescriptionååê û
(ååû ü
)ååü †
}åå† °
,åå° ¢
new
çç 
Stock
çç 
(
çç 
)
çç 
{
çç 
Id
çç 
=
çç  !
Guid
çç" &
.
çç& '
Parse
çç' ,
(
çç, -
$str
çç- S
)
ççS T
,
ççT U
Name
ççV Z
=
çç[ \
$str
çç] n
,
ççn o
Description
çço z
=
çç{ |
$str
çç} 
,çç Ä
QuantityççÄ à
=ççâ ä
$numççã å
,ççå ç
CreationDateççç ô
=ççö õ
ConstantSeederççú ™
.çç™ ´%
DEFAULT_SEED_DATETIMEçç´ ¿
,çç¿ ¡"
QuantityLowWarningçç¡ ”
=çç‘ ’
$numçç÷ ◊
,çç◊ ÿ
StockTypeIdççŸ ‰
=ççÂ Ê
DomainççÁ Ì
.ççÌ Ó
EntitiesççÓ ˆ
.ççˆ ˜
Enumsçç˜ ¸
.çç¸ ˝
	StockTypeçç˝ Ü
.ççÜ á
Hygieneççá é
.ççé è
GetDescriptionççè ù
(ççù û
)ççû ü
}ççü †
,çç† °
new
éé 
Stock
éé 
(
éé 
)
éé 
{
éé 
Id
éé 
=
éé  !
Guid
éé" &
.
éé& '
Parse
éé' ,
(
éé, -
$str
éé- S
)
ééS T
,
ééT U
Name
ééV Z
=
éé[ \
$str
éé] o
,
ééo p
Description
éép {
=
éé| }
$stréé~ Ä
,ééÄ Å
QuantityééÅ â
=ééä ã
$numééå ç
,ééç é
CreationDateééé ö
=ééõ ú
ConstantSeederééù ´
.éé´ ¨%
DEFAULT_SEED_DATETIMEéé¨ ¡
,éé¡ ¬"
QuantityLowWarningéé¬ ‘
=éé’ ÷
$numéé◊ ÿ
,ééÿ Ÿ
StockTypeIdéé⁄ Â
=ééÊ Á
DomainééË Ó
.ééÓ Ô
EntitiesééÔ ˜
.éé˜ ¯
Enumséé¯ ˝
.éé˝ ˛
	StockTypeéé˛ á
.ééá à
Hygieneééà è
.ééè ê
GetDescriptionééê û
(ééû ü
)ééü †
}éé† °
,éé° ¢
new
èè 
Stock
èè 
(
èè 
)
èè 
{
èè 
Id
èè 
=
èè  !
Guid
èè" &
.
èè& '
Parse
èè' ,
(
èè, -
$str
èè- S
)
èèS T
,
èèT U
Name
èèV Z
=
èè[ \
$str
èè] n
,
èèn o
Description
èèo z
=
èè{ |
$str
èè} 
,èè Ä
QuantityèèÄ à
=èèâ ä
$numèèã å
,èèå ç
CreationDateèèç ô
=èèö õ
ConstantSeederèèú ™
.èè™ ´%
DEFAULT_SEED_DATETIMEèè´ ¿
,èè¿ ¡"
QuantityLowWarningèè¡ ”
=èè‘ ’
$numèè÷ ◊
,èè◊ ÿ
StockTypeIdèèŸ ‰
=èèÂ Ê
DomainèèÁ Ì
.èèÌ Ó
EntitiesèèÓ ˆ
.èèˆ ˜
Enumsèè˜ ¸
.èè¸ ˝
	StockTypeèè˝ Ü
.èèÜ á
Hygieneèèá é
.èèé è
GetDescriptionèèè ù
(èèù û
)èèû ü
}èèü †
,èè† °
new
êê 
Stock
êê 
(
êê 
)
êê 
{
êê 
Id
êê 
=
êê  !
Guid
êê" &
.
êê& '
Parse
êê' ,
(
êê, -
$str
êê- S
)
êêS T
,
êêT U
Name
êêV Z
=
êê[ \
$str
êê] o
,
êêo p
Description
êêp {
=
êê| }
$strêê~ Ä
,êêÄ Å
QuantityêêÅ â
=êêä ã
$numêêå ç
,êêç é
CreationDateêêé ö
=êêõ ú
ConstantSeederêêù ´
.êê´ ¨%
DEFAULT_SEED_DATETIMEêê¨ ¡
,êê¡ ¬"
QuantityLowWarningêê¬ ‘
=êê’ ÷
$numêê◊ ÿ
,êêÿ Ÿ
StockTypeIdêê⁄ Â
=êêÊ Á
DomainêêË Ó
.êêÓ Ô
EntitiesêêÔ ˜
.êê˜ ¯
Enumsêê¯ ˝
.êê˝ ˛
	StockTypeêê˛ á
.êêá à
Hygieneêêà è
.êêè ê
GetDescriptionêêê û
(êêû ü
)êêü †
}êê† °
,êê° ¢
new
ëë 
Stock
ëë 
(
ëë 
)
ëë 
{
ëë 
Id
ëë 
=
ëë  !
Guid
ëë" &
.
ëë& '
Parse
ëë' ,
(
ëë, -
$str
ëë- S
)
ëëS T
,
ëëT U
Name
ëëV Z
=
ëë[ \
$str
ëë] o
,
ëëo p
Description
ëëp {
=
ëë| }
$strëë~ Ä
,ëëÄ Å
QuantityëëÅ â
=ëëä ã
$numëëå ç
,ëëç é
CreationDateëëé ö
=ëëõ ú
ConstantSeederëëù ´
.ëë´ ¨%
DEFAULT_SEED_DATETIMEëë¨ ¡
,ëë¡ ¬"
QuantityLowWarningëë¬ ‘
=ëë’ ÷
$numëë◊ ÿ
,ëëÿ Ÿ
StockTypeIdëë⁄ Â
=ëëÊ Á
DomainëëË Ó
.ëëÓ Ô
EntitiesëëÔ ˜
.ëë˜ ¯
Enumsëë¯ ˝
.ëë˝ ˛
	StockTypeëë˛ á
.ëëá à
Hygieneëëà è
.ëëè ê
GetDescriptionëëê û
(ëëû ü
)ëëü †
}ëë† °
,ëë° ¢
new
íí 
Stock
íí 
(
íí 
)
íí 
{
íí 
Id
íí 
=
íí  !
Guid
íí" &
.
íí& '
Parse
íí' ,
(
íí, -
$str
íí- S
)
ííS T
,
ííT U
Name
ííV Z
=
íí[ \
$str
íí] t
,
íít u
Descriptionííu Ä
=ííÅ Ç
$strííÉ Ö
,ííÖ Ü
QuantityííÜ é
=ííè ê
$numííë í
,ííí ì
CreationDateííì ü
=íí† °
ConstantSeederíí¢ ∞
.íí∞ ±%
DEFAULT_SEED_DATETIMEíí± ∆
,íí∆ «"
QuantityLowWarningíí« Ÿ
=íí⁄ €
$numíí‹ ›
,íí› ﬁ
StockTypeIdííﬂ Í
=ííÎ Ï
DomainííÌ Û
.ííÛ Ù
EntitiesííÙ ¸
.íí¸ ˝
Enumsíí˝ Ç
.ííÇ É
	StockTypeííÉ å
.ííå ç
Hygieneííç î
.ííî ï
GetDescriptionííï £
(íí£ §
)íí§ •
}íí• ¶
,íí¶ ß
new
ìì 
Stock
ìì 
(
ìì 
)
ìì 
{
ìì 
Id
ìì 
=
ìì  !
Guid
ìì" &
.
ìì& '
Parse
ìì' ,
(
ìì, -
$str
ìì- S
)
ììS T
,
ììT U
Name
ììV Z
=
ìì[ \
$str
ìì] m
,
ììm n
Description
ììn y
=
ììz {
$str
ìì| ~
,
ìì~ 
Quantityìì á
=ììà â
$numììä ã
,ììã å
CreationDateììå ò
=ììô ö
ConstantSeederììõ ©
.ìì© ™%
DEFAULT_SEED_DATETIMEìì™ ø
,ììø ¿"
QuantityLowWarningìì¿ “
=ìì” ‘
$numìì’ ÷
,ìì÷ ◊
StockTypeIdììÿ „
=ìì‰ Â
DomainììÊ Ï
.ììÏ Ì
EntitiesììÌ ı
.ììı ˆ
Enumsììˆ ˚
.ìì˚ ¸
	StockTypeìì¸ Ö
.ììÖ Ü
HygieneììÜ ç
.ììç é
GetDescriptionììé ú
(ììú ù
)ììù û
}ììû ü
,ììü †
new
îî 
Stock
îî 
(
îî 
)
îî 
{
îî 
Id
îî 
=
îî  !
Guid
îî" &
.
îî& '
Parse
îî' ,
(
îî, -
$str
îî- S
)
îîS T
,
îîT U
Name
îîV Z
=
îî[ \
$str
îî] r
,
îîr s
Description
îîs ~
=îî Ä
$strîîÅ É
,îîÉ Ñ
QuantityîîÑ å
=îîç é
$numîîè ê
,îîê ë
CreationDateîîë ù
=îîû ü
ConstantSeederîî† Æ
.îîÆ Ø%
DEFAULT_SEED_DATETIMEîîØ ƒ
,îîƒ ≈"
QuantityLowWarningîî≈ ◊
=îîÿ Ÿ
$numîî⁄ €
,îî€ ‹
StockTypeIdîî› Ë
=îîÈ Í
DomainîîÎ Ò
.îîÒ Ú
EntitiesîîÚ ˙
.îî˙ ˚
Enumsîî˚ Ä
.îîÄ Å
	StockTypeîîÅ ä
.îîä ã
Hygieneîîã í
.îîí ì
GetDescriptionîîì °
(îî° ¢
)îî¢ £
}îî£ §
,îî§ •
new
ïï 
Stock
ïï 
(
ïï 
)
ïï 
{
ïï 
Id
ïï 
=
ïï  !
Guid
ïï" &
.
ïï& '
Parse
ïï' ,
(
ïï, -
$str
ïï- S
)
ïïS T
,
ïïT U
Name
ïïV Z
=
ïï[ \
$str
ïï] r
,
ïïr s
Description
ïïs ~
=ïï Ä
$strïïÅ É
,ïïÉ Ñ
QuantityïïÑ å
=ïïç é
$numïïè ê
,ïïê ë
CreationDateïïë ù
=ïïû ü
ConstantSeederïï† Æ
.ïïÆ Ø%
DEFAULT_SEED_DATETIMEïïØ ƒ
,ïïƒ ≈"
QuantityLowWarningïï≈ ◊
=ïïÿ Ÿ
$numïï⁄ €
,ïï€ ‹
StockTypeIdïï› Ë
=ïïÈ Í
DomainïïÎ Ò
.ïïÒ Ú
EntitiesïïÚ ˙
.ïï˙ ˚
Enumsïï˚ Ä
.ïïÄ Å
	StockTypeïïÅ ä
.ïïä ã
Hygieneïïã í
.ïïí ì
GetDescriptionïïì °
(ïï° ¢
)ïï¢ £
}ïï£ §
,ïï§ •
new
ññ 
Stock
ññ 
(
ññ 
)
ññ 
{
ññ 
Id
ññ 
=
ññ  !
Guid
ññ" &
.
ññ& '
Parse
ññ' ,
(
ññ, -
$str
ññ- S
)
ññS T
,
ññT U
Name
ññV Z
=
ññ[ \
$str
ññ] n
,
ññn o
Description
ñño z
=
ññ{ |
$str
ññ} 
,ññ Ä
QuantityññÄ à
=ññâ ä
$numññã å
,ññå ç
CreationDateññç ô
=ññö õ
ConstantSeederññú ™
.ññ™ ´%
DEFAULT_SEED_DATETIMEññ´ ¿
,ññ¿ ¡"
QuantityLowWarningññ¡ ”
=ññ‘ ’
$numññ÷ ◊
,ññ◊ ÿ
StockTypeIdññŸ ‰
=ññÂ Ê
DomainññÁ Ì
.ññÌ Ó
EntitiesññÓ ˆ
.ññˆ ˜
Enumsññ˜ ¸
.ññ¸ ˝
	StockTypeññ˝ Ü
.ññÜ á
Hygieneññá é
.ññé è
GetDescriptionññè ù
(ññù û
)ññû ü
}ññü †
,ññ† °
new
óó 
Stock
óó 
(
óó 
)
óó 
{
óó 
Id
óó 
=
óó  !
Guid
óó" &
.
óó& '
Parse
óó' ,
(
óó, -
$str
óó- S
)
óóS T
,
óóT U
Name
óóV Z
=
óó[ \
$str
óó] r
,
óór s
Description
óós ~
=óó Ä
$stróóÅ É
,óóÉ Ñ
QuantityóóÑ å
=óóç é
$numóóè ê
,óóê ë
CreationDateóóë ù
=óóû ü
ConstantSeederóó† Æ
.óóÆ Ø%
DEFAULT_SEED_DATETIMEóóØ ƒ
,óóƒ ≈"
QuantityLowWarningóó≈ ◊
=óóÿ Ÿ
$numóó⁄ €
,óó€ ‹
StockTypeIdóó› Ë
=óóÈ Í
DomainóóÎ Ò
.óóÒ Ú
EntitiesóóÚ ˙
.óó˙ ˚
Enumsóó˚ Ä
.óóÄ Å
	StockTypeóóÅ ä
.óóä ã
Hygieneóóã í
.óóí ì
GetDescriptionóóì °
(óó° ¢
)óó¢ £
}óó£ §
,óó§ •
new
òò 
Stock
òò 
(
òò 
)
òò 
{
òò 
Id
òò 
=
òò  !
Guid
òò" &
.
òò& '
Parse
òò' ,
(
òò, -
$str
òò- S
)
òòS T
,
òòT U
Name
òòV Z
=
òò[ \
$str
òò] p
,
òòp q
Description
òòq |
=
òò} ~
$stròò Å
,òòÅ Ç
QuantityòòÇ ä
=òòã å
$numòòç é
,òòé è
CreationDateòòè õ
=òòú ù
ConstantSeederòòû ¨
.òò¨ ≠%
DEFAULT_SEED_DATETIMEòò≠ ¬
,òò¬ √"
QuantityLowWarningòò√ ’
=òò÷ ◊
$numòòÿ Ÿ
,òòŸ ⁄
StockTypeIdòò€ Ê
=òòÁ Ë
DomainòòÈ Ô
.òòÔ 
Entitiesòò ¯
.òò¯ ˘
Enumsòò˘ ˛
.òò˛ ˇ
	StockTypeòòˇ à
.òòà â
Hygieneòòâ ê
.òòê ë
GetDescriptionòòë ü
(òòü †
)òò† °
}òò° ¢
,òò¢ £
new
ôô 
Stock
ôô 
(
ôô 
)
ôô 
{
ôô 
Id
ôô 
=
ôô  !
Guid
ôô" &
.
ôô& '
Parse
ôô' ,
(
ôô, -
$str
ôô- S
)
ôôS T
,
ôôT U
Name
ôôV Z
=
ôô[ \
$str
ôô] s
,
ôôs t
Description
ôôt 
=ôôÄ Å
$strôôÇ Ñ
,ôôÑ Ö
QuantityôôÖ ç
=ôôé è
$numôôê ë
,ôôë í
CreationDateôôí û
=ôôü †
ConstantSeederôô° Ø
.ôôØ ∞%
DEFAULT_SEED_DATETIMEôô∞ ≈
,ôô≈ ∆"
QuantityLowWarningôô∆ ÿ
=ôôŸ ⁄
$numôô€ ‹
,ôô‹ ›
StockTypeIdôôﬁ È
=ôôÍ Î
DomainôôÏ Ú
.ôôÚ Û
EntitiesôôÛ ˚
.ôô˚ ¸
Enumsôô¸ Å
.ôôÅ Ç
	StockTypeôôÇ ã
.ôôã å
Hygieneôôå ì
.ôôì î
GetDescriptionôôî ¢
(ôô¢ £
)ôô£ §
}ôô§ •
,ôô• ¶
new
öö 
Stock
öö 
(
öö 
)
öö 
{
öö 
Id
öö 
=
öö  !
Guid
öö" &
.
öö& '
Parse
öö' ,
(
öö, -
$str
öö- S
)
ööS T
,
ööT U
Name
ööV Z
=
öö[ \
$str
öö] t
,
ööt u
Descriptionööu Ä
=ööÅ Ç
$strööÉ Ö
,ööÖ Ü
QuantityööÜ é
=ööè ê
$numööë í
,ööí ì
CreationDateööì ü
=öö† °
ConstantSeederöö¢ ∞
.öö∞ ±%
DEFAULT_SEED_DATETIMEöö± ∆
,öö∆ «"
QuantityLowWarningöö« Ÿ
=öö⁄ €
$numöö‹ ›
,öö› ﬁ
StockTypeIdööﬂ Í
=ööÎ Ï
DomainööÌ Û
.ööÛ Ù
EntitiesööÙ ¸
.öö¸ ˝
Enumsöö˝ Ç
.ööÇ É
	StockTypeööÉ å
.ööå ç
Hygieneööç î
.ööî ï
GetDescriptionööï £
(öö£ §
)öö§ •
}öö• ¶
,öö¶ ß
new
õõ 
Stock
õõ 
(
õõ 
)
õõ 
{
õõ 
Id
õõ 
=
õõ  !
Guid
õõ" &
.
õõ& '
Parse
õõ' ,
(
õõ, -
$str
õõ- S
)
õõS T
,
õõT U
Name
õõV Z
=
õõ[ \
$str
õõ] h
,
õõh i
Description
õõi t
=
õõu v
$str
õõw y
,
õõy z
Quantityõõz Ç
=õõÉ Ñ
$numõõÖ Ü
,õõÜ á
CreationDateõõá ì
=õõî ï
ConstantSeederõõñ §
.õõ§ •%
DEFAULT_SEED_DATETIMEõõ• ∫
,õõ∫ ª"
QuantityLowWarningõõª Õ
=õõŒ œ
$numõõ– —
,õõ— “
StockTypeIdõõ” ﬁ
=õõﬂ ‡
Domainõõ· Á
.õõÁ Ë
EntitiesõõË 
.õõ Ò
EnumsõõÒ ˆ
.õõˆ ˜
	StockTypeõõ˜ Ä
.õõÄ Å
HygieneõõÅ à
.õõà â
GetDescriptionõõâ ó
(õõó ò
)õõò ô
}õõô ö
,õõö õ
new
úú 
Stock
úú 
(
úú 
)
úú 
{
úú 
Id
úú 
=
úú  !
Guid
úú" &
.
úú& '
Parse
úú' ,
(
úú, -
$str
úú- S
)
úúS T
,
úúT U
Name
úúV Z
=
úú[ \
$str
úú] p
,
úúp q
Description
úúq |
=
úú} ~
$strúú Å
,úúÅ Ç
QuantityúúÇ ä
=úúã å
$numúúç é
,úúé è
CreationDateúúè õ
=úúú ù
ConstantSeederúúû ¨
.úú¨ ≠%
DEFAULT_SEED_DATETIMEúú≠ ¬
,úú¬ √"
QuantityLowWarningúú√ ’
=úú÷ ◊
$numúúÿ Ÿ
,úúŸ ⁄
StockTypeIdúú€ Ê
=úúÁ Ë
DomainúúÈ Ô
.úúÔ 
Entitiesúú ¯
.úú¯ ˘
Enumsúú˘ ˛
.úú˛ ˇ
	StockTypeúúˇ à
.úúà â
Hygieneúúâ ê
.úúê ë
GetDescriptionúúë ü
(úúü †
)úú† °
}úú° ¢
,úú¢ £
new
ùù 
Stock
ùù 
(
ùù 
)
ùù 
{
ùù 
Id
ùù 
=
ùù  !
Guid
ùù" &
.
ùù& '
Parse
ùù' ,
(
ùù, -
$str
ùù- S
)
ùùS T
,
ùùT U
Name
ùùV Z
=
ùù[ \
$str
ùù] d
,
ùùd e
Description
ùùe p
=
ùùq r
$str
ùùs u
,
ùùu v
Quantity
ùùv ~
=ùù Ä
$numùùÅ Ç
,ùùÇ É
CreationDateùùÉ è
=ùùê ë
ConstantSeederùùí †
.ùù† °%
DEFAULT_SEED_DATETIMEùù° ∂
,ùù∂ ∑"
QuantityLowWarningùù∑ …
=ùù  À
$numùùÃ Õ
,ùùÕ Œ
StockTypeIdùùœ ⁄
=ùù€ ‹
Domainùù› „
.ùù„ ‰
Entitiesùù‰ Ï
.ùùÏ Ì
EnumsùùÌ Ú
.ùùÚ Û
	StockTypeùùÛ ¸
.ùù¸ ˝
Hygieneùù˝ Ñ
.ùùÑ Ö
GetDescriptionùùÖ ì
(ùùì î
)ùùî ï
}ùùï ñ
,ùùñ ó
new
ûû 
Stock
ûû 
(
ûû 
)
ûû 
{
ûû 
Id
ûû 
=
ûû  !
Guid
ûû" &
.
ûû& '
Parse
ûû' ,
(
ûû, -
$str
ûû- S
)
ûûS T
,
ûûT U
Name
ûûV Z
=
ûû[ \
$str
ûû] g
,
ûûg h
Description
ûûh s
=
ûût u
$str
ûûv x
,
ûûx y
Quantityûûy Å
=ûûÇ É
$numûûÑ Ö
,ûûÖ Ü
CreationDateûûÜ í
=ûûì î
ConstantSeederûûï £
.ûû£ §%
DEFAULT_SEED_DATETIMEûû§ π
,ûûπ ∫"
QuantityLowWarningûû∫ Ã
=ûûÕ Œ
$numûûœ –
,ûû– —
StockTypeIdûû“ ›
=ûûﬁ ﬂ
Domainûû‡ Ê
.ûûÊ Á
EntitiesûûÁ Ô
.ûûÔ 
Enumsûû ı
.ûûı ˆ
	StockTypeûûˆ ˇ
.ûûˇ Ä
HygieneûûÄ á
.ûûá à
GetDescriptionûûà ñ
(ûûñ ó
)ûûó ò
}ûûò ô
,ûûô ö
new
üü 
Stock
üü 
(
üü 
)
üü 
{
üü 
Id
üü 
=
üü  !
Guid
üü" &
.
üü& '
Parse
üü' ,
(
üü, -
$str
üü- S
)
üüS T
,
üüT U
Name
üüV Z
=
üü[ \
$str
üü] h
,
üüh i
Description
üüi t
=
üüu v
$str
üüw y
,
üüy z
Quantityüüz Ç
=üüÉ Ñ
$numüüÖ Ü
,üüÜ á
CreationDateüüá ì
=üüî ï
ConstantSeederüüñ §
.üü§ •%
DEFAULT_SEED_DATETIMEüü• ∫
,üü∫ ª"
QuantityLowWarningüüª Õ
=üüŒ œ
$numüü– —
,üü— “
StockTypeIdüü” ﬁ
=üüﬂ ‡
Domainüü· Á
.üüÁ Ë
EntitiesüüË 
.üü Ò
EnumsüüÒ ˆ
.üüˆ ˜
	StockTypeüü˜ Ä
.üüÄ Å
HygieneüüÅ à
.üüà â
GetDescriptionüüâ ó
(üüó ò
)üüò ô
}üüô ö
,üüö õ
new
†† 
Stock
†† 
(
†† 
)
†† 
{
†† 
Id
†† 
=
††  !
Guid
††" &
.
††& '
Parse
††' ,
(
††, -
$str
††- S
)
††S T
,
††T U
Name
††V Z
=
††[ \
$str
††] l
,
††l m
Description
††m x
=
††y z
$str
††{ }
,
††} ~
Quantity††~ Ü
=††á à
$num††â ä
,††ä ã
CreationDate††ã ó
=††ò ô
ConstantSeeder††ö ®
.††® ©%
DEFAULT_SEED_DATETIME††© æ
,††æ ø"
QuantityLowWarning††ø —
=††“ ”
$num††‘ ’
,††’ ÷
StockTypeId††◊ ‚
=††„ ‰
Domain††Â Î
.††Î Ï
Entities††Ï Ù
.††Ù ı
Enums††ı ˙
.††˙ ˚
	StockType††˚ Ñ
.††Ñ Ö
Food††Ö â
.††â ä
GetDescription††ä ò
(††ò ô
)††ô ö
}††ö õ
,††õ ú
}
°° 
;
°° 
}
¢¢ 
}££ †
[E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Constants\ConstantSeederRole.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
	Constants  )
{ 
internal 
static 
class 
ConstantSeederRole ,
{		 
internal

 
static

 
List

 
<

 
(

 
int

 !
Index

" '
,

' (
Guid

) -
Id

. 0
,

0 1
string

2 8
Name

9 =
,

= >
UserType

? G
Type

H L
)

L M
>

M N
Roles

O T
=>

U W
new 
( 
) 
{ 
new 
( 
$num 
, 
Guid 
. 
Parse !
(! "
$str" H
)H I
,I J
UserTypeK S
.S T
MasterT Z
.Z [
GetDescription[ i
(i j
)j k
,k l
UserTypem u
.u v
Masterv |
)| }
,} ~
new 
( 
$num 
, 
Guid 
. 
Parse !
(! "
$str" H
)H I
,I J
UserTypeK S
.S T
ManagerT [
.[ \
GetDescription\ j
(j k
)k l
,l m
UserTypen v
.v w
Managerw ~
)~ 
,	 Ä
new 
( 
$num 
, 
Guid 
. 
Parse !
(! "
$str" H
)H I
,I J
UserTypeK S
.S T
EmployeeT \
.\ ]
GetDescription] k
(k l
)l m
,m n
UserTypeo w
.w x
Employee	x Ä
)
Ä Å
,
Å Ç
} 
; 
} 
} ‹
WE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Constants\ConstantSeeder.cs
	namespace 	

AslaveCare
 
. 
Infra 
. 
Data 
.  
	Constants  )
{ 
internal 
static 
class 
ConstantSeeder (
{ 
internal 
static 
readonly  
DateTime! )!
DEFAULT_SEED_DATETIME* ?
=@ A
newB E
DateTimeF N
(N O
$numO S
,S T
$numU W
,W X
$numY Z
,Z [
$num\ ]
,] ^
$num_ `
,` a
$numb c
,c d
DateTimeKinde q
.q r
Utcr u
)u v
;v w
} 
}		 