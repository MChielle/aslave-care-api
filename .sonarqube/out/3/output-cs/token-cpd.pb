�
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
} �V
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
default	\\| �
)
\\� �
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
}hh �
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
}%% �G
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
cancellation	++u �
=
++� �
default
++� �
)
++� �
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
}WW �
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
}"" �T
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
default	~ �
)
� �
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
}`` �
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
}%% �B
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
IRegisterOutStockRepository	l �
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
cancellationToken	w �
=
� �
default
� �
)
� �
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
cancellationToken	{ �
=
� �
default
� �
)
� �
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
cancellationToken	''s �
=
''� �
default
''� �
)
''� �
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
CancellationToken	00} �
cancellation
00� �
)
00� �
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
}OO �M
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
}bb �F
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
IRegisterInStockRepository	j �
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
cancellationToken	u �
=
� �
default
� �
)
� �
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
cancellationToken	y �
=
� �
default
� �
)
� �
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
cancellationToken	''r �
=
''� �
default
''� �
)
''� �
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
CancellationToken	==s �
cancellation
==� �
)
==� �
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
}QQ �c
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
}tt �(
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
}== �*
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
}== ��
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
CancellationToken	yyv �
cancellationToken
yy� �
=
yy� �
default
yy� �
)
yy� �
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
�� 
(
�� 
var
�� 
property
�� !
in
��" $
_context
��% -
.
��- .
Model
��. 3
.
��3 4
FindEntityType
��4 B
(
��B C
typeof
��C I
(
��I J
TEntity
��J Q
)
��Q R
)
��R S
.
��S T
GetNavigations
��T b
(
��b c
)
��c d
)
��d e
query
�� 
=
�� 
query
�� 
.
�� 
Include
�� %
(
��% &
property
��& .
.
��. /
Name
��/ 3
)
��3 4
;
��4 5
var
�� 
retorno
�� 
=
�� 
await
�� 
query
��  %
.
��% &
AsNoTracking
��& 2
(
��2 3
)
��3 4
.
��4 5
ToListAsync
��5 @
(
��@ A
cancellationToken
��A R
)
��R S
;
��S T
return
�� 
retorno
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
async
�� 
Task
�� !
<
��! "
IEnumerable
��" -
<
��- .
TEntity
��. 5
>
��5 6
>
��6 7
GetAllPagedAsync
��8 H
(
��H I
int
��I L
?
��L M
page
��N R
=
��S T
null
��U Y
,
��Y Z
int
��[ ^
?
��^ _
pageSize
��` h
=
��i j
null
��k o
,
��o p 
CancellationToken��q �!
cancellationToken��� �
=��� �
default��� �
)��� �
{
�� 	
var
�� 
query
�� 
=
�� 
_context
��  
.
��  !
Set
��! $
<
��$ %
TEntity
��% ,
>
��, -
(
��- .
)
��. /
.
��/ 0
AsQueryable
��0 ;
(
��; <
)
��< =
;
��= >
if
�� 
(
�� 
page
�� 
.
�� 
HasValue
�� 
&&
��  
pageSize
��! )
.
��) *
HasValue
��* 2
)
��2 3
query
�� 
=
�� 
query
�� 
.
�� 
Skip
�� "
(
��" #
page
��# '
.
��' (
Value
��( -
*
��. /
pageSize
��0 8
.
��8 9
Value
��9 >
)
��> ?
.
�� 
Take
�� "
(
��" #
pageSize
��# +
.
��+ ,
Value
��, 1
)
��1 2
;
��2 3
return
�� 
await
�� 
query
�� 
.
�� 
AsNoTracking
�� +
(
��+ ,
)
��, -
.
�� 
ToListAsync
�� *
(
��* +
cancellationToken
��+ <
)
��< =
;
��= >
}
�� 	
public
�� 

IQueryable
�� 
<
�� 
TEntity
�� !
>
��! "
InsertAllIncludes
��# 4
(
��4 5

IQueryable
��5 ?
<
��? @
TEntity
��@ G
>
��G H
query
��I N
)
��N O
{
�� 	
foreach
�� 
(
�� 
var
�� 
property
�� !
in
��" $
_context
��% -
.
��- .
Model
��. 3
.
��3 4
FindEntityType
��4 B
(
��B C
typeof
��C I
(
��I J
TEntity
��J Q
)
��Q R
)
��R S
.
��S T
GetNavigations
��T b
(
��b c
)
��c d
)
��d e
query
�� 
=
�� 
query
�� 
.
�� 
Include
�� %
(
��% &
property
��& .
.
��. /
Name
��/ 3
)
��3 4
;
��4 5
return
�� 
query
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
async
�� 
Task
�� !
<
��! "
TEntity
��" )
>
��) *
GetByIdAsync
��+ 7
(
��7 8
TKey
��8 <
id
��= ?
,
��? @
CancellationToken
��A R
cancellationToken
��S d
=
��e f
default
��g n
)
��n o
{
�� 	
var
�� 
entity
�� 
=
�� 
await
�� 
_context
�� '
.
��' (
Set
��( +
<
��+ ,
TEntity
��, 3
>
��3 4
(
��4 5
)
��5 6
.
��6 7
	FindAsync
��7 @
(
��@ A
new
��A D
object
��E K
[
��K L
]
��L M
{
��N O
id
��P R
}
��S T
,
��T U
cancellationToken
��V g
)
��g h
;
��h i
return
�� 
entity
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
void
�� 
Delete
�� "
(
��" #
TEntity
��# *
entity
��+ 1
)
��1 2
{
�� 	
if
�� 
(
�� 
entity
�� 
is
�� "
IPhysicallyDeletable
�� .
)
��. /
_context
�� 
.
�� 
Set
�� 
<
�� 
TEntity
�� $
>
��$ %
(
��% &
)
��& '
.
��' (
Remove
��( .
(
��. /
entity
��/ 5
)
��5 6
;
��6 7
else
�� 
{
�� 
entity
�� 
=
�� 
_context
�� !
.
��! "
Set
��" %
<
��% &
TEntity
��& -
>
��- .
(
��. /
)
��/ 0
.
��0 1
Where
��1 6
(
��6 7
x
��7 8
=>
��9 ;
x
��< =
.
��= >
Id
��> @
.
��@ A
Equals
��A G
(
��G H
entity
��H N
.
��N O
Id
��O Q
)
��Q R
)
��R S
.
��S T
FirstOrDefault
��T b
(
��b c
)
��c d
;
��d e
if
�� 
(
�� 
entity
�� 
==
�� 
null
�� "
)
��" #
return
��$ *
;
��* +
entity
�� 
.
�� 
DeletionDate
�� #
=
��$ %
DateTime
��& .
.
��. /
UtcNow
��/ 5
;
��5 6
_context
�� 
.
�� 
Set
�� 
<
�� 
TEntity
�� $
>
��$ %
(
��% &
)
��& '
.
��' (
Update
��( .
(
��. /
entity
��/ 5
)
��5 6
;
��6 7
}
�� 
_context
�� 
.
�� 
SaveChanges
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
virtual
�� 
void
�� 
Delete
�� "
(
��" #
IEnumerable
��# .
<
��. /
TEntity
��/ 6
>
��6 7
entities
��8 @
)
��@ A
{
�� 	
var
�� 
trackedEntities
�� 
=
��  !
new
��" %
List
��& *
<
��* +
TEntity
��+ 2
>
��2 3
(
��3 4
)
��4 5
;
��5 6
if
�� 
(
�� 
entities
�� 
.
�� 
FirstOrDefault
�� '
(
��' (
)
��( )
is
��* ,"
IPhysicallyDeletable
��- A
)
��A B
_context
�� 
.
�� 
Set
�� 
<
�� 
TEntity
�� $
>
��$ %
(
��% &
)
��& '
.
��' (
RemoveRange
��( 3
(
��3 4
entities
��4 <
)
��< =
;
��= >
else
�� 
{
�� 
entities
�� 
.
�� 
ToList
�� 
(
��  
)
��  !
.
��! "
ForEach
��" )
(
��) *
e
��* +
=>
��, .
{
�� 
var
�� 
entity
�� 
=
��  
_context
��! )
.
��) *
Set
��* -
<
��- .
TEntity
��. 5
>
��5 6
(
��6 7
)
��7 8
.
��8 9
Where
��9 >
(
��> ?
x
��? @
=>
��A C
x
��D E
.
��E F
Id
��F H
.
��H I
Equals
��I O
(
��O P
e
��P Q
.
��Q R
Id
��R T
)
��T U
)
��U V
.
��V W
FirstOrDefault
��W e
(
��e f
)
��f g
;
��g h
if
�� 
(
�� 
entity
�� 
==
�� !
null
��" &
)
��& '
return
��( .
;
��. /
entity
�� 
.
�� 
DeletionDate
�� '
=
��( )
DateTime
��* 2
.
��2 3
UtcNow
��3 9
;
��9 :
trackedEntities
�� #
.
��# $
Add
��$ '
(
��' (
entity
��( .
)
��. /
;
��/ 0
}
�� 
)
�� 
;
�� 
if
�� 
(
�� 
!
�� 
trackedEntities
�� $
.
��$ %
Any
��% (
(
��( )
)
��) *
)
��* +
_context
��, 4
.
��4 5
Set
��5 8
<
��8 9
TEntity
��9 @
>
��@ A
(
��A B
)
��B C
.
��C D
UpdateRange
��D O
(
��O P
trackedEntities
��P _
)
��_ `
;
��` a
}
�� 
_context
�� 
.
�� 
SaveChanges
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
virtual
�� 
void
�� 
Delete
�� "
(
��" #
TKey
��# '
id
��( *
)
��* +
{
�� 	
var
�� 
entity
�� 
=
�� 
_context
�� !
.
��! "
Set
��" %
<
��% &
TEntity
��& -
>
��- .
(
��. /
)
��/ 0
.
��0 1
Where
��1 6
(
��6 7
x
��7 8
=>
��9 ;
x
��< =
.
��= >
Id
��> @
.
��@ A
Equals
��A G
(
��G H
id
��H J
)
��J K
)
��K L
.
��L M
FirstOrDefault
��M [
(
��[ \
)
��\ ]
;
��] ^
if
�� 
(
�� 
entity
�� 
==
�� 
null
�� 
)
�� 
return
��  &
;
��& '
entity
�� 
.
�� 
DeletionDate
�� 
=
��  !
DateTime
��" *
.
��* +
UtcNow
��+ 1
;
��1 2
if
�� 
(
�� 
entity
�� 
is
�� "
IPhysicallyDeletable
�� .
)
��. /
_context
�� 
.
�� 
Set
�� 
<
�� 
TEntity
�� $
>
��$ %
(
��% &
)
��& '
.
��' (
Remove
��( .
(
��. /
entity
��/ 5
)
��5 6
;
��6 7
else
�� 
_context
�� 
.
�� 
Set
�� 
<
�� 
TEntity
�� $
>
��$ %
(
��% &
)
��& '
.
��' (
Update
��( .
(
��. /
entity
��/ 5
)
��5 6
;
��6 7
_context
�� 
.
�� 
SaveChanges
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
virtual
�� 
void
�� 
Delete
�� "
(
��" #
IEnumerable
��# .
<
��. /
TKey
��/ 3
>
��3 4
ids
��5 8
)
��8 9
{
�� 	
var
�� 
trackedEntities
�� 
=
��  !
new
��" %
List
��& *
<
��* +
TEntity
��+ 2
>
��2 3
(
��3 4
)
��4 5
;
��5 6
ids
�� 
.
�� 
ToList
�� 
(
�� 
)
�� 
.
�� 
ForEach
��  
(
��  !
id
��! #
=>
��$ &
{
�� 
var
�� 
entity
�� 
=
�� 
_context
�� %
.
��% &
Set
��& )
<
��) *
TEntity
��* 1
>
��1 2
(
��2 3
)
��3 4
.
��4 5
Where
��5 :
(
��: ;
x
��; <
=>
��= ?
x
��@ A
.
��A B
Id
��B D
.
��D E
Equals
��E K
(
��K L
id
��L N
)
��N O
)
��O P
.
��P Q
FirstOrDefault
��Q _
(
��_ `
)
��` a
;
��a b
if
�� 
(
�� 
entity
�� 
==
�� 
null
�� "
)
��" #
return
��$ *
;
��* +
entity
�� 
.
�� 
DeletionDate
�� #
=
��$ %
DateTime
��& .
.
��. /
UtcNow
��/ 5
;
��5 6
trackedEntities
�� 
.
��  
Add
��  #
(
��# $
entity
��$ *
)
��* +
;
��+ ,
}
�� 
)
�� 
;
�� 
if
�� 
(
�� 
!
�� 
trackedEntities
��  
.
��  !
Any
��! $
(
��$ %
)
��% &
)
��& '
return
��( .
;
��. /
if
�� 
(
�� 
trackedEntities
�� 
.
��  
FirstOrDefault
��  .
(
��. /
)
��/ 0
is
��1 3"
IPhysicallyDeletable
��4 H
)
��H I
_context
�� 
.
�� 
Set
�� 
<
�� 
TEntity
�� $
>
��$ %
(
��% &
)
��& '
.
��' (
RemoveRange
��( 3
(
��3 4
trackedEntities
��4 C
)
��C D
;
��D E
else
�� 
_context
�� 
.
�� 
Set
�� 
<
�� 
TEntity
�� $
>
��$ %
(
��% &
)
��& '
.
��' (
UpdateRange
��( 3
(
��3 4
trackedEntities
��4 C
)
��C D
;
��D E
_context
�� 
.
�� 
SaveChanges
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 
HasAny
��  
(
��  !
TKey
��! %
id
��& (
)
��( )
{
�� 	
return
�� 
_context
�� 
.
�� 
Set
�� 
<
�� 
TEntity
�� 
>
�� 
(
�� 
)
�� 
.
�� 
AnyAsync
�� 
(
�� 
x
�� 
=>
�� 
x
��  
.
��  !
Id
��! #
.
��# $
Equals
��$ *
(
��* +
id
��+ -
)
��- .
)
��. /
;
��/ 0
}
�� 	
public
�� 
virtual
�� 
void
�� 
Dispose
�� #
(
��# $
)
��$ %
{
�� 	
Task
�� 
.
�� 
Run
�� 
(
�� 
async
�� 
(
�� 
)
�� 
=>
��  
{
�� 
await
�� 
_context
�� 
.
�� 
DisposeAsync
�� +
(
��+ ,
)
��, -
;
��- .
GC
�� 
.
�� 
SuppressFinalize
�� #
(
��# $
this
��$ (
)
��( )
;
��) *
}
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
abstract
�� 
Task
�� 
<
�� 
TEntity
�� $
>
��$ %"
GetCompleteByIdAsync
��& :
(
��: ;
TKey
��; ?
id
��@ B
,
��B C
CancellationToken
��D U
cancellationToken
��V g
=
��h i
default
��j q
)
��q r
;
��r s
}
�� 
}�� �.
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

TStrongKey	y �
,
� �
TWeakKey
� �
>
� �
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
oldEntities	00~ �
)
00� �
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
cancellationToken	;;o �
=
;;� �
default
;;� �
)
;;� �
;
;;� �
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
default	==~ �
)
==� �
;
==� �
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
default	??z �
)
??� �
;
??� �
}@@ 
}AA �-
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
}RR �
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
$str	{ �
,
� �
$str
� �
,
� �
$str
� �
}
� �
,
� �
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
,	 �
null
� �
,
� �
$str
� �
,
� �
false
� �
,
� �
null
� �
,
� �
$str
� �
,
� �
$num
� �
,
� �
$num
� �
,
� �
$str
� �
}
� �
,
� �
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
,	 �
null
� �
,
� �
$str
� �
,
� �
false
� �
,
� �
null
� �
,
� �
$str
� �
,
� �
$num
� �
,
� �
$num
� �
,
� �
$str
� �
}
� �
,
� �
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
,	 �
null
� �
,
� �
$str
� �
,
� �
false
� �
,
� �
null
� �
,
� �
$str
� �
,
� �
$num
� �
,
� �
$num
� �
,
� �
$str
� �
}
� �
,
� �
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
,	 �
null
� �
,
� �
$str
� �
,
� �
false
� �
,
� �
null
� �
,
� �
$str
� �
,
� �
$num
� �
,
� �
$num
� �
,
� �
$str
� �
}
� �
,
� �
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
,	 �
null
� �
,
� �
$str
� �
,
� �
false
� �
,
� �
null
� �
,
� �
$str
� �
,
� �
$num
� �
,
� �
$num
� �
,
� �
$str
� �
}
� �
,
� �
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
,	 �
null
� �
,
� �
$str
� �
,
� �
false
� �
,
� �
null
� �
,
� �
$str
� �
,
� �
$num
� �
,
� �
$num
� �
,
� �
$str
� �
}
� �
,
� �
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
,	 �
null
� �
,
� �
$str
� �
,
� �
false
� �
,
� �
null
� �
,
� �
$str
� �
,
� �
$num
� �
,
� �
$num
� �
,
� �
$str
� �
}
� �
,
� �
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
,	 �
null
� �
,
� �
$str
� �
,
� �
false
� �
,
� �
null
� �
,
� �
$str
� �
,
� �
$num
� �
,
� �
$num
� �
,
� �
$str
� �
}
� �
,
� �
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
,	 �
null
� �
,
� �
$str
� �
,
� �
false
� �
,
� �
null
� �
,
� �
$str
� �
,
� �
$num
� �
,
� �
$num
� �
,
� �
$str
� �
}
� �
,
� �
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
,	 �
null
� �
,
� �
$str
� �
,
� �
false
� �
,
� �
null
� �
,
� �
$str
� �
,
� �
$num
� �
,
� �
$num
� �
,
� �
$str
� �
}
� �
,
� �
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
,	 �
null
� �
,
� �
$str
� �
,
� �
false
� �
,
� �
null
� �
,
� �
$str
� �
,
� �
$num
� �
,
� �
$num
� �
,
� �
$str
� �
}
� �
,
� �
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
,	   �
null
  � �
,
  � �
$str
  � �
,
  � �
false
  � �
,
  � �
null
  � �
,
  � �
$str
  � �
,
  � �
$num
  � �
,
  � �
$num
  � �
,
  � �
$str
  � �
}
  � �
,
  � �
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
,	!! �
null
!!� �
,
!!� �
$str
!!� �
,
!!� �
false
!!� �
,
!!� �
null
!!� �
,
!!� �
$str
!!� �
,
!!� �
$num
!!� �
,
!!� �
$num
!!� �
,
!!� �
$str
!!� �
}
!!� �
,
!!� �
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
,	"" �
null
""� �
,
""� �
$str
""� �
,
""� �
false
""� �
,
""� �
null
""� �
,
""� �
$str
""� �
,
""� �
$num
""� �
,
""� �
$num
""� �
,
""� �
$str
""� �
}
""� �
,
""� �
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
,	## �
null
##� �
,
##� �
$str
##� �
,
##� �
false
##� �
,
##� �
null
##� �
,
##� �
$str
##� �
,
##� �
$num
##� �
,
##� �
$num
##� �
,
##� �
$str
##� �
}
##� �
,
##� �
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
,	$$ �
null
$$� �
,
$$� �
$str
$$� �
,
$$� �
false
$$� �
,
$$� �
null
$$� �
,
$$� �
$str
$$� �
,
$$� �
$num
$$� �
,
$$� �
$num
$$� �
,
$$� �
$str
$$� �
}
$$� �
,
$$� �
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
,	%% �
null
%%� �
,
%%� �
$str
%%� �
,
%%� �
false
%%� �
,
%%� �
null
%%� �
,
%%� �
$str
%%� �
,
%%� �
$num
%%� �
,
%%� �
$num
%%� �
,
%%� �
$str
%%� �
}
%%� �
,
%%� �
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
,	&& �
null
&&� �
,
&&� �
$str
&&� �
,
&&� �
false
&&� �
,
&&� �
null
&&� �
,
&&� �
$str
&&� �
,
&&� �
$num
&&� �
,
&&� �
$num
&&� �
,
&&� �
$str
&&� �
}
&&� �
,
&&� �
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
,	'' �
null
''� �
,
''� �
$str
''� �
,
''� �
false
''� �
,
''� �
null
''� �
,
''� �
$str
''� �
,
''� �
$num
''� �
,
''� �
$num
''� �
,
''� �
$str
''� �
}
''� �
,
''� �
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
,	(( �
null
((� �
,
((� �
$str
((� �
,
((� �
false
((� �
,
((� �
null
((� �
,
((� �
$str
((� �
,
((� �
$num
((� �
,
((� �
$num
((� �
,
((� �
$str
((� �
}
((� �
,
((� �
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
,	)) �
null
))� �
,
))� �
$str
))� �
,
))� �
false
))� �
,
))� �
null
))� �
,
))� �
$str
))� �
,
))� �
$num
))� �
,
))� �
$num
))� �
,
))� �
$str
))� �
}
))� �
,
))� �
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
,	** �
null
**� �
,
**� �
$str
**� �
,
**� �
false
**� �
,
**� �
null
**� �
,
**� �
$str
**� �
,
**� �
$num
**� �
,
**� �
$num
**� �
,
**� �
$str
**� �
}
**� �
,
**� �
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
,	++ �
null
++� �
,
++� �
$str
++� �
,
++� �
false
++� �
,
++� �
null
++� �
,
++� �
$str
++� �
,
++� �
$num
++� �
,
++� �
$num
++� �
,
++� �
$str
++� �
}
++� �
,
++� �
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
,	,, �
null
,,� �
,
,,� �
$str
,,� �
,
,,� �
false
,,� �
,
,,� �
null
,,� �
,
,,� �
$str
,,� �
,
,,� �
$num
,,� �
,
,,� �
$num
,,� �
,
,,� �
$str
,,� �
}
,,� �
,
,,� �
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
,	-- �
null
--� �
,
--� �
$str
--� �
,
--� �
false
--� �
,
--� �
null
--� �
,
--� �
$str
--� �
,
--� �
$num
--� �
,
--� �
$num
--� �
,
--� �
$str
--� �
}
--� �
,
--� �
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
,	.. �
null
..� �
,
..� �
$str
..� �
,
..� �
false
..� �
,
..� �
null
..� �
,
..� �
$str
..� �
,
..� �
$num
..� �
,
..� �
$num
..� �
,
..� �
$str
..� �
}
..� �
,
..� �
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
,	// �
null
//� �
,
//� �
$str
//� �
,
//� �
false
//� �
,
//� �
null
//� �
,
//� �
$str
//� �
,
//� �
$num
//� �
,
//� �
$num
//� �
,
//� �
$str
//� �
}
//� �
,
//� �
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
,	00 �
null
00� �
,
00� �
$str
00� �
,
00� �
false
00� �
,
00� �
null
00� �
,
00� �
$str
00� �
,
00� �
$num
00� �
,
00� �
$num
00� �
,
00� �
$str
00� �
}
00� �
,
00� �
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
,	11 �
null
11� �
,
11� �
$str
11� �
,
11� �
false
11� �
,
11� �
null
11� �
,
11� �
$str
11� �
,
11� �
$num
11� �
,
11� �
$num
11� �
,
11� �
$str
11� �
}
11� �
,
11� �
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
,	22 �
null
22� �
,
22� �
$str
22� �
,
22� �
false
22� �
,
22� �
null
22� �
,
22� �
$str
22� �
,
22� �
$num
22� �
,
22� �
$num
22� �
,
22� �
$str
22� �
}
22� �
,
22� �
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
,	33 �
null
33� �
,
33� �
$str
33� �
,
33� �
false
33� �
,
33� �
null
33� �
,
33� �
$str
33� �
,
33� �
$num
33� �
,
33� �
$num
33� �
,
33� �
$str
33� �
}
33� �
,
33� �
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
,	44 �
null
44� �
,
44� �
$str
44� �
,
44� �
false
44� �
,
44� �
null
44� �
,
44� �
$str
44� �
,
44� �
$num
44� �
,
44� �
$num
44� �
,
44� �
$str
44� �
}
44� �
,
44� �
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
,	55 �
null
55� �
,
55� �
$str
55� �
,
55� �
false
55� �
,
55� �
null
55� �
,
55� �
$str
55� �
,
55� �
$num
55� �
,
55� �
$num
55� �
,
55� �
$str
55� �
}
55� �
,
55� �
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
,	66 �
null
66� �
,
66� �
$str
66� �
,
66� �
false
66� �
,
66� �
null
66� �
,
66� �
$str
66� �
,
66� �
$num
66� �
,
66� �
$num
66� �
,
66� �
$str
66� �
}
66� �
,
66� �
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
,	77 �
null
77� �
,
77� �
$str
77� �
,
77� �
false
77� �
,
77� �
null
77� �
,
77� �
$str
77� �
,
77� �
$num
77� �
,
77� �
$num
77� �
,
77� �
$str
77� �
}
77� �
,
77� �
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
,	88 �
null
88� �
,
88� �
$str
88� �
,
88� �
false
88� �
,
88� �
null
88� �
,
88� �
$str
88� �
,
88� �
$num
88� �
,
88� �
$num
88� �
,
88� �
$str
88� �
}
88� �
,
88� �
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
,	99 �
null
99� �
,
99� �
$str
99� �
,
99� �
false
99� �
,
99� �
null
99� �
,
99� �
$str
99� �
,
99� �
$num
99� �
,
99� �
$num
99� �
,
99� �
$str
99� �
}
99� �
,
99� �
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
,	:: �
null
::� �
,
::� �
$str
::� �
,
::� �
false
::� �
,
::� �
null
::� �
,
::� �
$str
::� �
,
::� �
$num
::� �
,
::� �
$num
::� �
,
::� �
$str
::� �
}
::� �
,
::� �
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
,	;; �
null
;;� �
,
;;� �
$str
;;� �
,
;;� �
false
;;� �
,
;;� �
null
;;� �
,
;;� �
$str
;;� �
,
;;� �
$num
;;� �
,
;;� �
$num
;;� �
,
;;� �
$str
;;� �
}
;;� �
,
;;� �
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
,	<< �
null
<<� �
,
<<� �
$str
<<� �
,
<<� �
false
<<� �
,
<<� �
null
<<� �
,
<<� �
$str
<<� �
,
<<� �
$num
<<� �
,
<<� �
$num
<<� �
,
<<� �
$str
<<� �
}
<<� �
,
<<� �
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
,	== �
null
==� �
,
==� �
$str
==� �
,
==� �
false
==� �
,
==� �
null
==� �
,
==� �
$str
==� �
,
==� �
$num
==� �
,
==� �
$num
==� �
,
==� �
$str
==� �
}
==� �
,
==� �
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
,	>> �
null
>>� �
,
>>� �
$str
>>� �
,
>>� �
false
>>� �
,
>>� �
null
>>� �
,
>>� �
$str
>>� �
,
>>� �
$num
>>� �
,
>>� �
$num
>>� �
,
>>� �
$str
>>� �
}
>>� �
,
>>� �
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
,	?? �
null
??� �
,
??� �
$str
??� �
,
??� �
false
??� �
,
??� �
null
??� �
,
??� �
$str
??� �
,
??� �
$num
??� �
,
??� �
$num
??� �
,
??� �
$str
??� �
}
??� �
,
??� �
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
,	@@ �
null
@@� �
,
@@� �
$str
@@� �
,
@@� �
false
@@� �
,
@@� �
null
@@� �
,
@@� �
$str
@@� �
,
@@� �
$num
@@� �
,
@@� �
$num
@@� �
,
@@� �
$str
@@� �
}
@@� �
,
@@� �
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
,	AA �
null
AA� �
,
AA� �
$str
AA� �
,
AA� �
false
AA� �
,
AA� �
null
AA� �
,
AA� �
$str
AA� �
,
AA� �
$num
AA� �
,
AA� �
$num
AA� �
,
AA� �
$str
AA� �
}
AA� �
,
AA� �
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
,	BB �
null
BB� �
,
BB� �
$str
BB� �
,
BB� �
false
BB� �
,
BB� �
null
BB� �
,
BB� �
$str
BB� �
,
BB� �
$num
BB� �
,
BB� �
$num
BB� �
,
BB� �
$str
BB� �
}
BB� �
,
BB� �
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
,	CC �
null
CC� �
,
CC� �
$str
CC� �
,
CC� �
false
CC� �
,
CC� �
null
CC� �
,
CC� �
$str
CC� �
,
CC� �
$num
CC� �
,
CC� �
$num
CC� �
,
CC� �
$str
CC� �
}
CC� �
,
CC� �
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
,	DD �
null
DD� �
,
DD� �
$str
DD� �
,
DD� �
false
DD� �
,
DD� �
null
DD� �
,
DD� �
$str
DD� �
,
DD� �
$num
DD� �
,
DD� �
$num
DD� �
,
DD� �
$str
DD� �
}
DD� �
,
DD� �
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
,	EE �
null
EE� �
,
EE� �
$str
EE� �
,
EE� �
false
EE� �
,
EE� �
null
EE� �
,
EE� �
$str
EE� �
,
EE� �
$num
EE� �
,
EE� �
$num
EE� �
,
EE� �
$str
EE� �
}
EE� �
,
EE� �
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
,	FF �
null
FF� �
,
FF� �
$str
FF� �
,
FF� �
false
FF� �
,
FF� �
null
FF� �
,
FF� �
$str
FF� �
,
FF� �
$num
FF� �
,
FF� �
$num
FF� �
,
FF� �
$str
FF� �
}
FF� �
,
FF� �
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
,	GG �
null
GG� �
,
GG� �
$str
GG� �
,
GG� �
false
GG� �
,
GG� �
null
GG� �
,
GG� �
$str
GG� �
,
GG� �
$num
GG� �
,
GG� �
$num
GG� �
,
GG� �
$str
GG� �
}
GG� �
,
GG� �
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
,	HH �
null
HH� �
,
HH� �
$str
HH� �
,
HH� �
false
HH� �
,
HH� �
null
HH� �
,
HH� �
$str
HH� �
,
HH� �
$num
HH� �
,
HH� �
$num
HH� �
,
HH� �
$str
HH� �
}
HH� �
,
HH� �
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
,	II �
null
II� �
,
II� �
$str
II� �
,
II� �
false
II� �
,
II� �
null
II� �
,
II� �
$str
II� �
,
II� �
$num
II� �
,
II� �
$num
II� �
,
II� �
$str
II� �
}
II� �
,
II� �
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
,	JJ �
null
JJ� �
,
JJ� �
$str
JJ� �
,
JJ� �
false
JJ� �
,
JJ� �
null
JJ� �
,
JJ� �
$str
JJ� �
,
JJ� �
$num
JJ� �
,
JJ� �
$num
JJ� �
,
JJ� �
$str
JJ� �
}
JJ� �
,
JJ� �
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
,	KK �
null
KK� �
,
KK� �
$str
KK� �
,
KK� �
false
KK� �
,
KK� �
null
KK� �
,
KK� �
$str
KK� �
,
KK� �
$num
KK� �
,
KK� �
$num
KK� �
,
KK� �
$str
KK� �
}
KK� �
,
KK� �
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
,	LL �
null
LL� �
,
LL� �
$str
LL� �
,
LL� �
false
LL� �
,
LL� �
null
LL� �
,
LL� �
$str
LL� �
,
LL� �
$num
LL� �
,
LL� �
$num
LL� �
,
LL� �
$str
LL� �
}
LL� �
,
LL� �
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
,	MM �
null
MM� �
,
MM� �
$str
MM� �
,
MM� �
false
MM� �
,
MM� �
null
MM� �
,
MM� �
$str
MM� �
,
MM� �
$num
MM� �
,
MM� �
$num
MM� �
,
MM� �
$str
MM� �
}
MM� �
,
MM� �
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
,	NN �
null
NN� �
,
NN� �
$str
NN� �
,
NN� �
false
NN� �
,
NN� �
null
NN� �
,
NN� �
$str
NN� �
,
NN� �
$num
NN� �
,
NN� �
$num
NN� �
,
NN� �
$str
NN� �
}
NN� �
,
NN� �
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
,	OO �
null
OO� �
,
OO� �
$str
OO� �
,
OO� �
false
OO� �
,
OO� �
null
OO� �
,
OO� �
$str
OO� �
,
OO� �
$num
OO� �
,
OO� �
$num
OO� �
,
OO� �
$str
OO� �
}
OO� �
,
OO� �
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
,	PP �
null
PP� �
,
PP� �
$str
PP� �
,
PP� �
false
PP� �
,
PP� �
null
PP� �
,
PP� �
$str
PP� �
,
PP� �
$num
PP� �
,
PP� �
$num
PP� �
,
PP� �
$str
PP� �
}
PP� �
,
PP� �
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
,	QQ �
null
QQ� �
,
QQ� �
$str
QQ� �
,
QQ� �
false
QQ� �
,
QQ� �
null
QQ� �
,
QQ� �
$str
QQ� �
,
QQ� �
$num
QQ� �
,
QQ� �
$num
QQ� �
,
QQ� �
$str
QQ� �
}
QQ� �
,
QQ� �
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
,	RR �
null
RR� �
,
RR� �
$str
RR� �
,
RR� �
false
RR� �
,
RR� �
null
RR� �
,
RR� �
$str
RR� �
,
RR� �
$num
RR� �
,
RR� �
$num
RR� �
,
RR� �
$str
RR� �
}
RR� �
,
RR� �
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
,	SS �
null
SS� �
,
SS� �
$str
SS� �
,
SS� �
false
SS� �
,
SS� �
null
SS� �
,
SS� �
$str
SS� �
,
SS� �
$num
SS� �
,
SS� �
$num
SS� �
,
SS� �
$str
SS� �
}
SS� �
,
SS� �
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
,	TT �
null
TT� �
,
TT� �
$str
TT� �
,
TT� �
false
TT� �
,
TT� �
null
TT� �
,
TT� �
$str
TT� �
,
TT� �
$num
TT� �
,
TT� �
$num
TT� �
,
TT� �
$str
TT� �
}
TT� �
,
TT� �
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
,	UU �
null
UU� �
,
UU� �
$str
UU� �
,
UU� �
false
UU� �
,
UU� �
null
UU� �
,
UU� �
$str
UU� �
,
UU� �
$num
UU� �
,
UU� �
$num
UU� �
,
UU� �
$str
UU� �
}
UU� �
,
UU� �
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
,	VV �
null
VV� �
,
VV� �
$str
VV� �
,
VV� �
false
VV� �
,
VV� �
null
VV� �
,
VV� �
$str
VV� �
,
VV� �
$num
VV� �
,
VV� �
$num
VV� �
,
VV� �
$str
VV� �
}
VV� �
,
VV� �
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
,	WW �
null
WW� �
,
WW� �
$str
WW� �
,
WW� �
false
WW� �
,
WW� �
null
WW� �
,
WW� �
$str
WW� �
,
WW� �
$num
WW� �
,
WW� �
$num
WW� �
,
WW� �
$str
WW� �
}
WW� �
,
WW� �
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
,	XX �
null
XX� �
,
XX� �
$str
XX� �
,
XX� �
false
XX� �
,
XX� �
null
XX� �
,
XX� �
$str
XX� �
,
XX� �
$num
XX� �
,
XX� �
$num
XX� �
,
XX� �
$str
XX� �
}
XX� �
,
XX� �
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
,	YY �
null
YY� �
,
YY� �
$str
YY� �
,
YY� �
false
YY� �
,
YY� �
null
YY� �
,
YY� �
$str
YY� �
,
YY� �
$num
YY� �
,
YY� �
$num
YY� �
,
YY� �
$str
YY� �
}
YY� �
,
YY� �
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
,	ZZ �
null
ZZ� �
,
ZZ� �
$str
ZZ� �
,
ZZ� �
false
ZZ� �
,
ZZ� �
null
ZZ� �
,
ZZ� �
$str
ZZ� �
,
ZZ� �
$num
ZZ� �
,
ZZ� �
$num
ZZ� �
,
ZZ� �
$str
ZZ� �
}
ZZ� �
,
ZZ� �
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
,	[[ �
null
[[� �
,
[[� �
$str
[[� �
,
[[� �
false
[[� �
,
[[� �
null
[[� �
,
[[� �
$str
[[� �
,
[[� �
$num
[[� �
,
[[� �
$num
[[� �
,
[[� �
$str
[[� �
}
[[� �
,
[[� �
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
,	\\ �
null
\\� �
,
\\� �
$str
\\� �
,
\\� �
false
\\� �
,
\\� �
null
\\� �
,
\\� �
$str
\\� �
,
\\� �
$num
\\� �
,
\\� �
$num
\\� �
,
\\� �
$str
\\� �
}
\\� �
,
\\� �
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
,	]] �
null
]]� �
,
]]� �
$str
]]� �
,
]]� �
false
]]� �
,
]]� �
null
]]� �
,
]]� �
$str
]]� �
,
]]� �
$num
]]� �
,
]]� �
$num
]]� �
,
]]� �
$str
]]� �
}
]]� �
,
]]� �
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
,	^^ �
null
^^� �
,
^^� �
$str
^^� �
,
^^� �
false
^^� �
,
^^� �
null
^^� �
,
^^� �
$str
^^� �
,
^^� �
$num
^^� �
,
^^� �
$num
^^� �
,
^^� �
$str
^^� �
}
^^� �
,
^^� �
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
,	__ �
null
__� �
,
__� �
$str
__� �
,
__� �
false
__� �
,
__� �
null
__� �
,
__� �
$str
__� �
,
__� �
$num
__� �
,
__� �
$num
__� �
,
__� �
$str
__� �
}
__� �
,
__� �
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
,	`` �
null
``� �
,
``� �
$str
``� �
,
``� �
false
``� �
,
``� �
null
``� �
,
``� �
$str
``� �
,
``� �
$num
``� �
,
``� �
$num
``� �
,
``� �
$str
``� �
}
``� �
,
``� �
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
,	aa �
null
aa� �
,
aa� �
$str
aa� �
,
aa� �
false
aa� �
,
aa� �
null
aa� �
,
aa� �
$str
aa� �
,
aa� �
$num
aa� �
,
aa� �
$num
aa� �
,
aa� �
$str
aa� �
}
aa� �
,
aa� �
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
,	bb �
null
bb� �
,
bb� �
$str
bb� �
,
bb� �
false
bb� �
,
bb� �
null
bb� �
,
bb� �
$str
bb� �
,
bb� �
$num
bb� �
,
bb� �
$num
bb� �
,
bb� �
$str
bb� �
}
bb� �
,
bb� �
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
,	cc �
null
cc� �
,
cc� �
$str
cc� �
,
cc� �
false
cc� �
,
cc� �
null
cc� �
,
cc� �
$str
cc� �
,
cc� �
$num
cc� �
,
cc� �
$num
cc� �
,
cc� �
$str
cc� �
}
cc� �
,
cc� �
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
,	dd �
null
dd� �
,
dd� �
$str
dd� �
,
dd� �
false
dd� �
,
dd� �
null
dd� �
,
dd� �
$str
dd� �
,
dd� �
$num
dd� �
,
dd� �
$num
dd� �
,
dd� �
$str
dd� �
}
dd� �
,
dd� �
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
,	ee �
null
ee� �
,
ee� �
$str
ee� �
,
ee� �
false
ee� �
,
ee� �
null
ee� �
,
ee� �
$str
ee� �
,
ee� �
$num
ee� �
,
ee� �
$num
ee� �
,
ee� �
$str
ee� �
}
ee� �
,
ee� �
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
,	ff �
null
ff� �
,
ff� �
$str
ff� �
,
ff� �
false
ff� �
,
ff� �
null
ff� �
,
ff� �
$str
ff� �
,
ff� �
$num
ff� �
,
ff� �
$num
ff� �
,
ff� �
$str
ff� �
}
ff� �
,
ff� �
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
,	gg �
null
gg� �
,
gg� �
$str
gg� �
,
gg� �
false
gg� �
,
gg� �
null
gg� �
,
gg� �
$str
gg� �
,
gg� �
$num
gg� �
,
gg� �
$num
gg� �
,
gg� �
$str
gg� �
}
gg� �
,
gg� �
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
,	hh �
null
hh� �
,
hh� �
$str
hh� �
,
hh� �
false
hh� �
,
hh� �
null
hh� �
,
hh� �
$str
hh� �
,
hh� �
$num
hh� �
,
hh� �
$num
hh� �
,
hh� �
$str
hh� �
}
hh� �
,
hh� �
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
,	ii �
null
ii� �
,
ii� �
$str
ii� �
,
ii� �
false
ii� �
,
ii� �
null
ii� �
,
ii� �
$str
ii� �
,
ii� �
$num
ii� �
,
ii� �
$num
ii� �
,
ii� �
$str
ii� �
}
ii� �
,
ii� �
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
,	jj �
null
jj� �
,
jj� �
$str
jj� �
,
jj� �
false
jj� �
,
jj� �
null
jj� �
,
jj� �
$str
jj� �
,
jj� �
$num
jj� �
,
jj� �
$num
jj� �
,
jj� �
$str
jj� �
}
jj� �
,
jj� �
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
,	kk �
null
kk� �
,
kk� �
$str
kk� �
,
kk� �
false
kk� �
,
kk� �
null
kk� �
,
kk� �
$str
kk� �
,
kk� �
$num
kk� �
,
kk� �
$num
kk� �
,
kk� �
$str
kk� �
}
kk� �
,
kk� �
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
,	ll �
null
ll� �
,
ll� �
$str
ll� �
,
ll� �
false
ll� �
,
ll� �
null
ll� �
,
ll� �
$str
ll� �
,
ll� �
$num
ll� �
,
ll� �
$num
ll� �
,
ll� �
$str
ll� �
}
ll� �
,
ll� �
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
,	mm �
null
mm� �
,
mm� �
$str
mm� �
,
mm� �
false
mm� �
,
mm� �
null
mm� �
,
mm� �
$str
mm� �
,
mm� �
$num
mm� �
,
mm� �
$num
mm� �
,
mm� �
$str
mm� �
}
mm� �
,
mm� �
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
,	nn �
null
nn� �
,
nn� �
$str
nn� �
,
nn� �
false
nn� �
,
nn� �
null
nn� �
,
nn� �
$str
nn� �
,
nn� �
$num
nn� �
,
nn� �
$num
nn� �
,
nn� �
$str
nn� �
}
nn� �
,
nn� �
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
,	oo �
null
oo� �
,
oo� �
$str
oo� �
,
oo� �
false
oo� �
,
oo� �
null
oo� �
,
oo� �
$str
oo� �
,
oo� �
$num
oo� �
,
oo� �
$num
oo� �
,
oo� �
$str
oo� �
}
oo� �
,
oo� �
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
,	pp �
null
pp� �
,
pp� �
$str
pp� �
,
pp� �
false
pp� �
,
pp� �
null
pp� �
,
pp� �
$str
pp� �
,
pp� �
$num
pp� �
,
pp� �
$num
pp� �
,
pp� �
$str
pp� �
}
pp� �
,
pp� �
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
,	qq �
null
qq� �
,
qq� �
$str
qq� �
,
qq� �
false
qq� �
,
qq� �
null
qq� �
,
qq� �
$str
qq� �
,
qq� �
$num
qq� �
,
qq� �
$num
qq� �
,
qq� �
$str
qq� �
}
qq� �
,
qq� �
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
,	rr �
null
rr� �
,
rr� �
$str
rr� �
,
rr� �
false
rr� �
,
rr� �
null
rr� �
,
rr� �
$str
rr� �
,
rr� �
$num
rr� �
,
rr� �
$num
rr� �
,
rr� �
$str
rr� �
}
rr� �
,
rr� �
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
,	ss �
null
ss� �
,
ss� �
$str
ss� �
,
ss� �
false
ss� �
,
ss� �
null
ss� �
,
ss� �
$str
ss� �
,
ss� �
$num
ss� �
,
ss� �
$num
ss� �
,
ss� �
$str
ss� �
}
ss� �
,
ss� �
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
,	tt �
null
tt� �
,
tt� �
$str
tt� �
,
tt� �
false
tt� �
,
tt� �
null
tt� �
,
tt� �
$str
tt� �
,
tt� �
$num
tt� �
,
tt� �
$num
tt� �
,
tt� �
$str
tt� �
}
tt� �
,
tt� �
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
,	uu �
null
uu� �
,
uu� �
$str
uu� �
,
uu� �
false
uu� �
,
uu� �
null
uu� �
,
uu� �
$str
uu� �
,
uu� �
$num
uu� �
,
uu� �
$num
uu� �
,
uu� �
$str
uu� �
}
uu� �
,
uu� �
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
,	vv �
null
vv� �
,
vv� �
$str
vv� �
,
vv� �
false
vv� �
,
vv� �
null
vv� �
,
vv� �
$str
vv� �
,
vv� �
$num
vv� �
,
vv� �
$num
vv� �
,
vv� �
$str
vv� �
}
vv� �
,
vv� �
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
,	ww �
null
ww� �
,
ww� �
$str
ww� �
,
ww� �
false
ww� �
,
ww� �
null
ww� �
,
ww� �
$str
ww� �
,
ww� �
$num
ww� �
,
ww� �
$num
ww� �
,
ww� �
$str
ww� �
}
ww� �
,
ww� �
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
,	xx �
null
xx� �
,
xx� �
$str
xx� �
,
xx� �
false
xx� �
,
xx� �
null
xx� �
,
xx� �
$str
xx� �
,
xx� �
$num
xx� �
,
xx� �
$num
xx� �
,
xx� �
$str
xx� �
}
xx� �
,
xx� �
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
,	yy �
null
yy� �
,
yy� �
$str
yy� �
,
yy� �
false
yy� �
,
yy� �
null
yy� �
,
yy� �
$str
yy� �
,
yy� �
$num
yy� �
,
yy� �
$num
yy� �
,
yy� �
$str
yy� �
}
yy� �
,
yy� �
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
,	zz �
null
zz� �
,
zz� �
$str
zz� �
,
zz� �
false
zz� �
,
zz� �
null
zz� �
,
zz� �
$str
zz� �
,
zz� �
$num
zz� �
,
zz� �
$num
zz� �
,
zz� �
$str
zz� �
}
zz� �
,
zz� �
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
,	{{ �
null
{{� �
,
{{� �
$str
{{� �
,
{{� �
false
{{� �
,
{{� �
null
{{� �
,
{{� �
$str
{{� �
,
{{� �
$num
{{� �
,
{{� �
$num
{{� �
,
{{� �
$str
{{� �
}
{{� �
,
{{� �
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
,	|| �
null
||� �
,
||� �
$str
||� �
,
||� �
false
||� �
,
||� �
null
||� �
,
||� �
$str
||� �
,
||� �
$num
||� �
,
||� �
$num
||� �
,
||� �
$str
||� �
}
||� �
,
||� �
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
,	}} �
null
}}� �
,
}}� �
$str
}}� �
,
}}� �
false
}}� �
,
}}� �
null
}}� �
,
}}� �
$str
}}� �
,
}}� �
$num
}}� �
,
}}� �
$num
}}� �
,
}}� �
$str
}}� �
}
}}� �
,
}}� �
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
,	~~ �
null
~~� �
,
~~� �
$str
~~� �
,
~~� �
false
~~� �
,
~~� �
null
~~� �
,
~~� �
$str
~~� �
,
~~� �
$num
~~� �
,
~~� �
$num
~~� �
,
~~� �
$str
~~� �
}
~~� �
,
~~� �
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
,	 �
null
� �
,
� �
$str
� �
,
� �
false
� �
,
� �
null
� �
,
� �
$str
� �
,
� �
$num
� �
,
� �
$num
� �
,
� �
$str
� �
}
� �
,
� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
$str��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$str��� �
}��� �
}
�� 
)
�� 
;
�� 
}
�� 	
	protected
�� 
override
�� 
void
�� 
Down
��  $
(
��$ %
MigrationBuilder
��% 5
migrationBuilder
��6 F
)
��F G
{
�� 	
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
��  
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
}
�� 	
}
�� 
}�� �#
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
}11 �
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
}// �/
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
}XX �,
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
}OO �8
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
}RR �+
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
}NN �
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
true	\\} �
)
\\� �
,
\\� �
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
�� 
:
�� 
$str
�� #
,
��# $
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
Guid
��& *
>
��* +
(
��+ ,
type
��, 0
:
��0 1
$str
��2 8
,
��8 9
nullable
��: B
:
��B C
false
��D I
)
��I J
,
��J K
Number
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
int
��* -
>
��- .
(
��. /
type
��/ 3
:
��3 4
$str
��5 >
,
��> ?
nullable
��@ H
:
��H I
false
��J O
)
��O P
,
��P Q

SupplierId
�� 
=
��  
table
��! &
.
��& '
Column
��' -
<
��- .
Guid
��. 2
>
��2 3
(
��3 4
type
��4 8
:
��8 9
$str
��: @
,
��@ A
nullable
��B J
:
��J K
false
��L Q
)
��Q R
,
��R S
Donation
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
bool
��, 0
>
��0 1
(
��1 2
type
��2 6
:
��6 7
$str
��8 A
,
��A B
nullable
��C K
:
��K L
false
��M R
)
��R S
,
��S T
	ApplyDate
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
DateTime
��- 5
>
��5 6
(
��6 7
type
��7 ;
:
��; <
$str
��= W
,
��W X
nullable
��Y a
:
��a b
false
��c h
)
��h i
,
��i j
Description
�� 
=
��  !
table
��" '
.
��' (
Column
��( .
<
��. /
string
��/ 5
>
��5 6
(
��6 7
type
��7 ;
:
��; <
$str
��= C
,
��C D
nullable
��E M
:
��M N
true
��O S
)
��S T
,
��T U
Apply
�� 
=
�� 
table
�� !
.
��! "
Column
��" (
<
��( )
bool
��) -
>
��- .
(
��. /
type
��/ 3
:
��3 4
$str
��5 >
,
��> ?
nullable
��@ H
:
��H I
false
��J O
)
��O P
,
��P Q
CreationDate
��  
=
��! "
table
��# (
.
��( )
Column
��) /
<
��/ 0
DateTime
��0 8
>
��8 9
(
��9 :
type
��: >
:
��> ?
$str
��@ Z
,
��Z [
nullable
��\ d
:
��d e
false
��f k
)
��k l
,
��l m
DeletionDate
��  
=
��! "
table
��# (
.
��( )
Column
��) /
<
��/ 0
DateTime
��0 8
>
��8 9
(
��9 :
type
��: >
:
��> ?
$str
��@ Z
,
��Z [
nullable
��\ d
:
��d e
true
��f j
)
��j k
,
��k l
LastChangeDate
�� "
=
��# $
table
��% *
.
��* +
Column
��+ 1
<
��1 2
DateTime
��2 :
>
��: ;
(
��; <
type
��< @
:
��@ A
$str
��B \
,
��\ ]
nullable
��^ f
:
��f g
true
��h l
)
��l m
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 5
,
��5 6
x
��7 8
=>
��9 ;
x
��< =
.
��= >
Id
��> @
)
��@ A
;
��A B
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� C
,
��C D
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '

SupplierId
��' 1
,
��1 2
principalTable
�� &
:
��& '
$str
��( 3
,
��3 4
principalColumn
�� '
:
��' (
$str
��) -
)
��- .
;
��. /
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� 
,
�� 
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
Guid
��& *
>
��* +
(
��+ ,
type
��, 0
:
��0 1
$str
��2 8
,
��8 9
nullable
��: B
:
��B C
false
��D I
)
��I J
,
��J K
Name
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
string
��( .
>
��. /
(
��/ 0
type
��0 4
:
��4 5
$str
��6 M
,
��M N
	maxLength
��O X
:
��X Y
$num
��Z \
,
��\ ]
nullable
��^ f
:
��f g
true
��h l
)
��l m
,
��m n
PhoneNumber
�� 
=
��  !
table
��" '
.
��' (
Column
��( .
<
��. /
string
��/ 5
>
��5 6
(
��6 7
type
��7 ;
:
��; <
$str
��= T
,
��T U
	maxLength
��V _
:
��_ `
$num
��a c
,
��c d
nullable
��e m
:
��m n
true
��o s
)
��s t
,
��t u
Email
�� 
=
�� 
table
�� !
.
��! "
Column
��" (
<
��( )
string
��) /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 N
,
��N O
	maxLength
��P Y
:
��Y Z
$num
��[ ]
,
��] ^
nullable
��_ g
:
��g h
true
��i m
)
��m n
,
��n o
Password
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
byte
��, 0
[
��0 1
]
��1 2
>
��2 3
(
��3 4
type
��4 8
:
��8 9
$str
��: A
,
��A B
nullable
��C K
:
��K L
true
��M Q
)
��Q R
,
��R S
	LastLogin
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
DateTime
��- 5
>
��5 6
(
��6 7
type
��7 ;
:
��; <
$str
��= W
,
��W X
nullable
��Y a
:
��a b
true
��c g
)
��g h
,
��h i
AppleUserId
�� 
=
��  !
table
��" '
.
��' (
Column
��( .
<
��. /
string
��/ 5
>
��5 6
(
��6 7
type
��7 ;
:
��; <
$str
��= C
,
��C D
nullable
��E M
:
��M N
true
��O S
)
��S T
,
��T U$
LastPasswordChangeDate
�� *
=
��+ ,
table
��- 2
.
��2 3
Column
��3 9
<
��9 :
DateTime
��: B
>
��B C
(
��C D
type
��D H
:
��H I
$str
��J d
,
��d e
nullable
��f n
:
��n o
true
��p t
)
��t u
,
��u v
UserValidationId
�� $
=
��% &
table
��' ,
.
��, -
Column
��- 3
<
��3 4
Guid
��4 8
>
��8 9
(
��9 :
type
��: >
:
��> ?
$str
��@ F
,
��F G
nullable
��H P
:
��P Q
false
��R W
)
��W X
,
��X Y'
FireBaseCloudMessageToken
�� -
=
��. /
table
��0 5
.
��5 6
Column
��6 <
<
��< =
string
��= C
>
��C D
(
��D E
type
��E I
:
��I J
$str
��K Q
,
��Q R
nullable
��S [
:
��[ \
true
��] a
)
��a b
,
��b c
CreationDate
��  
=
��! "
table
��# (
.
��( )
Column
��) /
<
��/ 0
DateTime
��0 8
>
��8 9
(
��9 :
type
��: >
:
��> ?
$str
��@ Z
,
��Z [
nullable
��\ d
:
��d e
false
��f k
)
��k l
,
��l m
DeletionDate
��  
=
��! "
table
��# (
.
��( )
Column
��) /
<
��/ 0
DateTime
��0 8
>
��8 9
(
��9 :
type
��: >
:
��> ?
$str
��@ Z
,
��Z [
nullable
��\ d
:
��d e
true
��f j
)
��j k
,
��k l
LastChangeDate
�� "
=
��# $
table
��% *
.
��* +
Column
��+ 1
<
��1 2
DateTime
��2 :
>
��: ;
(
��; <
type
��< @
:
��@ A
$str
��B \
,
��\ ]
nullable
��^ f
:
��f g
true
��h l
)
��l m
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% /
,
��/ 0
x
��1 2
=>
��3 5
x
��6 7
.
��7 8
Id
��8 :
)
��: ;
;
��; <
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� I
,
��I J
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserValidationId
��' 7
,
��7 8
principalTable
�� &
:
��& '
$str
��( 9
,
��9 :
principalColumn
�� '
:
��' (
$str
��) -
)
��- .
;
��. /
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� (
,
��( )
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
RegisterInId
��  
=
��! "
table
��# (
.
��( )
Column
��) /
<
��/ 0
Guid
��0 4
>
��4 5
(
��5 6
type
��6 :
:
��: ;
$str
��< B
,
��B C
nullable
��D L
:
��L M
false
��N S
)
��S T
,
��T U
StockId
�� 
=
�� 
table
�� #
.
��# $
Column
��$ *
<
��* +
Guid
��+ /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 =
,
��= >
nullable
��? G
:
��G H
false
��I N
)
��N O
,
��O P
Quantity
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
decimal
��, 3
>
��3 4
(
��4 5
type
��5 9
:
��9 :
$str
��; I
,
��I J
nullable
��K S
:
��S T
false
��U Z
)
��Z [
,
��[ \
Price
�� 
=
�� 
table
�� !
.
��! "
Column
��" (
<
��( )
decimal
��) 0
>
��0 1
(
��1 2
type
��2 6
:
��6 7
$str
��8 F
,
��F G
nullable
��H P
:
��P Q
false
��R W
)
��W X
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% :
,
��: ;
x
��< =
=>
��> @
new
��A D
{
��E F
x
��G H
.
��H I
RegisterInId
��I U
,
��U V
x
��W X
.
��X Y
StockId
��Y `
}
��a b
)
��b c
;
��c d
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� L
,
��L M
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
RegisterInId
��' 3
,
��3 4
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
)
��- .
;
��. /
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� B
,
��B C
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
StockId
��' .
,
��. /
principalTable
�� &
:
��& '
$str
��( 0
,
��0 1
principalColumn
�� '
:
��' (
$str
��) -
)
��- .
;
��. /
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� !
,
��! "
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
Guid
��& *
>
��* +
(
��+ ,
type
��, 0
:
��0 1
$str
��2 8
,
��8 9
nullable
��: B
:
��B C
false
��D I
)
��I J
,
��J K
Name
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
string
��( .
>
��. /
(
��/ 0
type
��0 4
:
��4 5
$str
��6 M
,
��M N
	maxLength
��O X
:
��X Y
$num
��Z \
,
��\ ]
nullable
��^ f
:
��f g
true
��h l
)
��l m
,
��m n
About
�� 
=
�� 
table
�� !
.
��! "
Column
��" (
<
��( )
string
��) /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 O
,
��O P
	maxLength
��Q Z
:
��Z [
$num
��\ _
,
��_ `
nullable
��a i
:
��i j
true
��k o
)
��o p
,
��p q
	PhotoPath
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
string
��- 3
>
��3 4
(
��4 5
type
��5 9
:
��9 :
$str
��; S
,
��S T
	maxLength
��U ^
:
��^ _
$num
��` c
,
��c d
nullable
��e m
:
��m n
true
��o s
)
��s t
,
��t u
Disable
�� 
=
�� 
table
�� #
.
��# $
Column
��$ *
<
��* +
bool
��+ /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 @
,
��@ A
nullable
��B J
:
��J K
false
��L Q
)
��Q R
,
��R S
SplitPercentage
�� #
=
��$ %
table
��& +
.
��+ ,
Column
��, 2
<
��2 3
decimal
��3 :
>
��: ;
(
��; <
type
��< @
:
��@ A
$str
��B K
,
��K L
nullable
��M U
:
��U V
false
��W \
)
��\ ]
,
��] ^
UserId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
Guid
��* .
>
��. /
(
��/ 0
type
��0 4
:
��4 5
$str
��6 <
,
��< =
nullable
��> F
:
��F G
false
��H M
)
��M N
,
��N O
CreationDate
��  
=
��! "
table
��# (
.
��( )
Column
��) /
<
��/ 0
DateTime
��0 8
>
��8 9
(
��9 :
type
��: >
:
��> ?
$str
��@ Z
,
��Z [
nullable
��\ d
:
��d e
false
��f k
)
��k l
,
��l m
DeletionDate
��  
=
��! "
table
��# (
.
��( )
Column
��) /
<
��/ 0
DateTime
��0 8
>
��8 9
(
��9 :
type
��: >
:
��> ?
$str
��@ Z
,
��Z [
nullable
��\ d
:
��d e
true
��f j
)
��j k
,
��k l
LastChangeDate
�� "
=
��# $
table
��% *
.
��* +
Column
��+ 1
<
��1 2
DateTime
��2 :
>
��: ;
(
��; <
type
��< @
:
��@ A
$str
��B \
,
��\ ]
nullable
��^ f
:
��f g
true
��h l
)
��l m
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 3
,
��3 4
x
��5 6
=>
��7 9
x
��: ;
.
��; <
Id
��< >
)
��> ?
;
��? @
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� 9
,
��9 :
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( /
,
��/ 0
principalColumn
�� '
:
��' (
$str
��) -
)
��- .
;
��. /
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
��  
,
��  !
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
Guid
��& *
>
��* +
(
��+ ,
type
��, 0
:
��0 1
$str
��2 8
,
��8 9
nullable
��: B
:
��B C
false
��D I
)
��I J
,
��J K
Name
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
string
��( .
>
��. /
(
��/ 0
type
��0 4
:
��4 5
$str
��6 M
,
��M N
	maxLength
��O X
:
��X Y
$num
��Z \
,
��\ ]
nullable
��^ f
:
��f g
true
��h l
)
��l m
,
��m n
	PhotoPath
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
string
��- 3
>
��3 4
(
��4 5
type
��5 9
:
��9 :
$str
��; S
,
��S T
	maxLength
��U ^
:
��^ _
$num
��` c
,
��c d
nullable
��e m
:
��m n
true
��o s
)
��s t
,
��t u
Disable
�� 
=
�� 
table
�� #
.
��# $
Column
��$ *
<
��* +
bool
��+ /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 @
,
��@ A
nullable
��B J
:
��J K
false
��L Q
)
��Q R
,
��R S
UserId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
Guid
��* .
>
��. /
(
��/ 0
type
��0 4
:
��4 5
$str
��6 <
,
��< =
nullable
��> F
:
��F G
false
��H M
)
��M N
,
��N O
CreationDate
��  
=
��! "
table
��# (
.
��( )
Column
��) /
<
��/ 0
DateTime
��0 8
>
��8 9
(
��9 :
type
��: >
:
��> ?
$str
��@ Z
,
��Z [
nullable
��\ d
:
��d e
false
��f k
)
��k l
,
��l m
DeletionDate
��  
=
��! "
table
��# (
.
��( )
Column
��) /
<
��/ 0
DateTime
��0 8
>
��8 9
(
��9 :
type
��: >
:
��> ?
$str
��@ Z
,
��Z [
nullable
��\ d
:
��d e
true
��f j
)
��j k
,
��k l
LastChangeDate
�� "
=
��# $
table
��% *
.
��* +
Column
��+ 1
<
��1 2
DateTime
��2 :
>
��: ;
(
��; <
type
��< @
:
��@ A
$str
��B \
,
��\ ]
nullable
��^ f
:
��f g
true
��h l
)
��l m
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 2
,
��2 3
x
��4 5
=>
��6 8
x
��9 :
.
��: ;
Id
��; =
)
��= >
;
��> ?
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� 8
,
��8 9
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( /
,
��/ 0
principalColumn
�� '
:
��' (
$str
��) -
)
��- .
;
��. /
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� !
,
��! "
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
UserId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
Guid
��* .
>
��. /
(
��/ 0
type
��0 4
:
��4 5
$str
��6 <
,
��< =
nullable
��> F
:
��F G
false
��H M
)
��M N
,
��N O
RoleId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
Guid
��* .
>
��. /
(
��/ 0
type
��0 4
:
��4 5
$str
��6 <
,
��< =
nullable
��> F
:
��F G
false
��H M
)
��M N
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 3
,
��3 4
x
��5 6
=>
��7 9
new
��: =
{
��> ?
x
��@ A
.
��A B
UserId
��B H
,
��H I
x
��J K
.
��K L
RoleId
��L R
}
��S T
)
��T U
;
��U V
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� 9
,
��9 :
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
RoleId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( /
,
��/ 0
principalColumn
�� '
:
��' (
$str
��) -
)
��- .
;
��. /
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� 9
,
��9 :
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( /
,
��/ 0
principalColumn
�� '
:
��' (
$str
��) -
)
��- .
;
��. /
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 

InsertData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
�� 
columns
�� 
:
�� 
new
�� 
[
�� 
]
�� 
{
��  
$str
��! %
,
��% &
$str
��' 5
,
��5 6
$str
��7 E
,
��E F
$str
��G W
,
��W X
$str
��Y _
,
��_ `
$str
��a k
}
��l m
,
��m n
values
�� 
:
�� 
new
�� 
object
�� "
[
��" #
,
��# $
]
��$ %
{
�� 
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$num��� �
}��� �
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 

InsertData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )
columns
�� 
:
�� 
new
�� 
[
�� 
]
�� 
{
��  
$str
��! %
,
��% &
$str
��' 5
,
��5 6
$str
��7 E
,
��E F
$str
��G ^
,
��^ _
$str
��` p
,
��p q
$str��r �
,��� �
$str��� �
,��� �
$str��� �
}��� �
,��� �
values
�� 
:
�� 
new
�� 
object
�� "
[
��" #
,
��# $
]
��$ %
{
�� 
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
null��� �
,��� �
true��� �
,��� �
null��� �
,��� �
null��� �
,��� �
true��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
null��� �
,��� �
true��� �
,��� �
null��� �
,��� �
null��� �
,��� �
true��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
DateTime
��L T
(
��T U
$num
��U Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
DateTimeKind
��n z
.
��z {
Utc
��{ ~
)
��~ 
,�� �
null��� �
,��� �
null��� �
,��� �
true��� �
,��� �
null��� �
,��� �
null��� �
,��� �
true��� �
}��� �
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 

InsertData
�� '
(
��' (
table
�� 
:
�� 
$str
�� 
,
�� 
columns
�� 
:
�� 
new
�� 
[
�� 
]
�� 
{
��  
$str
��! %
,
��% &
$str
��' 4
,
��4 5
$str
��6 D
,
��D E
$str
��F T
,
��T U
$str
��V ]
,
��] ^
$str
��_ z
,
��z {
$str��| �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
}��� �
,��� �
values
�� 
:
�� 
new
�� 
object
�� "
[
��" #
,
��# $
]
��$ %
{
�� 
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
null
��H L
,
��L M
new
��N Q
DateTime
��R Z
(
��Z [
$num
��[ _
,
��_ `
$num
��a c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
$num
��n o
,
��o p
$num
��q r
,
��r s
DateTimeKind��t �
.��� �
Utc��� �
)��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
null��� �
,��� �
null��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
new��� �
byte��� �
[��� �
]��� �
{��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
}��� �
,��� �
null��� �
,��� �
new��� �
Guid��� �
(��� �
$str��� �
)��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
null
��H L
,
��L M
new
��N Q
DateTime
��R Z
(
��Z [
$num
��[ _
,
��_ `
$num
��a c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
$num
��n o
,
��o p
$num
��q r
,
��r s
DateTimeKind��t �
.��� �
Utc��� �
)��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
null��� �
,��� �
null��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
new��� �
byte��� �
[��� �
]��� �
{��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
}��� �
,��� �
null��� �
,��� �
new��� �
Guid��� �
(��� �
$str��� �
)��� �
}��� �
,��� �
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
null
��H L
,
��L M
new
��N Q
DateTime
��R Z
(
��Z [
$num
��[ _
,
��_ `
$num
��a c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
$num
��n o
,
��o p
$num
��q r
,
��r s
DateTimeKind��t �
.��� �
Utc��� �
)��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
null��� �
,��� �
null��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
new��� �
byte��� �
[��� �
]��� �
{��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �	
$num���	 �	
,���	 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �

,���
 �

$num���
 �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
}��� �
,��� �
null��� �
,��� �
new��� �
Guid��� �
(��� �
$str��� �
)��� �
}��� �
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 

InsertData
�� '
(
��' (
table
�� 
:
�� 
$str
�� "
,
��" #
columns
�� 
:
�� 
new
�� 
[
�� 
]
�� 
{
��  
$str
��! %
,
��% &
$str
��' .
,
��. /
$str
��0 >
,
��> ?
$str
��@ N
,
��N O
$str
��P Y
,
��Y Z
$str
��[ k
,
��k l
$str
��m s
,
��s t
$str��u �
,��� �
$str��� �
,��� �
$str��� �
}��� �
,��� �
values
�� 
:
�� 
new
�� 
object
�� "
[
��" #
]
��# $
{
��% &
new
��' *
Guid
��+ /
(
��/ 0
$str
��0 V
)
��V W
,
��W X
$str
��Y ^
,
��^ _
new
��` c
DateTime
��d l
(
��l m
$num
��m q
,
��q r
$num
��s u
,
��u v
$num
��w x
,
��x y
$num
��z {
,
��{ |
$num
��} ~
,
��~ 
$num��� �
,��� �
$num��� �
,��� �
DateTimeKind��� �
.��� �
Utc��� �
)��� �
,��� �
null��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
null��� �
,��� �
$num��� �
,��� �
new��� �
Guid��� �
(��� �
$str��� �
)��� �
}��� �
)��� �
;��� �
migrationBuilder
�� 
.
�� 

InsertData
�� '
(
��' (
table
�� 
:
�� 
$str
�� !
,
��! "
columns
�� 
:
�� 
new
�� 
[
�� 
]
�� 
{
��  
$str
��! %
,
��% &
$str
��' 5
,
��5 6
$str
��7 E
,
��E F
$str
��G P
,
��P Q
$str
��R b
,
��b c
$str
��d j
,
��j k
$str
��l w
,
��w x
$str��y �
}��� �
,��� �
values
�� 
:
�� 
new
�� 
object
�� "
[
��" #
]
��# $
{
��% &
new
��' *
Guid
��+ /
(
��/ 0
$str
��0 V
)
��V W
,
��W X
new
��Y \
DateTime
��] e
(
��e f
$num
��f j
,
��j k
$num
��l n
,
��n o
$num
��p q
,
��q r
$num
��s t
,
��t u
$num
��v w
,
��w x
$num
��y z
,
��z {
$num
��| }
,
��} ~
DateTimeKind�� �
.��� �
Utc��� �
)��� �
,��� �
null��� �
,��� �
false��� �
,��� �
null��� �
,��� �
$str��� �
,��� �
null��� �
,��� �
new��� �
Guid��� �
(��� �
$str��� �
)��� �
}��� �
)��� �
;��� �
migrationBuilder
�� 
.
�� 

InsertData
�� '
(
��' (
table
�� 
:
�� 
$str
�� "
,
��" #
columns
�� 
:
�� 
new
�� 
[
�� 
]
�� 
{
��  
$str
��! )
,
��) *
$str
��+ 3
}
��4 5
,
��5 6
values
�� 
:
�� 
new
�� 
object
�� "
[
��" #
,
��# $
]
��$ %
{
�� 
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
Guid
��L P
(
��P Q
$str
��Q w
)
��w x
}
��y z
,
��z {
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
Guid
��L P
(
��P Q
$str
��Q w
)
��w x
}
��y z
,
��z {
{
�� 
new
�� 
Guid
�� 
(
�� 
$str
�� E
)
��E F
,
��F G
new
��H K
Guid
��L P
(
��P Q
$str
��Q w
)
��w x
}
��y z
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� +
,
��+ ,
table
�� 
:
�� 
$str
�� "
,
��" #
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� *
,
��* +
table
�� 
:
�� 
$str
�� !
,
��! "
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 3
,
��3 4
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 4
,
��4 5
table
�� 
:
�� 
$str
�� *
,
��* +
column
�� 
:
�� 
$str
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 1
,
��1 2
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� $
)
��$ %
;
��% &
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� +
,
��+ ,
table
�� 
:
�� 
$str
�� "
,
��" #
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 1
,
��1 2
table
�� 
:
�� 
$str
�� 
,
�� 
column
�� 
:
�� 
$str
�� *
)
��* +
;
��+ ,
}
�� 	
	protected
�� 
override
�� 
void
�� 
Down
��  $
(
��$ %
MigrationBuilder
��% 5
migrationBuilder
��6 F
)
��F G
{
�� 	
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� )
)
��) *
;
��* +
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� $
)
��$ %
;
��% &
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
�� 
;
��  
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� '
)
��' (
;
��( )
}
�� 	
}
�� 
}�� ��
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
ILogger	&&y �
logger
&&� �
)
&&� �
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
ConstantsGeneral	;;s �
.
;;� �!
DEFAULT_FILL_LENGHT
;;� �
)
;;� �
,
;;� �
(
;;� �
string
;;� �
.
;;� �
IsNullOrEmpty
;;� �
(
;;� �
_connectionString
;;� �
)
;;� �
?
;;� �
$str
;;� �
:
;;� �
$str
;;� �
)
;;� �
)
;;� �
)
;;� �
;
;;� �
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
DEFAULT_FILL_LENGHT	UU} �
)
UU� �
,
UU� �
(
UU� �
string
UU� �
.
UU� �
IsNullOrEmpty
UU� �
(
UU� �
_connectionString
UU� �
)
UU� �
?
UU� �
$str
UU� �
:
UU� �
$str
UU� �
)
UU� �
)
UU� �
)
UU� �
;
UU� �
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
)	}} �
,
}}� �
$str
}}� �
)
}}� �
)
}}� �
;
}}� �
	_services
�� 
.
�� 
	AddScoped
�� 
<
��  
IJwtService
��  +
,
��+ ,

JwtService
��- 7
>
��7 8
(
��8 9
)
��9 :
;
��: ;
	_services
�� 
.
�� 
	AddScoped
�� 
<
��  
IOAuthService
��  -
,
��- .
OAuthService
��/ ;
>
��; <
(
��< =
)
��= >
;
��> ?
	_services
�� 
.
�� 
	AddScoped
�� 
<
��  
ISignInService
��  .
,
��. /
SignInService
��0 =
>
��= >
(
��> ?
)
��? @
;
��@ A
	_services
�� 
.
�� 
	AddScoped
�� 
<
��  
ISignUpService
��  .
,
��. /
SignUpService
��0 =
>
��= >
(
��> ?
)
��? @
;
��@ A
	_services
�� 
.
�� 
	AddScoped
�� 
<
��  
IS3FileService
��  .
,
��. /
S3FileService
��0 =
>
��= >
(
��> ?
)
��? @
;
��@ A
	_services
�� 
.
�� 
	AddScoped
�� 
<
��  
IServiceContext
��  /
,
��/ 0
ServiceContext
��1 ?
>
��? @
(
��@ A
)
��A B
;
��B C
	_services
�� 
.
�� 
	AddScoped
�� 
<
��  
IReportService
��  .
,
��. /
ReportService
��0 =
>
��= >
(
��> ?
)
��? @
;
��@ A
_logger
�� 
.
�� 
LogInformation
�� "
(
��" #
string
��# )
.
��) *
Concat
��* 0
(
��0 1
$"
��1 3
$str
��3 U
"
��U V
.
��V W
Fill
��W [
(
��[ \
$char
��\ _
,
��_ `
ConstantsGeneral
��a q
.
��q r"
DEFAULT_FILL_LENGHT��r �
)��� �
,��� �
$str��� �
)��� �
)��� �
;��� �
	_services
�� 
.
�� 
	AddScoped
�� 
<
��  
IUserRepository
��  /
,
��/ 0
UserRepository
��1 ?
>
��? @
(
��@ A
)
��A B
;
��B C
	_services
�� 
.
�� 
	AddScoped
�� 
<
��  
IRoleRepository
��  /
,
��/ 0
RoleRepository
��1 ?
>
��? @
(
��@ A
)
��A B
;
��B C
	_services
�� 
.
�� 
	AddScoped
�� 
<
��   
IRepositoryContext
��  2
,
��2 3
RepositoryContext
��4 E
>
��E F
(
��F G
)
��G H
;
��H I
	_services
�� 
.
�� 
	AddScoped
�� 
<
��   
IManagerRepository
��  2
,
��2 3
ManagerRepository
��4 E
>
��E F
(
��F G
)
��G H
;
��H I
	_services
�� 
.
�� 
	AddScoped
�� 
<
��  !
IEmployeeRepository
��  3
,
��3 4 
EmployeeRepository
��5 G
>
��G H
(
��H I
)
��I J
;
��J K
	_services
�� 
.
�� 
	AddScoped
�� 
<
��  '
IUserValidationRepository
��  9
,
��9 :&
UserValidationRepository
��; S
>
��S T
(
��T U
)
��U V
;
��V W
	_services
�� 
.
�� 
	AddScoped
�� 
<
��  !
ISupplierRepository
��  3
,
��3 4 
SupplierRepository
��5 G
>
��G H
(
��H I
)
��I J
;
��J K
	_services
�� 
.
�� 
	AddScoped
�� 
<
��  
IStockRepository
��  0
,
��0 1
StockRepository
��2 A
>
��A B
(
��B C
)
��C D
;
��D E
	_services
�� 
.
�� 
	AddScoped
�� 
<
��  #
IRegisterInRepository
��  5
,
��5 6"
RegisterInRepository
��7 K
>
��K L
(
��L M
)
��M N
;
��N O
	_services
�� 
.
�� 
	AddScoped
�� 
<
��  (
IRegisterInStockRepository
��  :
,
��: ;'
RegisterInStockRepository
��< U
>
��U V
(
��V W
)
��W X
;
��X Y
	_services
�� 
.
�� 
	AddScoped
�� 
<
��  $
IRegisterOutRepository
��  6
,
��6 7#
RegisterOutRepository
��8 M
>
��M N
(
��N O
)
��O P
;
��P Q
	_services
�� 
.
�� 
	AddScoped
�� 
<
��  )
IRegisterOutStockRepository
��  ;
,
��; <(
RegisterOutStockRepository
��= W
>
��W X
(
��X Y
)
��Y Z
;
��Z [
	_services
�� 
.
�� 
	AddScoped
�� 
<
��  "
IStockTypeRepository
��  4
,
��4 5!
StockTypeRepository
��6 I
>
��I J
(
��J K
)
��K L
;
��L M
	_services
�� 
.
�� 
	AddScoped
�� 
<
��  !
ITaskNoteRepository
��  3
,
��3 4 
TaskNoteRepository
��5 G
>
��G H
(
��H I
)
��I J
;
��J K
_logger
�� 
.
�� 
LogInformation
�� "
(
��" #
string
��# )
.
��) *
Concat
��* 0
(
��0 1
$"
��1 3
$str
��3 S
"
��S T
.
��T U
Fill
��U Y
(
��Y Z
$char
��Z ]
,
��] ^
ConstantsGeneral
��_ o
.
��o p"
DEFAULT_FILL_LENGHT��p �
)��� �
,��� �
$str��� �
)��� �
)��� �
;��� �
}
�� 	
private
�� 
static
�� 
void
�� %
EnsureMigrationsApplied
�� 3
(
��3 4
)
��4 5
{
�� 	
using
�� 
(
�� 
var
�� 
scope
�� 
=
�� 
	_services
�� (
.
��( )"
BuildServiceProvider
��) =
(
��= >
)
��> ?
.
��? @
CreateScope
��@ K
(
��K L
)
��L M
)
��M N
{
�� 
var
�� 
context
�� 
=
�� 
scope
�� #
.
��# $
ServiceProvider
��$ 3
.
��3 4 
GetRequiredService
��4 F
<
��F G
BaseContext
��G R
>
��R S
(
��S T
)
��T U
;
��U V
if
�� 
(
�� 
context
�� 
.
�� 
Database
�� $
.
��$ %
IsRelational
��% 1
(
��1 2
)
��2 3
&&
��4 6
context
��7 >
.
��> ?
Database
��? G
.
��G H"
GetPendingMigrations
��H \
(
��\ ]
)
��] ^
.
��^ _
Any
��_ b
(
��b c
)
��c d
)
��d e
{
�� 
context
�� 
.
�� 
Database
�� $
.
��$ %
Migrate
��% ,
(
��, -
)
��- .
;
��. /
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �
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
} �
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
} �
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
} �
�E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Infra.Data\Context\SeedConfiguration\SeedDev\SeedUserValidationConfiguration.cs
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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
}		 �A
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
}KK �
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
}-- �
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
}(( �"
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
$str	0 �
,
� �
Password 
= 
Encoding '
.' (
UTF8( ,
., -
GetBytes- 5
(5 6
$str	6 �
)
� �
,
� �
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
$str	""0 �
,
""� �
Password## 
=## 
Encoding## '
.##' (
UTF8##( ,
.##, -
GetBytes##- 5
(##5 6
$str	##6 �
)
##� �
,
##� �
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
$str	110 �
,
11� �
Password22 
=22 
Encoding22 '
.22' (
UTF822( ,
.22, -
GetBytes22- 5
(225 6
$str	226 �
)
22� �
,
22� �
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
}77 �
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
} �
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
} �
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
}"" ��	
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
Quantity	 �
=
� �
$num
� �
,
� �
CreationDate
� �
=
� �
ConstantSeeder
� �
.
� �#
DEFAULT_SEED_DATETIME
� �
,
� �
Disable
� �
=
� �
false
� �
,
� � 
QuantityLowWarning
� �
=
� �
$num
� �
,
� �
StockTypeId
� �
=
� �
Domain
� �
.
� �
Entities
� �
.
� �
Enums
� �
.
� �
	StockType
� �
.
� �
Food
� �
.
� �
GetDescription
� �
(
� �
)
� �
}
� �
,
� �
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
Description	w �
=
� �
$str
� �
,
� �
Quantity
� �
=
� �
$num
� �
,
� �
CreationDate
� �
=
� �
ConstantSeeder
� �
.
� �#
DEFAULT_SEED_DATETIME
� �
,
� �
Disable
� �
=
� �
false
� �
,
� � 
QuantityLowWarning
� �
=
� �
$num
� �
,
� �
StockTypeId
� �
=
� �
Domain
� �
.
� �
Entities
� �
.
� �
Enums
� �
.
� �
	StockType
� �
.
� �
Food
� �
.
� �
GetDescription
� �
(
� �
)
� �
}
� �
,
� �
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
Quantity	~ �
=
� �
$num
� �
,
� �
CreationDate
� �
=
� �
ConstantSeeder
� �
.
� �#
DEFAULT_SEED_DATETIME
� �
,
� �
Disable
� �
=
� �
false
� �
,
� � 
QuantityLowWarning
� �
=
� �
$num
� �
,
� �
StockTypeId
� �
=
� �
Domain
� �
.
� �
Entities
� �
.
� �
Enums
� �
.
� �
	StockType
� �
.
� �
Food
� �
.
� �
GetDescription
� �
(
� �
)
� �
}
� �
,
� �
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
Quantity	~ �
=
� �
$num
� �
,
� �
CreationDate
� �
=
� �
ConstantSeeder
� �
.
� �#
DEFAULT_SEED_DATETIME
� �
,
� �
Disable
� �
=
� �
false
� �
,
� � 
QuantityLowWarning
� �
=
� �
$num
� �
,
� �
StockTypeId
� �
=
� �
Domain
� �
.
� �
Entities
� �
.
� �
Enums
� �
.
� �
	StockType
� �
.
� �
Food
� �
.
� �
GetDescription
� �
(
� �
)
� �
}
� �
,
� �
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
Quantity	} �
=
� �
$num
� �
,
� �
CreationDate
� �
=
� �
ConstantSeeder
� �
.
� �#
DEFAULT_SEED_DATETIME
� �
,
� �
Disable
� �
=
� �
false
� �
,
� � 
QuantityLowWarning
� �
=
� �
$num
� �
,
� �
StockTypeId
� �
=
� �
Domain
� �
.
� �
Entities
� �
.
� �
Enums
� �
.
� �
	StockType
� �
.
� �
Food
� �
.
� �
GetDescription
� �
(
� �
)
� �
}
� �
,
� �
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
Quantity	{ �
=
� �
$num
� �
,
� �
CreationDate
� �
=
� �
ConstantSeeder
� �
.
� �#
DEFAULT_SEED_DATETIME
� �
,
� �
Disable
� �
=
� �
false
� �
,
� � 
QuantityLowWarning
� �
=
� �
$num
� �
,
� �
StockTypeId
� �
=
� �
Domain
� �
.
� �
Entities
� �
.
� �
Enums
� �
.
� �
	StockType
� �
.
� �
Food
� �
.
� �
GetDescription
� �
(
� �
)
� �
}
� �
,
� �
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
Quantity	} �
=
� �
$num
� �
,
� �
CreationDate
� �
=
� �
ConstantSeeder
� �
.
� �#
DEFAULT_SEED_DATETIME
� �
,
� �
Disable
� �
=
� �
false
� �
,
� � 
QuantityLowWarning
� �
=
� �
$num
� �
,
� �
StockTypeId
� �
=
� �
Domain
� �
.
� �
Entities
� �
.
� �
Enums
� �
.
� �
	StockType
� �
.
� �
Food
� �
.
� �
GetDescription
� �
(
� �
)
� �
}
� �
,
� �
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
Quantity	} �
=
� �
$num
� �
,
� �
CreationDate
� �
=
� �
ConstantSeeder
� �
.
� �#
DEFAULT_SEED_DATETIME
� �
,
� �
Disable
� �
=
� �
false
� �
,
� � 
QuantityLowWarning
� �
=
� �
$num
� �
,
� �
StockTypeId
� �
=
� �
Domain
� �
.
� �
Entities
� �
.
� �
Enums
� �
.
� �
	StockType
� �
.
� �
Food
� �
.
� �
GetDescription
� �
(
� �
)
� �
}
� �
,
� �
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
Quantity	| �
=
� �
$num
� �
,
� �
CreationDate
� �
=
� �
ConstantSeeder
� �
.
� �#
DEFAULT_SEED_DATETIME
� �
,
� �
Disable
� �
=
� �
false
� �
,
� � 
QuantityLowWarning
� �
=
� �
$num
� �
,
� �
StockTypeId
� �
=
� �
Domain
� �
.
� �
Entities
� �
.
� �
Enums
� �
.
� �
	StockType
� �
.
� �
Food
� �
.
� �
GetDescription
� �
(
� �
)
� �
}
� �
,
� �
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
Quantity	| �
=
� �
$num
� �
,
� �
CreationDate
� �
=
� �
ConstantSeeder
� �
.
� �#
DEFAULT_SEED_DATETIME
� �
,
� �
Disable
� �
=
� �
false
� �
,
� � 
QuantityLowWarning
� �
=
� �
$num
� �
,
� �
StockTypeId
� �
=
� �
Domain
� �
.
� �
Entities
� �
.
� �
Enums
� �
.
� �
	StockType
� �
.
� �
Food
� �
.
� �
GetDescription
� �
(
� �
)
� �
}
� �
,
� �
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
� �
$num
� �
,
� �
CreationDate
� �
=
� �
ConstantSeeder
� �
.
� �#
DEFAULT_SEED_DATETIME
� �
,
� �
Disable
� �
=
� �
false
� �
,
� � 
QuantityLowWarning
� �
=
� �
$num
� �
,
� �
StockTypeId
� �
=
� �
Domain
� �
.
� �
Entities
� �
.
� �
Enums
� �
.
� �
	StockType
� �
.
� �
Food
� �
.
� �
GetDescription
� �
(
� �
)
� �
}
� �
,
� �
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
$str	~ �
,
� �
Quantity
� �
=
� �
$num
� �
,
� �
CreationDate
� �
=
� �
ConstantSeeder
� �
.
� �#
DEFAULT_SEED_DATETIME
� �
,
� �
Disable
� �
=
� �
false
� �
,
� � 
QuantityLowWarning
� �
=
� �
$num
� �
,
� �
StockTypeId
� �
=
� �
Domain
� �
.
� �
Entities
� �
.
� �
Enums
� �
.
� �
	StockType
� �
.
� �
Food
� �
.
� �
GetDescription
� �
(
� �
)
� �
}
� �
,
� �
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
� �
=
� �
$num
� �
,
� �
CreationDate
� �
=
� �
ConstantSeeder
� �
.
� �#
DEFAULT_SEED_DATETIME
� �
,
� �
Disable
� �
=
� �
false
� �
,
� � 
QuantityLowWarning
� �
=
� �
$num
� �
,
� �
StockTypeId
� �
=
� �
Domain
� �
.
� �
Entities
� �
.
� �
Enums
� �
.
� �
	StockType
� �
.
� �
Food
� �
.
� �
GetDescription
� �
(
� �
)
� �
}
� �
,
� �
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
$str	 �
,
� �
Quantity
� �
=
� �
$num
� �
,
� �
CreationDate
� �
=
� �
ConstantSeeder
� �
.
� �#
DEFAULT_SEED_DATETIME
� �
,
� �
Disable
� �
=
� �
false
� �
,
� � 
QuantityLowWarning
� �
=
� �
$num
� �
,
� �
StockTypeId
� �
=
� �
Domain
� �
.
� �
Entities
� �
.
� �
Enums
� �
.
� �
	StockType
� �
.
� �
Food
� �
.
� �
GetDescription
� �
(
� �
)
� �
}
� �
,
� �
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
Quantity	~ �
=
� �
$num
� �
,
� �
CreationDate
� �
=
� �
ConstantSeeder
� �
.
� �#
DEFAULT_SEED_DATETIME
� �
,
� �
Disable
� �
=
� �
false
� �
,
� � 
QuantityLowWarning
� �
=
� �
$num
� �
,
� �
StockTypeId
� �
=
� �
Domain
� �
.
� �
Entities
� �
.
� �
Enums
� �
.
� �
	StockType
� �
.
� �
Food
� �
.
� �
GetDescription
� �
(
� �
)
� �
}
� �
,
� �
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
Quantity	} �
=
� �
$num
� �
,
� �
CreationDate
� �
=
� �
ConstantSeeder
� �
.
� �#
DEFAULT_SEED_DATETIME
� �
,
� �
Disable
� �
=
� �
false
� �
,
� � 
QuantityLowWarning
� �
=
� �
$num
� �
,
� �
StockTypeId
� �
=
� �
Domain
� �
.
� �
Entities
� �
.
� �
Enums
� �
.
� �
	StockType
� �
.
� �
Food
� �
.
� �
GetDescription
� �
(
� �
)
� �
}
� �
,
� �
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
Quantity	} �
=
� �
$num
� �
,
� �
CreationDate
� �
=
� �
ConstantSeeder
� �
.
� �#
DEFAULT_SEED_DATETIME
� �
,
� �
Disable
� �
=
� �
false
� �
,
� � 
QuantityLowWarning
� �
=
� �
$num
� �
,
� �
StockTypeId
� �
=
� �
Domain
� �
.
� �
Entities
� �
.
� �
Enums
� �
.
� �
	StockType
� �
.
� �
Food
� �
.
� �
GetDescription
� �
(
� �
)
� �
}
� �
,
� �
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
Quantity	| �
=
� �
$num
� �
,
� �
CreationDate
� �
=
� �
ConstantSeeder
� �
.
� �#
DEFAULT_SEED_DATETIME
� �
,
� �
Disable
� �
=
� �
false
� �
,
� � 
QuantityLowWarning
� �
=
� �
$num
� �
,
� �
StockTypeId
� �
=
� �
Domain
� �
.
� �
Entities
� �
.
� �
Enums
� �
.
� �
	StockType
� �
.
� �
Food
� �
.
� �
GetDescription
� �
(
� �
)
� �
}
� �
,
� �
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
=	 �
$num
� �
,
� �
CreationDate
� �
=
� �
ConstantSeeder
� �
.
� �#
DEFAULT_SEED_DATETIME
� �
,
� �
Disable
� �
=
� �
false
� �
,
� � 
QuantityLowWarning
� �
=
� �
$num
� �
,
� �
StockTypeId
� �
=
� �
Domain
� �
.
� �
Entities
� �
.
� �
Enums
� �
.
� �
	StockType
� �
.
� �
Food
� �
.
� �
GetDescription
� �
(
� �
)
� �
}
� �
,
� �
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
Description	  w �
=
  � �
$str
  � �
,
  � �
Quantity
  � �
=
  � �
$num
  � �
,
  � �
CreationDate
  � �
=
  � �
ConstantSeeder
  � �
.
  � �#
DEFAULT_SEED_DATETIME
  � �
,
  � �
Disable
  � �
=
  � �
false
  � �
,
  � � 
QuantityLowWarning
  � �
=
  � �
$num
  � �
,
  � �
StockTypeId
  � �
=
  � �
Domain
  � �
.
  � �
Entities
  � �
.
  � �
Enums
  � �
.
  � �
	StockType
  � �
.
  � �
Food
  � �
.
  � �
GetDescription
  � �
(
  � �
)
  � �
}
  � �
,
  � �
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
,	!! �
Quantity
!!� �
=
!!� �
$num
!!� �
,
!!� �
CreationDate
!!� �
=
!!� �
ConstantSeeder
!!� �
.
!!� �#
DEFAULT_SEED_DATETIME
!!� �
,
!!� �
Disable
!!� �
=
!!� �
false
!!� �
,
!!� � 
QuantityLowWarning
!!� �
=
!!� �
$num
!!� �
,
!!� �
StockTypeId
!!� �
=
!!� �
Domain
!!� �
.
!!� �
Entities
!!� �
.
!!� �
Enums
!!� �
.
!!� �
	StockType
!!� �
.
!!� �
Food
!!� �
.
!!� �
GetDescription
!!� �
(
!!� �
)
!!� �
}
!!� �
,
!!� �
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
Quantity	""| �
=
""� �
$num
""� �
,
""� �
CreationDate
""� �
=
""� �
ConstantSeeder
""� �
.
""� �#
DEFAULT_SEED_DATETIME
""� �
,
""� �
Disable
""� �
=
""� �
false
""� �
,
""� � 
QuantityLowWarning
""� �
=
""� �
$num
""� �
,
""� �
StockTypeId
""� �
=
""� �
Domain
""� �
.
""� �
Entities
""� �
.
""� �
Enums
""� �
.
""� �
	StockType
""� �
.
""� �
Food
""� �
.
""� �
GetDescription
""� �
(
""� �
)
""� �
}
""� �
,
""� �
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
$str	##~ �
,
##� �
Quantity
##� �
=
##� �
$num
##� �
,
##� �
CreationDate
##� �
=
##� �
ConstantSeeder
##� �
.
##� �#
DEFAULT_SEED_DATETIME
##� �
,
##� �
Disable
##� �
=
##� �
false
##� �
,
##� � 
QuantityLowWarning
##� �
=
##� �
$num
##� �
,
##� �
StockTypeId
##� �
=
##� �
Domain
##� �
.
##� �
Entities
##� �
.
##� �
Enums
##� �
.
##� �
	StockType
##� �
.
##� �
Food
##� �
.
##� �
GetDescription
##� �
(
##� �
)
##� �
}
##� �
,
##� �
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
Description	$$x �
=
$$� �
$str
$$� �
,
$$� �
Quantity
$$� �
=
$$� �
$num
$$� �
,
$$� �
CreationDate
$$� �
=
$$� �
ConstantSeeder
$$� �
.
$$� �#
DEFAULT_SEED_DATETIME
$$� �
,
$$� �
Disable
$$� �
=
$$� �
false
$$� �
,
$$� � 
QuantityLowWarning
$$� �
=
$$� �
$num
$$� �
,
$$� �
StockTypeId
$$� �
=
$$� �
Domain
$$� �
.
$$� �
Entities
$$� �
.
$$� �
Enums
$$� �
.
$$� �
	StockType
$$� �
.
$$� �
Food
$$� �
.
$$� �
GetDescription
$$� �
(
$$� �
)
$$� �
}
$$� �
,
$$� �
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
=	%% �
$str
%%� �
,
%%� �
Quantity
%%� �
=
%%� �
$num
%%� �
,
%%� �
CreationDate
%%� �
=
%%� �
ConstantSeeder
%%� �
.
%%� �#
DEFAULT_SEED_DATETIME
%%� �
,
%%� �
Disable
%%� �
=
%%� �
false
%%� �
,
%%� � 
QuantityLowWarning
%%� �
=
%%� �
$num
%%� �
,
%%� �
StockTypeId
%%� �
=
%%� �
Domain
%%� �
.
%%� �
Entities
%%� �
.
%%� �
Enums
%%� �
.
%%� �
	StockType
%%� �
.
%%� �
Food
%%� �
.
%%� �
GetDescription
%%� �
(
%%� �
)
%%� �
}
%%� �
,
%%� �
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
=	&& �
$str
&&� �
,
&&� �
Quantity
&&� �
=
&&� �
$num
&&� �
,
&&� �
CreationDate
&&� �
=
&&� �
ConstantSeeder
&&� �
.
&&� �#
DEFAULT_SEED_DATETIME
&&� �
,
&&� �
Disable
&&� �
=
&&� �
false
&&� �
,
&&� � 
QuantityLowWarning
&&� �
=
&&� �
$num
&&� �
,
&&� �
StockTypeId
&&� �
=
&&� �
Domain
&&� �
.
&&� �
Entities
&&� �
.
&&� �
Enums
&&� �
.
&&� �
	StockType
&&� �
.
&&� �
Food
&&� �
.
&&� �
GetDescription
&&� �
(
&&� �
)
&&� �
}
&&� �
,
&&� �
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
''� �
,
''� �
Quantity
''� �
=
''� �
$num
''� �
,
''� �
CreationDate
''� �
=
''� �
ConstantSeeder
''� �
.
''� �#
DEFAULT_SEED_DATETIME
''� �
,
''� �
Disable
''� �
=
''� �
false
''� �
,
''� � 
QuantityLowWarning
''� �
=
''� �
$num
''� �
,
''� �
StockTypeId
''� �
=
''� �
Domain
''� �
.
''� �
Entities
''� �
.
''� �
Enums
''� �
.
''� �
	StockType
''� �
.
''� �
Food
''� �
.
''� �
GetDescription
''� �
(
''� �
)
''� �
}
''� �
,
''� �
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
Description	((x �
=
((� �
$str
((� �
,
((� �
Quantity
((� �
=
((� �
$num
((� �
,
((� �
CreationDate
((� �
=
((� �
ConstantSeeder
((� �
.
((� �#
DEFAULT_SEED_DATETIME
((� �
,
((� �
Disable
((� �
=
((� �
false
((� �
,
((� � 
QuantityLowWarning
((� �
=
((� �
$num
((� �
,
((� �
StockTypeId
((� �
=
((� �
Domain
((� �
.
((� �
Entities
((� �
.
((� �
Enums
((� �
.
((� �
	StockType
((� �
.
((� �
Food
((� �
.
((� �
GetDescription
((� �
(
((� �
)
((� �
}
((� �
,
((� �
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
Description	))y �
=
))� �
$str
))� �
,
))� �
Quantity
))� �
=
))� �
$num
))� �
,
))� �
CreationDate
))� �
=
))� �
ConstantSeeder
))� �
.
))� �#
DEFAULT_SEED_DATETIME
))� �
,
))� �
Disable
))� �
=
))� �
false
))� �
,
))� � 
QuantityLowWarning
))� �
=
))� �
$num
))� �
,
))� �
StockTypeId
))� �
=
))� �
Domain
))� �
.
))� �
Entities
))� �
.
))� �
Enums
))� �
.
))� �
	StockType
))� �
.
))� �
Food
))� �
.
))� �
GetDescription
))� �
(
))� �
)
))� �
}
))� �
,
))� �
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
Description	**v �
=
**� �
$str
**� �
,
**� �
Quantity
**� �
=
**� �
$num
**� �
,
**� �
CreationDate
**� �
=
**� �
ConstantSeeder
**� �
.
**� �#
DEFAULT_SEED_DATETIME
**� �
,
**� �
Disable
**� �
=
**� �
false
**� �
,
**� � 
QuantityLowWarning
**� �
=
**� �
$num
**� �
,
**� �
StockTypeId
**� �
=
**� �
Domain
**� �
.
**� �
Entities
**� �
.
**� �
Enums
**� �
.
**� �
	StockType
**� �
.
**� �
Food
**� �
.
**� �
GetDescription
**� �
(
**� �
)
**� �
}
**� �
,
**� �
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
Description	++u �
=
++� �
$str
++� �
,
++� �
Quantity
++� �
=
++� �
$num
++� �
,
++� �
CreationDate
++� �
=
++� �
ConstantSeeder
++� �
.
++� �#
DEFAULT_SEED_DATETIME
++� �
,
++� �
Disable
++� �
=
++� �
false
++� �
,
++� � 
QuantityLowWarning
++� �
=
++� �
$num
++� �
,
++� �
StockTypeId
++� �
=
++� �
Domain
++� �
.
++� �
Entities
++� �
.
++� �
Enums
++� �
.
++� �
	StockType
++� �
.
++� �
Food
++� �
.
++� �
GetDescription
++� �
(
++� �
)
++� �
}
++� �
,
++� �
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
Description	,,u �
=
,,� �
$str
,,� �
,
,,� �
Quantity
,,� �
=
,,� �
$num
,,� �
,
,,� �
CreationDate
,,� �
=
,,� �
ConstantSeeder
,,� �
.
,,� �#
DEFAULT_SEED_DATETIME
,,� �
,
,,� �
Disable
,,� �
=
,,� �
false
,,� �
,
,,� � 
QuantityLowWarning
,,� �
=
,,� �
$num
,,� �
,
,,� �
StockTypeId
,,� �
=
,,� �
Domain
,,� �
.
,,� �
Entities
,,� �
.
,,� �
Enums
,,� �
.
,,� �
	StockType
,,� �
.
,,� �
Food
,,� �
.
,,� �
GetDescription
,,� �
(
,,� �
)
,,� �
}
,,� �
,
,,� �
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
Description	--u �
=
--� �
$str
--� �
,
--� �
Quantity
--� �
=
--� �
$num
--� �
,
--� �
CreationDate
--� �
=
--� �
ConstantSeeder
--� �
.
--� �#
DEFAULT_SEED_DATETIME
--� �
,
--� �
Disable
--� �
=
--� �
false
--� �
,
--� � 
QuantityLowWarning
--� �
=
--� �
$num
--� �
,
--� �
StockTypeId
--� �
=
--� �
Domain
--� �
.
--� �
Entities
--� �
.
--� �
Enums
--� �
.
--� �
	StockType
--� �
.
--� �
Food
--� �
.
--� �
GetDescription
--� �
(
--� �
)
--� �
}
--� �
,
--� �
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
Description	..u �
=
..� �
$str
..� �
,
..� �
Quantity
..� �
=
..� �
$num
..� �
,
..� �
CreationDate
..� �
=
..� �
ConstantSeeder
..� �
.
..� �#
DEFAULT_SEED_DATETIME
..� �
,
..� �
Disable
..� �
=
..� �
false
..� �
,
..� � 
QuantityLowWarning
..� �
=
..� �
$num
..� �
,
..� �
StockTypeId
..� �
=
..� �
Domain
..� �
.
..� �
Entities
..� �
.
..� �
Enums
..� �
.
..� �
	StockType
..� �
.
..� �
Food
..� �
.
..� �
GetDescription
..� �
(
..� �
)
..� �
}
..� �
,
..� �
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
Quantity	//y �
=
//� �
$num
//� �
,
//� �
CreationDate
//� �
=
//� �
ConstantSeeder
//� �
.
//� �#
DEFAULT_SEED_DATETIME
//� �
,
//� �
Disable
//� �
=
//� �
false
//� �
,
//� � 
QuantityLowWarning
//� �
=
//� �
$num
//� �
,
//� �
StockTypeId
//� �
=
//� �
Domain
//� �
.
//� �
Entities
//� �
.
//� �
Enums
//� �
.
//� �
	StockType
//� �
.
//� �
Food
//� �
.
//� �
GetDescription
//� �
(
//� �
)
//� �
}
//� �
,
//� �
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
Quantity	00~ �
=
00� �
$num
00� �
,
00� �
CreationDate
00� �
=
00� �
ConstantSeeder
00� �
.
00� �#
DEFAULT_SEED_DATETIME
00� �
,
00� �
Disable
00� �
=
00� �
false
00� �
,
00� � 
QuantityLowWarning
00� �
=
00� �
$num
00� �
,
00� �
StockTypeId
00� �
=
00� �
Domain
00� �
.
00� �
Entities
00� �
.
00� �
Enums
00� �
.
00� �
	StockType
00� �
.
00� �
Food
00� �
.
00� �
GetDescription
00� �
(
00� �
)
00� �
}
00� �
,
00� �
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
Quantity	11~ �
=
11� �
$num
11� �
,
11� �
CreationDate
11� �
=
11� �
ConstantSeeder
11� �
.
11� �#
DEFAULT_SEED_DATETIME
11� �
,
11� �
Disable
11� �
=
11� �
false
11� �
,
11� � 
QuantityLowWarning
11� �
=
11� �
$num
11� �
,
11� �
StockTypeId
11� �
=
11� �
Domain
11� �
.
11� �
Entities
11� �
.
11� �
Enums
11� �
.
11� �
	StockType
11� �
.
11� �
Food
11� �
.
11� �
GetDescription
11� �
(
11� �
)
11� �
}
11� �
,
11� �
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
Quantity	22} �
=
22� �
$num
22� �
,
22� �
CreationDate
22� �
=
22� �
ConstantSeeder
22� �
.
22� �#
DEFAULT_SEED_DATETIME
22� �
,
22� �
Disable
22� �
=
22� �
false
22� �
,
22� � 
QuantityLowWarning
22� �
=
22� �
$num
22� �
,
22� �
StockTypeId
22� �
=
22� �
Domain
22� �
.
22� �
Entities
22� �
.
22� �
Enums
22� �
.
22� �
	StockType
22� �
.
22� �
Food
22� �
.
22� �
GetDescription
22� �
(
22� �
)
22� �
}
22� �
,
22� �
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
=	33 �
$str
33� �
,
33� �
Quantity
33� �
=
33� �
$num
33� �
,
33� �
CreationDate
33� �
=
33� �
ConstantSeeder
33� �
.
33� �#
DEFAULT_SEED_DATETIME
33� �
,
33� �
Disable
33� �
=
33� �
false
33� �
,
33� � 
QuantityLowWarning
33� �
=
33� �
$num
33� �
,
33� �
StockTypeId
33� �
=
33� �
Domain
33� �
.
33� �
Entities
33� �
.
33� �
Enums
33� �
.
33� �
	StockType
33� �
.
33� �
Food
33� �
.
33� �
GetDescription
33� �
(
33� �
)
33� �
}
33� �
,
33� �
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
$str	44 �
,
44� �
Quantity
44� �
=
44� �
$num
44� �
,
44� �
CreationDate
44� �
=
44� �
ConstantSeeder
44� �
.
44� �#
DEFAULT_SEED_DATETIME
44� �
,
44� �
Disable
44� �
=
44� �
false
44� �
,
44� � 
QuantityLowWarning
44� �
=
44� �
$num
44� �
,
44� �
StockTypeId
44� �
=
44� �
Domain
44� �
.
44� �
Entities
44� �
.
44� �
Enums
44� �
.
44� �
	StockType
44� �
.
44� �
Food
44� �
.
44� �
GetDescription
44� �
(
44� �
)
44� �
}
44� �
,
44� �
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
Quantity	55{ �
=
55� �
$num
55� �
,
55� �
CreationDate
55� �
=
55� �
ConstantSeeder
55� �
.
55� �#
DEFAULT_SEED_DATETIME
55� �
,
55� �
Disable
55� �
=
55� �
false
55� �
,
55� � 
QuantityLowWarning
55� �
=
55� �
$num
55� �
,
55� �
StockTypeId
55� �
=
55� �
Domain
55� �
.
55� �
Entities
55� �
.
55� �
Enums
55� �
.
55� �
	StockType
55� �
.
55� �
Food
55� �
.
55� �
GetDescription
55� �
(
55� �
)
55� �
}
55� �
,
55� �
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
Quantity	66 �
=
66� �
$num
66� �
,
66� �
CreationDate
66� �
=
66� �
ConstantSeeder
66� �
.
66� �#
DEFAULT_SEED_DATETIME
66� �
,
66� �
Disable
66� �
=
66� �
false
66� �
,
66� � 
QuantityLowWarning
66� �
=
66� �
$num
66� �
,
66� �
StockTypeId
66� �
=
66� �
Domain
66� �
.
66� �
Entities
66� �
.
66� �
Enums
66� �
.
66� �
	StockType
66� �
.
66� �
Food
66� �
.
66� �
GetDescription
66� �
(
66� �
)
66� �
}
66� �
,
66� �
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
Quantity	77z �
=
77� �
$num
77� �
,
77� �
CreationDate
77� �
=
77� �
ConstantSeeder
77� �
.
77� �#
DEFAULT_SEED_DATETIME
77� �
,
77� �
Disable
77� �
=
77� �
false
77� �
,
77� � 
QuantityLowWarning
77� �
=
77� �
$num
77� �
,
77� �
StockTypeId
77� �
=
77� �
Domain
77� �
.
77� �
Entities
77� �
.
77� �
Enums
77� �
.
77� �
	StockType
77� �
.
77� �
Food
77� �
.
77� �
GetDescription
77� �
(
77� �
)
77� �
}
77� �
,
77� �
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
Quantity	88} �
=
88� �
$num
88� �
,
88� �
CreationDate
88� �
=
88� �
ConstantSeeder
88� �
.
88� �#
DEFAULT_SEED_DATETIME
88� �
,
88� �
Disable
88� �
=
88� �
false
88� �
,
88� � 
QuantityLowWarning
88� �
=
88� �
$num
88� �
,
88� �
StockTypeId
88� �
=
88� �
Domain
88� �
.
88� �
Entities
88� �
.
88� �
Enums
88� �
.
88� �
	StockType
88� �
.
88� �
Food
88� �
.
88� �
GetDescription
88� �
(
88� �
)
88� �
}
88� �
,
88� �
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
Quantity	99x �
=
99� �
$num
99� �
,
99� �
CreationDate
99� �
=
99� �
ConstantSeeder
99� �
.
99� �#
DEFAULT_SEED_DATETIME
99� �
,
99� �
Disable
99� �
=
99� �
false
99� �
,
99� � 
QuantityLowWarning
99� �
=
99� �
$num
99� �
,
99� �
StockTypeId
99� �
=
99� �
Domain
99� �
.
99� �
Entities
99� �
.
99� �
Enums
99� �
.
99� �
	StockType
99� �
.
99� �
Food
99� �
.
99� �
GetDescription
99� �
(
99� �
)
99� �
}
99� �
,
99� �
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
$str	:: �
,
::� �
Quantity
::� �
=
::� �
$num
::� �
,
::� �
CreationDate
::� �
=
::� �
ConstantSeeder
::� �
.
::� �#
DEFAULT_SEED_DATETIME
::� �
,
::� �
Disable
::� �
=
::� �
false
::� �
,
::� � 
QuantityLowWarning
::� �
=
::� �
$num
::� �
,
::� �
StockTypeId
::� �
=
::� �
Domain
::� �
.
::� �
Entities
::� �
.
::� �
Enums
::� �
.
::� �
	StockType
::� �
.
::� �
Food
::� �
.
::� �
GetDescription
::� �
(
::� �
)
::� �
}
::� �
,
::� �
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
Quantity	;;~ �
=
;;� �
$num
;;� �
,
;;� �
CreationDate
;;� �
=
;;� �
ConstantSeeder
;;� �
.
;;� �#
DEFAULT_SEED_DATETIME
;;� �
,
;;� �
Disable
;;� �
=
;;� �
false
;;� �
,
;;� � 
QuantityLowWarning
;;� �
=
;;� �
$num
;;� �
,
;;� �
StockTypeId
;;� �
=
;;� �
Domain
;;� �
.
;;� �
Entities
;;� �
.
;;� �
Enums
;;� �
.
;;� �
	StockType
;;� �
.
;;� �
Food
;;� �
.
;;� �
GetDescription
;;� �
(
;;� �
)
;;� �
}
;;� �
,
;;� �
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
Quantity	<<{ �
=
<<� �
$num
<<� �
,
<<� �
CreationDate
<<� �
=
<<� �
ConstantSeeder
<<� �
.
<<� �#
DEFAULT_SEED_DATETIME
<<� �
,
<<� �
Disable
<<� �
=
<<� �
false
<<� �
,
<<� � 
QuantityLowWarning
<<� �
=
<<� �
$num
<<� �
,
<<� �
StockTypeId
<<� �
=
<<� �
Domain
<<� �
.
<<� �
Entities
<<� �
.
<<� �
Enums
<<� �
.
<<� �
	StockType
<<� �
.
<<� �
Food
<<� �
.
<<� �
GetDescription
<<� �
(
<<� �
)
<<� �
}
<<� �
,
<<� �
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
Quantity	=={ �
=
==� �
$num
==� �
,
==� �
CreationDate
==� �
=
==� �
ConstantSeeder
==� �
.
==� �#
DEFAULT_SEED_DATETIME
==� �
,
==� �
Disable
==� �
=
==� �
false
==� �
,
==� � 
QuantityLowWarning
==� �
=
==� �
$num
==� �
,
==� �
StockTypeId
==� �
=
==� �
Domain
==� �
.
==� �
Entities
==� �
.
==� �
Enums
==� �
.
==� �
	StockType
==� �
.
==� �
Food
==� �
.
==� �
GetDescription
==� �
(
==� �
)
==� �
}
==� �
,
==� �
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
Quantity	>>z �
=
>>� �
$num
>>� �
,
>>� �
CreationDate
>>� �
=
>>� �
ConstantSeeder
>>� �
.
>>� �#
DEFAULT_SEED_DATETIME
>>� �
,
>>� �
Disable
>>� �
=
>>� �
false
>>� �
,
>>� � 
QuantityLowWarning
>>� �
=
>>� �
$num
>>� �
,
>>� �
StockTypeId
>>� �
=
>>� �
Domain
>>� �
.
>>� �
Entities
>>� �
.
>>� �
Enums
>>� �
.
>>� �
	StockType
>>� �
.
>>� �
Food
>>� �
.
>>� �
GetDescription
>>� �
(
>>� �
)
>>� �
}
>>� �
,
>>� �
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
Quantity	??| �
=
??� �
$num
??� �
,
??� �
CreationDate
??� �
=
??� �
ConstantSeeder
??� �
.
??� �#
DEFAULT_SEED_DATETIME
??� �
,
??� �
Disable
??� �
=
??� �
false
??� �
,
??� � 
QuantityLowWarning
??� �
=
??� �
$num
??� �
,
??� �
StockTypeId
??� �
=
??� �
Domain
??� �
.
??� �
Entities
??� �
.
??� �
Enums
??� �
.
??� �
	StockType
??� �
.
??� �
Food
??� �
.
??� �
GetDescription
??� �
(
??� �
)
??� �
}
??� �
,
??� �
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
Quantity	@@x �
=
@@� �
$num
@@� �
,
@@� �
CreationDate
@@� �
=
@@� �
ConstantSeeder
@@� �
.
@@� �#
DEFAULT_SEED_DATETIME
@@� �
,
@@� �
Disable
@@� �
=
@@� �
false
@@� �
,
@@� � 
QuantityLowWarning
@@� �
=
@@� �
$num
@@� �
,
@@� �
StockTypeId
@@� �
=
@@� �
Domain
@@� �
.
@@� �
Entities
@@� �
.
@@� �
Enums
@@� �
.
@@� �
	StockType
@@� �
.
@@� �
Food
@@� �
.
@@� �
GetDescription
@@� �
(
@@� �
)
@@� �
}
@@� �
,
@@� �
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
$str	AA~ �
,
AA� �
Quantity
AA� �
=
AA� �
$num
AA� �
,
AA� �
CreationDate
AA� �
=
AA� �
ConstantSeeder
AA� �
.
AA� �#
DEFAULT_SEED_DATETIME
AA� �
,
AA� �
Disable
AA� �
=
AA� �
false
AA� �
,
AA� � 
QuantityLowWarning
AA� �
=
AA� �
$num
AA� �
,
AA� �
StockTypeId
AA� �
=
AA� �
Domain
AA� �
.
AA� �
Entities
AA� �
.
AA� �
Enums
AA� �
.
AA� �
	StockType
AA� �
.
AA� �
Food
AA� �
.
AA� �
GetDescription
AA� �
(
AA� �
)
AA� �
}
AA� �
,
AA� �
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
BB� �
=
BB� �
$num
BB� �
,
BB� �
CreationDate
BB� �
=
BB� �
ConstantSeeder
BB� �
.
BB� �#
DEFAULT_SEED_DATETIME
BB� �
,
BB� �
Disable
BB� �
=
BB� �
false
BB� �
,
BB� � 
QuantityLowWarning
BB� �
=
BB� �
$num
BB� �
,
BB� �
StockTypeId
BB� �
=
BB� �
Domain
BB� �
.
BB� �
Entities
BB� �
.
BB� �
Enums
BB� �
.
BB� �
	StockType
BB� �
.
BB� �
Food
BB� �
.
BB� �
GetDescription
BB� �
(
BB� �
)
BB� �
}
BB� �
,
BB� �
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
Quantity	CCx �
=
CC� �
$num
CC� �
,
CC� �
CreationDate
CC� �
=
CC� �
ConstantSeeder
CC� �
.
CC� �#
DEFAULT_SEED_DATETIME
CC� �
,
CC� �
Disable
CC� �
=
CC� �
false
CC� �
,
CC� � 
QuantityLowWarning
CC� �
=
CC� �
$num
CC� �
,
CC� �
StockTypeId
CC� �
=
CC� �
Domain
CC� �
.
CC� �
Entities
CC� �
.
CC� �
Enums
CC� �
.
CC� �
	StockType
CC� �
.
CC� �
Food
CC� �
.
CC� �
GetDescription
CC� �
(
CC� �
)
CC� �
}
CC� �
,
CC� �
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
Quantity	DD �
=
DD� �
$num
DD� �
,
DD� �
CreationDate
DD� �
=
DD� �
ConstantSeeder
DD� �
.
DD� �#
DEFAULT_SEED_DATETIME
DD� �
,
DD� �
Disable
DD� �
=
DD� �
false
DD� �
,
DD� � 
QuantityLowWarning
DD� �
=
DD� �
$num
DD� �
,
DD� �
StockTypeId
DD� �
=
DD� �
Domain
DD� �
.
DD� �
Entities
DD� �
.
DD� �
Enums
DD� �
.
DD� �
	StockType
DD� �
.
DD� �
Food
DD� �
.
DD� �
GetDescription
DD� �
(
DD� �
)
DD� �
}
DD� �
,
DD� �
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
EE� �
$num
EE� �
,
EE� �
CreationDate
EE� �
=
EE� �
ConstantSeeder
EE� �
.
EE� �#
DEFAULT_SEED_DATETIME
EE� �
,
EE� �
Disable
EE� �
=
EE� �
false
EE� �
,
EE� � 
QuantityLowWarning
EE� �
=
EE� �
$num
EE� �
,
EE� �
StockTypeId
EE� �
=
EE� �
Domain
EE� �
.
EE� �
Entities
EE� �
.
EE� �
Enums
EE� �
.
EE� �
	StockType
EE� �
.
EE� �
Food
EE� �
.
EE� �
GetDescription
EE� �
(
EE� �
)
EE� �
}
EE� �
,
EE� �
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
Quantity	FF| �
=
FF� �
$num
FF� �
,
FF� �
CreationDate
FF� �
=
FF� �
ConstantSeeder
FF� �
.
FF� �#
DEFAULT_SEED_DATETIME
FF� �
,
FF� �
Disable
FF� �
=
FF� �
false
FF� �
,
FF� � 
QuantityLowWarning
FF� �
=
FF� �
$num
FF� �
,
FF� �
StockTypeId
FF� �
=
FF� �
Domain
FF� �
.
FF� �
Entities
FF� �
.
FF� �
Enums
FF� �
.
FF� �
	StockType
FF� �
.
FF� �
Food
FF� �
.
FF� �
GetDescription
FF� �
(
FF� �
)
FF� �
}
FF� �
,
FF� �
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
Quantity	GG{ �
=
GG� �
$num
GG� �
,
GG� �
CreationDate
GG� �
=
GG� �
ConstantSeeder
GG� �
.
GG� �#
DEFAULT_SEED_DATETIME
GG� �
,
GG� �
Disable
GG� �
=
GG� �
false
GG� �
,
GG� � 
QuantityLowWarning
GG� �
=
GG� �
$num
GG� �
,
GG� �
StockTypeId
GG� �
=
GG� �
Domain
GG� �
.
GG� �
Entities
GG� �
.
GG� �
Enums
GG� �
.
GG� �
	StockType
GG� �
.
GG� �
Food
GG� �
.
GG� �
GetDescription
GG� �
(
GG� �
)
GG� �
}
GG� �
,
GG� �
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
Quantity	HH} �
=
HH� �
$num
HH� �
,
HH� �
CreationDate
HH� �
=
HH� �
ConstantSeeder
HH� �
.
HH� �#
DEFAULT_SEED_DATETIME
HH� �
,
HH� �
Disable
HH� �
=
HH� �
false
HH� �
,
HH� � 
QuantityLowWarning
HH� �
=
HH� �
$num
HH� �
,
HH� �
StockTypeId
HH� �
=
HH� �
Domain
HH� �
.
HH� �
Entities
HH� �
.
HH� �
Enums
HH� �
.
HH� �
	StockType
HH� �
.
HH� �
Food
HH� �
.
HH� �
GetDescription
HH� �
(
HH� �
)
HH� �
}
HH� �
,
HH� �
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
Quantity	II| �
=
II� �
$num
II� �
,
II� �
CreationDate
II� �
=
II� �
ConstantSeeder
II� �
.
II� �#
DEFAULT_SEED_DATETIME
II� �
,
II� �
Disable
II� �
=
II� �
false
II� �
,
II� � 
QuantityLowWarning
II� �
=
II� �
$num
II� �
,
II� �
StockTypeId
II� �
=
II� �
Domain
II� �
.
II� �
Entities
II� �
.
II� �
Enums
II� �
.
II� �
	StockType
II� �
.
II� �
Food
II� �
.
II� �
GetDescription
II� �
(
II� �
)
II� �
}
II� �
,
II� �
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
=	JJ �
$num
JJ� �
,
JJ� �
CreationDate
JJ� �
=
JJ� �
ConstantSeeder
JJ� �
.
JJ� �#
DEFAULT_SEED_DATETIME
JJ� �
,
JJ� �
Disable
JJ� �
=
JJ� �
false
JJ� �
,
JJ� � 
QuantityLowWarning
JJ� �
=
JJ� �
$num
JJ� �
,
JJ� �
StockTypeId
JJ� �
=
JJ� �
Domain
JJ� �
.
JJ� �
Entities
JJ� �
.
JJ� �
Enums
JJ� �
.
JJ� �
	StockType
JJ� �
.
JJ� �
Food
JJ� �
.
JJ� �
GetDescription
JJ� �
(
JJ� �
)
JJ� �
}
JJ� �
,
JJ� �
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
Quantity	KK} �
=
KK� �
$num
KK� �
,
KK� �
CreationDate
KK� �
=
KK� �
ConstantSeeder
KK� �
.
KK� �#
DEFAULT_SEED_DATETIME
KK� �
,
KK� �
Disable
KK� �
=
KK� �
false
KK� �
,
KK� � 
QuantityLowWarning
KK� �
=
KK� �
$num
KK� �
,
KK� �
StockTypeId
KK� �
=
KK� �
Domain
KK� �
.
KK� �
Entities
KK� �
.
KK� �
Enums
KK� �
.
KK� �
	StockType
KK� �
.
KK� �
Food
KK� �
.
KK� �
GetDescription
KK� �
(
KK� �
)
KK� �
}
KK� �
,
KK� �
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
LL� �
=
LL� �
$num
LL� �
,
LL� �
CreationDate
LL� �
=
LL� �
ConstantSeeder
LL� �
.
LL� �#
DEFAULT_SEED_DATETIME
LL� �
,
LL� �
Disable
LL� �
=
LL� �
false
LL� �
,
LL� � 
QuantityLowWarning
LL� �
=
LL� �
$num
LL� �
,
LL� �
StockTypeId
LL� �
=
LL� �
Domain
LL� �
.
LL� �
Entities
LL� �
.
LL� �
Enums
LL� �
.
LL� �
	StockType
LL� �
.
LL� �
Food
LL� �
.
LL� �
GetDescription
LL� �
(
LL� �
)
LL� �
}
LL� �
,
LL� �
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
Quantity	MM{ �
=
MM� �
$num
MM� �
,
MM� �
CreationDate
MM� �
=
MM� �
ConstantSeeder
MM� �
.
MM� �#
DEFAULT_SEED_DATETIME
MM� �
,
MM� �
Disable
MM� �
=
MM� �
false
MM� �
,
MM� � 
QuantityLowWarning
MM� �
=
MM� �
$num
MM� �
,
MM� �
StockTypeId
MM� �
=
MM� �
Domain
MM� �
.
MM� �
Entities
MM� �
.
MM� �
Enums
MM� �
.
MM� �
	StockType
MM� �
.
MM� �
Food
MM� �
.
MM� �
GetDescription
MM� �
(
MM� �
)
MM� �
}
MM� �
,
MM� �
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
Quantity	NN~ �
=
NN� �
$num
NN� �
,
NN� �
CreationDate
NN� �
=
NN� �
ConstantSeeder
NN� �
.
NN� �#
DEFAULT_SEED_DATETIME
NN� �
,
NN� �
Disable
NN� �
=
NN� �
false
NN� �
,
NN� � 
QuantityLowWarning
NN� �
=
NN� �
$num
NN� �
,
NN� �
StockTypeId
NN� �
=
NN� �
Domain
NN� �
.
NN� �
Entities
NN� �
.
NN� �
Enums
NN� �
.
NN� �
	StockType
NN� �
.
NN� �
Food
NN� �
.
NN� �
GetDescription
NN� �
(
NN� �
)
NN� �
}
NN� �
,
NN� �
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
Quantity	OO} �
=
OO� �
$num
OO� �
,
OO� �
CreationDate
OO� �
=
OO� �
ConstantSeeder
OO� �
.
OO� �#
DEFAULT_SEED_DATETIME
OO� �
,
OO� �
Disable
OO� �
=
OO� �
false
OO� �
,
OO� � 
QuantityLowWarning
OO� �
=
OO� �
$num
OO� �
,
OO� �
StockTypeId
OO� �
=
OO� �
Domain
OO� �
.
OO� �
Entities
OO� �
.
OO� �
Enums
OO� �
.
OO� �
	StockType
OO� �
.
OO� �
Food
OO� �
.
OO� �
GetDescription
OO� �
(
OO� �
)
OO� �
}
OO� �
,
OO� �
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
Quantity	PP} �
=
PP� �
$num
PP� �
,
PP� �
CreationDate
PP� �
=
PP� �
ConstantSeeder
PP� �
.
PP� �#
DEFAULT_SEED_DATETIME
PP� �
,
PP� �
Disable
PP� �
=
PP� �
false
PP� �
,
PP� � 
QuantityLowWarning
PP� �
=
PP� �
$num
PP� �
,
PP� �
StockTypeId
PP� �
=
PP� �
Domain
PP� �
.
PP� �
Entities
PP� �
.
PP� �
Enums
PP� �
.
PP� �
	StockType
PP� �
.
PP� �
Food
PP� �
.
PP� �
GetDescription
PP� �
(
PP� �
)
PP� �
}
PP� �
,
PP� �
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
QQ� �
,
QQ� �
Quantity
QQ� �
=
QQ� �
$num
QQ� �
,
QQ� �
CreationDate
QQ� �
=
QQ� �
ConstantSeeder
QQ� �
.
QQ� �#
DEFAULT_SEED_DATETIME
QQ� �
,
QQ� �
Disable
QQ� �
=
QQ� �
false
QQ� �
,
QQ� � 
QuantityLowWarning
QQ� �
=
QQ� �
$num
QQ� �
,
QQ� �
StockTypeId
QQ� �
=
QQ� �
Domain
QQ� �
.
QQ� �
Entities
QQ� �
.
QQ� �
Enums
QQ� �
.
QQ� �
	StockType
QQ� �
.
QQ� �
Food
QQ� �
.
QQ� �
GetDescription
QQ� �
(
QQ� �
)
QQ� �
}
QQ� �
,
QQ� �
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
Quantity	RRz �
=
RR� �
$num
RR� �
,
RR� �
CreationDate
RR� �
=
RR� �
ConstantSeeder
RR� �
.
RR� �#
DEFAULT_SEED_DATETIME
RR� �
,
RR� �
Disable
RR� �
=
RR� �
false
RR� �
,
RR� � 
QuantityLowWarning
RR� �
=
RR� �
$num
RR� �
,
RR� �
StockTypeId
RR� �
=
RR� �
Domain
RR� �
.
RR� �
Entities
RR� �
.
RR� �
Enums
RR� �
.
RR� �
	StockType
RR� �
.
RR� �
Food
RR� �
.
RR� �
GetDescription
RR� �
(
RR� �
)
RR� �
}
RR� �
,
RR� �
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
SS� �
,
SS� �
Quantity
SS� �
=
SS� �
$num
SS� �
,
SS� �
CreationDate
SS� �
=
SS� �
ConstantSeeder
SS� �
.
SS� �#
DEFAULT_SEED_DATETIME
SS� �
,
SS� �
Disable
SS� �
=
SS� �
false
SS� �
,
SS� � 
QuantityLowWarning
SS� �
=
SS� �
$num
SS� �
,
SS� �
StockTypeId
SS� �
=
SS� �
Domain
SS� �
.
SS� �
Entities
SS� �
.
SS� �
Enums
SS� �
.
SS� �
	StockType
SS� �
.
SS� �
Food
SS� �
.
SS� �
GetDescription
SS� �
(
SS� �
)
SS� �
}
SS� �
,
SS� �
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
Description	UUu �
=
UU� �
$str
UU� �
,
UU� �
Quantity
UU� �
=
UU� �
$num
UU� �
,
UU� �
CreationDate
UU� �
=
UU� �
ConstantSeeder
UU� �
.
UU� �#
DEFAULT_SEED_DATETIME
UU� �
,
UU� � 
QuantityLowWarning
UU� �
=
UU� �
$num
UU� �
,
UU� �
StockTypeId
UU� �
=
UU� �
Domain
UU� �
.
UU� �
Entities
UU� �
.
UU� �
Enums
UU� �
.
UU� �
	StockType
UU� �
.
UU� �
Hygiene
UU� �
.
UU� �
GetDescription
UU� �
(
UU� �
)
UU� �
}
UU� �
,
UU� �
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
Quantity	VV} �
=
VV� �
$num
VV� �
,
VV� �
CreationDate
VV� �
=
VV� �
ConstantSeeder
VV� �
.
VV� �#
DEFAULT_SEED_DATETIME
VV� �
,
VV� � 
QuantityLowWarning
VV� �
=
VV� �
$num
VV� �
,
VV� �
StockTypeId
VV� �
=
VV� �
Domain
VV� �
.
VV� �
Entities
VV� �
.
VV� �
Enums
VV� �
.
VV� �
	StockType
VV� �
.
VV� �
Hygiene
VV� �
.
VV� �
GetDescription
VV� �
(
VV� �
)
VV� �
}
VV� �
,
VV� �
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
Quantity	WWz �
=
WW� �
$num
WW� �
,
WW� �
CreationDate
WW� �
=
WW� �
ConstantSeeder
WW� �
.
WW� �#
DEFAULT_SEED_DATETIME
WW� �
,
WW� � 
QuantityLowWarning
WW� �
=
WW� �
$num
WW� �
,
WW� �
StockTypeId
WW� �
=
WW� �
Domain
WW� �
.
WW� �
Entities
WW� �
.
WW� �
Enums
WW� �
.
WW� �
	StockType
WW� �
.
WW� �
Hygiene
WW� �
.
WW� �
GetDescription
WW� �
(
WW� �
)
WW� �
}
WW� �
,
WW� �
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
Quantity	XX~ �
=
XX� �
$num
XX� �
,
XX� �
CreationDate
XX� �
=
XX� �
ConstantSeeder
XX� �
.
XX� �#
DEFAULT_SEED_DATETIME
XX� �
,
XX� � 
QuantityLowWarning
XX� �
=
XX� �
$num
XX� �
,
XX� �
StockTypeId
XX� �
=
XX� �
Domain
XX� �
.
XX� �
Entities
XX� �
.
XX� �
Enums
XX� �
.
XX� �
	StockType
XX� �
.
XX� �
Hygiene
XX� �
.
XX� �
GetDescription
XX� �
(
XX� �
)
XX� �
}
XX� �
,
XX� �
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
Quantity	YY} �
=
YY� �
$num
YY� �
,
YY� �
CreationDate
YY� �
=
YY� �
ConstantSeeder
YY� �
.
YY� �#
DEFAULT_SEED_DATETIME
YY� �
,
YY� � 
QuantityLowWarning
YY� �
=
YY� �
$num
YY� �
,
YY� �
StockTypeId
YY� �
=
YY� �
Domain
YY� �
.
YY� �
Entities
YY� �
.
YY� �
Enums
YY� �
.
YY� �
	StockType
YY� �
.
YY� �
Hygiene
YY� �
.
YY� �
GetDescription
YY� �
(
YY� �
)
YY� �
}
YY� �
,
YY� �
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
Quantity	ZZ} �
=
ZZ� �
$num
ZZ� �
,
ZZ� �
CreationDate
ZZ� �
=
ZZ� �
ConstantSeeder
ZZ� �
.
ZZ� �#
DEFAULT_SEED_DATETIME
ZZ� �
,
ZZ� � 
QuantityLowWarning
ZZ� �
=
ZZ� �
$num
ZZ� �
,
ZZ� �
StockTypeId
ZZ� �
=
ZZ� �
Domain
ZZ� �
.
ZZ� �
Entities
ZZ� �
.
ZZ� �
Enums
ZZ� �
.
ZZ� �
	StockType
ZZ� �
.
ZZ� �
Hygiene
ZZ� �
.
ZZ� �
GetDescription
ZZ� �
(
ZZ� �
)
ZZ� �
}
ZZ� �
,
ZZ� �
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
Quantity	[[y �
=
[[� �
$num
[[� �
,
[[� �
CreationDate
[[� �
=
[[� �
ConstantSeeder
[[� �
.
[[� �#
DEFAULT_SEED_DATETIME
[[� �
,
[[� � 
QuantityLowWarning
[[� �
=
[[� �
$num
[[� �
,
[[� �
StockTypeId
[[� �
=
[[� �
Domain
[[� �
.
[[� �
Entities
[[� �
.
[[� �
Enums
[[� �
.
[[� �
	StockType
[[� �
.
[[� �
Hygiene
[[� �
.
[[� �
GetDescription
[[� �
(
[[� �
)
[[� �
}
[[� �
,
[[� �
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
$str	\\~ �
,
\\� �
Quantity
\\� �
=
\\� �
$num
\\� �
,
\\� �
CreationDate
\\� �
=
\\� �
ConstantSeeder
\\� �
.
\\� �#
DEFAULT_SEED_DATETIME
\\� �
,
\\� � 
QuantityLowWarning
\\� �
=
\\� �
$num
\\� �
,
\\� �
StockTypeId
\\� �
=
\\� �
Domain
\\� �
.
\\� �
Entities
\\� �
.
\\� �
Enums
\\� �
.
\\� �
	StockType
\\� �
.
\\� �
Hygiene
\\� �
.
\\� �
GetDescription
\\� �
(
\\� �
)
\\� �
}
\\� �
,
\\� �
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
$str	]]~ �
,
]]� �
Quantity
]]� �
=
]]� �
$num
]]� �
,
]]� �
CreationDate
]]� �
=
]]� �
ConstantSeeder
]]� �
.
]]� �#
DEFAULT_SEED_DATETIME
]]� �
,
]]� � 
QuantityLowWarning
]]� �
=
]]� �
$num
]]� �
,
]]� �
StockTypeId
]]� �
=
]]� �
Domain
]]� �
.
]]� �
Entities
]]� �
.
]]� �
Enums
]]� �
.
]]� �
	StockType
]]� �
.
]]� �
Hygiene
]]� �
.
]]� �
GetDescription
]]� �
(
]]� �
)
]]� �
}
]]� �
,
]]� �
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
$str	^^~ �
,
^^� �
Quantity
^^� �
=
^^� �
$num
^^� �
,
^^� �
CreationDate
^^� �
=
^^� �
ConstantSeeder
^^� �
.
^^� �#
DEFAULT_SEED_DATETIME
^^� �
,
^^� � 
QuantityLowWarning
^^� �
=
^^� �
$num
^^� �
,
^^� �
StockTypeId
^^� �
=
^^� �
Domain
^^� �
.
^^� �
Entities
^^� �
.
^^� �
Enums
^^� �
.
^^� �
	StockType
^^� �
.
^^� �
Hygiene
^^� �
.
^^� �
GetDescription
^^� �
(
^^� �
)
^^� �
}
^^� �
,
^^� �
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
=	__ �
$num
__� �
,
__� �
CreationDate
__� �
=
__� �
ConstantSeeder
__� �
.
__� �#
DEFAULT_SEED_DATETIME
__� �
,
__� � 
QuantityLowWarning
__� �
=
__� �
$num
__� �
,
__� �
StockTypeId
__� �
=
__� �
Domain
__� �
.
__� �
Entities
__� �
.
__� �
Enums
__� �
.
__� �
	StockType
__� �
.
__� �
Hygiene
__� �
.
__� �
GetDescription
__� �
(
__� �
)
__� �
}
__� �
,
__� �
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
Quantity	`` �
=
``� �
$num
``� �
,
``� �
CreationDate
``� �
=
``� �
ConstantSeeder
``� �
.
``� �#
DEFAULT_SEED_DATETIME
``� �
,
``� � 
QuantityLowWarning
``� �
=
``� �
$num
``� �
,
``� �
StockTypeId
``� �
=
``� �
Domain
``� �
.
``� �
Entities
``� �
.
``� �
Enums
``� �
.
``� �
	StockType
``� �
.
``� �
Hygiene
``� �
.
``� �
GetDescription
``� �
(
``� �
)
``� �
}
``� �
,
``� �
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
Quantity	aa} �
=
aa� �
$num
aa� �
,
aa� �
CreationDate
aa� �
=
aa� �
ConstantSeeder
aa� �
.
aa� �#
DEFAULT_SEED_DATETIME
aa� �
,
aa� � 
QuantityLowWarning
aa� �
=
aa� �
$num
aa� �
,
aa� �
StockTypeId
aa� �
=
aa� �
Domain
aa� �
.
aa� �
Entities
aa� �
.
aa� �
Enums
aa� �
.
aa� �
	StockType
aa� �
.
aa� �
Hygiene
aa� �
.
aa� �
GetDescription
aa� �
(
aa� �
)
aa� �
}
aa� �
,
aa� �
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
Description	bbw �
=
bb� �
$str
bb� �
,
bb� �
Quantity
bb� �
=
bb� �
$num
bb� �
,
bb� �
CreationDate
bb� �
=
bb� �
ConstantSeeder
bb� �
.
bb� �#
DEFAULT_SEED_DATETIME
bb� �
,
bb� � 
QuantityLowWarning
bb� �
=
bb� �
$num
bb� �
,
bb� �
StockTypeId
bb� �
=
bb� �
Domain
bb� �
.
bb� �
Entities
bb� �
.
bb� �
Enums
bb� �
.
bb� �
	StockType
bb� �
.
bb� �
Hygiene
bb� �
.
bb� �
GetDescription
bb� �
(
bb� �
)
bb� �
}
bb� �
,
bb� �
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
cc� �
,
cc� �
Quantity
cc� �
=
cc� �
$num
cc� �
,
cc� �
CreationDate
cc� �
=
cc� �
ConstantSeeder
cc� �
.
cc� �#
DEFAULT_SEED_DATETIME
cc� �
,
cc� � 
QuantityLowWarning
cc� �
=
cc� �
$num
cc� �
,
cc� �
StockTypeId
cc� �
=
cc� �
Domain
cc� �
.
cc� �
Entities
cc� �
.
cc� �
Enums
cc� �
.
cc� �
	StockType
cc� �
.
cc� �
Hygiene
cc� �
.
cc� �
GetDescription
cc� �
(
cc� �
)
cc� �
}
cc� �
,
cc� �
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
,	dd �
Quantity
dd� �
=
dd� �
$num
dd� �
,
dd� �
CreationDate
dd� �
=
dd� �
ConstantSeeder
dd� �
.
dd� �#
DEFAULT_SEED_DATETIME
dd� �
,
dd� � 
QuantityLowWarning
dd� �
=
dd� �
$num
dd� �
,
dd� �
StockTypeId
dd� �
=
dd� �
Domain
dd� �
.
dd� �
Entities
dd� �
.
dd� �
Enums
dd� �
.
dd� �
	StockType
dd� �
.
dd� �
Hygiene
dd� �
.
dd� �
GetDescription
dd� �
(
dd� �
)
dd� �
}
dd� �
,
dd� �
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
,	ee �
Quantity
ee� �
=
ee� �
$num
ee� �
,
ee� �
CreationDate
ee� �
=
ee� �
ConstantSeeder
ee� �
.
ee� �#
DEFAULT_SEED_DATETIME
ee� �
,
ee� � 
QuantityLowWarning
ee� �
=
ee� �
$num
ee� �
,
ee� �
StockTypeId
ee� �
=
ee� �
Domain
ee� �
.
ee� �
Entities
ee� �
.
ee� �
Enums
ee� �
.
ee� �
	StockType
ee� �
.
ee� �
Hygiene
ee� �
.
ee� �
GetDescription
ee� �
(
ee� �
)
ee� �
}
ee� �
,
ee� �
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
,	ff �
Quantity
ff� �
=
ff� �
$num
ff� �
,
ff� �
CreationDate
ff� �
=
ff� �
ConstantSeeder
ff� �
.
ff� �#
DEFAULT_SEED_DATETIME
ff� �
,
ff� � 
QuantityLowWarning
ff� �
=
ff� �
$num
ff� �
,
ff� �
StockTypeId
ff� �
=
ff� �
Domain
ff� �
.
ff� �
Entities
ff� �
.
ff� �
Enums
ff� �
.
ff� �
	StockType
ff� �
.
ff� �
Hygiene
ff� �
.
ff� �
GetDescription
ff� �
(
ff� �
)
ff� �
}
ff� �
,
ff� �
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
$str	gg~ �
,
gg� �
Quantity
gg� �
=
gg� �
$num
gg� �
,
gg� �
CreationDate
gg� �
=
gg� �
ConstantSeeder
gg� �
.
gg� �#
DEFAULT_SEED_DATETIME
gg� �
,
gg� � 
QuantityLowWarning
gg� �
=
gg� �
$num
gg� �
,
gg� �
StockTypeId
gg� �
=
gg� �
Domain
gg� �
.
gg� �
Entities
gg� �
.
gg� �
Enums
gg� �
.
gg� �
	StockType
gg� �
.
gg� �
Hygiene
gg� �
.
gg� �
GetDescription
gg� �
(
gg� �
)
gg� �
}
gg� �
,
gg� �
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
Quantity	hh~ �
=
hh� �
$num
hh� �
,
hh� �
CreationDate
hh� �
=
hh� �
ConstantSeeder
hh� �
.
hh� �#
DEFAULT_SEED_DATETIME
hh� �
,
hh� � 
QuantityLowWarning
hh� �
=
hh� �
$num
hh� �
,
hh� �
StockTypeId
hh� �
=
hh� �
Domain
hh� �
.
hh� �
Entities
hh� �
.
hh� �
Enums
hh� �
.
hh� �
	StockType
hh� �
.
hh� �
Hygiene
hh� �
.
hh� �
GetDescription
hh� �
(
hh� �
)
hh� �
}
hh� �
,
hh� �
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
Quantity	ii~ �
=
ii� �
$num
ii� �
,
ii� �
CreationDate
ii� �
=
ii� �
ConstantSeeder
ii� �
.
ii� �#
DEFAULT_SEED_DATETIME
ii� �
,
ii� � 
QuantityLowWarning
ii� �
=
ii� �
$num
ii� �
,
ii� �
StockTypeId
ii� �
=
ii� �
Domain
ii� �
.
ii� �
Entities
ii� �
.
ii� �
Enums
ii� �
.
ii� �
	StockType
ii� �
.
ii� �
Hygiene
ii� �
.
ii� �
GetDescription
ii� �
(
ii� �
)
ii� �
}
ii� �
,
ii� �
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
Quantity	jj~ �
=
jj� �
$num
jj� �
,
jj� �
CreationDate
jj� �
=
jj� �
ConstantSeeder
jj� �
.
jj� �#
DEFAULT_SEED_DATETIME
jj� �
,
jj� � 
QuantityLowWarning
jj� �
=
jj� �
$num
jj� �
,
jj� �
StockTypeId
jj� �
=
jj� �
Domain
jj� �
.
jj� �
Entities
jj� �
.
jj� �
Enums
jj� �
.
jj� �
	StockType
jj� �
.
jj� �
Hygiene
jj� �
.
jj� �
GetDescription
jj� �
(
jj� �
)
jj� �
}
jj� �
,
jj� �
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
kk� �
,
kk� �
Quantity
kk� �
=
kk� �
$num
kk� �
,
kk� �
CreationDate
kk� �
=
kk� �
ConstantSeeder
kk� �
.
kk� �#
DEFAULT_SEED_DATETIME
kk� �
,
kk� � 
QuantityLowWarning
kk� �
=
kk� �
$num
kk� �
,
kk� �
StockTypeId
kk� �
=
kk� �
Domain
kk� �
.
kk� �
Entities
kk� �
.
kk� �
Enums
kk� �
.
kk� �
	StockType
kk� �
.
kk� �
Hygiene
kk� �
.
kk� �
GetDescription
kk� �
(
kk� �
)
kk� �
}
kk� �
,
kk� �
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
$str	ll �
,
ll� �
Quantity
ll� �
=
ll� �
$num
ll� �
,
ll� �
CreationDate
ll� �
=
ll� �
ConstantSeeder
ll� �
.
ll� �#
DEFAULT_SEED_DATETIME
ll� �
,
ll� � 
QuantityLowWarning
ll� �
=
ll� �
$num
ll� �
,
ll� �
StockTypeId
ll� �
=
ll� �
Domain
ll� �
.
ll� �
Entities
ll� �
.
ll� �
Enums
ll� �
.
ll� �
	StockType
ll� �
.
ll� �
Hygiene
ll� �
.
ll� �
GetDescription
ll� �
(
ll� �
)
ll� �
}
ll� �
,
ll� �
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
=	mm �
$str
mm� �
,
mm� �
Quantity
mm� �
=
mm� �
$num
mm� �
,
mm� �
CreationDate
mm� �
=
mm� �
ConstantSeeder
mm� �
.
mm� �#
DEFAULT_SEED_DATETIME
mm� �
,
mm� � 
QuantityLowWarning
mm� �
=
mm� �
$num
mm� �
,
mm� �
StockTypeId
mm� �
=
mm� �
Domain
mm� �
.
mm� �
Entities
mm� �
.
mm� �
Enums
mm� �
.
mm� �
	StockType
mm� �
.
mm� �
Hygiene
mm� �
.
mm� �
GetDescription
mm� �
(
mm� �
)
mm� �
}
mm� �
,
mm� �
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
Description	nnu �
=
nn� �
$str
nn� �
,
nn� �
Quantity
nn� �
=
nn� �
$num
nn� �
,
nn� �
CreationDate
nn� �
=
nn� �
ConstantSeeder
nn� �
.
nn� �#
DEFAULT_SEED_DATETIME
nn� �
,
nn� � 
QuantityLowWarning
nn� �
=
nn� �
$num
nn� �
,
nn� �
StockTypeId
nn� �
=
nn� �
Domain
nn� �
.
nn� �
Entities
nn� �
.
nn� �
Enums
nn� �
.
nn� �
	StockType
nn� �
.
nn� �
Hygiene
nn� �
.
nn� �
GetDescription
nn� �
(
nn� �
)
nn� �
}
nn� �
,
nn� �
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
oo� �
,
oo� �
Quantity
oo� �
=
oo� �
$num
oo� �
,
oo� �
CreationDate
oo� �
=
oo� �
ConstantSeeder
oo� �
.
oo� �#
DEFAULT_SEED_DATETIME
oo� �
,
oo� � 
QuantityLowWarning
oo� �
=
oo� �
$num
oo� �
,
oo� �
StockTypeId
oo� �
=
oo� �
Domain
oo� �
.
oo� �
Entities
oo� �
.
oo� �
Enums
oo� �
.
oo� �
	StockType
oo� �
.
oo� �
Hygiene
oo� �
.
oo� �
GetDescription
oo� �
(
oo� �
)
oo� �
}
oo� �
,
oo� �
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
Quantity	pp| �
=
pp� �
$num
pp� �
,
pp� �
CreationDate
pp� �
=
pp� �
ConstantSeeder
pp� �
.
pp� �#
DEFAULT_SEED_DATETIME
pp� �
,
pp� � 
QuantityLowWarning
pp� �
=
pp� �
$num
pp� �
,
pp� �
StockTypeId
pp� �
=
pp� �
Domain
pp� �
.
pp� �
Entities
pp� �
.
pp� �
Enums
pp� �
.
pp� �
	StockType
pp� �
.
pp� �
Hygiene
pp� �
.
pp� �
GetDescription
pp� �
(
pp� �
)
pp� �
}
pp� �
,
pp� �
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
$str	qq~ �
,
qq� �
Quantity
qq� �
=
qq� �
$num
qq� �
,
qq� �
CreationDate
qq� �
=
qq� �
ConstantSeeder
qq� �
.
qq� �#
DEFAULT_SEED_DATETIME
qq� �
,
qq� � 
QuantityLowWarning
qq� �
=
qq� �
$num
qq� �
,
qq� �
StockTypeId
qq� �
=
qq� �
Domain
qq� �
.
qq� �
Entities
qq� �
.
qq� �
Enums
qq� �
.
qq� �
	StockType
qq� �
.
qq� �
Hygiene
qq� �
.
qq� �
GetDescription
qq� �
(
qq� �
)
qq� �
}
qq� �
,
qq� �
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
,	rr �
Quantity
rr� �
=
rr� �
$num
rr� �
,
rr� �
CreationDate
rr� �
=
rr� �
ConstantSeeder
rr� �
.
rr� �#
DEFAULT_SEED_DATETIME
rr� �
,
rr� � 
QuantityLowWarning
rr� �
=
rr� �
$num
rr� �
,
rr� �
StockTypeId
rr� �
=
rr� �
Domain
rr� �
.
rr� �
Entities
rr� �
.
rr� �
Enums
rr� �
.
rr� �
	StockType
rr� �
.
rr� �
Hygiene
rr� �
.
rr� �
GetDescription
rr� �
(
rr� �
)
rr� �
}
rr� �
,
rr� �
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
ss� �
$str
ss� �
,
ss� �
Quantity
ss� �
=
ss� �
$num
ss� �
,
ss� �
CreationDate
ss� �
=
ss� �
ConstantSeeder
ss� �
.
ss� �#
DEFAULT_SEED_DATETIME
ss� �
,
ss� � 
QuantityLowWarning
ss� �
=
ss� �
$num
ss� �
,
ss� �
StockTypeId
ss� �
=
ss� �
Domain
ss� �
.
ss� �
Entities
ss� �
.
ss� �
Enums
ss� �
.
ss� �
	StockType
ss� �
.
ss� �
Hygiene
ss� �
.
ss� �
GetDescription
ss� �
(
ss� �
)
ss� �
}
ss� �
,
ss� �
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
,	tt �
Quantity
tt� �
=
tt� �
$num
tt� �
,
tt� �
CreationDate
tt� �
=
tt� �
ConstantSeeder
tt� �
.
tt� �#
DEFAULT_SEED_DATETIME
tt� �
,
tt� � 
QuantityLowWarning
tt� �
=
tt� �
$num
tt� �
,
tt� �
StockTypeId
tt� �
=
tt� �
Domain
tt� �
.
tt� �
Entities
tt� �
.
tt� �
Enums
tt� �
.
tt� �
	StockType
tt� �
.
tt� �
Hygiene
tt� �
.
tt� �
GetDescription
tt� �
(
tt� �
)
tt� �
}
tt� �
,
tt� �
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
Quantity	uux �
=
uu� �
$num
uu� �
,
uu� �
CreationDate
uu� �
=
uu� �
ConstantSeeder
uu� �
.
uu� �#
DEFAULT_SEED_DATETIME
uu� �
,
uu� � 
QuantityLowWarning
uu� �
=
uu� �
$num
uu� �
,
uu� �
StockTypeId
uu� �
=
uu� �
Domain
uu� �
.
uu� �
Entities
uu� �
.
uu� �
Enums
uu� �
.
uu� �
	StockType
uu� �
.
uu� �
Hygiene
uu� �
.
uu� �
GetDescription
uu� �
(
uu� �
)
uu� �
}
uu� �
,
uu� �
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
$str	vv~ �
,
vv� �
Quantity
vv� �
=
vv� �
$num
vv� �
,
vv� �
CreationDate
vv� �
=
vv� �
ConstantSeeder
vv� �
.
vv� �#
DEFAULT_SEED_DATETIME
vv� �
,
vv� � 
QuantityLowWarning
vv� �
=
vv� �
$num
vv� �
,
vv� �
StockTypeId
vv� �
=
vv� �
Domain
vv� �
.
vv� �
Entities
vv� �
.
vv� �
Enums
vv� �
.
vv� �
	StockType
vv� �
.
vv� �
Hygiene
vv� �
.
vv� �
GetDescription
vv� �
(
vv� �
)
vv� �
}
vv� �
,
vv� �
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
Quantity	ww{ �
=
ww� �
$num
ww� �
,
ww� �
CreationDate
ww� �
=
ww� �
ConstantSeeder
ww� �
.
ww� �#
DEFAULT_SEED_DATETIME
ww� �
,
ww� � 
QuantityLowWarning
ww� �
=
ww� �
$num
ww� �
,
ww� �
StockTypeId
ww� �
=
ww� �
Domain
ww� �
.
ww� �
Entities
ww� �
.
ww� �
Enums
ww� �
.
ww� �
	StockType
ww� �
.
ww� �
Hygiene
ww� �
.
ww� �
GetDescription
ww� �
(
ww� �
)
ww� �
}
ww� �
,
ww� �
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
,	xx �
Quantity
xx� �
=
xx� �
$num
xx� �
,
xx� �
CreationDate
xx� �
=
xx� �
ConstantSeeder
xx� �
.
xx� �#
DEFAULT_SEED_DATETIME
xx� �
,
xx� � 
QuantityLowWarning
xx� �
=
xx� �
$num
xx� �
,
xx� �
StockTypeId
xx� �
=
xx� �
Domain
xx� �
.
xx� �
Entities
xx� �
.
xx� �
Enums
xx� �
.
xx� �
	StockType
xx� �
.
xx� �
Hygiene
xx� �
.
xx� �
GetDescription
xx� �
(
xx� �
)
xx� �
}
xx� �
,
xx� �
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
Quantity	yy{ �
=
yy� �
$num
yy� �
,
yy� �
CreationDate
yy� �
=
yy� �
ConstantSeeder
yy� �
.
yy� �#
DEFAULT_SEED_DATETIME
yy� �
,
yy� � 
QuantityLowWarning
yy� �
=
yy� �
$num
yy� �
,
yy� �
StockTypeId
yy� �
=
yy� �
Domain
yy� �
.
yy� �
Entities
yy� �
.
yy� �
Enums
yy� �
.
yy� �
	StockType
yy� �
.
yy� �
Hygiene
yy� �
.
yy� �
GetDescription
yy� �
(
yy� �
)
yy� �
}
yy� �
,
yy� �
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
Quantity	zz| �
=
zz� �
$num
zz� �
,
zz� �
CreationDate
zz� �
=
zz� �
ConstantSeeder
zz� �
.
zz� �#
DEFAULT_SEED_DATETIME
zz� �
,
zz� � 
QuantityLowWarning
zz� �
=
zz� �
$num
zz� �
,
zz� �
StockTypeId
zz� �
=
zz� �
Domain
zz� �
.
zz� �
Entities
zz� �
.
zz� �
Enums
zz� �
.
zz� �
	StockType
zz� �
.
zz� �
Hygiene
zz� �
.
zz� �
GetDescription
zz� �
(
zz� �
)
zz� �
}
zz� �
,
zz� �
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
Quantity	{{} �
=
{{� �
$num
{{� �
,
{{� �
CreationDate
{{� �
=
{{� �
ConstantSeeder
{{� �
.
{{� �#
DEFAULT_SEED_DATETIME
{{� �
,
{{� � 
QuantityLowWarning
{{� �
=
{{� �
$num
{{� �
,
{{� �
StockTypeId
{{� �
=
{{� �
Domain
{{� �
.
{{� �
Entities
{{� �
.
{{� �
Enums
{{� �
.
{{� �
	StockType
{{� �
.
{{� �
Hygiene
{{� �
.
{{� �
GetDescription
{{� �
(
{{� �
)
{{� �
}
{{� �
,
{{� �
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
Quantity	||} �
=
||� �
$num
||� �
,
||� �
CreationDate
||� �
=
||� �
ConstantSeeder
||� �
.
||� �#
DEFAULT_SEED_DATETIME
||� �
,
||� � 
QuantityLowWarning
||� �
=
||� �
$num
||� �
,
||� �
StockTypeId
||� �
=
||� �
Domain
||� �
.
||� �
Entities
||� �
.
||� �
Enums
||� �
.
||� �
	StockType
||� �
.
||� �
Hygiene
||� �
.
||� �
GetDescription
||� �
(
||� �
)
||� �
}
||� �
,
||� �
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
$str	}}~ �
,
}}� �
Quantity
}}� �
=
}}� �
$num
}}� �
,
}}� �
CreationDate
}}� �
=
}}� �
ConstantSeeder
}}� �
.
}}� �#
DEFAULT_SEED_DATETIME
}}� �
,
}}� � 
QuantityLowWarning
}}� �
=
}}� �
$num
}}� �
,
}}� �
StockTypeId
}}� �
=
}}� �
Domain
}}� �
.
}}� �
Entities
}}� �
.
}}� �
Enums
}}� �
.
}}� �
	StockType
}}� �
.
}}� �
Hygiene
}}� �
.
}}� �
GetDescription
}}� �
(
}}� �
)
}}� �
}
}}� �
,
}}� �
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
Description	~~v �
=
~~� �
$str
~~� �
,
~~� �
Quantity
~~� �
=
~~� �
$num
~~� �
,
~~� �
CreationDate
~~� �
=
~~� �
ConstantSeeder
~~� �
.
~~� �#
DEFAULT_SEED_DATETIME
~~� �
,
~~� � 
QuantityLowWarning
~~� �
=
~~� �
$num
~~� �
,
~~� �
StockTypeId
~~� �
=
~~� �
Domain
~~� �
.
~~� �
Entities
~~� �
.
~~� �
Enums
~~� �
.
~~� �
	StockType
~~� �
.
~~� �
Hygiene
~~� �
.
~~� �
GetDescription
~~� �
(
~~� �
)
~~� �
}
~~� �
,
~~� �
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
Description	v �
=
� �
$str
� �
,
� �
Quantity
� �
=
� �
$num
� �
,
� �
CreationDate
� �
=
� �
ConstantSeeder
� �
.
� �#
DEFAULT_SEED_DATETIME
� �
,
� � 
QuantityLowWarning
� �
=
� �
$num
� �
,
� �
StockTypeId
� �
=
� �
Domain
� �
.
� �
Entities
� �
.
� �
Enums
� �
.
� �
	StockType
� �
.
� �
Hygiene
� �
.
� �
GetDescription
� �
(
� �
)
� �
}
� �
,
� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] u
,
��u v
Description��v �
=��� �
$str��� �
,��� �
Quantity��� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] g
,
��g h
Description
��h s
=
��t u
$str
��v x
,
��x y
Quantity��y �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] m
,
��m n
Description
��n y
=
��z {
$str
��| ~
,
��~ 
Quantity�� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] o
,
��o p
Description
��p {
=
��| }
$str��~ �
,��� �
Quantity��� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Food��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] k
,
��k l
Description
��l w
=
��x y
$str
��z |
,
��| }
Quantity��} �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] k
,
��k l
Description
��l w
=
��x y
$str
��z |
,
��| }
Quantity��} �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] n
,
��n o
Description
��o z
=
��{ |
$str
��} 
,�� �
Quantity��� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] k
,
��k l
Description
��l w
=
��x y
$str
��z |
,
��| }
Quantity��} �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] p
,
��p q
Description
��q |
=
��} ~
$str�� �
,��� �
Quantity��� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] j
,
��j k
Description
��k v
=
��w x
$str
��y {
,
��{ |
Quantity��| �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] c
,
��c d
Description
��d o
=
��p q
$str
��r t
,
��t u
Quantity
��u }
=
��~ 
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] m
,
��m n
Description
��n y
=
��z {
$str
��| ~
,
��~ 
Quantity�� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] o
,
��o p
Description
��p {
=
��| }
$str��~ �
,��� �
Quantity��� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] n
,
��n o
Description
��o z
=
��{ |
$str
��} 
,�� �
Quantity��� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] o
,
��o p
Description
��p {
=
��| }
$str��~ �
,��� �
Quantity��� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] n
,
��n o
Description
��o z
=
��{ |
$str
��} 
,�� �
Quantity��� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] o
,
��o p
Description
��p {
=
��| }
$str��~ �
,��� �
Quantity��� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] o
,
��o p
Description
��p {
=
��| }
$str��~ �
,��� �
Quantity��� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] t
,
��t u
Description��u �
=��� �
$str��� �
,��� �
Quantity��� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] m
,
��m n
Description
��n y
=
��z {
$str
��| ~
,
��~ 
Quantity�� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] r
,
��r s
Description
��s ~
=�� �
$str��� �
,��� �
Quantity��� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] r
,
��r s
Description
��s ~
=�� �
$str��� �
,��� �
Quantity��� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] n
,
��n o
Description
��o z
=
��{ |
$str
��} 
,�� �
Quantity��� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] r
,
��r s
Description
��s ~
=�� �
$str��� �
,��� �
Quantity��� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] p
,
��p q
Description
��q |
=
��} ~
$str�� �
,��� �
Quantity��� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] s
,
��s t
Description
��t 
=��� �
$str��� �
,��� �
Quantity��� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] t
,
��t u
Description��u �
=��� �
$str��� �
,��� �
Quantity��� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] h
,
��h i
Description
��i t
=
��u v
$str
��w y
,
��y z
Quantity��z �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] p
,
��p q
Description
��q |
=
��} ~
$str�� �
,��� �
Quantity��� �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] d
,
��d e
Description
��e p
=
��q r
$str
��s u
,
��u v
Quantity
��v ~
=�� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] g
,
��g h
Description
��h s
=
��t u
$str
��v x
,
��x y
Quantity��y �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] h
,
��h i
Description
��i t
=
��u v
$str
��w y
,
��y z
Quantity��z �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Hygiene��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
new
�� 
Stock
�� 
(
�� 
)
�� 
{
�� 
Id
�� 
=
��  !
Guid
��" &
.
��& '
Parse
��' ,
(
��, -
$str
��- S
)
��S T
,
��T U
Name
��V Z
=
��[ \
$str
��] l
,
��l m
Description
��m x
=
��y z
$str
��{ }
,
��} ~
Quantity��~ �
=��� �
$num��� �
,��� �
CreationDate��� �
=��� �
ConstantSeeder��� �
.��� �%
DEFAULT_SEED_DATETIME��� �
,��� �"
QuantityLowWarning��� �
=��� �
$num��� �
,��� �
StockTypeId��� �
=��� �
Domain��� �
.��� �
Entities��� �
.��� �
Enums��� �
.��� �
	StockType��� �
.��� �
Food��� �
.��� �
GetDescription��� �
(��� �
)��� �
}��� �
,��� �
}
�� 
;
�� 
}
�� 
}�� �
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
,	 �
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
Employee	x �
)
� �
,
� �
} 
; 
} 
} �
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