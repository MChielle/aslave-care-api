∆
]E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Services\v1\UserValidationService.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Services %
.% &
v1& (
{ 
public 

class !
UserValidationService &
:' (
ServiceBase) 4
<4 5"
UserValidationAddModel5 K
,K L%
UserValidationUpdateModelM f
,f g%
UserValidationPatchModel	h Ä
,
Ä Å$
UserValidationGetModel
Ç ò
,
ò ô!
UserValidationModel
ö ≠
,
≠ Æ
UserValidation
Ø Ω
,
Ω æ
Guid
ø √
>
√ ƒ
,
ƒ ≈$
IUserValidationService
∆ ‹
{ 
private 
readonly %
IUserValidationRepository 2
_repository3 >
;> ?
public !
UserValidationService $
($ %%
IUserValidationRepository% >

repository? I
,I J
IServiceContextK Z
serviceContext[ i
)i j
: 
base 
( 

repository 
, 
serviceContext -
)- .
{ 	
_repository 
= 

repository $
;$ %
} 	
public 
async 
Task 
< 
IResponseBase '
>' (
SoftDeleteById) 7
(7 8
Guid8 <
id= ?
)? @
{ 	
var 
entity 
= 
await 
_repository *
.* +
GetByIdAsync+ 7
(7 8
id8 :
): ;
;; <
if 
( 
entity 
== 
null 
) 
return  &
new' *
NoContentResponse+ <
(< =
)= >
;> ?
entity 
= -
!RemoveUserValidationSensitiveData 6
(6 7
entity7 =
)= >
;> ?
await 
_repository 
. 
UpdateAsync )
() *
entity* 0
)0 1
;1 2
return   
new   

OkResponse   !
<  ! ""
DefaultMessageResponse  " 8
>  8 9
(  9 :
new  : ="
DefaultMessageResponse  > T
(  T U
ConstantMessages  U e
.  e f
CRUD_DELETED  f r
,  r s
null  t x
)  x y
)  y z
;  z {
}!! 	
private## 
UserValidation## -
!RemoveUserValidationSensitiveData## @
(##@ A
UserValidation##A O
userValidation##P ^
)##^ _
{$$ 	
userValidation%% 
.%% !
EmailConfirmationCode%% 0
=%%1 2
null%%3 7
;%%7 8
userValidation&& 
.&& '
PhoneNumberConfirmationCode&& 6
=&&7 8
null&&9 =
;&&= >
userValidation'' 
.'' 
EmailValidated'' )
=''* +
false'', 1
;''1 2
userValidation(( 
.((  
PhoneNumberValidated(( /
=((0 1
false((2 7
;((7 8
userValidation)) 
.)) 
DeletionDate)) '
=))( )
DateTime))* 2
.))2 3
UtcNow))3 9
;))9 :
return** 
userValidation** !
;**! "
}++ 	
},, 
}-- ãú
SE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Services\v1\UserService.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Services %
.% &
v1& (
{ 
public 

class 
UserService 
: 
ServiceBase *
<* +
UserAddModel+ 7
,7 8
UserUpdateModel9 H
,H I
UserPatchModelJ X
,X Y
UserGetModelZ f
,f g
	UserModelh q
,q r
Users w
,w x
Guidy }
>} ~
,~ 
IUserService
Ä å
{ 
private 
readonly 
IJwtService $
_jwtService% 0
;0 1
private 
readonly 
IOAuthService &
_oAuthService' 4
;4 5
private 
readonly 
IUserRepository (
_repository) 4
;4 5
private 
readonly "
IUserValidationService /"
_userValidationService0 F
;F G
private 
readonly  
INotificationService - 
_notificationService. B
;B C
public!! 
UserService!! 
(!! 
IUserRepository!! *

repository!!+ 5
,!!5 6 
INotificationService!!7 K
notificationService!!L _
,!!_ `"
IUserValidationService"" "!
userValidationService""# 8
,""8 9
IJwtService"": E

jwtService""F P
,""P Q
IServiceContext## 
serviceContext## *
,##* +
IOAuthService##, 9
oAuthService##: F
)##F G
:$$ 
base$$ 
($$ 

repository$$ 
,$$ 
serviceContext$$ -
)$$- .
{%% 	
_repository&& 
=&& 

repository&& $
;&&$ % 
_notificationService''  
=''! "
notificationService''# 6
;''6 7"
_userValidationService(( "
=((# $!
userValidationService((% :
;((: ;
_jwtService)) 
=)) 

jwtService)) $
;))$ %
_oAuthService** 
=** 
oAuthService** (
;**( )
}++ 	
public-- 
async-- 
Task-- 
<-- 
IResponseBase-- '
>--' (
GetByEmailAsync--) 8
(--8 9
string--9 ?
email--@ E
)--E F
{.. 	
var// 
user// 
=// 
await// 
_repository// (
.//( )
GetByEmailAsync//) 8
(//8 9
email//9 >
)//> ?
;//? @
if00 
(00 
user00 
==00 
null00 
)00 
return00 $
new00% (
NoContentResponse00) :
(00: ;
)00; <
;00< =
return11 
new11 

OkResponse11 !
<11! "
	UserModel11" +
>11+ ,
(11, -
Mapper11- 3
.113 4
Map114 7
<117 8
	UserModel118 A
>11A B
(11B C
user11C G
)11G H
)11H I
;11I J
}22 	
public44 
async44 
Task44 
<44 
IResponseBase44 '
>44' (!
GetByPhoneNumberAsync44) >
(44> ?
string44? E
phoneNumber44F Q
)44Q R
{55 	
var66 
user66 
=66 
await66 
_repository66 (
.66( )!
GetByPhoneNumberAsync66) >
(66> ?
phoneNumber66? J
)66J K
;66K L
if77 
(77 
user77 
==77 
null77 
)77 
return77 $
new77% (
NoContentResponse77) :
(77: ;
)77; <
;77< =
return88 
new88 

OkResponse88 !
<88! "
	UserModel88" +
>88+ ,
(88, -
Mapper88- 3
.883 4
Map884 7
<887 8
	UserModel888 A
>88A B
(88B C
user88C G
)88G H
)88H I
;88I J
}99 	
public;; 
async;; 
Task;; 
<;; 
IResponseBase;; '
>;;' ( 
AddUserWithRoleAsync;;) =
(;;= >
UserAddModel;;> J
	userModel;;K T
,;;T U
Domain;;V \
.;;\ ]
Entities;;] e
.;;e f
Enums;;f k
.;;k l
UserType;;l t
userType;;u }
);;} ~
{<< 	
var== 
user== 
=== 
await== 
_repository== (
.==( ) 
AddUserWithRoleAsync==) =
(=== >
Mapper==> D
.==D E
Map==E H
<==H I
User==I M
>==M N
(==N O
	userModel==O X
)==X Y
,==Y Z
userType==[ c
)==c d
;==d e
if>> 
(>> 
user>> 
==>> 
null>> 
)>> 
return>> $
new>>% (
NoContentResponse>>) :
(>>: ;
)>>; <
;>>< =
return?? 
new?? 

OkResponse?? !
<??! "
	UserModel??" +
>??+ ,
(??, -
Mapper??- 3
.??3 4
Map??4 7
<??7 8
	UserModel??8 A
>??A B
(??B C
user??C G
)??G H
)??H I
;??I J
}@@ 	
publicBB 
asyncBB 
TaskBB 
<BB 
IResponseBaseBB '
>BB' (
SoftDeleteByIdBB) 7
(BB7 8
GuidBB8 <
idBB= ?
)BB? @
{CC 	
varDD 
userDD 
=DD 
awaitDD 
_repositoryDD (
.DD( ) 
GetCompleteByIdAsyncDD) =
(DD= >
idDD> @
)DD@ A
;DDA B
ifEE 
(EE 
userEE 
==EE 
nullEE 
)EE 
returnEE $
newEE% (
NoContentResponseEE) :
(EE: ;
)EE; <
;EE< =
userFF 
=FF #
RemoveUserSensitiveDataFF *
(FF* +
userFF+ /
)FF/ 0
;FF0 1
awaitGG 
_repositoryGG 
.GG 
UpdateAsyncGG )
(GG) *
userGG* .
)GG. /
;GG/ 0
awaitHH "
_userValidationServiceHH (
.HH( )
SoftDeleteByIdHH) 7
(HH7 8
userHH8 <
.HH< =
UserValidationIdHH= M
)HHM N
;HHN O
returnII 
newII 

OkResponseII !
<II! ""
DefaultMessageResponseII" 8
>II8 9
(II9 :
newII: ="
DefaultMessageResponseII> T
(IIT U
ConstantMessagesIIU e
.IIe f
CRUD_DELETEDIIf r
,IIr s
nullIIt x
)IIx y
)IIy z
;IIz {
}JJ 	
publicLL 
asyncLL 
TaskLL 
<LL 
IResponseBaseLL '
>LL' (
SoftDeleteByEmailLL) :
(LL: ;
stringLL; A
emailLLB G
)LLG H
{MM 	
varNN 
userNN 
=NN 
awaitNN 
_repositoryNN (
.NN( )
GetByEmailAsyncNN) 8
(NN8 9
emailNN9 >
)NN> ?
;NN? @
ifPP 
(PP 
userPP 
==PP 
nullPP 
)PP 
returnPP $
newPP% (
NoContentResponsePP) :
(PP: ;
)PP; <
;PP< =
userQQ 
=QQ #
RemoveUserSensitiveDataQQ *
(QQ* +
userQQ+ /
)QQ/ 0
;QQ0 1
awaitRR 
_repositoryRR 
.RR 
UpdateAsyncRR )
(RR) *
userRR* .
)RR. /
;RR/ 0
awaitSS "
_userValidationServiceSS (
.SS( )
SoftDeleteByIdSS) 7
(SS7 8
userSS8 <
.SS< =
UserValidationIdSS= M
)SSM N
;SSN O
returnTT 
newTT 

OkResponseTT !
<TT! ""
DefaultMessageResponseTT" 8
>TT8 9
(TT9 :
newTT: ="
DefaultMessageResponseTT> T
(TTT U
ConstantMessagesTTU e
.TTe f
CRUD_DELETEDTTf r
,TTr s
nullTTt x
)TTx y
)TTy z
;TTz {
}UU 	
publicWW 
asyncWW 
TaskWW 
<WW 
IResponseBaseWW '
>WW' (#
SoftDeleteByPhoneNumberWW) @
(WW@ A
stringWWA G
phoneNumberWWH S
)WWS T
{XX 	
varYY 
userYY 
=YY 
awaitYY 
_repositoryYY (
.YY( )!
GetByPhoneNumberAsyncYY) >
(YY> ?
phoneNumberYY? J
)YYJ K
;YYK L
ifZZ 
(ZZ 
userZZ 
==ZZ 
nullZZ 
)ZZ 
returnZZ $
newZZ% (
NoContentResponseZZ) :
(ZZ: ;
)ZZ; <
;ZZ< =
user[[ 
=[[ #
RemoveUserSensitiveData[[ *
([[* +
user[[+ /
)[[/ 0
;[[0 1
await\\ 
_repository\\ 
.\\ 
UpdateAsync\\ )
(\\) *
user\\* .
)\\. /
;\\/ 0
await]] "
_userValidationService]] (
.]]( )
SoftDeleteById]]) 7
(]]7 8
user]]8 <
.]]< =
UserValidationId]]= M
)]]M N
;]]N O
return^^ 
new^^ 

OkResponse^^ !
<^^! ""
DefaultMessageResponse^^" 8
>^^8 9
(^^9 :
new^^: ="
DefaultMessageResponse^^> T
(^^T U
ConstantMessages^^U e
.^^e f
CRUD_DELETED^^f r
,^^r s
null^^t x
)^^x y
)^^y z
;^^z {
}__ 	
privateaa 
Useraa #
RemoveUserSensitiveDataaa ,
(aa, -
Useraa- 1
useraa2 6
)aa6 7
{bb 	
usercc 
.cc 
PhoneNumbercc 
=cc 
$strcc (
;cc( )
userdd 
.dd 
Emaildd 
=dd 
$strdd "
;dd" #
useree 
.ee 
Nameee 
=ee 
$stree !
;ee! "
userff 
.ff 
AppleUserIdff 
=ff 
$strff (
;ff( )
usergg 
.gg 
Passwordgg 
=gg 
nullgg  
;gg  !
userhh 
.hh 
Disablehh 
=hh 
truehh 
;hh  
userii 
.ii %
FireBaseCloudMessageTokenii *
=ii+ ,
nullii- 1
;ii1 2
userjj 
.jj 
DeletionDatejj 
=jj 
DateTimejj  (
.jj( )
UtcNowjj) /
;jj/ 0
returnkk 
userkk 
;kk 
}ll 	
publicnn 
asyncnn 
Tasknn  
UpdateLastLoginAsyncnn .
(nn. /
Guidnn/ 3
idnn4 6
)nn6 7
{oo 	
varpp 
userpp 
=pp 
awaitpp 
_repositorypp (
.pp( )
GetByIdAsyncpp) 5
(pp5 6
idpp6 8
)pp8 9
;pp9 :
userqq 
.qq 
	LastLoginqq 
=qq 
DateTimeqq %
.qq% &
UtcNowqq& ,
;qq, -
awaitrr 
_repositoryrr 
.rr 
UpdateAsyncrr )
(rr) *
userrr* .
)rr. /
;rr/ 0
}ss 	
publicuu 
overrideuu 
asyncuu 
Taskuu "
<uu" #
IResponseBaseuu# 0
>uu0 1
UpdateAsyncuu2 =
(uu= >
UserUpdateModeluu> M
modeluuN S
)uuS T
{vv 	
varww 
userww 
=ww 
awaitww 
_repositoryww (
.ww( ) 
GetCompleteByIdAsyncww) =
(ww= >
modelww> C
.wwC D
IdwwD F
)wwF G
;wwG H
ifxx 
(xx 
userxx 
==xx 
nullxx 
)xx 
returnxx $
newxx% (
NoContentResponsexx) :
(xx: ;
)xx; <
;xx< =
ifzz 
(zz 
userzz 
.zz 
UserValidationzz #
==zz$ &
nullzz' +
)zz+ ,
returnzz- 3
newzz4 7
BadRequestResponsezz8 J
(zzJ K
ConstantMessageszzK [
.zz[ \'
CRUD_USER_HAS_NO_VALIDATIONzz\ w
,zzw x
nullzzy }
)zz} ~
;zz~ 
IResponseBase|| 
response|| "
;||" #
if~~ 
(~~ 
model~~ 
.~~ 
PhoneNumber~~ !
!=~~" $
user~~% )
.~~) *
PhoneNumber~~* 5
)~~5 6
{ 
var
ÄÄ 
usedPhoneNumber
ÄÄ #
=
ÄÄ$ %
await
ÄÄ& +
_repository
ÄÄ, 7
.
ÄÄ7 8#
GetByPhoneNumberAsync
ÄÄ8 M
(
ÄÄM N
model
ÄÄN S
.
ÄÄS T
PhoneNumber
ÄÄT _
)
ÄÄ_ `
;
ÄÄ` a
if
ÅÅ 
(
ÅÅ 
usedPhoneNumber
ÅÅ #
!=
ÅÅ$ &
null
ÅÅ' +
)
ÅÅ+ ,
return
ÅÅ- 3
new
ÅÅ4 7
ConflictResponse
ÅÅ8 H
(
ÅÅH I
ConstantMessages
ÅÅI Y
.
ÅÅY Z!
CRUD_PHONE_CONFLICT
ÅÅZ m
)
ÅÅm n
;
ÅÅn o
user
ÇÇ 
.
ÇÇ 
UserValidation
ÇÇ #
.
ÇÇ# $"
PhoneNumberValidated
ÇÇ$ 8
=
ÇÇ9 :
false
ÇÇ; @
;
ÇÇ@ A
user
ÉÉ 
.
ÉÉ 
UserValidation
ÉÉ #
.
ÉÉ# $)
PhoneNumberConfirmationCode
ÉÉ$ ?
=
ÉÉ@ A$
ConfirmationCodeHelper
ÉÉB X
.
ÉÉX Y&
GenerateConfirmationCode
ÉÉY q
(
ÉÉq r
)
ÉÉr s
;
ÉÉs t
response
ÑÑ 
=
ÑÑ 
await
ÑÑ  $
_userValidationService
ÑÑ! 7
.
ÑÑ7 8
AddOrUpdateAsync
ÑÑ8 H
(
ÑÑH I
Mapper
ÑÑI O
.
ÑÑO P
Map
ÑÑP S
<
ÑÑS T!
UserValidationModel
ÑÑT g
>
ÑÑg h
(
ÑÑh i
user
ÑÑi m
.
ÑÑm n
UserValidation
ÑÑn |
)
ÑÑ| }
)
ÑÑ} ~
;
ÑÑ~ 
if
ÖÖ 
(
ÖÖ 
!
ÖÖ 
response
ÖÖ 
.
ÖÖ 
	IsSuccess
ÖÖ '
)
ÖÖ' (
return
ÖÖ) /
new
ÖÖ0 3 
BadRequestResponse
ÖÖ4 F
(
ÖÖF G
ConstantMessages
ÖÖG W
.
ÖÖW X
CRUD_UPDATE_FAIL
ÖÖX h
,
ÖÖh i
null
ÖÖj n
)
ÖÖn o
;
ÖÖo p
var
ÜÜ 
message
ÜÜ 
=
ÜÜ 
string
ÜÜ $
.
ÜÜ$ %
Format
ÜÜ% +
(
ÜÜ+ ,
ConstantMessages
ÜÜ, <
.
ÜÜ< =+
MESSAGE_SMS_CONFIRMATION_CODE
ÜÜ= Z
,
ÜÜZ [
user
ÜÜ\ `
.
ÜÜ` a
UserValidation
ÜÜa o
.
ÜÜo p*
PhoneNumberConfirmationCodeÜÜp ã
)ÜÜã å
;ÜÜå ç
}
àà 
if
ää 
(
ää 
model
ää 
.
ää 
Email
ää 
!=
ää 
user
ää #
.
ää# $
Email
ää$ )
)
ää) *
{
ãã 
var
åå 
	usedEmail
åå 
=
åå 
await
åå  %
_repository
åå& 1
.
åå1 2
GetByEmailAsync
åå2 A
(
ååA B
model
ååB G
.
ååG H
Email
ååH M
)
ååM N
;
ååN O
if
çç 
(
çç 
	usedEmail
çç 
!=
çç  
null
çç! %
)
çç% &
return
çç' -
new
çç. 1
ConflictResponse
çç2 B
(
ççB C
ConstantMessages
ççC S
.
ççS T!
CRUD_EMAIL_CONFLICT
ççT g
)
ççg h
;
ççh i
user
éé 
.
éé 
UserValidation
éé #
.
éé# $
EmailValidated
éé$ 2
=
éé3 4
false
éé5 :
;
éé: ;
user
èè 
.
èè 
UserValidation
èè #
.
èè# $#
EmailConfirmationCode
èè$ 9
=
èè: ;$
ConfirmationCodeHelper
èè< R
.
èèR S&
GenerateConfirmationCode
èèS k
(
èèk l
)
èèl m
;
èèm n
response
êê 
=
êê 
await
êê  $
_userValidationService
êê! 7
.
êê7 8
AddOrUpdateAsync
êê8 H
(
êêH I
Mapper
êêI O
.
êêO P
Map
êêP S
<
êêS T!
UserValidationModel
êêT g
>
êêg h
(
êêh i
user
êêi m
.
êêm n
UserValidation
êên |
)
êê| }
)
êê} ~
;
êê~ 
if
ëë 
(
ëë 
!
ëë 
response
ëë 
.
ëë 
	IsSuccess
ëë '
)
ëë' (
return
ëë) /
new
ëë0 3 
BadRequestResponse
ëë4 F
(
ëëF G
ConstantMessages
ëëG W
.
ëëW X
CRUD_UPDATE_FAIL
ëëX h
,
ëëh i
null
ëëj n
)
ëën o
;
ëëo p
}
ìì 
user
ïï 
.
ïï 
Email
ïï 
=
ïï 
model
ïï 
.
ïï 
Email
ïï $
;
ïï$ %
user
ññ 
.
ññ 
Name
ññ 
=
ññ 
model
ññ 
?
ññ 
.
ññ 
Name
ññ #
??
ññ$ &
user
ññ' +
.
ññ+ ,
Name
ññ, 0
;
ññ0 1
user
óó 
.
óó 
PhoneNumber
óó 
=
óó 
model
óó $
.
óó$ %
PhoneNumber
óó% 0
??
óó1 3
user
óó4 8
.
óó8 9
PhoneNumber
óó9 D
;
óóD E
user
òò 
.
òò 
LastChangeDate
òò 
=
òò  !
DateTime
òò" *
.
òò* +
UtcNow
òò+ 1
;
òò1 2
user
ôô 
.
ôô 
Disable
ôô 
=
ôô 
model
ôô  
.
ôô  !
Disable
ôô! (
;
ôô( )
user
õõ 
=
õõ 
await
õõ 
_repository
õõ $
.
õõ$ %
UpdateAsync
õõ% 0
(
õõ0 1
user
õõ1 5
)
õõ5 6
;
õõ6 7
return
ùù 
new
ùù 

OkResponse
ùù !
<
ùù! "
UserGetModel
ùù" .
>
ùù. /
(
ùù/ 0
Mapper
ùù0 6
.
ùù6 7
Map
ùù7 :
<
ùù: ;
UserGetModel
ùù; G
>
ùùG H
(
ùùH I
user
ùùI M
)
ùùM N
)
ùùN O
;
ùùO P
}
ûû 	
public
†† 
async
†† 
Task
†† 
<
†† 
IResponseBase
†† '
>
††' (
UpdateAsync
††) 4
(
††4 5
	UserModel
††5 >
model
††? D
)
††D E
{
°° 	
model
¢¢ 
.
¢¢ 
LastChangeDate
¢¢  
=
¢¢! "
DateTime
¢¢# +
.
¢¢+ ,
UtcNow
¢¢, 2
;
¢¢2 3
model
££ 
.
££ $
LastPasswordChangeDate
££ (
=
££) *
DateTime
££+ 3
.
££3 4
UtcNow
££4 :
;
££: ;
var
§§ 
user
§§ 
=
§§ 
await
§§ 
_repository
§§ (
.
§§( )
UpdateAsync
§§) 4
(
§§4 5
Mapper
§§5 ;
.
§§; <
Map
§§< ?
<
§§? @
User
§§@ D
>
§§D E
(
§§E F
model
§§F K
)
§§K L
)
§§L M
;
§§M N
return
•• 
new
•• 

OkResponse
•• !
<
••! "
UserGetModel
••" .
>
••. /
(
••/ 0
Mapper
••0 6
.
••6 7
Map
••7 :
<
••: ;
UserGetModel
••; G
>
••G H
(
••H I
user
••I M
)
••M N
)
••N O
;
••O P
}
¶¶ 	
public
®® 
async
®® 
Task
®® 
<
®® 
IResponseBase
®® '
>
®®' ( 
UpdateByTokenAsync
®®) ;
(
®®; <
string
®®< B
jwtToken
®®C K
,
®®K L
UserUpdateModel
®®M \
model
®®] b
)
®®b c
{
©© 	
var
™™ 
userId
™™ 
=
™™ 
_jwtService
™™ $
.
™™$ % 
GetUserIdFromToken
™™% 7
(
™™7 8
jwtToken
™™8 @
)
™™@ A
;
™™A B
model
´´ 
.
´´ 
Id
´´ 
=
´´ 
userId
´´ 
;
´´ 
return
¨¨ 
await
¨¨ 
UpdateAsync
¨¨ $
(
¨¨$ %
model
¨¨% *
)
¨¨* +
;
¨¨+ ,
}
≠≠ 	
public
ØØ 
async
ØØ 
Task
ØØ 
<
ØØ 
IResponseBase
ØØ '
>
ØØ' (#
GetByAppleUserIdAsync
ØØ) >
(
ØØ> ?
string
ØØ? E
appleUserId
ØØF Q
,
ØØQ R
CancellationToken
ØØS d
cancellationToken
ØØe v
=
ØØw x
defaultØØy Ä
)ØØÄ Å
{
∞∞ 	
var
±± 
user
±± 
=
±± 
await
±± 
_repository
±± (
.
±±( )#
GetByAppleUserIdAsync
±±) >
(
±±> ?
appleUserId
±±? J
,
±±J K
cancellationToken
±±L ]
)
±±] ^
;
±±^ _
if
≤≤ 
(
≤≤ 
user
≤≤ 
==
≤≤ 
null
≤≤ 
)
≤≤ 
return
≤≤ $
new
≤≤% (
NoContentResponse
≤≤) :
(
≤≤: ;
)
≤≤; <
;
≤≤< =
return
≥≥ 
new
≥≥ 

OkResponse
≥≥ !
<
≥≥! "
	UserModel
≥≥" +
>
≥≥+ ,
(
≥≥, -
Mapper
≥≥- 3
.
≥≥3 4
Map
≥≥4 7
<
≥≥7 8
	UserModel
≥≥8 A
>
≥≥A B
(
≥≥B C
user
≥≥C G
)
≥≥G H
)
≥≥H I
;
≥≥I J
}
¥¥ 	
public
∂∂ 
async
∂∂ 
Task
∂∂ 
<
∂∂ 
IResponseBase
∂∂ '
>
∂∂' (%
CheckPhoneNumberByToken
∂∂) @
(
∂∂@ A
string
∂∂A G
jwtToken
∂∂H P
,
∂∂P Q
string
∂∂R X
phoneNumber
∂∂Y d
)
∂∂d e
{
∑∑ 	
var
∏∏ 
userId
∏∏ 
=
∏∏ 
_jwtService
∏∏ $
.
∏∏$ % 
GetUserIdFromToken
∏∏% 7
(
∏∏7 8
jwtToken
∏∏8 @
)
∏∏@ A
;
∏∏A B
var
ππ 
user
ππ 
=
ππ 
await
ππ 
_repository
ππ (
.
ππ( )#
GetByPhoneNumberAsync
ππ) >
(
ππ> ?
phoneNumber
ππ? J
)
ππJ K
;
ππK L
if
ªª 
(
ªª 
user
ªª 
!=
ªª 
null
ªª 
&&
ªª 
user
ªª  $
.
ªª$ %
Id
ªª% '
!=
ªª( *
userId
ªª+ 1
)
ªª1 2
return
ªª3 9
new
ªª: =
ConflictResponse
ªª> N
(
ªªN O
ConstantMessages
ªªO _
.
ªª_ `!
CRUD_PHONE_CONFLICT
ªª` s
)
ªªs t
;
ªªt u
user
ΩΩ 
=
ΩΩ 
await
ΩΩ 
_repository
ΩΩ $
.
ΩΩ$ %"
GetCompleteByIdAsync
ΩΩ% 9
(
ΩΩ9 :
userId
ΩΩ: @
)
ΩΩ@ A
;
ΩΩA B
if
ææ 
(
ææ 
user
ææ 
==
ææ 
null
ææ 
)
ææ 
return
ææ $
new
ææ% ("
UnauthorizedResponse
ææ) =
(
ææ= >
)
ææ> ?
;
ææ? @
user
¿¿ 
.
¿¿ 
UserValidation
¿¿ 
.
¿¿  )
PhoneNumberConfirmationCode
¿¿  ;
=
¿¿< =$
ConfirmationCodeHelper
¿¿> T
.
¿¿T U&
GenerateConfirmationCode
¿¿U m
(
¿¿m n
)
¿¿n o
;
¿¿o p
var
¡¡ 
response
¡¡ 
=
¡¡ 
await
¡¡  $
_userValidationService
¡¡! 7
.
¡¡7 8
AddOrUpdateAsync
¡¡8 H
(
¡¡H I
Mapper
¡¡I O
.
¡¡O P
Map
¡¡P S
<
¡¡S T!
UserValidationModel
¡¡T g
>
¡¡g h
(
¡¡h i
user
¡¡i m
.
¡¡m n
UserValidation
¡¡n |
)
¡¡| }
)
¡¡} ~
;
¡¡~ 
if
¬¬ 
(
¬¬ 
!
¬¬ 
response
¬¬ 
.
¬¬ 
	IsSuccess
¬¬ #
)
¬¬# $
return
¬¬% +
new
¬¬, / 
BadRequestResponse
¬¬0 B
(
¬¬B C
ConstantMessages
¬¬C S
.
¬¬S T
CRUD_UPDATE_FAIL
¬¬T d
,
¬¬d e
null
¬¬f j
)
¬¬j k
;
¬¬k l
var
√√ 
message
√√ 
=
√√ 
string
√√  
.
√√  !
Format
√√! '
(
√√' (
ConstantMessages
√√( 8
.
√√8 9+
MESSAGE_SMS_CONFIRMATION_CODE
√√9 V
,
√√V W
user
√√X \
.
√√\ ]
UserValidation
√√] k
.
√√k l*
PhoneNumberConfirmationCode√√l á
)√√á à
;√√à â
return
∆∆ 
new
∆∆ 

OkResponse
∆∆ !
<
∆∆! "
bool
∆∆" &
>
∆∆& '
(
∆∆' (
response
∆∆( 0
.
∆∆0 1
	IsSuccess
∆∆1 :
)
∆∆: ;
;
∆∆; <
}
«« 	
public
…… 
async
…… 
Task
…… 
<
…… 
IResponseBase
…… '
>
……' (1
#ValidateAndUpdatePhoneNumberByToken
……) L
(
……L M
string
……M S
jwtToken
……T \
,
……\ ]
string
……^ d
phoneNumber
……e p
,
……p q
string
……r x
confirmationCode……y â
)……â ä
{
   	
var
ÀÀ 
userId
ÀÀ 
=
ÀÀ 
_jwtService
ÀÀ $
.
ÀÀ$ % 
GetUserIdFromToken
ÀÀ% 7
(
ÀÀ7 8
jwtToken
ÀÀ8 @
)
ÀÀ@ A
;
ÀÀA B
var
ÕÕ 
user
ÕÕ 
=
ÕÕ 
await
ÕÕ 
_repository
ÕÕ (
.
ÕÕ( )#
GetByPhoneNumberAsync
ÕÕ) >
(
ÕÕ> ?
phoneNumber
ÕÕ? J
)
ÕÕJ K
;
ÕÕK L
if
œœ 
(
œœ 
user
œœ 
!=
œœ 
null
œœ 
&&
œœ 
user
œœ  $
.
œœ$ %
Id
œœ% '
!=
œœ( *
userId
œœ+ 1
)
œœ1 2
return
œœ3 9
new
œœ: =
ConflictResponse
œœ> N
(
œœN O
ConstantMessages
œœO _
.
œœ_ `!
CRUD_PHONE_CONFLICT
œœ` s
)
œœs t
;
œœt u
user
—— 
=
—— 
await
—— 
_repository
—— $
.
——$ %"
GetCompleteByIdAsync
——% 9
(
——9 :
userId
——: @
)
——@ A
;
——A B
if
““ 
(
““ 
user
““ 
==
““ 
null
““ 
)
““ 
return
““ $
new
““% ("
UnauthorizedResponse
““) =
(
““= >
)
““> ?
;
““? @
if
‘‘ 
(
‘‘ 
user
‘‘ 
.
‘‘ 
UserValidation
‘‘ #
.
‘‘# $)
PhoneNumberConfirmationCode
‘‘$ ?
!=
‘‘@ B
confirmationCode
‘‘C S
)
‘‘S T
return
‘‘U [
new
‘‘\ _"
UnauthorizedResponse
‘‘` t
(
‘‘t u
)
‘‘u v
;
‘‘v w
user
÷÷ 
.
÷÷ 
PhoneNumber
÷÷ 
=
÷÷ 
phoneNumber
÷÷ *
;
÷÷* +
user
◊◊ 
.
◊◊ 
UserValidation
◊◊ 
.
◊◊  )
PhoneNumberConfirmationCode
◊◊  ;
=
◊◊< =
null
◊◊> B
;
◊◊B C
user
ÿÿ 
.
ÿÿ 
UserValidation
ÿÿ 
.
ÿÿ  "
PhoneNumberValidated
ÿÿ  4
=
ÿÿ5 6
true
ÿÿ7 ;
;
ÿÿ; <
var
⁄⁄ 
response
⁄⁄ 
=
⁄⁄ 
await
⁄⁄  $
_userValidationService
⁄⁄! 7
.
⁄⁄7 8
AddOrUpdateAsync
⁄⁄8 H
(
⁄⁄H I
Mapper
⁄⁄I O
.
⁄⁄O P
Map
⁄⁄P S
<
⁄⁄S T!
UserValidationModel
⁄⁄T g
>
⁄⁄g h
(
⁄⁄h i
user
⁄⁄i m
.
⁄⁄m n
UserValidation
⁄⁄n |
)
⁄⁄| }
)
⁄⁄} ~
;
⁄⁄~ 
if
€€ 
(
€€ 
!
€€ 
response
€€ 
.
€€ 
	IsSuccess
€€ #
)
€€# $
return
€€% +
new
€€, / 
BadRequestResponse
€€0 B
(
€€B C
ConstantMessages
€€C S
.
€€S T
CRUD_UPDATE_FAIL
€€T d
,
€€d e
null
€€f j
)
€€j k
;
€€k l
user
‹‹ 
=
‹‹ 
await
‹‹ 
_repository
‹‹ $
.
‹‹$ %
UpdateAsync
‹‹% 0
(
‹‹0 1
user
‹‹1 5
)
‹‹5 6
;
‹‹6 7
if
›› 
(
›› 
user
›› 
==
›› 
null
›› 
)
›› 
return
›› $
new
››% ( 
BadRequestResponse
››) ;
(
››; <
ConstantMessages
››< L
.
››L M
CRUD_UPDATE_FAIL
››M ]
,
››] ^
null
››_ c
)
››c d
;
››d e
return
ﬂﬂ 
new
ﬂﬂ 

OkResponse
ﬂﬂ !
<
ﬂﬂ! "
UserGetModel
ﬂﬂ" .
>
ﬂﬂ. /
(
ﬂﬂ/ 0
Mapper
ﬂﬂ0 6
.
ﬂﬂ6 7
Map
ﬂﬂ7 :
<
ﬂﬂ: ;
UserGetModel
ﬂﬂ; G
>
ﬂﬂG H
(
ﬂﬂH I
user
ﬂﬂI M
)
ﬂﬂM N
)
ﬂﬂN O
;
ﬂﬂO P
}
‡‡ 	
public
‚‚ 
override
‚‚ 
async
‚‚ 
Task
‚‚ "
<
‚‚" #
IResponseBase
‚‚# 0
>
‚‚0 1
Patch
‚‚2 7
(
‚‚7 8
Guid
‚‚8 <
id
‚‚= ?
,
‚‚? @
UserPatchModel
‚‚A O
model
‚‚P U
)
‚‚U V
{
„„ 	
var
‰‰ 
response
‰‰ 
=
‰‰ 
await
‰‰  
base
‰‰! %
.
‰‰% &
Patch
‰‰& +
(
‰‰+ ,
id
‰‰, .
,
‰‰. /
model
‰‰0 5
)
‰‰5 6
;
‰‰6 7
if
ÂÂ 
(
ÂÂ 
!
ÂÂ 
response
ÂÂ 
.
ÂÂ 
	IsSuccess
ÂÂ #
)
ÂÂ# $
return
ÂÂ% +
response
ÂÂ, 4
;
ÂÂ4 5
var
ÊÊ 
userGetModel
ÊÊ 
=
ÊÊ 
(
ÊÊ  
(
ÊÊ  !

OkResponse
ÊÊ! +
<
ÊÊ+ ,
UserGetModel
ÊÊ, 8
>
ÊÊ8 9
)
ÊÊ9 :
response
ÊÊ: B
)
ÊÊB C
.
ÊÊC D
Data
ÊÊD H
;
ÊÊH I
response
ÁÁ 
=
ÁÁ 
await
ÁÁ $
_userValidationService
ÁÁ 3
.
ÁÁ3 4"
GetCompleteByIdAsync
ÁÁ4 H
(
ÁÁH I
userGetModel
ÁÁI U
.
ÁÁU V
UserValidationId
ÁÁV f
)
ÁÁf g
;
ÁÁg h
if
ËË 
(
ËË 
!
ËË 
response
ËË 
.
ËË 
	IsSuccess
ËË #
)
ËË# $
return
ËË% +
response
ËË, 4
;
ËË4 5
var
ÈÈ !
userValidationModel
ÈÈ #
=
ÈÈ$ %
(
ÈÈ& '
(
ÈÈ' (

OkResponse
ÈÈ( 2
<
ÈÈ2 3!
UserValidationModel
ÈÈ3 F
>
ÈÈF G
)
ÈÈG H
response
ÈÈH P
)
ÈÈP Q
.
ÈÈQ R
Data
ÈÈR V
;
ÈÈV W
userGetModel
ÍÍ 
.
ÍÍ 
UserValidation
ÍÍ '
=
ÍÍ( )
Mapper
ÍÍ* 0
.
ÍÍ0 1
Map
ÍÍ1 4
<
ÍÍ4 58
*UserValidationGetWithoutSensitiveDataModel
ÍÍ5 _
>
ÍÍ_ `
(
ÍÍ` a!
userValidationModel
ÍÍa t
)
ÍÍt u
;
ÍÍu v
return
ÎÎ 
new
ÎÎ 

OkResponse
ÎÎ !
<
ÎÎ! "
UserGetModel
ÎÎ" .
>
ÎÎ. /
(
ÎÎ/ 0
userGetModel
ÎÎ0 <
)
ÎÎ< =
;
ÎÎ= >
}
ÏÏ 	
public
ÓÓ 
async
ÓÓ 
Task
ÓÓ 
<
ÓÓ 
IResponseBase
ÓÓ '
>
ÓÓ' (
GetByParameters
ÓÓ) 8
(
ÓÓ8 9&
UserGetByParametersModel
ÓÓ9 Q

parameters
ÓÓR \
,
ÓÓ\ ]
CancellationToken
ÓÓ^ o
cancellation
ÓÓp |
=
ÓÓ} ~
defaultÓÓ Ü
)ÓÓÜ á
{
ÔÔ 	
var
 
users
 
=
 
await
 
_repository
 )
.
) *
GetByParameters
* 9
(
9 :

parameters
: D
,
D E
cancellation
F R
)
R S
;
S T
if
ÒÒ 
(
ÒÒ 
users
ÒÒ 
==
ÒÒ 
null
ÒÒ 
)
ÒÒ 
return
ÒÒ %
new
ÒÒ& )
NoContentResponse
ÒÒ* ;
(
ÒÒ; <
)
ÒÒ< =
;
ÒÒ= >
return
ÚÚ 
new
ÚÚ 

OkResponse
ÚÚ !
<
ÚÚ! "
List
ÚÚ" &
<
ÚÚ& '
	UserModel
ÚÚ' 0
>
ÚÚ0 1
>
ÚÚ1 2
(
ÚÚ2 3
Mapper
ÚÚ3 9
.
ÚÚ9 :
Map
ÚÚ: =
<
ÚÚ= >
List
ÚÚ> B
<
ÚÚB C
	UserModel
ÚÚC L
>
ÚÚL M
>
ÚÚM N
(
ÚÚN O
users
ÚÚO T
)
ÚÚT U
)
ÚÚU V
;
ÚÚV W
}
ÛÛ 	
public
ıı 
async
ıı 
Task
ıı 
<
ıı 
IResponseBase
ıı '
>
ıı' (!
UpdateByMasterAsync
ıı) <
(
ıı< =
Guid
ıı= A
id
ııB D
,
ııD E%
UserUpdateByMasterModel
ııF ]
model
ıı^ c
)
ııc d
{
ˆˆ 	
var
˜˜ 
response
˜˜ 
=
˜˜ 
await
˜˜  "
GetCompleteByIdAsync
˜˜! 5
(
˜˜5 6
id
˜˜6 8
)
˜˜8 9
;
˜˜9 :
if
¯¯ 
(
¯¯ 
!
¯¯ 
response
¯¯ 
.
¯¯ 
	IsSuccess
¯¯ #
)
¯¯# $
return
¯¯% +
new
¯¯, /
NoContentResponse
¯¯0 A
(
¯¯A B
)
¯¯B C
;
¯¯C D
var
˘˘ 
	userModel
˘˘ 
=
˘˘ 
(
˘˘ 
(
˘˘ 

OkResponse
˘˘ (
<
˘˘( )
	UserModel
˘˘) 2
>
˘˘2 3
)
˘˘3 4
response
˘˘4 <
)
˘˘< =
.
˘˘= >
Data
˘˘> B
;
˘˘B C
	userModel
˙˙ 
.
˙˙ 
Disable
˙˙ 
=
˙˙ 
model
˙˙  %
.
˙˙% &
Disable
˙˙& -
;
˙˙- .
	userModel
˚˚ 
.
˚˚ 
LastChangeDate
˚˚ $
=
˚˚% &
DateTime
˚˚' /
.
˚˚/ 0
UtcNow
˚˚0 6
;
˚˚6 7
	userModel
¸¸ 
.
¸¸ $
LastPasswordChangeDate
¸¸ ,
=
¸¸- .
DateTime
¸¸/ 7
.
¸¸7 8
UtcNow
¸¸8 >
;
¸¸> ?
	userModel
˝˝ 
.
˝˝ 
Password
˝˝ 
=
˝˝  
Encoding
˝˝! )
.
˝˝) *
UTF8
˝˝* .
.
˝˝. /
GetBytes
˝˝/ 7
(
˝˝7 8
RSACipherHelper
˝˝8 G
.
˝˝G H
EncryptString
˝˝H U
(
˝˝U V
model
˝˝V [
.
˝˝[ \
Password
˝˝\ d
)
˝˝d e
)
˝˝e f
;
˝˝f g
return
˛˛ 
await
˛˛ 
UpdateAsync
˛˛ $
(
˛˛$ %
	userModel
˛˛% .
)
˛˛. /
;
˛˛/ 0
}
ˇˇ 	
}
ÄÄ 
}ÅÅ ∫
WE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Services\v1\TaskNoteService.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Services %
{ 
public 

class 
TaskNoteService  
:! "
ServiceBase# .
<. /
TaskNoteAddModel/ ?
,? @
TaskNoteUpdateModelA T
,T U
TaskNotePatchModelV h
,h i
TaskNoteGetModelj z
,z {
TaskNoteModel	| â
,
â ä
TaskNote
ã ì
,
ì î
Guid
ï ô
>
ô ö
,
ö õ
ITaskNoteService
ú ¨
{ 
private 
readonly 
ITaskNoteRepository ,
_repository- 8
;8 9
private 
readonly 
IJwtService $
_jwtService% 0
;0 1
public 
TaskNoteService 
( 
ITaskNoteRepository 2

repository3 =
,= >
IServiceContext? N
serviceContextO ]
,] ^
IJwtService_ j

jwtServicek u
)u v
: 
base 
( 

repository 
, 
serviceContext -
)- .
{ 	
_repository 
= 

repository $
;$ %
_jwtService 
= 

jwtService $
;$ %
} 	
public 
async 
Task 
< 
IResponseBase '
>' (
GetToListAsync) 7
(7 8
string8 >
jwtToken? G
,G H
CancellationTokenI Z
cancellation[ g
=h i
defaultj q
)q r
{   	
var!! 
userId!! 
=!! 
_jwtService!! $
.!!$ %
GetUserIdFromToken!!% 7
(!!7 8
jwtToken!!8 @
)!!@ A
;!!A B
var"" 
entities"" 
="" 
await""  
_repository""! ,
."", -
GetToListAsync""- ;
(""; <
userId""< B
,""B C
cancellation""D P
)""P Q
;""Q R
if## 
(## 
entities## 
==## 
null##  
)##  !
return##" (
new##) ,
NoContentResponse##- >
(##> ?
)##? @
;##@ A
return$$ 
new$$ 

OkResponse$$ !
<$$! "
IEnumerable$$" -
<$$- .
TaskNoteGetModel$$. >
>$$> ?
>$$? @
($$@ A
Mapper$$A G
.$$G H
Map$$H K
<$$K L
IEnumerable$$L W
<$$W X
TaskNoteGetModel$$X h
>$$h i
>$$i j
($$j k
entities$$k s
)$$s t
)$$t u
;$$u v
}%% 
}&& 
}'' ƒ/
WE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Services\v1\SupplierService.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Services %
.% &
v1& (
{ 
public 

class 
SupplierService  
:! "
ServiceBase# .
<. /
SupplierAddModel/ ?
,? @
SupplierUpdateModelA T
,T U
SupplierPatchModelV h
,h i
SupplierGetModelj z
,z {
SupplierModel	| â
,
â ä
Supplier
ã ì
,
ì î
Guid
ï ô
>
ô ö
,
ö õ
ISupplierService
ú ¨
{ 
private 
readonly 
ISupplierRepository ,
_repository- 8
;8 9
public 
SupplierService 
( 
ISupplierRepository 2

repository3 =
,= >
IServiceContext? N
serviceContextO ]
)] ^
: 
base 
( 

repository 
, 
serviceContext -
)- .
{ 	
_repository 
= 

repository $
;$ %
} 	
public 
async 
Task 
< 
IResponseBase '
>' (
GetByEmailAsync) 8
(8 9
string9 ?
email@ E
,E F
CancellationTokenG X
cancellationY e
=f g
defaulth o
)o p
{ 	
var 
entity 
= 
await 
_repository *
.* +
GetByEmailAsync+ :
(: ;
email; @
,@ A
cancellationB N
)N O
;O P
if 
( 
entity 
== 
null 
) 
return  &
new' *
NoContentResponse+ <
(< =
)= >
;> ?
return 
new 

OkResponse !
<! "
SupplierGetModel" 2
>2 3
(3 4
Mapper4 :
.: ;
Map; >
<> ?
SupplierGetModel? O
>O P
(P Q
entityQ W
)W X
)X Y
;Y Z
} 	
public!! 
async!! 
Task!! 
<!! 
IResponseBase!! '
>!!' (
GetByParameters!!) 8
(!!8 9(
SupplierGetByParametersModel!!9 U

parameters!!V `
,!!` a
CancellationToken!!b s
cancellation	!!t Ä
=
!!Å Ç
default
!!É ä
)
!!ä ã
{"" 	
var## 
entity## 
=## 
await## 
_repository## *
.##* +
GetByParameters##+ :
(##: ;

parameters##; E
,##E F
cancellation##G S
)##S T
;##T U
if$$ 
($$ 
entity$$ 
==$$ 
null$$ 
)$$ 
return$$  &
new$$' *
NoContentResponse$$+ <
($$< =
)$$= >
;$$> ?
return%% 
new%% 

OkResponse%% !
<%%! "
IList%%" '
<%%' (
SupplierGetModel%%( 8
>%%8 9
>%%9 :
(%%: ;
Mapper%%; A
.%%A B
Map%%B E
<%%E F
IList%%F K
<%%K L
SupplierGetModel%%L \
>%%\ ]
>%%] ^
(%%^ _
entity%%_ e
)%%e f
)%%f g
;%%g h
}&& 	
public(( 
async(( 
Task(( 
<(( 
IResponseBase(( '
>((' ((
GetMonthTopDonorsReportAsync(() E
(((E F
CancellationToken((F W
cancellation((X d
=((e f
default((g n
)((n o
{)) 	
var** 
entities** 
=** 
await**  
_repository**! ,
.**, -(
GetMonthTopDonorsReportAsync**- I
(**I J
cancellation**J V
)**V W
;**W X
if++ 
(++ 
entities++ 
==++ 
null++  
)++  !
return++" (
new++) ,
NoContentResponse++- >
(++> ?
)++? @
;++@ A
return,, 
new,, 

OkResponse,, !
<,,! "
IList,," '
<,,' (!
SupplierGetDonorModel,,( =
>,,= >
>,,> ?
(,,? @
Mapper,,@ F
.,,F G
Map,,G J
<,,J K
IList,,K P
<,,P Q!
SupplierGetDonorModel,,Q f
>,,f g
>,,g h
(,,h i
entities,,i q
),,q r
),,r s
;,,s t
}-- 	
public// 
async// 
Task// 
<// 
IResponseBase// '
>//' (
GetToListAsync//) 7
(//7 8
CancellationToken//8 I
cancellation//J V
=//W X
default//Y `
)//` a
{00 	
var11 
entities11 
=11 
await11  
_repository11! ,
.11, -
GetToListAsync11- ;
(11; <
cancellation11< H
)11H I
;11I J
if22 
(22 
entities22 
==22 
null22  
)22  !
return22" (
new22) ,
NoContentResponse22- >
(22> ?
)22? @
;22@ A
return33 
new33 

OkResponse33 !
<33! "
IList33" '
<33' (
SupplierGetModel33( 8
>338 9
>339 :
(33: ;
Mapper33; A
.33A B
Map33B E
<33E F
IList33F K
<33K L
SupplierGetModel33L \
>33\ ]
>33] ^
(33^ _
entities33_ g
)33g h
)33h i
;33i j
}44 	
}55 
}66 …
XE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Services\v1\StockTypeService.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Services %
.% &
v1& (
{ 
public 

class 
StockTypeService !
:" #
ServiceBase$ /
</ 0
StockTypeAddModel0 A
,A B 
StockTypeUpdateModelC W
,W X
StockTypePatchModelY l
,l m
StockTypeGetModeln 
,	 Ä
StockTypeModel
Å è
,
è ê
	StockType
ë ö
,
ö õ
string
ú ¢
>
¢ £
,
£ §
IStockTypeService
• ∂
{ 
private 
readonly  
IStockTypeRepository -
_repository. 9
;9 :
public 
StockTypeService 
(   
IStockTypeRepository  4

repository5 ?
,? @
IServiceContextA P
serviceContextQ _
)_ `
: 
base 
( 

repository 
, 
serviceContext -
)- .
{ 	
_repository 
= 

repository $
;$ %
} 	
public 
async 
Task 
< 
IResponseBase '
>' (
GetToListAsync) 7
(7 8
CancellationToken8 I
cancellationJ V
=W X
defaultY `
)` a
{ 	
var 
entities 
= 
await  
_repository! ,
., -
GetToListAsync- ;
(; <
cancellation< H
)H I
;I J
if 
( 
entities 
== 
null  
)  !
return" (
new) ,
NoContentResponse- >
(> ?
)? @
;@ A
return 
new 

OkResponse !
<! "
IList" '
<' (
StockTypeGetModel( 9
>9 :
>: ;
(; <
Mapper< B
.B C
MapC F
<F G
IListG L
<L M
StockTypeGetModelM ^
>^ _
>_ `
(` a
entitiesa i
)i j
)j k
;k l
} 	
} 
}   ˘V
TE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Services\v1\StockService.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Services %
.% &
v1& (
{ 
public 

class 
StockService 
: 
ServiceBase  +
<+ ,
StockAddModel, 9
,9 :
StockUpdateModel; K
,K L
StockPatchModelM \
,\ ]
StockGetModel^ k
,k l

StockModelm w
,w x
Stocky ~
,~ 
Guid
Ä Ñ
>
Ñ Ö
,
Ö Ü
IStockService
á î
{ 
private 
readonly 
IStockRepository )
_repository* 5
;5 6
public 
StockService 
( 
IStockRepository ,

repository- 7
,7 8
IServiceContext9 H
serviceContextI W
)W X
: 
base 
( 

repository 
, 
serviceContext -
)- .
{ 	
_repository 
= 

repository $
;$ %
} 	
public 
async 
Task 
< 
IResponseBase '
>' (
GetByParameters) 8
(8 9%
StockGetByParametersModel9 R

parametersS ]
,] ^
CancellationToken_ p
cancellationq }
=~ 
default
Ä á
)
á à
{ 	
var 
entities 
= 
await  
_repository! ,
., -
GetByParameters- <
(< =

parameters= G
,G H
cancellationI U
)U V
;V W
if 
( 
entities 
== 
null  
)  !
return" (
new) ,
NoContentResponse- >
(> ?
)? @
;@ A
return   
new   

OkResponse   !
<  ! "
IEnumerable  " -
<  - .
StockGetModel  . ;
>  ; <
>  < =
(  = >
Mapper  > D
.  D E
Map  E H
<  H I
IEnumerable  I T
<  T U
StockGetModel  U b
>  b c
>  c d
(  d e
entities  e m
)  m n
)  n o
;  o p
}!! 	
public## 
async## 
Task## 
<## 
IResponseBase## '
>##' (
GetLowerStocks##) 7
(##7 8
int##8 ;
number##< B
,##B C
CancellationToken##D U
cancellation##V b
=##c d
default##e l
)##l m
{$$ 	
var%% 
entities%% 
=%% 
await%%  
_repository%%! ,
.%%, -
GetLowerStocks%%- ;
(%%; <
number%%< B
,%%B C
cancellation%%D P
)%%P Q
;%%Q R
if&& 
(&& 
entities&& 
==&& 
null&&  
)&&  !
return&&" (
new&&) ,
NoContentResponse&&- >
(&&> ?
)&&? @
;&&@ A
return'' 
new'' 

OkResponse'' !
<''! "
IEnumerable''" -
<''- .
StockGetModel''. ;
>''; <
>''< =
(''= >
Mapper''> D
.''D E
Map''E H
<''H I
IEnumerable''I T
<''T U
StockGetModel''U b
>''b c
>''c d
(''d e
entities''e m
)''m n
)''n o
;''o p
}(( 	
public** 
async** 
Task** 
<** 
IResponseBase** '
>**' (
GetToListAsync**) 7
(**7 8
CancellationToken**8 I
cancellation**J V
=**W X
default**Y `
)**` a
{++ 	
var,, 
entities,, 
=,, 
await,,  
_repository,,! ,
.,,, -
GetToListAsync,,- ;
(,,; <
cancellation,,< H
),,H I
;,,I J
if-- 
(-- 
entities-- 
==-- 
null--  
)--  !
return--" (
new--) ,
NoContentResponse--- >
(--> ?
)--? @
;--@ A
return.. 
new.. 

OkResponse.. !
<..! "
IEnumerable.." -
<..- .
StockGetModel... ;
>..; <
>..< =
(..= >
Mapper..> D
...D E
Map..E H
<..H I
IEnumerable..I T
<..T U
StockGetModel..U b
>..b c
>..c d
(..d e
entities..e m
)..m n
)..n o
;..o p
}// 	
public11 
async11 
Task11 
<11 
IResponseBase11 '
>11' ()
GetTotalStocksQuantityWarning11) F
(11F G
CancellationToken11G X
cancellationToken11Y j
)11j k
{22 	
var33 &
totalStocksQuantityWarning33 *
=33+ ,
await33- 2
_repository333 >
.33> ?)
GetTotalStocksQuantityWarning33? \
(33\ ]
cancellationToken33] n
)33n o
;33o p
return44 
new44 

OkResponse44 !
<44! "&
StocksQuantityWarningModel44" <
>44< =
(44= >
new44> A&
StocksQuantityWarningModel44B \
(44\ ]&
totalStocksQuantityWarning44] w
)44w x
)44x y
;44y z
}55 	
public77 
async77 
Task77 
<77 
IResponseBase77 '
>77' (
UpdateStockQuantity77) <
(77< =
List77= A
<77A B%
RegisterInStockPatchModel77B [
>77[ \
registerInStocks77] m
,77m n
bool77o s
apply77t y
)77y z
{88 	
foreach99 
(99 
var99 
stockToUpdate99 &
in99' )
registerInStocks99* :
)99: ;
{:: 
var;; 
stock;; 
=;; 
await;; !
_repository;;" -
.;;- .
GetByIdAsync;;. :
(;;: ;
stockToUpdate;;; H
.;;H I
StockId;;I P
);;P Q
;;;Q R
if== 
(== 
apply== 
)== 
stock>> 
.>> 
Quantity>> "
+=>># %
stockToUpdate>>& 3
.>>3 4
Quantity>>4 <
;>>< =
else?? 
stock@@ 
.@@ 
Quantity@@ "
-=@@# %
stockToUpdate@@& 3
.@@3 4
Quantity@@4 <
;@@< =
awaitBB 
_repositoryBB !
.BB! "
UpdateAsyncBB" -
(BB- .
stockBB. 3
)BB3 4
;BB4 5
}CC 
returnEE 
newEE 

OkResponseEE !
<EE! "
boolEE" &
>EE& '
(EE' (
trueEE( ,
)EE, -
;EE- .
}FF 	
publicHH 
asyncHH 
TaskHH 
<HH 
IResponseBaseHH '
>HH' (
UpdateStockQuantityHH) <
(HH< =
ListHH= A
<HHA B&
RegisterOutStockPatchModelHHB \
>HH\ ]
registerOutStocksHH^ o
,HHo p
boolHHq u
applyHHv {
)HH{ |
{II 	
foreachJJ 
(JJ 
varJJ 
stockToUpdateJJ &
inJJ' )
registerOutStocksJJ* ;
)JJ; <
{KK 
varLL 
stockLL 
=LL 
awaitLL !
_repositoryLL" -
.LL- .
GetByIdAsyncLL. :
(LL: ;
stockToUpdateLL; H
.LLH I
StockIdLLI P
)LLP Q
;LLQ R
ifNN 
(NN 
applyNN 
)NN 
stockOO 
.OO 
QuantityOO "
-=OO# %
stockToUpdateOO& 3
.OO3 4
QuantityOO4 <
;OO< =
elsePP 
stockQQ 
.QQ 
QuantityQQ "
+=QQ# %
stockToUpdateQQ& 3
.QQ3 4
QuantityQQ4 <
;QQ< =
awaitSS 
_repositorySS !
.SS! "
UpdateAsyncSS" -
(SS- .
stockSS. 3
)SS3 4
;SS4 5
}TT 
returnVV 
newVV 

OkResponseVV !
<VV! "
boolVV" &
>VV& '
(VV' (
trueVV( ,
)VV, -
;VV- .
}WW 	
publicYY 
asyncYY 
TaskYY 
<YY 
IResponseBaseYY '
>YY' (!
GetRestockReportAsyncYY) >
(YY> ?
CancellationTokenYY? P
cancellationYYQ ]
)YY] ^
{ZZ 	
var[[ 
entities[[ 
=[[ 
await[[  
_repository[[! ,
.[[, -!
GetRestockReportAsync[[- B
([[B C
cancellation[[C O
)[[O P
;[[P Q
if\\ 
(\\ 
entities\\ 
==\\ 
null\\  
)\\  !
return\\" (
new\\) ,
NoContentResponse\\- >
(\\> ?
)\\? @
;\\@ A
return]] 
new]] 

OkResponse]] !
<]]! "
IEnumerable]]" -
<]]- .&
StockGetRestockReportModel]]. H
>]]H I
>]]I J
(]]J K
Mapper]]K Q
.]]Q R
Map]]R U
<]]U V
IEnumerable]]V a
<]]a b&
StockGetRestockReportModel]]b |
>]]| }
>]]} ~
(]]~ 
entities	]] á
)
]]á à
)
]]à â
;
]]â ä
}^^ 	
public`` 
async`` 
Task`` 
<`` 
IResponseBase`` '
>``' (
GetStockReportAsync``) <
(``< =
CancellationToken``= N
cancellation``O [
)``[ \
{aa 	
varbb 
entitiesbb 
=bb 
awaitbb  
_repositorybb! ,
.bb, -
GetStockReportAsyncbb- @
(bb@ A
cancellationbbA M
)bbM N
;bbN O
ifcc 
(cc 
entitiescc 
==cc 
nullcc  
)cc  !
returncc" (
newcc) ,
NoContentResponsecc- >
(cc> ?
)cc? @
;cc@ A
returndd 
newdd 

OkResponsedd !
<dd! "
IEnumerabledd" -
<dd- .&
StockGetRestockReportModeldd. H
>ddH I
>ddI J
(ddJ K
MapperddK Q
.ddQ R
MapddR U
<ddU V
IEnumerableddV a
<dda b&
StockGetRestockReportModelddb |
>dd| }
>dd} ~
(dd~ 
entities	dd á
)
ddá à
)
ddà â
;
ddâ ä
}ee 	
}ff 
}gg ˛
SE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Services\v1\RoleService.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Services %
.% &
v1& (
{ 
public 

class 
RoleService 
: 
ServiceBase *
<* +
RoleAddModel+ 7
,7 8
RoleUpdateModel9 H
,H I
RolePatchModelJ X
,X Y
RoleGetModelZ f
,f g
	RoleModelh q
,q r
Roles w
,w x
Guidy }
>} ~
,~ 
IRoleService
Ä å
{ 
private 
readonly 
IRoleRepository (
_repository) 4
;4 5
public 
RoleService 
( 
IRoleRepository *

repository+ 5
,5 6
IServiceContext7 F
serviceContextG U
)U V
: 
base 
( 

repository 
, 
serviceContext -
)- .
{ 	
_repository 
= 

repository $
;$ %
} 	
public 
async 
Task 
< 
IResponseBase '
>' (
GetToListAsync) 7
(7 8
CancellationToken8 I
cancellationJ V
=W X
defaultY `
)` a
{ 	
var 
entities 
= 
await  
_repository! ,
., -
GetToListAsync- ;
(; <
cancellation< H
)H I
;I J
if 
( 
entities 
== 
null  
)  !
return" (
new) ,
NoContentResponse- >
(> ?
)? @
;@ A
return 
new 

OkResponse !
<! "
IEnumerable" -
<- .
RoleGetModel. :
>: ;
>; <
(< =
Mapper= C
.C D
MapD G
<G H
IEnumerableH S
<S T
RoleGetModelT `
>` a
>a b
(b c
entitiesc k
)k l
)l m
;m n
}   	
}!! 
}"" ø"
UE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Services\v1\ReportService.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Services %
.% &
v1& (
{ 
public		 

class		 
ReportService		 
:		  
IReportService		! /
{

 
private 
readonly 
IStockService &
_stockService' 4
;4 5
private 
readonly #
IRegisterInStockService 0#
_registerInStockService1 H
;H I
private 
readonly $
IRegisterOutStockService 1$
_registerOutStockService2 J
;J K
private 
readonly 
ISupplierService )
_supplierService* :
;: ;
public 
ReportService 
( 
IStockService *
stockService+ 7
,7 8#
IRegisterInStockService9 P"
registerInStockServiceQ g
,g h
ISupplierServicei y
supplierService	z â
,
â ä&
IRegisterOutStockService
ã £%
registerOutStockService
§ ª
)
ª º
{ 	
_stockService 
= 
stockService (
;( )#
_registerInStockService #
=$ %"
registerInStockService& <
;< =
_supplierService 
= 
supplierService .
;. /$
_registerOutStockService $
=% &#
registerOutStockService' >
;> ?
} 	
public 
async 
Task 
< 
IResponseBase '
>' (%
GetConsumptionReportAsync) B
(B C
DateTimeC K
initialDateL W
,W X
DateTimeY a
	finalDateb k
,k l
CancellationTokenm ~
cancellation	 ã
)
ã å
{ 	
return 
await $
_registerOutStockService 1
.1 2%
GetConsumptionReportAsync2 K
(K L
initialDateL W
,W X
	finalDateY b
,b c
cancellationd p
)p q
;q r
} 	
public 
async 
Task 
< 
IResponseBase '
>' (#
GetDonationsReportAsync) @
(@ A
DateTimeA I
initialDateJ U
,U V
DateTimeW _
	finalDate` i
,i j
CancellationTokenk |
cancellation	} â
)
â ä
{ 	
return 
await #
_registerInStockService 0
.0 1#
GetDonationsReportAsync1 H
(H I
initialDateI T
,T U
	finalDateV _
,_ `
cancellationa m
)m n
;n o
}   	
public"" 
async"" 
Task"" 
<"" 
IResponseBase"" '
>""' ((
GetMonthTopDonorsReportAsync"") E
(""E F
CancellationToken""F W
cancellation""X d
)""d e
{## 	
return$$ 
await$$ 
_supplierService$$ )
.$$) *(
GetMonthTopDonorsReportAsync$$* F
($$F G
cancellation$$G S
)$$S T
;$$T U
}%% 	
public'' 
async'' 
Task'' 
<'' 
IResponseBase'' '
>''' (!
GetRestockReportAsync'') >
(''> ?
CancellationToken''? P
cancellation''Q ]
)''] ^
{(( 	
return)) 
await)) 
_stockService)) &
.))& '!
GetRestockReportAsync))' <
())< =
cancellation))= I
)))I J
;))J K
}** 	
public,, 
async,, 
Task,, 
<,, 
IResponseBase,, '
>,,' (
GetStockReportAsync,,) <
(,,< =
CancellationToken,,= N
cancellation,,O [
),,[ \
{-- 	
return.. 
await.. 
_stockService.. &
...& '
GetStockReportAsync..' :
(..: ;
cancellation..; G
)..G H
;..H I
}// 	
}00 
}11 ±W
_E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Services\v1\RegisterOutStockService.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Services %
.% &
v1& (
{ 
public 

class #
RegisterOutStockService (
:) *
MtMServiceBase+ 9
<9 :/
#RegisterOutStockGetRegisterOutModel: ]
,] ^)
RegisterOutStockGetStockModel_ |
,| }'
RegisterOutStockPatchModel	~ ò
,
ò ô#
RegisterOutStockModel
ö Ø
,
Ø ∞
RegisterOutStock
± ¡
,
¡ ¬
Guid
√ «
,
« »
Guid
… Õ
>
Õ Œ
,
Œ œ&
IRegisterOutStockService
– Ë
{ 
private 
readonly '
IRegisterOutStockRepository 4
_repository5 @
;@ A
public #
RegisterOutStockService &
(& ''
IRegisterOutStockRepository' B

repositoryC M
,M N
IServiceContextO ^
serviceContext_ m
)m n
:o p
baseq u
(u v

repository	v Ä
,
Ä Å
serviceContext
Ç ê
)
ê ë
{ 	
_repository 
= 

repository $
;$ %
} 	
public 
override 
async 
Task "
<" #
IResponseBase# 0
>0 1
GetByIdsAsync2 ?
(? @
Guid@ D
registerOutIdE R
,R S
GuidT X
stockIdY `
,` a
CancellationTokenb s
cancellationToken	t Ö
=
Ü á
default
à è
)
è ê
{ 	
var 
response 
= 
await  
_repository! ,
., -
GetByIdsAsync- :
(: ;
registerOutId; H
,H I
stockIdJ Q
,Q R
cancellationTokenS d
)d e
;e f
if 
( 
response 
== 
null  
)  !
return" (
new) ,
NoContentResponse- >
(> ?
)? @
;@ A
return   
new   

OkResponse   !
<  ! "!
RegisterOutStockModel  " 7
>  7 8
(  8 9
Mapper  9 ?
.  ? @
Map  @ C
<  C D!
RegisterOutStockModel  D Y
>  Y Z
(  Z [
response  [ c
)  c d
)  d e
;  e f
}!! 	
public## 
override## 
async## 
Task## "
<##" #
IResponseBase### 0
>##0 1
GetByStrongIdAsync##2 D
(##D E
Guid##E I
registerOutId##J W
,##W X
CancellationToken##Y j
cancellationToken##k |
=##} ~
default	## Ü
)
##Ü á
{$$ 	
var%% 
response%% 
=%% 
await%%  
_repository%%! ,
.%%, -
GetByStrongIdAsync%%- ?
(%%? @
registerOutId%%@ M
,%%M N
cancellationToken%%O `
)%%` a
;%%a b
if&& 
(&& 
response&& 
==&& 
null&&  
)&&  !
return&&" (
new&&) ,
NoContentResponse&&- >
(&&> ?
)&&? @
;&&@ A
return'' 
new'' 

OkResponse'' !
<''! "
IEnumerable''" -
<''- .)
RegisterOutStockGetStockModel''. K
>''K L
>''L M
(''M N
Mapper''N T
.''T U
Map''U X
<''X Y
IEnumerable''Y d
<''d e*
RegisterOutStockGetStockModel	''e Ç
>
''Ç É
>
''É Ñ
(
''Ñ Ö
response
''Ö ç
)
''ç é
)
''é è
;
''è ê
}(( 	
public** 
override** 
async** 
Task** "
<**" #
IResponseBase**# 0
>**0 1
GetByWeakIdAsync**2 B
(**B C
Guid**C G
stockId**H O
,**O P
CancellationToken**Q b
cancellationToken**c t
=**u v
default**w ~
)**~ 
{++ 	
var,, 
response,, 
=,, 
await,,  
_repository,,! ,
.,,, -
GetByWeakIdAsync,,- =
(,,= >
stockId,,> E
,,,E F
cancellationToken,,G X
),,X Y
;,,Y Z
if-- 
(-- 
response-- 
==-- 
null--  
)--  !
return--" (
new--) ,
NoContentResponse--- >
(--> ?
)--? @
;--@ A
return.. 
new.. 

OkResponse.. !
<..! "
IEnumerable.." -
<..- .)
RegisterOutStockGetStockModel... K
>..K L
>..L M
(..M N
Mapper..N T
...T U
Map..U X
<..X Y
IEnumerable..Y d
<..d e*
RegisterOutStockGetStockModel	..e Ç
>
..Ç É
>
..É Ñ
(
..Ñ Ö
response
..Ö ç
)
..ç é
)
..é è
;
..è ê
}// 	
public11 
override11 
async11 
Task11 "
<11" #
IResponseBase11# 0
>110 1
UpdateAsync112 =
(11= >
IEnumerable11> I
<11I J!
RegisterOutStockModel11J _
>11_ `"
registerOutStockModels11a w
)11w x
{22 	
var33 
result33 
=33 
await33 
_repository33 *
.33* +
UpdateAsync33+ 6
(336 7
Mapper337 =
.33= >
Map33> A
<33A B
IEnumerable33B M
<33M N
RegisterOutStock33N ^
>33^ _
>33_ `
(33` a"
registerOutStockModels33a w
)33w x
)33x y
;33y z
if44 
(44 
result44 
==44 
null44 
)44 
return44  &
new44' *
NoContentResponse44+ <
(44< =
)44= >
;44> ?
return55 
new55 

OkResponse55 !
<55! "
IEnumerable55" -
<55- .!
RegisterOutStockModel55. C
>55C D
>55D E
(55E F
Mapper55F L
.55L M
Map55M P
<55P Q
IEnumerable55Q \
<55\ ]!
RegisterOutStockModel55] r
>55r s
>55s t
(55t u
result55u {
)55{ |
)55| }
;55} ~
}66 	
public88 
override88 
Task88 
<88 
IResponseBase88 *
>88* +
AddOrDeleteAsync88, <
(88< =
Guid88= A
registerOutId88B O
,88O P
IEnumerable88Q \
<88\ ]&
RegisterOutStockPatchModel88] w
>88w x
models88y 
)	88 Ä
{99 	
models:: 
.:: 
ToList:: 
(:: 
):: 
.:: 
ForEach:: #
(::# $
model::$ )
=>::* ,
model::- 2
.::2 3
RegisterOutId::3 @
=::A B
registerOutId::C P
)::P Q
;::Q R
return;; 
base;; 
.;; 
AddOrDeleteAsync;; (
(;;( )
registerOutId;;) 6
,;;6 7
models;;8 >
);;> ?
;;;? @
}<< 	
public>> 
async>> 
Task>> 
<>> 
IResponseBase>> '
>>>' (
AddAsync>>) 1
(>>1 2
Guid>>2 6
registerOutId>>7 D
,>>D E&
RegisterOutStockPatchModel>>F `
model>>a f
)>>f g
{?? 	
model@@ 
.@@ 
RegisterOutId@@ 
=@@  !
registerOutId@@" /
;@@/ 0
varAA 
RegisterOutStocksAA !
=AA" #
awaitAA$ )
_repositoryAA* 5
.AA5 6
GetByStrongIdAsyncAA6 H
(AAH I
registerOutIdAAI V
)AAV W
;AAW X
ifBB 
(BB 
RegisterOutStocksBB !
.BB! "
AnyBB" %
(BB% &
xBB& '
=>BB( *
xBB+ ,
.BB, -
RegisterOutIdBB- :
==BB; =
modelBB> C
.BBC D
RegisterOutIdBBD Q
&&BBR T
xBBU V
.BBV W
StockIdBBW ^
==BB_ a
modelBBb g
.BBg h
StockIdBBh o
)BBo p
)BBp q
returnBBr x
newBBy |
ConflictResponse	BB} ç
(
BBç é
ConstantMessages
BBé û
.
BBû ü
CRUD_CONFLICT
BBü ¨
)
BB¨ ≠
;
BB≠ Æ
varCC 
modelsCC 
=CC 
MapperCC 
.CC  
MapCC  #
<CC# $
ListCC$ (
<CC( )&
RegisterOutStockPatchModelCC) C
>CCC D
>CCD E
(CCE F
RegisterOutStocksCCF W
)CCW X
;CCX Y
modelsDD 
.DD 
AddDD 
(DD 
modelDD 
)DD 
;DD 
returnEE 
awaitEE 
baseEE 
.EE 
AddOrDeleteAsyncEE .
(EE. /
registerOutIdEE/ <
,EE< =
modelsEE> D
)EED E
;EEE F
}FF 	
publicHH 
asyncHH 
TaskHH 
<HH 
IResponseBaseHH '
>HH' (%
GetConsumptionReportAsyncHH) B
(HHB C
DateTimeHHC K
initialDateHHL W
,HHW X
DateTimeHHY a
	finalDateHHb k
,HHk l
CancellationTokenHHm ~
cancellation	HH ã
)
HHã å
{II 	
varJJ 
registersInStocksJJ !
=JJ" #
awaitJJ$ )
_repositoryJJ* 5
.JJ5 6%
GetConsumptionReportAsyncJJ6 O
(JJO P
initialDateJJP [
,JJ[ \
	finalDateJJ] f
,JJf g
cancellationJJh t
)JJt u
;JJu v
ifKK 
(KK 
registersInStocksKK !
==KK" $
nullKK% )
||KK* ,
!KK- .
registersInStocksKK. ?
.KK? @
AnyKK@ C
(KKC D
)KKD E
)KKE F
returnKKG M
newKKN Q
NoContentResponseKKR c
(KKc d
)KKd e
;KKe f
returnLL 
newLL 

OkResponseLL !
<LL! "
ListLL" &
<LL& '5
)RegisterOutStockGetConsumptionReportModelLL' P
>LLP Q
>LLQ R
(LLR S
MapperLLS Y
.LLY Z
MapLLZ ]
<LL] ^
ListLL^ b
<LLb c6
)RegisterOutStockGetConsumptionReportModel	LLc å
>
LLå ç
>
LLç é
(
LLé è
registersInStocks
LLè †
)
LL† °
)
LL° ¢
;
LL¢ £
}MM 	
}NN 
}OO ∏K
ZE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Services\v1\RegisterOutService.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Services %
.% &
v1& (
{ 
public 

class 
RegisterOutService #
:$ %
ServiceBase& 1
<1 2
RegisterOutAddModel2 E
,E F"
RegisterOutUpdateModelG ]
,] ^!
RegisterOutPatchModel_ t
,t u 
RegisterOutGetModel	v â
,
â ä
RegisterOutModel
ã õ
,
õ ú
RegisterOut
ù ®
,
® ©
Guid
™ Æ
>
Æ Ø
,
Ø ∞!
IRegisterOutService
± ƒ
{ 
private 
readonly "
IRegisterOutRepository /
_repository0 ;
;; <
private 
readonly 
IStockService &
_stockService' 4
;4 5
private 
readonly $
IRegisterOutStockService 1$
_registerOutStockService2 J
;J K
public 
RegisterOutService !
(! ""
IRegisterOutRepository" 8

repository9 C
,C D
IServiceContextE T
serviceContextU c
,c d
IStockServicee r
stockServices 
,	 Ä&
IRegisterOutStockService
Å ô%
registerOutStockService
ö ±
)
± ≤
: 
base 
( 

repository 
, 
serviceContext -
)- .
{ 	
_repository 
= 

repository $
;$ %
_stockService 
= 
stockService (
;( )$
_registerOutStockService $
=% &#
registerOutStockService' >
;> ?
} 	
public 
override 
async 
Task "
<" #
IResponseBase# 0
>0 1
AddAsync2 :
(: ;
RegisterOutAddModel; N
modelO T
)T U
{   	
var!! 
response!! 
=!! 
await!!  
base!!! %
.!!% &
AddAsync!!& .
(!!. /
model!!/ 4
)!!4 5
;!!5 6
if"" 
("" 
model"" 
."" 
Apply"" 
)"" 
await## 
_stockService## #
.### $
UpdateStockQuantity##$ 7
(##7 8
model##8 =
.##= >
RegisterOutStocks##> O
,##O P
model##Q V
.##V W
Apply##W \
)##\ ]
;##] ^
return%% 
response%% 
;%% 
}&& 	
public(( 
override(( 
async(( 
Task(( "
<((" #
IResponseBase((# 0
>((0 1
UpdateAsync((2 =
(((= >"
RegisterOutUpdateModel((> T
model((U Z
)((Z [
{)) 	
var** 
response** 
=** 
await**  
base**! %
.**% &
UpdateAsync**& 1
(**1 2
model**2 7
)**7 8
;**8 9
await,, $
_registerOutStockService,, *
.,,* +
AddOrDeleteAsync,,+ ;
(,,; <
model,,< A
.,,A B
Id,,B D
,,,D E
model,,F K
.,,K L
RegisterOutStocks,,L ]
),,] ^
;,,^ _
await.. 
_stockService.. 
...  
UpdateStockQuantity..  3
(..3 4
model..4 9
...9 :
RegisterOutStocks..: K
,..K L
model..M R
...R S
Apply..S X
)..X Y
;..Y Z
return00 
response00 
;00 
}11 	
public33 
async33 
Task33 
<33 
IResponseBase33 '
>33' (
GetToListAsync33) 7
(337 8
CancellationToken338 I
cancellation33J V
=33W X
default33Y `
)33` a
{44 	
var55 
entities55 
=55 
await55  
_repository55! ,
.55, -
GetToListAsync55- ;
(55; <
cancellation55< H
)55H I
;55I J
if66 
(66 
entities66 
==66 
null66  
)66  !
return66" (
new66) ,
NoContentResponse66- >
(66> ?
)66? @
;66@ A
return77 
new77 

OkResponse77 !
<77! "
IList77" '
<77' (
RegisterOutGetModel77( ;
>77; <
>77< =
(77= >
Mapper77> D
.77D E
Map77E H
<77H I
IList77I N
<77N O
RegisterOutGetModel77O b
>77b c
>77c d
(77d e
entities77e m
)77m n
)77n o
;77o p
}88 	
public:: 
async:: 
Task:: 
<:: 
IResponseBase:: '
>::' (#
GetConsumptionsPerMonth::) @
(::@ A
CancellationToken::A R
cancellation::S _
)::_ `
{;; 	
var<< 
entities<< 
=<< 
await<<  
_repository<<! ,
.<<, -#
GetConsumptionsPerMonth<<- D
(<<D E
cancellation<<E Q
)<<Q R
;<<R S
var>> 
	searchKey>> 
=>> 
new>> 
DateTime>>  (
(>>( )
DateTime>>) 1
.>>1 2
UtcNow>>2 8
.>>8 9
Year>>9 =
,>>= >
DateTime>>? G
.>>G H
UtcNow>>H N
.>>N O
Month>>O T
,>>T U
$num>>V W
)>>W X
;>>X Y
var@@ 
result@@ 
=@@ 
new@@ 
List@@ !
<@@! "
object@@" (
>@@( )
(@@) *
)@@* +
;@@+ ,
forBB 
(BB 
varBB 
iBB 
=BB 
$numBB 
;BB 
iBB 
<=BB  
$numBB! #
;BB# $
iBB% &
++BB& (
)BB( )
{CC 
varDD 

foundValueDD 
=DD  
entitiesDD! )
.DD) *
FirstOrDefaultDD* 8
(DD8 9
xDD9 :
=>DD; =
xDD> ?
.DD? @
KeyDD@ C
==DDD F
	searchKeyDDG P
)DDP Q
;DDQ R
ifFF 
(FF 

foundValueFF 
.FF 
KeyFF "
!=FF# %
defaultFF& -
)FF- .
resultGG 
.GG 
AddGG 
(GG 
newGG "
{GG# $
MonthGG% *
=GG+ ,

foundValueGG- 7
.GG7 8
KeyGG8 ;
.GG; <
ToStringGG< D
(GGD E
$strGGE K
)GGK L
[GGL M
$numGGM N
]GGN O
.GGO P
ToStringGGP X
(GGX Y
)GGY Z
.GGZ [
ToUpperGG[ b
(GGb c
)GGc d
,GGd e
TotalGGf k
=GGl m

foundValueGGn x
.GGx y
ValueGGy ~
}	GG Ä
)
GGÄ Å
;
GGÅ Ç
elseHH 
resultII 
.II 
AddII 
(II 
newII "
{II# $
MonthII% *
=II+ ,
	searchKeyII- 6
.II6 7
ToStringII7 ?
(II? @
$strII@ F
)IIF G
[IIG H
$numIIH I
]III J
.IIJ K
ToStringIIK S
(IIS T
)IIT U
.IIU V
ToUpperIIV ]
(II] ^
)II^ _
,II_ `
TotalIIa f
=IIg h
$numIIi j
}IIk l
)IIl m
;IIm n
	searchKeyKK 
=KK 
	searchKeyKK %
.KK% &
	AddMonthsKK& /
(KK/ 0
-KK0 1
$numKK1 2
)KK2 3
;KK3 4
}LL 
ifNN 
(NN 
resultNN 
==NN 
nullNN 
)NN 
returnNN  &
newNN' *
NoContentResponseNN+ <
(NN< =
)NN= >
;NN> ?
returnOO 
newOO 

OkResponseOO !
<OO! "
objectOO" (
>OO( )
(OO) *
resultOO* 0
)OO0 1
;OO1 2
}PP 	
publicRR 
asyncRR 
TaskRR 
<RR 
IResponseBaseRR '
>RR' ( 
GetByIdToUpdateAsyncRR) =
(RR= >
GuidRR> B
idRRC E
,RRE F
CancellationTokenRRG X
cancellationRRY e
)RRe f
{SS 	
varTT 
entitiesTT 
=TT 
awaitTT  
_repositoryTT! ,
.TT, - 
GetByIdToUpdateAsyncTT- A
(TTA B
idTTB D
,TTD E
cancellationTTF R
)TTR S
;TTS T
ifUU 
(UU 
entitiesUU 
==UU 
nullUU  
)UU  !
returnUU" (
newUU) ,
NoContentResponseUU- >
(UU> ?
)UU? @
;UU@ A
returnVV 
newVV 

OkResponseVV !
<VV! "
RegisterOutGetModelVV" 5
>VV5 6
(VV6 7
MapperVV7 =
.VV= >
MapVV> A
<VVA B
RegisterOutGetModelVVB U
>VVU V
(VVV W
entitiesVVW _
)VV_ `
)VV` a
;VVa b
}WW 	
}XX 
}YY ÙV
^E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Services\v1\RegisterInStockService.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Services %
.% &
v1& (
{ 
public 

class "
RegisterInStockService '
:( )
MtMServiceBase* 8
<8 9-
!RegisterInStockGetRegisterInModel9 Z
,Z [(
RegisterInStockGetStockModel\ x
,x y&
RegisterInStockPatchModel	z ì
,
ì î"
RegisterInStockModel
ï ©
,
© ™
RegisterInStock
´ ∫
,
∫ ª
Guid
º ¿
,
¿ ¡
Guid
¬ ∆
>
∆ «
,
« »%
IRegisterInStockService
… ‡
{ 
private 
readonly &
IRegisterInStockRepository 3
_repository4 ?
;? @
public "
RegisterInStockService %
(% &&
IRegisterInStockRepository& @

repositoryA K
,K L
IServiceContextM \
serviceContext] k
)k l
:m n
baseo s
(s t

repositoryt ~
,~ 
serviceContext
Ä é
)
é è
{ 	
_repository 
= 

repository $
;$ %
} 	
public 
override 
async 
Task "
<" #
IResponseBase# 0
>0 1
GetByIdsAsync2 ?
(? @
Guid@ D
segisterInIdE Q
,Q R
GuidS W
stockIdX _
,_ `
CancellationTokena r
cancellationToken	s Ñ
=
Ö Ü
default
á é
)
é è
{ 	
var 
response 
= 
await  
_repository! ,
., -
GetByIdsAsync- :
(: ;
segisterInId; G
,G H
stockIdI P
,P Q
cancellationTokenR c
)c d
;d e
if 
( 
response 
== 
null  
)  !
return" (
new) ,
NoContentResponse- >
(> ?
)? @
;@ A
return 
new 

OkResponse !
<! " 
RegisterInStockModel" 6
>6 7
(7 8
Mapper8 >
.> ?
Map? B
<B C 
RegisterInStockModelC W
>W X
(X Y
responseY a
)a b
)b c
;c d
}   	
public"" 
override"" 
async"" 
Task"" "
<""" #
IResponseBase""# 0
>""0 1
GetByStrongIdAsync""2 D
(""D E
Guid""E I
registerInId""J V
,""V W
CancellationToken""X i
cancellationToken""j {
=""| }
default	""~ Ö
)
""Ö Ü
{## 	
var$$ 
response$$ 
=$$ 
await$$  
_repository$$! ,
.$$, -
GetByStrongIdAsync$$- ?
($$? @
registerInId$$@ L
,$$L M
cancellationToken$$N _
)$$_ `
;$$` a
if%% 
(%% 
response%% 
==%% 
null%%  
)%%  !
return%%" (
new%%) ,
NoContentResponse%%- >
(%%> ?
)%%? @
;%%@ A
return&& 
new&& 

OkResponse&& !
<&&! "
IEnumerable&&" -
<&&- .(
RegisterInStockGetStockModel&&. J
>&&J K
>&&K L
(&&L M
Mapper&&M S
.&&S T
Map&&T W
<&&W X
IEnumerable&&X c
<&&c d)
RegisterInStockGetStockModel	&&d Ä
>
&&Ä Å
>
&&Å Ç
(
&&Ç É
response
&&É ã
)
&&ã å
)
&&å ç
;
&&ç é
}'' 	
public)) 
override)) 
async)) 
Task)) "
<))" #
IResponseBase))# 0
>))0 1
GetByWeakIdAsync))2 B
())B C
Guid))C G
stockId))H O
,))O P
CancellationToken))Q b
cancellationToken))c t
=))u v
default))w ~
)))~ 
{** 	
var++ 
response++ 
=++ 
await++  
_repository++! ,
.++, -
GetByWeakIdAsync++- =
(++= >
stockId++> E
,++E F
cancellationToken++G X
)++X Y
;++Y Z
if,, 
(,, 
response,, 
==,, 
null,,  
),,  !
return,," (
new,,) ,
NoContentResponse,,- >
(,,> ?
),,? @
;,,@ A
return-- 
new-- 

OkResponse-- !
<--! "
IEnumerable--" -
<--- .(
RegisterInStockGetStockModel--. J
>--J K
>--K L
(--L M
Mapper--M S
.--S T
Map--T W
<--W X
IEnumerable--X c
<--c d)
RegisterInStockGetStockModel	--d Ä
>
--Ä Å
>
--Å Ç
(
--Ç É
response
--É ã
)
--ã å
)
--å ç
;
--ç é
}.. 	
public00 
override00 
async00 
Task00 "
<00" #
IResponseBase00# 0
>000 1
UpdateAsync002 =
(00= >
IEnumerable00> I
<00I J 
RegisterInStockModel00J ^
>00^ _!
registerInStockModels00` u
)00u v
{11 	
var22 
result22 
=22 
await22 
_repository22 *
.22* +
UpdateAsync22+ 6
(226 7
Mapper227 =
.22= >
Map22> A
<22A B
IEnumerable22B M
<22M N
RegisterInStock22N ]
>22] ^
>22^ _
(22_ `!
registerInStockModels22` u
)22u v
)22v w
;22w x
if33 
(33 
result33 
==33 
null33 
)33 
return33  &
new33' *
NoContentResponse33+ <
(33< =
)33= >
;33> ?
return44 
new44 

OkResponse44 !
<44! "
IEnumerable44" -
<44- . 
RegisterInStockModel44. B
>44B C
>44C D
(44D E
Mapper44E K
.44K L
Map44L O
<44O P
IEnumerable44P [
<44[ \ 
RegisterInStockModel44\ p
>44p q
>44q r
(44r s
result44s y
)44y z
)44z {
;44{ |
}55 	
public77 
override77 
Task77 
<77 
IResponseBase77 *
>77* +
AddOrDeleteAsync77, <
(77< =
Guid77= A
registerInId77B N
,77N O
IEnumerable77P [
<77[ \%
RegisterInStockPatchModel77\ u
>77u v
models77w }
)77} ~
{88 	
models99 
.99 
ToList99 
(99 
)99 
.99 
ForEach99 #
(99# $
model99$ )
=>99* ,
model99- 2
.992 3
RegisterInId993 ?
=99@ A
registerInId99B N
)99N O
;99O P
return:: 
base:: 
.:: 
AddOrDeleteAsync:: (
(::( )
registerInId::) 5
,::5 6
models::7 =
)::= >
;::> ?
};; 	
public== 
async== 
Task== 
<== 
IResponseBase== '
>==' (
AddAsync==) 1
(==1 2
Guid==2 6
registerInId==7 C
,==C D%
RegisterInStockPatchModel==E ^
model==_ d
)==d e
{>> 	
model?? 
.?? 
RegisterInId?? 
=??  
registerInId??! -
;??- .
var@@ 
RegisterInStocks@@  
=@@! "
await@@# (
_repository@@) 4
.@@4 5
GetByStrongIdAsync@@5 G
(@@G H
registerInId@@H T
)@@T U
;@@U V
ifAA 
(AA 
RegisterInStocksAA  
.AA  !
AnyAA! $
(AA$ %
xAA% &
=>AA' )
xAA* +
.AA+ ,
RegisterInIdAA, 8
==AA9 ;
modelAA< A
.AAA B
RegisterInIdAAB N
&&AAO Q
xAAR S
.AAS T
StockIdAAT [
==AA\ ^
modelAA_ d
.AAd e
StockIdAAe l
)AAl m
)AAm n
returnAAo u
newAAv y
ConflictResponse	AAz ä
(
AAä ã
ConstantMessages
AAã õ
.
AAõ ú
CRUD_CONFLICT
AAú ©
)
AA© ™
;
AA™ ´
varBB 
modelsBB 
=BB 
MapperBB 
.BB  
MapBB  #
<BB# $
ListBB$ (
<BB( )%
RegisterInStockPatchModelBB) B
>BBB C
>BBC D
(BBD E
RegisterInStocksBBE U
)BBU V
;BBV W
modelsCC 
.CC 
AddCC 
(CC 
modelCC 
)CC 
;CC 
returnDD 
awaitDD 
baseDD 
.DD 
AddOrDeleteAsyncDD .
(DD. /
registerInIdDD/ ;
,DD; <
modelsDD= C
)DDC D
;DDD E
}EE 	
publicFF 
asyncFF 
TaskFF 
<FF 
IResponseBaseFF '
>FF' (#
GetDonationsReportAsyncFF) @
(FF@ A
DateTimeFFA I
initialDateFFJ U
,FFU V
DateTimeFFW _
	finalDateFF` i
,FFi j
CancellationTokenFFk |
cancellation	FF} â
)
FFâ ä
{GG 	
varHH 
registersInStocksHH !
=HH" #
awaitHH$ )
_repositoryHH* 5
.HH5 6#
GetDonationsReportAsyncHH6 M
(HHM N
initialDateHHN Y
,HHY Z
	finalDateHH[ d
,HHd e
cancellationHHf r
)HHr s
;HHs t
ifII 
(II 
registersInStocksII !
==II" $
nullII% )
||II* ,
!II- .
registersInStocksII. ?
.II? @
AnyII@ C
(IIC D
)IID E
)IIE F
returnIIG M
newIIN Q
NoContentResponseIIR c
(IIc d
)IId e
;IIe f
returnJJ 
newJJ 

OkResponseJJ !
<JJ! "
ListJJ" &
<JJ& '1
%RegisterInStockGetDonationReportModelJJ' L
>JJL M
>JJM N
(JJN O
MapperJJO U
.JJU V
MapJJV Y
<JJY Z
ListJJZ ^
<JJ^ _2
%RegisterInStockGetDonationReportModel	JJ_ Ñ
>
JJÑ Ö
>
JJÖ Ü
(
JJÜ á
registersInStocks
JJá ò
)
JJò ô
)
JJô ö
;
JJö õ
}KK 	
}LL 
}MM öi
YE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Services\v1\RegisterInService.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Services %
.% &
v1& (
{ 
public 

class 
RegisterInService "
:# $
ServiceBase% 0
<0 1
RegisterInAddModel1 C
,C D!
RegisterInUpdateModelE Z
,Z [ 
RegisterInPatchModel\ p
,p q
RegisterInGetModel	r Ñ
,
Ñ Ö
RegisterInModel
Ü ï
,
ï ñ

RegisterIn
ó °
,
° ¢
Guid
£ ß
>
ß ®
,
® © 
IRegisterInService
™ º
{ 
private 
readonly 
IStockService &
_stockService' 4
;4 5
private 
readonly !
IRegisterInRepository .
_repository/ :
;: ;
private 
readonly #
IRegisterInStockService 0#
_registerInStockService1 H
;H I
public 
RegisterInService  
(  !!
IRegisterInRepository! 6

repository7 A
,A B
IServiceContextC R
serviceContextS a
,a b
IStockServicec p
stockServiceq }
,} ~$
IRegisterInStockService	 ñ$
registerInStockService
ó ≠
)
≠ Æ
: 
base 
( 

repository 
, 
serviceContext -
)- .
{ 	
_stockService 
= 
stockService (
;( )
_repository 
= 

repository $
;$ %#
_registerInStockService #
=$ %"
registerInStockService& <
;< =
} 	
public 
override 
async 
Task "
<" #
IResponseBase# 0
>0 1
AddAsync2 :
(: ;
RegisterInAddModel; M
modelN S
)S T
{   	
var!! 
response!! 
=!! 
await!!  
base!!! %
.!!% &
AddAsync!!& .
(!!. /
model!!/ 4
)!!4 5
;!!5 6
if"" 
("" 
response"" 
."" 
	IsSuccess"" "
&&""# %
model""& +
.""+ ,
Apply"", 1
)""1 2
response## 
=## 
await##  
_stockService##! .
.##. /
UpdateStockQuantity##/ B
(##B C
model##C H
.##H I
RegisterInStocks##I Y
,##Y Z
model##[ `
.##` a
Apply##a f
)##f g
;##g h
return%% 
response%% 
;%% 
}&& 	
public(( 
override(( 
async(( 
Task(( "
<((" #
IResponseBase((# 0
>((0 1
UpdateAsync((2 =
(((= >!
RegisterInUpdateModel((> S
model((T Y
)((Y Z
{)) 	
var** 
response** 
=** 
await**  
base**! %
.**% &
UpdateAsync**& 1
(**1 2
model**2 7
)**7 8
;**8 9
if,, 
(,, 
response,, 
.,, 
	IsSuccess,, !
),,! "
response-- 
=-- 
await--  #
_registerInStockService--! 8
.--8 9
AddOrDeleteAsync--9 I
(--I J
model--J O
.--O P
Id--P R
,--R S
model--T Y
.--Y Z
RegisterInStocks--Z j
)--j k
;--k l
if// 
(// 
response// 
.// 
	IsSuccess// !
)//! "
response00 
=00 
await00  
_stockService00! .
.00. /
UpdateStockQuantity00/ B
(00B C
model00C H
.00H I
RegisterInStocks00I Y
,00Y Z
model00[ `
.00` a
Apply00a f
)00f g
;00g h
return22 
response22 
;22 
}33 	
public55 
async55 
Task55 
<55 
IResponseBase55 '
>55' (
GetToListAsync55) 7
(557 8
CancellationToken558 I
cancellation55J V
=55W X
default55Y `
)55` a
{66 	
var77 
entities77 
=77 
await77  
_repository77! ,
.77, -
GetToListAsync77- ;
(77; <
cancellation77< H
)77H I
;77I J
if88 
(88 
entities88 
==88 
null88  
)88  !
return88" (
new88) ,
NoContentResponse88- >
(88> ?
)88? @
;88@ A
return99 
new99 

OkResponse99 !
<99! "
IEnumerable99" -
<99- .
RegisterInGetModel99. @
>99@ A
>99A B
(99B C
Mapper99C I
.99I J
Map99J M
<99M N
IEnumerable99N Y
<99Y Z
RegisterInGetModel99Z l
>99l m
>99m n
(99n o
entities99o w
)99w x
)99x y
;99y z
}:: 	
public<< 
async<< 
Task<< 
<<< 
IResponseBase<< '
><<' ( 
GetByIdToUpdateAsync<<) =
(<<= >
Guid<<> B
id<<C E
,<<E F
CancellationToken<<G X
cancellation<<Y e
)<<e f
{== 	
var>> 
entities>> 
=>> 
await>>  
_repository>>! ,
.>>, - 
GetByIdToUpdateAsync>>- A
(>>A B
id>>B D
,>>D E
cancellation>>F R
)>>R S
;>>S T
if?? 
(?? 
entities?? 
==?? 
null??  
)??  !
return??" (
new??) ,
NoContentResponse??- >
(??> ?
)??? @
;??@ A
return@@ 
new@@ 

OkResponse@@ !
<@@! "
RegisterInGetModel@@" 4
>@@4 5
(@@5 6
Mapper@@6 <
.@@< =
Map@@= @
<@@@ A
RegisterInGetModel@@A S
>@@S T
(@@T U
entities@@U ]
)@@] ^
)@@^ _
;@@_ `
}AA 	
publicCC 
asyncCC 
TaskCC 
<CC 
IResponseBaseCC '
>CC' ( 
GetDonationsPerMonthCC) =
(CC= >
CancellationTokenCC> O
cancellationCCP \
)CC\ ]
{DD 	
varEE 
entitiesEE 
=EE 
awaitEE  
_repositoryEE! ,
.EE, - 
GetDonationsPerMonthEE- A
(EEA B
cancellationEEB N
)EEN O
;EEO P
varGG 
	searchKeyGG 
=GG 
newGG 
DateTimeGG  (
(GG( )
DateTimeGG) 1
.GG1 2
UtcNowGG2 8
.GG8 9
YearGG9 =
,GG= >
DateTimeGG? G
.GGG H
UtcNowGGH N
.GGN O
MonthGGO T
,GGT U
$numGGV W
)GGW X
;GGX Y
varII 
resultII 
=II 
newII 
ListII !
<II! "
objectII" (
>II( )
(II) *
)II* +
;II+ ,
forKK 
(KK 
varKK 
iKK 
=KK 
$numKK 
;KK 
iKK 
<=KK  
$numKK! #
;KK# $
iKK% &
++KK& (
)KK( )
{LL 
varMM 

foundValueMM 
=MM  
entitiesMM! )
.MM) *
FirstOrDefaultMM* 8
(MM8 9
xMM9 :
=>MM; =
xMM> ?
.MM? @
KeyMM@ C
==MMD F
	searchKeyMMG P
)MMP Q
;MMQ R
ifOO 
(OO 

foundValueOO 
.OO 
KeyOO "
!=OO# %
defaultOO& -
)OO- .
resultPP 
.PP 
AddPP 
(PP 
newPP "
{PP# $
MonthPP% *
=PP+ ,

foundValuePP- 7
.PP7 8
KeyPP8 ;
.PP; <
ToStringPP< D
(PPD E
$strPPE K
)PPK L
[PPL M
$numPPM N
]PPN O
.PPO P
ToStringPPP X
(PPX Y
)PPY Z
.PPZ [
ToUpperPP[ b
(PPb c
)PPc d
,PPd e
TotalPPf k
=PPl m

foundValuePPn x
.PPx y
ValuePPy ~
}	PP Ä
)
PPÄ Å
;
PPÅ Ç
elseQQ 
resultRR 
.RR 
AddRR 
(RR 
newRR "
{RR# $
MonthRR% *
=RR+ ,
	searchKeyRR- 6
.RR6 7
ToStringRR7 ?
(RR? @
$strRR@ F
)RRF G
[RRG H
$numRRH I
]RRI J
.RRJ K
ToStringRRK S
(RRS T
)RRT U
.RRU V
ToUpperRRV ]
(RR] ^
)RR^ _
,RR_ `
TotalRRa f
=RRg h
$numRRi j
}RRk l
)RRl m
;RRm n
	searchKeyTT 
=TT 
	searchKeyTT %
.TT% &
	AddMonthsTT& /
(TT/ 0
-TT0 1
$numTT1 2
)TT2 3
;TT3 4
}UU 
ifWW 
(WW 
resultWW 
==WW 
nullWW 
)WW 
returnWW  &
newWW' *
NoContentResponseWW+ <
(WW< =
)WW= >
;WW> ?
returnXX 
newXX 

OkResponseXX !
<XX! "
objectXX" (
>XX( )
(XX) *
resultXX* 0
)XX0 1
;XX1 2
}YY 	
public[[ 
async[[ 
Task[[ 
<[[ 
IResponseBase[[ '
>[[' (
GetShoppingPerMonth[[) <
([[< =
CancellationToken[[= N
cancellation[[O [
)[[[ \
{\\ 	
var]] 
entities]] 
=]] 
await]]  
_repository]]! ,
.]], -
GetShoppingPerMonth]]- @
(]]@ A
cancellation]]A M
)]]M N
;]]N O
var__ 
	searchKey__ 
=__ 
new__ 
DateTime__  (
(__( )
DateTime__) 1
.__1 2
UtcNow__2 8
.__8 9
Year__9 =
,__= >
DateTime__? G
.__G H
UtcNow__H N
.__N O
Month__O T
,__T U
$num__V W
)__W X
;__X Y
varaa 
resultaa 
=aa 
newaa 
Listaa !
<aa! "
objectaa" (
>aa( )
(aa) *
)aa* +
;aa+ ,
forcc 
(cc 
varcc 
icc 
=cc 
$numcc 
;cc 
icc 
<=cc  
$numcc! #
;cc# $
icc% &
++cc& (
)cc( )
{dd 
varee 

foundValueee 
=ee  
entitiesee! )
.ee) *
FirstOrDefaultee* 8
(ee8 9
xee9 :
=>ee; =
xee> ?
.ee? @
Keyee@ C
==eeD F
	searchKeyeeG P
)eeP Q
;eeQ R
ifgg 
(gg 

foundValuegg 
.gg 
Keygg "
!=gg# %
defaultgg& -
)gg- .
resulthh 
.hh 
Addhh 
(hh 
newhh "
{hh# $
Monthhh% *
=hh+ ,

foundValuehh- 7
.hh7 8
Keyhh8 ;
.hh; <
ToStringhh< D
(hhD E
$strhhE K
)hhK L
[hhL M
$numhhM N
]hhN O
.hhO P
ToStringhhP X
(hhX Y
)hhY Z
.hhZ [
ToUpperhh[ b
(hhb c
)hhc d
,hhd e
Totalhhf k
=hhl m

foundValuehhn x
.hhx y
Valuehhy ~
}	hh Ä
)
hhÄ Å
;
hhÅ Ç
elseii 
resultjj 
.jj 
Addjj 
(jj 
newjj "
{jj# $
Monthjj% *
=jj+ ,
	searchKeyjj- 6
.jj6 7
ToStringjj7 ?
(jj? @
$strjj@ F
)jjF G
[jjG H
$numjjH I
]jjI J
.jjJ K
ToStringjjK S
(jjS T
)jjT U
.jjU V
ToUpperjjV ]
(jj] ^
)jj^ _
,jj_ `
Totaljja f
=jjg h
$numjji j
}jjk l
)jjl m
;jjm n
	searchKeyll 
=ll 
	searchKeyll %
.ll% &
	AddMonthsll& /
(ll/ 0
-ll0 1
$numll1 2
)ll2 3
;ll3 4
}mm 
ifoo 
(oo 
resultoo 
==oo 
nulloo 
)oo 
returnoo  &
newoo' *
NoContentResponseoo+ <
(oo< =
)oo= >
;oo> ?
returnpp 
newpp 

OkResponsepp !
<pp! "
objectpp" (
>pp( )
(pp) *
resultpp* 0
)pp0 1
;pp1 2
}qq 	
}rr 
}ss ïX
hE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Services\v1\Notification\NotificationService.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Services %
.% &
v1& (
.( )
Notification) 5
{ 
public 

class 
NotificationService $
:% & 
INotificationService' ;
{ 
private 
readonly 
string 
_sendGridSecretKey  2
;2 3
private 
readonly 
string 
_applicationName  0
;0 1
private 
readonly 
string 
_noReplyEmail  -
;- .
private 
readonly 
IDevinoService '
_devinoService( 6
;6 7
private 
readonly 
ISmsDevService '
_smsDevService( 6
;6 7
private 
readonly 
IHttpSmsService (
_httpSmsService) 8
;8 9
public 
NotificationService "
(" #
IDevinoService# 1
devinoService2 ?
,? @
ISmsDevServiceA O
smsDevServiceP ]
,] ^
IHttpSmsService_ n
httpSmsServiceo }
)} ~
{ 	
_sendGridSecretKey 
=  
System! '
.' (
Environment( 3
.3 4"
GetEnvironmentVariable4 J
(J K
$strK \
)\ ]
;] ^
_applicationName 
= 
System %
.% &
Environment& 1
.1 2"
GetEnvironmentVariable2 H
(H I
$strI [
)[ \
;\ ]
_noReplyEmail 
= 
System "
." #
Environment# .
.. /"
GetEnvironmentVariable/ E
(E F
$strF V
)V W
;W X
_devinoService   
=   
devinoService   *
;  * +
_smsDevService!! 
=!! 
smsDevService!! *
;!!* +
_httpSmsService"" 
="" 
httpSmsService"" ,
;"", -
}## 	
public%% 
async%% 
Task%% 
<%% 
bool%% 
>%% 4
(SendValidationCodeNotificationEmailAsync%%  H
(%%H I
string%%I O
ToName%%P V
,%%V W
string%%X ^
ToEmail%%_ f
,%%f g
string%%h n
validationCode%%o }
)%%} ~
{&& 	
var'' 
contentHtmlBody'' 
=''  !
File''" &
.''& '
ReadAllText''' 2
(''2 3
$@"''3 6
{''6 7
System''7 =
.''= >
	AppDomain''> G
.''G H
CurrentDomain''H U
.''U V
BaseDirectory''V c
}''c d
$str	''d ¢
"
''¢ £
)
''£ §
;
''§ •
return(( 
await(( 
SendEmailAsync(( '
(((' (
new((( +
SendEmailModel((, :
(((: ;
)((; <
{)) 
	FromEmail** 
=** 
_noReplyEmail** )
,**) *
FromName++ 
=++ 
_applicationName++ +
,+++ ,
ToName,, 
=,, 
ToName,, 
,,,  
ToEmail-- 
=-- 
ToEmail-- !
,--! "
Subject.. 
=.. 
ConstantMessages.. *
...* +6
*EMAIL_SUBJECT_VALIDATION_CODE_NOTIFICATION..+ U
,..U V
HtmlContent// 
=// 
contentHtmlBody// -
.//- .
Replace//. 5
(//5 6
$str//6 C
,//C D
validationCode//E S
)//S T
.//T U
Replace//U \
(//\ ]
$str//] j
,//j k
ToName//l r
)//r s
}00 
)00 
;00 
}11 	
public33 
async33 
Task33 
<33 
bool33 
>33 4
(SendForgotPasswordNotificationEmailAsync33  H
(33H I
string33I O
ToName33P V
,33V W
string33X ^
ToEmail33_ f
,33f g
string33h n
validationCode33o }
)33} ~
{44 	
var55 
contentHtmlBody55 
=55  !
File55" &
.55& '
ReadAllText55' 2
(552 3
$@"553 6
{556 7
System557 =
.55= >
	AppDomain55> G
.55G H
CurrentDomain55H U
.55U V
BaseDirectory55V c
}55c d
$str	55d †
"
55† °
)
55° ¢
;
55¢ £
return66 
await66 
SendEmailAsync66 '
(66' (
new66( +
SendEmailModel66, :
(66: ;
)66; <
{77 
	FromEmail88 
=88 
_noReplyEmail88 )
,88) *
FromName99 
=99 
_applicationName99 +
,99+ ,
ToName:: 
=:: 
ToName:: 
,::  
ToEmail;; 
=;; 
ToEmail;; !
,;;! "
Subject<< 
=<< 
ConstantMessages<< *
.<<* +6
*EMAIL_SUBJECT_VALIDATION_CODE_NOTIFICATION<<+ U
,<<U V
HtmlContent== 
=== 
contentHtmlBody== -
.==- .
Replace==. 5
(==5 6
$str==6 C
,==C D
validationCode==E S
)==S T
.==T U
Replace==U \
(==\ ]
$str==] j
,==j k
ToName==l r
)==r s
}>> 
)>> 
;>> 
}?? 	
publicAA 
asyncAA 
TaskAA 
<AA 
boolAA 
>AA 8
,SendConfirmationCodeSuccessNotificationEmailAA  L
(AAL M
stringAAM S
ToNameAAT Z
,AAZ [
stringAA\ b
ToEmailAAc j
,AAj k
stringAAl r
validationCode	AAs Å
)
AAÅ Ç
{BB 	
varCC 
contentHtmlBodyCC 
=CC  !
FileCC" &
.CC& '
ReadAllTextCC' 2
(CC2 3
$@"CC3 6
{CC6 7
SystemCC7 =
.CC= >
	AppDomainCC> G
.CCG H
CurrentDomainCCH U
.CCU V
BaseDirectoryCCV c
}CCc d
$str	CCd ™
"
CC™ ´
)
CC´ ¨
;
CC¨ ≠
returnDD 
awaitDD 
SendEmailAsyncDD '
(DD' (
newDD( +
SendEmailModelDD, :
(DD: ;
)DD; <
{EE 
	FromEmailFF 
=FF 
_noReplyEmailFF )
,FF) *
FromNameGG 
=GG 
_applicationNameGG +
,GG+ ,
ToNameHH 
=HH 
ToNameHH 
,HH  
ToEmailII 
=II 
ToEmailII !
,II! "
SubjectJJ 
=JJ 
ConstantMessagesJJ *
.JJ* +6
*EMAIL_SUBJECT_VALIDATION_CODE_NOTIFICATIONJJ+ U
,JJU V
HtmlContentKK 
=KK 
contentHtmlBodyKK -
.KK- .
ReplaceKK. 5
(KK5 6
$strKK6 C
,KKC D
validationCodeKKE S
)KKS T
.KKT U
ReplaceKKU \
(KK\ ]
$strKK] j
,KKj k
ToNameKKl r
)KKr s
}LL 
)LL 
;LL 
}MM 	
publicOO 
asyncOO 
TaskOO 
<OO 
IResponseBaseOO '
>OO' (
SendSmsMessageOO) 7
(OO7 8
stringOO8 >
toPhoneNumberOO? L
,OOL M
stringOON T
messageOOU \
,OO\ ]
stringOO^ d
	countryIdOOe n
)OOn o
{PP 	
ifQQ 
(QQ $
IntegrationConfigurationQQ (
.QQ( )
SmsProviderQQ) 4
==QQ5 7
$strQQ8 A
)QQA B
{RR 
varSS 
responseSS 
=SS 
awaitSS $
_httpSmsServiceSS% 4
.SS4 5
SendMessageSS5 @
(SS@ A
newSSA D#
HttpSmsSendMessageModelSSE \
{TT 
ContentUU 
=UU 
messageUU %
,UU% &
ToVV 
=VV 
toPhoneNumberVV &
,VV& '
	CountryIdWW 
=WW 
	countryIdWW  )
}XX 
)XX 
;XX 
returnYY 
responseYY 
;YY  
}ZZ 
else[[ 
{\\ 
switch]] 
(]] 
	countryId]] !
)]]! "
{^^ 
case__ 
$str__ 
:__ 
return`` 
await`` $
_smsDevService``% 3
.``3 4
SendMessage``4 ?
(``? @
toPhoneNumber``@ M
,``M N
message``O V
)``V W
;``W X
casebb 
$strbb 
:bb 
returncc 
awaitcc $
_devinoServicecc% 3
.cc3 4
SendMessagecc4 ?
(cc? @
toPhoneNumbercc@ M
,ccM N
messageccO V
)ccV W
;ccW X
defaultee 
:ee 
throwff 
newff !#
NotImplementedExceptionff" 9
(ff9 :
)ff: ;
;ff; <
}gg 
}hh 
}ii 	
publickk 
asynckk 
Taskkk 
<kk 
boolkk 
>kk 
SendEmailAsynckk  .
(kk. /
SendEmailModelkk/ =
	pushEmailkk> G
)kkG H
{ll 	
varmm 
clientmm 
=mm 
newmm 
SendGridClientmm +
(mm+ ,
_sendGridSecretKeymm, >
)mm> ?
;mm? @
varnn 
fromnn 
=nn 
newnn 
EmailAddressnn '
(nn' (
	pushEmailnn( 1
.nn1 2
	FromEmailnn2 ;
,nn; <
	pushEmailnn= F
.nnF G
FromNamennG O
)nnO P
;nnP Q
varoo 
tooo 
=oo 
newoo 
EmailAddressoo %
(oo% &
	pushEmailoo& /
.oo/ 0
ToEmailoo0 7
,oo7 8
	pushEmailoo9 B
.ooB C
ToNameooC I
)ooI J
;ooJ K
varpp 
msgpp 
=pp 

MailHelperpp  
.pp  !
CreateSingleEmailpp! 2
(pp2 3
frompp3 7
,pp7 8
topp9 ;
,pp; <
	pushEmailpp= F
.ppF G
SubjectppG N
,ppN O
	pushEmailppP Y
.ppY Z
PlainTextContentppZ j
,ppj k
	pushEmailppl u
.ppu v
HtmlContent	ppv Å
)
ppÅ Ç
;
ppÇ É
varqq 
responseqq 
=qq 
awaitqq  
clientqq! '
.qq' (
SendEmailAsyncqq( 6
(qq6 7
msgqq7 :
)qq: ;
;qq; <
returnrr 
responserr 
.rr 
IsSuccessStatusCoderr /
;rr/ 0
}ss 	
}tt 
}uu £c
VE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Services\v1\ManagerService.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Services %
.% &
v1& (
{ 
public 

class 
ManagerService 
:  !
ServiceBase" -
<- .
ManagerAddModel. =
,= >
ManagerUpdateModel? Q
,Q R
ManagerPatchModelS d
,d e
ManagerGetModelf u
,u v
ManagerModel	w É
,
É Ñ
Manager
Ö å
,
å ç
Guid
é í
>
í ì
,
ì î
IManagerService
ï §
{ 
private 
readonly 
IManagerRepository +
_repository, 7
;7 8
private 
readonly 
ISignUpService '
_signUpService( 6
;6 7
private 
readonly 
IUserService %
_userService& 2
;2 3
public 
ManagerService 
( 
IManagerRepository 0

repository1 ;
,; <
IServiceContext= L
serviceContextM [
,[ \
ISignUpService] k
signUpServicel y
,y z
IUserService	{ á
userService
à ì
)
ì î
: 
base 
( 

repository 
, 
serviceContext -
)- .
{ 	
_repository   
=   

repository   $
;  $ %
_signUpService!! 
=!! 
signUpService!! *
;!!* +
_userService"" 
="" 
userService"" &
;""& '
}## 	
public%% 
override%% 
async%% 
Task%% "
<%%" #
IResponseBase%%# 0
>%%0 1
AddAsync%%2 :
(%%: ;
ManagerAddModel%%; J
model%%K P
)%%P Q
{&& 	
var'' 
response'' 
='' 
await''  
_signUpService''! /
.''/ 0
SignUpGenericAsync''0 B
(''B C
model''C H
.''H I
SignUp''I O
,''O P
UserType''Q Y
.''Y Z
Manager''Z a
)''a b
;''b c
if(( 
((( 
!(( 
response(( 
.(( 
	IsSuccess(( #
)((# $
return((% +
response((, 4
;((4 5
var)) 
user)) 
=)) 
()) 
()) 

OkResponse)) #
<))# $
	UserModel))$ -
>))- .
))). /
response))/ 7
)))7 8
.))8 9
Data))9 =
;))= >
model** 
.** 
UserId** 
=** 
user** 
.**  
Id**  "
;**" #
var++ 
Manager++ 
=++ 
await++ 
_repository++  +
.+++ ,
AddAsync++, 4
(++4 5
Mapper++5 ;
.++; <
Map++< ?
<++? @
Manager++@ G
>++G H
(++H I
model++I N
)++N O
)++O P
;++P Q
if,, 
(,, 
Manager,, 
==,, 
null,, 
),,  
return,,! '
new,,( +
BadRequestResponse,,, >
(,,> ?
ConstantMessages,,? O
.,,O P
CRUD_CREATE_FAIL,,P `
,,,` a
response,,b j
),,j k
;,,k l
return33 
new33 

OkResponse33 !
<33! "
ManagerGetModel33" 1
>331 2
(332 3
Mapper333 9
.339 :
Map33: =
<33= >
ManagerGetModel33> M
>33M N
(33N O
Manager33O V
)33V W
)33W X
;33X Y
}44 	
public66 
override66 
async66 
Task66 "
<66" #
IResponseBase66# 0
>660 1
UpdateAsync662 =
(66= >
ManagerUpdateModel66> P
model66Q V
)66V W
{77 	
var88 
manager88 
=88 
await88 
_repository88  +
.88+ ,
GetByIdAsync88, 8
(888 9
model889 >
.88> ?
Id88? A
)88A B
;88B C
if99 
(99 
manager99 
==99 
null99 
)99  
return99! '
new99( +
NoContentResponse99, =
(99= >
)99> ?
;99? @
var:: 
managerUpdated:: 
=::  
Mapper::! '
.::' (
Map::( +
<::+ ,
Manager::, 3
>::3 4
(::4 5
model::5 :
)::: ;
;::; <
awaitAA 
_userServiceAA 
.AA 
UpdateAsyncAA *
(AA* +
modelAA+ 0
.AA0 1
UserAA1 5
)AA5 6
;AA6 7
managerBB 
=BB 
awaitBB 
_repositoryBB '
.BB' (
UpdateAsyncBB( 3
(BB3 4
managerUpdatedBB4 B
)BBB C
;BBC D
returnCC 
newCC 

OkResponseCC !
<CC! "
ManagerGetModelCC" 1
>CC1 2
(CC2 3
MapperCC3 9
.CC9 :
MapCC: =
<CC= >
ManagerGetModelCC> M
>CCM N
(CCN O
managerCCO V
)CCV W
)CCW X
;CCX Y
}DD 	
publicFF 
asyncFF 
TaskFF 
<FF 
IResponseBaseFF '
>FF' (
SoftDeleteByIdFF) 7
(FF7 8
GuidFF8 <
idFF= ?
)FF? @
{GG 	
varHH 
entityHH 
=HH 
awaitHH 
_repositoryHH *
.HH* +
GetByIdAsyncHH+ 7
(HH7 8
idHH8 :
)HH: ;
;HH; <
ifII 
(II 
entityII 
==II 
nullII 
)II 
returnII  &
newII' *
NoContentResponseII+ <
(II< =
)II= >
;II> ?
entityKK 
=KK &
RemoveManagerSensitiveDataKK /
(KK/ 0
entityKK0 6
)KK6 7
;KK7 8
awaitLL 
_repositoryLL 
.LL 
UpdateAsyncLL )
(LL) *
entityLL* 0
)LL0 1
;LL1 2
awaitMM 
_userServiceMM 
.MM 
SoftDeleteByIdMM -
(MM- .
entityMM. 4
.MM4 5
UserIdMM5 ;
)MM; <
;MM< =
returnNN 
newNN 

OkResponseNN !
<NN! ""
DefaultMessageResponseNN" 8
>NN8 9
(NN9 :
newNN: ="
DefaultMessageResponseNN> T
(NNT U
ConstantMessagesNNU e
.NNe f
CRUD_DELETEDNNf r
,NNr s
nullNNt x
)NNx y
)NNy z
;NNz {
}OO 	
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
IResponseBaseQQ '
>QQ' (
SoftDeleteByUserIdQQ) ;
(QQ; <
GuidQQ< @
userIdQQA G
)QQG H
{RR 	
varSS 
entitySS 
=SS 
awaitSS 
_repositorySS *
.SS* +
GetByUserIdAsyncSS+ ;
(SS; <
userIdSS< B
)SSB C
;SSC D
ifTT 
(TT 
entityTT 
==TT 
nullTT 
)TT 
returnTT  &
newTT' *
NoContentResponseTT+ <
(TT< =
)TT= >
;TT> ?
entityVV 
=VV &
RemoveManagerSensitiveDataVV /
(VV/ 0
entityVV0 6
)VV6 7
;VV7 8
awaitWW 
_repositoryWW 
.WW 
UpdateAsyncWW )
(WW) *
entityWW* 0
)WW0 1
;WW1 2
awaitXX 
_userServiceXX 
.XX 
SoftDeleteByIdXX -
(XX- .
entityXX. 4
.XX4 5
UserIdXX5 ;
)XX; <
;XX< =
returnYY 
newYY 

OkResponseYY !
<YY! ""
DefaultMessageResponseYY" 8
>YY8 9
(YY9 :
newYY: ="
DefaultMessageResponseYY> T
(YYT U
ConstantMessagesYYU e
.YYe f
CRUD_DELETEDYYf r
,YYr s
nullYYt x
)YYx y
)YYy z
;YYz {
}ZZ 	
private\\ 
Manager\\ &
RemoveManagerSensitiveData\\ 2
(\\2 3
Manager\\3 :
entity\\; A
)\\A B
{]] 	
entity^^ 
.^^ 
	PhotoPath^^ 
=^^ 
null^^ #
;^^# $
entity__ 
.__ 
DeletionDate__ 
=__  !
DateTime__" *
.__* +
UtcNow__+ 1
;__1 2
return`` 
entity`` 
;`` 
}aa 	
publiccc 
asynccc 
Taskcc 
<cc 
IResponseBasecc '
>cc' (
GetByUserIdAsynccc) 9
(cc9 :
Guidcc: >
userIdcc? E
,ccE F
CancellationTokenccG X
cancellationTokenccY j
)ccj k
{dd 	
varee 
manageree 
=ee 
awaitee 
_repositoryee  +
.ee+ ,
GetByUserIdAsyncee, <
(ee< =
userIdee= C
,eeC D
cancellationTokeneeE V
)eeV W
;eeW X
ifff 
(ff 
managerff 
==ff 
nullff 
)ff  
returnff! '
newff( +
NoContentResponseff, =
(ff= >
)ff> ?
;ff? @
returngg 
newgg 

OkResponsegg !
<gg! ":
.GenericUserProfileGetWithoutSensitiveDataModelgg" P
>ggP Q
(ggQ R
MapperggR X
.ggX Y
MapggY \
<gg\ ];
.GenericUserProfileGetWithoutSensitiveDataModel	gg] ã
>
ggã å
(
ggå ç
manager
ggç î
)
ggî ï
)
ggï ñ
;
ggñ ó
}hh 	
publicjj 
asyncjj 
Taskjj 
<jj 
IResponseBasejj '
>jj' ( 
GetByIdToUpdateAsyncjj) =
(jj= >
Guidjj> B
idjjC E
,jjE F
CancellationTokenjjG X
cancellationTokenjjY j
)jjj k
{kk 	
varll 
managerll 
=ll 
awaitll 
_repositoryll  +
.ll+ , 
GetByIdToUpdateAsyncll, @
(ll@ A
idllA C
,llC D
cancellationTokenllE V
)llV W
;llW X
ifmm 
(mm 
managermm 
==mm 
nullmm 
)mm  
returnmm! '
newmm( +
NoContentResponsemm, =
(mm= >
)mm> ?
;mm? @
returnnn 
newnn 

OkResponsenn !
<nn! ":
.GenericUserProfileGetWithoutSensitiveDataModelnn" P
>nnP Q
(nnQ R
MappernnR X
.nnX Y
MapnnY \
<nn\ ];
.GenericUserProfileGetWithoutSensitiveDataModel	nn] ã
>
nnã å
(
nnå ç
manager
nnç î
)
nnî ï
)
nnï ñ
;
nnñ ó
}oo 	
publicqq 
asyncqq 
Taskqq 
<qq 
IResponseBaseqq '
>qq' (
GetAnyToListAsyncqq) :
(qq: ;
CancellationTokenqq; L
cancellationTokenqqM ^
)qq^ _
{rr 	
varss 
managerss 
=ss 
awaitss 
_repositoryss  +
.ss+ ,
GetAnyToListAsyncss, =
(ss= >
cancellationTokenss> O
)ssO P
;ssP Q
iftt 
(tt 
managertt 
==tt 
nulltt 
)tt  
returntt! '
newtt( +
NoContentResponsett, =
(tt= >
)tt> ?
;tt? @
returnuu 
newuu 

OkResponseuu !
<uu! "
IEnumerableuu" -
<uu- .:
.GenericUserProfileGetWithoutSensitiveDataModeluu. \
>uu\ ]
>uu] ^
(uu^ _
Mapperuu_ e
.uue f
Mapuuf i
<uui j
IEnumerableuuj u
<uuu v;
.GenericUserProfileGetWithoutSensitiveDataModel	uuv §
>
uu§ •
>
uu• ¶
(
uu¶ ß
manager
uuß Æ
)
uuÆ Ø
)
uuØ ∞
;
uu∞ ±
}vv 	
}ww 
}xx Óx
WE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Services\v1\EmployeeService.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Services %
.% &
v1& (
{ 
public 

class 
EmployeeService  
:! "
ServiceBase# .
<. /
EmployeeAddModel/ ?
,? @
EmployeeUpdateModelA T
,T U
EmployeePatchModelV h
,h i
EmployeeGetModelj z
,z {
EmployeeModel	| â
,
â ä
Employee
ã ì
,
ì î
Guid
ï ô
>
ô ö
,
ö õ
IEmployeeService
ú ¨
{ 
private 
readonly 
IEmployeeRepository ,
_repository- 8
;8 9
private 
readonly 
ISignUpService '
_signUpService( 6
;6 7
private 
readonly 
IUserService %
_userService& 2
;2 3
private 
readonly 
IJwtService $
_jwtService% 0
;0 1
public 
EmployeeService 
( 
IEmployeeRepository 2

repository3 =
,= >
IServiceContext? N
serviceContextO ]
,] ^
ISignUpService_ m
signUpServicen {
,{ |
IUserService	} â
userService
ä ï
,
ï ñ
IJwtService
ó ¢

jwtService
£ ≠
)
≠ Æ
: 
base 
( 

repository 
, 
serviceContext -
)- .
{ 	
_repository   
=   

repository   $
;  $ %
_signUpService!! 
=!! 
signUpService!! *
;!!* +
_userService"" 
="" 
userService"" &
;""& '
_jwtService## 
=## 

jwtService## $
;##$ %
}$$ 	
public&& 
override&& 
async&& 
Task&& "
<&&" #
IResponseBase&&# 0
>&&0 1
AddAsync&&2 :
(&&: ;
EmployeeAddModel&&; K
model&&L Q
)&&Q R
{'' 	
var(( 
response(( 
=(( 
await((  
_signUpService((! /
.((/ 0
SignUpGenericAsync((0 B
(((B C
model((C H
.((H I
SignUp((I O
,((O P
UserType((Q Y
.((Y Z
Employee((Z b
)((b c
;((c d
if)) 
()) 
!)) 
response)) 
.)) 
	IsSuccess)) #
)))# $
return))% +
response)), 4
;))4 5
var** 
user** 
=** 
(** 
(** 

OkResponse** #
<**# $
	UserModel**$ -
>**- .
)**. /
response**/ 7
)**7 8
.**8 9
Data**9 =
;**= >
model++ 
.++ 
UserId++ 
=++ 
user++ 
.++  
Id++  "
;++" #
var,, 
employee,, 
=,, 
await,,  
_repository,,! ,
.,,, -
AddAsync,,- 5
(,,5 6
Mapper,,6 <
.,,< =
Map,,= @
<,,@ A
Employee,,A I
>,,I J
(,,J K
model,,K P
),,P Q
),,Q R
;,,R S
if-- 
(-- 
employee-- 
==-- 
null--  
)--  !
return--" (
new--) ,
BadRequestResponse--- ?
(--? @
ConstantMessages--@ P
.--P Q
CRUD_CREATE_FAIL--Q a
,--a b
response--c k
)--k l
;--l m
return44 
new44 

OkResponse44 !
<44! "
EmployeeGetModel44" 2
>442 3
(443 4
Mapper444 :
.44: ;
Map44; >
<44> ?
EmployeeGetModel44? O
>44O P
(44P Q
employee44Q Y
)44Y Z
)44Z [
;44[ \
}55 	
public77 
override77 
async77 
Task77 "
<77" #
IResponseBase77# 0
>770 1
UpdateAsync772 =
(77= >
EmployeeUpdateModel77> Q
model77R W
)77W X
{88 	
var99 
employee99 
=99 
await99  
_repository99! ,
.99, -
GetByIdAsync99- 9
(999 :
model99: ?
.99? @
Id99@ B
)99B C
;99C D
if:: 
(:: 
employee:: 
==:: 
null::  
)::  !
return::" (
new::) ,
NoContentResponse::- >
(::> ?
)::? @
;::@ A
var;; 
employeeUpdated;; 
=;;  !
Mapper;;" (
.;;( )
Map;;) ,
<;;, -
Employee;;- 5
>;;5 6
(;;6 7
model;;7 <
);;< =
;;;= >
employeeBB 
=BB 
awaitBB 
_repositoryBB (
.BB( )
UpdateAsyncBB) 4
(BB4 5
employeeUpdatedBB5 D
)BBD E
;BBE F
returnCC 
newCC 

OkResponseCC !
<CC! "
EmployeeGetModelCC" 2
>CC2 3
(CC3 4
MapperCC4 :
.CC: ;
MapCC; >
<CC> ?
EmployeeGetModelCC? O
>CCO P
(CCP Q
employeeCCQ Y
)CCY Z
)CCZ [
;CC[ \
}DD 	
publicFF 
asyncFF 
TaskFF 
<FF 
IResponseBaseFF '
>FF' (
SoftDeleteByIdFF) 7
(FF7 8
GuidFF8 <
idFF= ?
)FF? @
{GG 	
varHH 
entityHH 
=HH 
awaitHH 
_repositoryHH *
.HH* +
GetByIdAsyncHH+ 7
(HH7 8
idHH8 :
)HH: ;
;HH; <
ifII 
(II 
entityII 
==II 
nullII 
)II 
returnII  &
newII' *
NoContentResponseII+ <
(II< =
)II= >
;II> ?
entityKK 
=KK #
RemoveUserSensitiveDataKK ,
(KK, -
entityKK- 3
)KK3 4
;KK4 5
awaitLL 
_repositoryLL 
.LL 
UpdateAsyncLL )
(LL) *
entityLL* 0
)LL0 1
;LL1 2
awaitMM 
_userServiceMM 
.MM 
SoftDeleteByIdMM -
(MM- .
entityMM. 4
.MM4 5
UserIdMM5 ;
)MM; <
;MM< =
returnNN 
newNN 

OkResponseNN !
<NN! ""
DefaultMessageResponseNN" 8
>NN8 9
(NN9 :
newNN: ="
DefaultMessageResponseNN> T
(NNT U
ConstantMessagesNNU e
.NNe f
CRUD_DELETEDNNf r
,NNr s
nullNNt x
)NNx y
)NNy z
;NNz {
}OO 	
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
IResponseBaseQQ '
>QQ' (
SoftDeleteByUserIdQQ) ;
(QQ; <
GuidQQ< @
userIdQQA G
)QQG H
{RR 	
varSS 
entitySS 
=SS 
awaitSS 
_repositorySS *
.SS* +
GetByUserIdAsyncSS+ ;
(SS; <
userIdSS< B
)SSB C
;SSC D
ifTT 
(TT 
entityTT 
==TT 
nullTT 
)TT 
returnTT  &
newTT' *
NoContentResponseTT+ <
(TT< =
)TT= >
;TT> ?
entityVV 
=VV #
RemoveUserSensitiveDataVV ,
(VV, -
entityVV- 3
)VV3 4
;VV4 5
awaitWW 
_repositoryWW 
.WW 
UpdateAsyncWW )
(WW) *
entityWW* 0
)WW0 1
;WW1 2
awaitXX 
_userServiceXX 
.XX 
SoftDeleteByIdXX -
(XX- .
entityXX. 4
.XX4 5
UserIdXX5 ;
)XX; <
;XX< =
returnYY 
newYY 

OkResponseYY !
<YY! ""
DefaultMessageResponseYY" 8
>YY8 9
(YY9 :
newYY: ="
DefaultMessageResponseYY> T
(YYT U
ConstantMessagesYYU e
.YYe f
CRUD_DELETEDYYf r
,YYr s
nullYYt x
)YYx y
)YYy z
;YYz {
}ZZ 	
private\\ 
Employee\\ #
RemoveUserSensitiveData\\ 0
(\\0 1
Employee\\1 9
entity\\: @
)\\@ A
{]] 	
entity^^ 
.^^ 
	PhotoPath^^ 
=^^ 
null^^ #
;^^# $
entity__ 
.__ 
DeletionDate__ 
=__  !
DateTime__" *
.__* +
UtcNow__+ 1
;__1 2
return`` 
entity`` 
;`` 
}aa 	
publiccc 
asynccc 
Taskcc 
<cc 
IResponseBasecc '
>cc' (
GetByTokenAsynccc) 8
(cc8 9
stringcc9 ?
jwtTokencc@ H
,ccH I
CancellationTokenccJ [
cancellationTokencc\ m
)ccm n
{dd 	
varee 
userIdee 
=ee 
_jwtServiceee $
.ee$ %
GetUserIdFromTokenee% 7
(ee7 8
jwtTokenee8 @
)ee@ A
;eeA B
varff 
employeeff 
=ff 
awaitff  
_repositoryff! ,
.ff, -
GetByUserIdAsyncff- =
(ff= >
userIdff> D
,ffD E
cancellationTokenffF W
)ffW X
;ffX Y
ifgg 
(gg 
employeegg 
==gg 
nullgg  
)gg  !
returngg" (
newgg) ,
NoContentResponsegg- >
(gg> ?
)gg? @
;gg@ A
returnhh 
newhh 

OkResponsehh !
<hh! "0
$EmployeeGetWithoutSensitiveDataModelhh" F
>hhF G
(hhG H
MapperhhH N
.hhN O
MaphhO R
<hhR S0
$EmployeeGetWithoutSensitiveDataModelhhS w
>hhw x
(hhx y
employee	hhy Å
)
hhÅ Ç
)
hhÇ É
;
hhÉ Ñ
}ii 	
publickk 
overridekk 
asynckk 
Taskkk "
<kk" #
IResponseBasekk# 0
>kk0 1 
GetCompleteByIdAsynckk2 F
(kkF G
GuidkkG K
idkkL N
,kkN O
CancellationTokenkkP a
cancellationTokenkkb s
=kkt u
defaultkkv }
)kk} ~
{ll 	
varmm 
employeemm 
=mm 
awaitmm  
_repositorymm! ,
.mm, - 
GetCompleteByIdAsyncmm- A
(mmA B
idmmB D
,mmD E
cancellationTokenmmF W
)mmW X
;mmX Y
ifnn 
(nn 
employeenn 
==nn 
nullnn  
)nn  !
returnnn" (
newnn) ,
NoContentResponsenn- >
(nn> ?
)nn? @
;nn@ A
returnoo 
newoo 

OkResponseoo !
<oo! "
EmployeeModeloo" /
>oo/ 0
(oo0 1
Mapperoo1 7
.oo7 8
Mapoo8 ;
<oo; <
EmployeeModeloo< I
>ooI J
(ooJ K
employeeooK S
)ooS T
)ooT U
;ooU V
}pp 	
publicrr 
asyncrr 
Taskrr 
<rr 
IResponseBaserr '
>rr' ( 
GetByIdToUpdateAsyncrr) =
(rr= >
Guidrr> B
idrrC E
,rrE F
CancellationTokenrrG X
cancellationTokenrrY j
)rrj k
{ss 	
vartt 
employeett 
=tt 
awaittt  
_repositorytt! ,
.tt, - 
GetByIdToUpdateAsynctt- A
(ttA B
idttB D
,ttD E
cancellationTokenttF W
)ttW X
;ttX Y
ifuu 
(uu 
employeeuu 
==uu 
nulluu  
)uu  !
returnuu" (
newuu) ,
NoContentResponseuu- >
(uu> ?
)uu? @
;uu@ A
returnvv 
newvv 

OkResponsevv !
<vv! ":
.GenericUserProfileGetWithoutSensitiveDataModelvv" P
>vvP Q
(vvQ R
MappervvR X
.vvX Y
MapvvY \
<vv\ ];
.GenericUserProfileGetWithoutSensitiveDataModel	vv] ã
>
vvã å
(
vvå ç
employee
vvç ï
)
vvï ñ
)
vvñ ó
;
vvó ò
}ww 	
publicyy 
asyncyy 
Taskyy 
<yy 
IResponseBaseyy '
>yy' (
GetByUserIdAsyncyy) 9
(yy9 :
Guidyy: >
userIdyy? E
,yyE F
CancellationTokenyyG X
cancellationTokenyyY j
)yyj k
{zz 	
var{{ 
employee{{ 
={{ 
await{{  
_repository{{! ,
.{{, -
GetByUserIdAsync{{- =
({{= >
userId{{> D
,{{D E
cancellationToken{{F W
){{W X
;{{X Y
if|| 
(|| 
employee|| 
==|| 
null|| 
)||  
return||! '
new||( +
NoContentResponse||, =
(||= >
)||> ?
;||? @
return}} 
new}} 

OkResponse}} !
<}}! ":
.GenericUserProfileGetWithoutSensitiveDataModel}}" P
>}}P Q
(}}Q R
Mapper}}R X
.}}X Y
Map}}Y \
<}}\ ];
.GenericUserProfileGetWithoutSensitiveDataModel	}}] ã
>
}}ã å
(
}}å ç
employee
}}ç ï
)
}}ï ñ
)
}}ñ ó
;
}}ó ò
}~~ 	
public
ÄÄ 
async
ÄÄ 
Task
ÄÄ 
<
ÄÄ 
IResponseBase
ÄÄ '
>
ÄÄ' (
GetAnyToListAsync
ÄÄ) :
(
ÄÄ: ;
CancellationToken
ÄÄ; L
cancellationToken
ÄÄM ^
)
ÄÄ^ _
{
ÅÅ 	
var
ÇÇ 
	employees
ÇÇ 
=
ÇÇ 
await
ÇÇ !
_repository
ÇÇ" -
.
ÇÇ- .
GetAnyToListAsync
ÇÇ. ?
(
ÇÇ? @
cancellationToken
ÇÇ@ Q
)
ÇÇQ R
;
ÇÇR S
if
ÉÉ 
(
ÉÉ 
	employees
ÉÉ 
==
ÉÉ 
null
ÉÉ !
)
ÉÉ! "
return
ÉÉ# )
new
ÉÉ* -
NoContentResponse
ÉÉ. ?
(
ÉÉ? @
)
ÉÉ@ A
;
ÉÉA B
return
ÑÑ 
new
ÑÑ 

OkResponse
ÑÑ !
<
ÑÑ! "
IEnumerable
ÑÑ" -
<
ÑÑ- .<
.GenericUserProfileGetWithoutSensitiveDataModel
ÑÑ. \
>
ÑÑ\ ]
>
ÑÑ] ^
(
ÑÑ^ _
Mapper
ÑÑ_ e
.
ÑÑe f
Map
ÑÑf i
<
ÑÑi j
IEnumerable
ÑÑj u
<
ÑÑu v=
.GenericUserProfileGetWithoutSensitiveDataModelÑÑv §
>ÑÑ§ •
>ÑÑ• ¶
(ÑÑ¶ ß
	employeesÑÑß ∞
)ÑÑ∞ ±
)ÑÑ± ≤
;ÑÑ≤ ≥
}
ÖÖ 	
}
ÜÜ 
}áá Á(
dE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Services\v1\Authentication\SignUpService.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Services %
.% &
v1& (
.( )
Authentication) 7
{ 
public 

class 
SignUpService 
:  
ISignUpService! /
{ 
private 
readonly 
IUserService %
_userService& 2
;2 3
private 
readonly 
IOAuthService &
_oAuthService' 4
;4 5
private 
readonly  
INotificationService - 
_notificationService. B
;B C
public 
SignUpService 
( 
IServiceContext ,
serviceContext- ;
,; <
IOAuthService 
oAuthService &
,& ' 
INotificationService  #
pushNotificationService! 8
,8 9
IUserService 
userService $
)$ %
{ 	
_userService 
= 
userService &
;& '
_oAuthService 
= 
oAuthService (
;( ) 
_notificationService  
=! "#
pushNotificationService# :
;: ;
} 	
public   
async   
Task   
<   
IResponseBase   '
>  ' (
SignUpEmailAsync  ) 9
(  9 :
SignUpEmailModel  : J
signUpEmailModel  K [
,  [ \
UserType  ] e
userType  f n
)  n o
{!! 	
var"" 
response"" 
="" 
await""  
_userService""! -
.""- .
GetByEmailAsync"". =
(""= >
signUpEmailModel""> N
.""N O
Email""O T
)""T U
;""U V
if## 
(## 
response## 
.## 
	IsSuccess## "
)##" #
return##$ *
new##+ . 
UnauthorizedResponse##/ C
(##C D
)##D E
;##E F
var%% 
newUser%% 
=%% 
new%% 
UserAddModel%% *
{&& 
Email'' 
='' 
signUpEmailModel'' (
.''( )
Email'') .
,''. /
Password(( 
=(( 
signUpEmailModel(( +
.((+ ,
Password((, 4
,((4 5
Name)) 
=)) 
signUpEmailModel)) '
.))' (
Name))( ,
}** 
;** 
newUser,, 
.,, 
UserValidation,, "
=,,# $
new,,% ("
UserValidationAddModel,,) ?
{-- 
EmailValidated.. 
=..  
true..! %
,..% &
CreationDate// 
=// 
DateTime// '
.//' (
UtcNow//( .
}00 
;00 
return11 
await11 
_userService11 %
.11% & 
AddUserWithRoleAsync11& :
(11: ;
newUser11; B
,11B C
userType11D L
)11L M
;11M N
}22 	
public44 
async44 
Task44 
<44 
IResponseBase44 '
>44' (
SignUpGenericAsync44) ;
(44; <
SignUpGenericModel44< N
signUpModel44O Z
,44Z [
UserType44\ d
userType44e m
)44m n
{55 	
var66 
response66 
=66 
await66  
_userService66! -
.66- .
GetByEmailAsync66. =
(66= >
signUpModel66> I
.66I J
Email66J O
)66O P
;66P Q
if77 
(77 
response77 
.77 
	IsSuccess77 "
)77" #
return77$ *
new77+ . 
UnauthorizedResponse77/ C
(77C D
)77D E
;77E F
var99 
newUser99 
=99 
new99 
UserAddModel99 *
{:: 
Email;; 
=;; 
signUpModel;; #
.;;# $
Email;;$ )
,;;) *
PhoneNumber<< 
=<< 
signUpModel<< )
.<<) *
PhoneNumber<<* 5
,<<5 6
Password== 
=== 
signUpModel== &
.==& '
Password==' /
,==/ 0
Name>> 
=>> 
signUpModel>> "
.>>" #
Name>># '
}?? 
;?? 
newUserAA 
.AA 
UserValidationAA "
=AA# $
newAA% ("
UserValidationAddModelAA) ?
{BB 
EmailValidatedCC 
=CC  
trueCC! %
,CC% &
CreationDateDD 
=DD 
DateTimeDD '
.DD' (
UtcNowDD( .
}EE 
;EE 
returnGG 
awaitGG 
_userServiceGG %
.GG% & 
AddUserWithRoleAsyncGG& :
(GG: ;
newUserGG; B
,GGB C
userTypeGGD L
)GGL M
;GGM N
}HH 	
}II 
}JJ ÉÁ
dE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Services\v1\Authentication\SignInService.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Services %
.% &
v1& (
.( )
Authentication) 7
{ 
public 

class 
SignInService 
:  
ISignInService! /
{ 
private 
readonly 
IMapper  
Mapper! '
;' (
private 
readonly 
IJwtService $
_jwtService% 0
;0 1
private 
readonly 
IUserService %
_userService& 2
;2 3
private 
readonly 
IManagerService (
_managerService) 8
;8 9
private 
readonly 
IEmployeeService )
_employeeService* :
;: ;
private   
readonly   
IOAuthService   &
_oAuthService  ' 4
;  4 5
private!! 
readonly!! "
IUserValidationService!! /"
_userValidationService!!0 F
;!!F G
private"" 
readonly""  
INotificationService"" - 
_notificationService"". B
;""B C
private## 
readonly##  
IGoogleOAuth2Service## - 
_googleOAuth2Service##. B
;##B C
public%% 
SignInService%% 
(%% 
IServiceContext%% ,
serviceContext%%- ;
,%%; <
IJwtService&& 

jwtService&& "
,&&" #
IUserService'' 
userService'' $
,''$ %
IOAuthService(( 
oAuthService(( &
,((& '"
IUserValidationService)) "!
userValidationService))# 8
,))8 9 
INotificationService**  #
pushNotificationService**! 8
,**8 9 
IGoogleOAuth2Service++  
googleOAuth2Service++! 4
,++4 5
IEmployeeService,, 
employeeService,, ,
,,,, -
IManagerService-- 
managerService-- *
)--* +
{.. 	
_jwtService// 
=// 

jwtService// $
;//$ %
_userService00 
=00 
userService00 &
;00& '
_oAuthService11 
=11 
oAuthService11 (
;11( )
Mapper22 
=22 
serviceContext22 #
.22# $
Mapper22$ *
;22* +"
_userValidationService33 "
=33# $!
userValidationService33% :
;33: ; 
_notificationService44  
=44! "#
pushNotificationService44# :
;44: ; 
_googleOAuth2Service55  
=55! "
googleOAuth2Service55# 6
;556 7
_employeeService66 
=66 
employeeService66 .
;66. /
_managerService77 
=77 
managerService77 ,
;77, -
}88 	
public:: 
async:: 
Task:: 
<:: 
IResponseBase:: '
>::' (
SignInAsync::) 4
(::4 5#
SignInEmailRequestModel::5 L#
signInEmailRequestModel::M d
)::d e
{;; 	
var<< 
response<< 
=<< 
await<<  
_userService<<! -
.<<- .
GetByEmailAsync<<. =
(<<= >#
signInEmailRequestModel<<> U
.<<U V
Email<<V [
)<<[ \
;<<\ ]
if== 
(== 
!== 
response== 
.== 
	IsSuccess== #
)==# $
return==% +
new==, / 
UnauthorizedResponse==0 D
(==D E
)==E F
;==F G
var>> 
user>> 
=>> 
(>> 
(>> 

OkResponse>> #
<>># $
	UserModel>>$ -
>>>- .
)>>. /
response>>/ 7
)>>7 8
.>>8 9
Data>>9 =
;>>= >
if@@ 
(@@ 
user@@ 
.@@ 
Disable@@ 
)@@ 
return@@ $
new@@% ( 
UnauthorizedResponse@@) =
(@@= >
)@@> ?
;@@? @
ifBB 
(BB 
userBB 
==BB 
nullBB 
||BB 
userBB  $
.BB$ %
PasswordBB% -
.BB- .
LengthBB. 4
==BB5 7
$numBB8 9
||BB: <
!BB= >
RSACipherHelperBB> M
.BBM N!
ValidateEncryptedDataBBN c
(BBc d#
signInEmailRequestModelBBd {
.BB{ |
Password	BB| Ñ
,
BBÑ Ö
Encoding
BBÜ é
.
BBé è
UTF8
BBè ì
.
BBì î
	GetString
BBî ù
(
BBù û
user
BBû ¢
.
BB¢ £
Password
BB£ ´
)
BB´ ¨
)
BB¨ ≠
)
BB≠ Æ
return
BBØ µ
new
BB∂ π"
UnauthorizedResponse
BB∫ Œ
(
BBŒ œ
)
BBœ –
;
BB– —
varDD 
authenticationDD 
=DD  
awaitDD! &
_oAuthServiceDD' 4
.DD4 50
$CreateSignInAuthenticationEmailAsyncDD5 Y
(DDY Z
userDDZ ^
)DD^ _
;DD_ `
awaitEE 
_userServiceEE 
.EE  
UpdateLastLoginAsyncEE 3
(EE3 4
userEE4 8
.EE8 9
IdEE9 ;
)EE; <
;EE< =
authenticationFF 
.FF 
UserFF 
=FF  !
MapperFF" (
.FF( )
MapFF) ,
<FF, -
UserSignInModelFF- <
>FF< =
(FF= >
userFF> B
)FFB C
;FFC D
returnHH 
newHH 

OkResponseHH !
<HH! "%
SignInAuthenticationModelHH" ;
>HH; <
(HH< =
authenticationHH= K
)HHK L
;HHL M
}II 	
publicKK 
asyncKK 
TaskKK 
<KK 
IResponseBaseKK '
>KK' (.
"RequestRecoverPasswordByEmailAsyncKK) K
(KKK L
stringKKL R
emailKKS X
)KKX Y
{LL 	
varMM 
responseMM 
=MM 
awaitMM  
_userServiceMM! -
.MM- .
GetByEmailAsyncMM. =
(MM= >
emailMM> C
)MMC D
;MMD E
ifNN 
(NN 
!NN 
responseNN 
.NN 
	IsSuccessNN #
)NN# $
returnNN% +
newNN, /

OkResponseNN0 :
<NN: ;
objectNN; A
>NNA B
(NNB C
nullNNC G
)NNG H
;NNH I
varOO 
userOO 
=OO 
(OO 
(OO 

OkResponseOO #
<OO# $
	UserModelOO$ -
>OO- .
)OO. /
responseOO/ 7
)OO7 8
.OO8 9
DataOO9 =
;OO= >
ifPP 
(PP 
userPP 
.PP 
UserValidationPP #
==PP$ &
nullPP' +
)PP+ ,
userQQ 
.QQ 
UserValidationQQ #
=QQ$ %
newQQ& )
UserValidationModelQQ* =
(QQ= >
)QQ> ?
{QQ@ A!
EmailConfirmationCodeQQB W
=QQX Y"
ConfirmationCodeHelperQQZ p
.QQp q%
GenerateConfirmationCode	QQq â
(
QQâ ä
)
QQä ã
}
QQå ç
;
QQç é
elseRR 
userSS 
.SS 
UserValidationSS #
.SS# $!
EmailConfirmationCodeSS$ 9
=SS: ;"
ConfirmationCodeHelperSS< R
.SSR S$
GenerateConfirmationCodeSSS k
(SSk l
)SSl m
;SSm n
responseTT 
=TT 
awaitTT "
_userValidationServiceTT 3
.TT3 4
AddOrUpdateAsyncTT4 D
(TTD E
userTTE I
.TTI J
UserValidationTTJ X
)TTX Y
;TTY Z
ifUU 
(UU 
!UU 
responseUU 
.UU 
	IsSuccessUU #
)UU# $
returnUU% +
newUU, /
BadRequestResponseUU0 B
(UUB C
ConstantMessagesUUC S
.UUS T
CRUD_UPDATE_FAILUUT d
,UUd e
responseUUf n
)UUn o
;UUo p
varVV 
userValidationVV 
=VV  
(VV! "
(VV" #

OkResponseVV# -
<VV- .
UserValidationModelVV. A
>VVA B
)VVB C
responseVVC K
)VVK L
.VVL M
DataVVM Q
;VVQ R
awaitWW  
_notificationServiceWW &
.WW& '4
(SendForgotPasswordNotificationEmailAsyncWW' O
(WWO P
userWWP T
.WWT U
NameWWU Y
,WWY Z
userWW[ _
.WW_ `
EmailWW` e
,WWe f
userValidationWWg u
.WWu v"
EmailConfirmationCode	WWv ã
)
WWã å
;
WWå ç
returnXX 
newXX 

OkResponseXX !
<XX! "
objectXX" (
>XX( )
(XX) *
nullXX* .
)XX. /
;XX/ 0
}YY 	
public^^ 
async^^ 
Task^^ 
<^^ 
IResponseBase^^ '
>^^' (.
"ValidateEmailConfirmationCodeAsync^^) K
(^^K L,
 SignInEmailConfirmationCodeModel^^L l-
 signInEmailConfirmationCodeModel	^^m ç
)
^^ç é
{__ 	
var`` 
response`` 
=`` 
await``  
_userService``! -
.``- .
GetByEmailAsync``. =
(``= >,
 signInEmailConfirmationCodeModel``> ^
.``^ _
Email``_ d
)``d e
;``e f
ifaa 
(aa 
!aa 
responseaa 
.aa 
	IsSuccessaa #
)aa# $
returnaa% +
responseaa, 4
;aa4 5
varbb 
userbb 
=bb 
(bb 
(bb 

OkResponsebb #
<bb# $
	UserModelbb$ -
>bb- .
)bb. /
responsebb/ 7
)bb7 8
.bb8 9
Databb9 =
;bb= >
ifcc 
(cc 
usercc 
.cc 
UserValidationcc #
.cc# $!
EmailConfirmationCodecc$ 9
!=cc: <,
 signInEmailConfirmationCodeModelcc= ]
.cc] ^
ConfirmationCodecc^ n
)ccn o
returnccp v
newccw z
BadRequestResponse	cc{ ç
(
ccç é
ConstantMessages
ccé û
.
ccû ü$
CRUD_INVALID_PARAMETER
ccü µ
,
ccµ ∂
null
cc∑ ª
)
ccª º
;
ccº Ω
userdd 
.dd 
UserValidationdd 
.dd  !
EmailConfirmationCodedd  5
=dd6 7
nulldd8 <
;dd< =
useree 
.ee 
UserValidationee 
.ee  
EmailValidatedee  .
=ee/ 0
trueee1 5
;ee5 6
userff 
.ff 
LastChangeDateff 
=ff  !
DateTimeff" *
.ff* +
UtcNowff+ 1
;ff1 2
responsegg 
=gg 
awaitgg "
_userValidationServicegg 3
.gg3 4
AddOrUpdateAsyncgg4 D
(ggD E
userggE I
.ggI J
UserValidationggJ X
)ggX Y
;ggY Z
ifhh 
(hh 
!hh 
responsehh 
.hh 
	IsSuccesshh #
)hh# $
returnhh% +
responsehh, 4
;hh4 5
awaitii  
_notificationServiceii &
.ii& '8
,SendConfirmationCodeSuccessNotificationEmailii' S
(iiS T
useriiT X
.iiX Y
NameiiY ]
,ii] ^
userii_ c
.iic d
Emailiid i
,iii j
useriik o
.iio p
UserValidationiip ~
.ii~ "
EmailConfirmationCode	ii î
)
iiî ï
;
iiï ñ
varjj 
authenticationjj 
=jj  
awaitjj! &
_oAuthServicejj' 4
.jj4 59
-CreateRecoverPasswordAuthenticationEmailAsyncjj5 b
(jjb c
userjjc g
,jjg h
TimeSpanjji q
.jjq r
FromMinutesjjr }
(jj} ~
$numjj~ 
)	jj Ä
.
jjÄ Å
TotalSeconds
jjÅ ç
)
jjç é
;
jjé è
returnkk 
newkk 

OkResponsekk !
<kk! "4
(SignInRecoverPasswordAuthenticationModelkk" J
>kkJ K
(kkK L
authenticationkkL Z
)kkZ [
;kk[ \
}ll 	
publicnn 
asyncnn 
Tasknn 
<nn 
IResponseBasenn '
>nn' (8
,ValidateRecoverPasswordConfirmationCodeAsyncnn) U
(nnU V,
 SignInEmailConfirmationCodeModelnnV v-
 signInEmailConfirmationCodeModel	nnw ó
)
nnó ò
{oo 	
varpp 
responsepp 
=pp 
awaitpp  
_userServicepp! -
.pp- .
GetByEmailAsyncpp. =
(pp= >,
 signInEmailConfirmationCodeModelpp> ^
.pp^ _
Emailpp_ d
)ppd e
;ppe f
ifqq 
(qq 
!qq 
responseqq 
.qq 
	IsSuccessqq #
)qq# $
returnqq% +
responseqq, 4
;qq4 5
varrr 
userrr 
=rr 
(rr 
(rr 

OkResponserr #
<rr# $
	UserModelrr$ -
>rr- .
)rr. /
responserr/ 7
)rr7 8
.rr8 9
Datarr9 =
;rr= >
ifss 
(ss 
userss 
.ss 
UserValidationss #
.ss# $!
EmailConfirmationCodess$ 9
!=ss: <,
 signInEmailConfirmationCodeModelss= ]
.ss] ^
ConfirmationCodess^ n
)ssn o
returnssp v
newssw z
BadRequestResponse	ss{ ç
(
ssç é
ConstantMessages
ssé û
.
ssû ü$
CRUD_INVALID_PARAMETER
ssü µ
,
ssµ ∂
null
ss∑ ª
)
ssª º
;
ssº Ω
usertt 
.tt 
UserValidationtt 
.tt  !
EmailConfirmationCodett  5
=tt6 7
nulltt8 <
;tt< =
useruu 
.uu 
UserValidationuu 
.uu  
EmailValidateduu  .
=uu/ 0
trueuu1 5
;uu5 6
uservv 
.vv 
LastChangeDatevv 
=vv  !
DateTimevv" *
.vv* +
UtcNowvv+ 1
;vv1 2
responseww 
=ww 
awaitww "
_userValidationServiceww 3
.ww3 4
AddOrUpdateAsyncww4 D
(wwD E
userwwE I
.wwI J
UserValidationwwJ X
)wwX Y
;wwY Z
ifxx 
(xx 
!xx 
responsexx 
.xx 
	IsSuccessxx #
)xx# $
returnxx% +
responsexx, 4
;xx4 5
varyy 
authenticationyy 
=yy  
awaityy! &
_oAuthServiceyy' 4
.yy4 59
-CreateRecoverPasswordAuthenticationEmailAsyncyy5 b
(yyb c
useryyc g
,yyg h
TimeSpanyyi q
.yyq r
FromMinutesyyr }
(yy} ~
$numyy~ 
)	yy Ä
.
yyÄ Å
TotalSeconds
yyÅ ç
)
yyç é
;
yyé è
returnzz 
newzz 

OkResponsezz !
<zz! "4
(SignInRecoverPasswordAuthenticationModelzz" J
>zzJ K
(zzK L
authenticationzzL Z
)zzZ [
;zz[ \
}{{ 	
public}} 
async}} 
Task}} 
<}} 
IResponseBase}} '
>}}' (4
(ValidatePhoneNumberConfirmationCodeAsync}}) Q
(}}Q R2
&SignInPhoneNumberConfirmationCodeModel}}R x3
&signInPhoneNumberConfirmationCodeModel	}}y ü
)
}}ü †
{~~ 	
var 
response 
= 
await  
_userService! -
.- .!
GetByPhoneNumberAsync. C
(C D2
&signInPhoneNumberConfirmationCodeModelD j
.j k
PhoneNumberk v
)v w
;w x
if
ÄÄ 
(
ÄÄ 
!
ÄÄ 
response
ÄÄ 
.
ÄÄ 
	IsSuccess
ÄÄ #
)
ÄÄ# $
return
ÄÄ% +
response
ÄÄ, 4
;
ÄÄ4 5
var
ÅÅ 
user
ÅÅ 
=
ÅÅ 
(
ÅÅ 
(
ÅÅ 

OkResponse
ÅÅ #
<
ÅÅ# $
	UserModel
ÅÅ$ -
>
ÅÅ- .
)
ÅÅ. /
response
ÅÅ/ 7
)
ÅÅ7 8
.
ÅÅ8 9
Data
ÅÅ9 =
;
ÅÅ= >
if
ÇÇ 
(
ÇÇ 
user
ÇÇ 
.
ÇÇ 
UserValidation
ÇÇ #
.
ÇÇ# $)
PhoneNumberConfirmationCode
ÇÇ$ ?
!=
ÇÇ@ B4
&signInPhoneNumberConfirmationCodeModel
ÇÇC i
.
ÇÇi j
ConfirmationCode
ÇÇj z
)
ÇÇz {
returnÇÇ| Ç
newÇÇÉ Ü"
BadRequestResponseÇÇá ô
(ÇÇô ö 
ConstantMessagesÇÇö ™
.ÇÇ™ ´&
CRUD_INVALID_PARAMETERÇÇ´ ¡
,ÇÇ¡ ¬
nullÇÇ√ «
)ÇÇ« »
;ÇÇ» …
user
ÉÉ 
.
ÉÉ 
UserValidation
ÉÉ 
.
ÉÉ  )
PhoneNumberConfirmationCode
ÉÉ  ;
=
ÉÉ< =
null
ÉÉ> B
;
ÉÉB C
user
ÑÑ 
.
ÑÑ 
UserValidation
ÑÑ 
.
ÑÑ  "
PhoneNumberValidated
ÑÑ  4
=
ÑÑ5 6
true
ÑÑ7 ;
;
ÑÑ; <
user
ÖÖ 
.
ÖÖ 
LastChangeDate
ÖÖ 
=
ÖÖ  !
DateTime
ÖÖ" *
.
ÖÖ* +
UtcNow
ÖÖ+ 1
;
ÖÖ1 2
response
ÜÜ 
=
ÜÜ 
await
ÜÜ $
_userValidationService
ÜÜ 3
.
ÜÜ3 4
AddOrUpdateAsync
ÜÜ4 D
(
ÜÜD E
user
ÜÜE I
.
ÜÜI J
UserValidation
ÜÜJ X
)
ÜÜX Y
;
ÜÜY Z
if
áá 
(
áá 
!
áá 
response
áá 
.
áá 
	IsSuccess
áá #
)
áá# $
return
áá% +
response
áá, 4
;
áá4 5
return
àà 
new
àà 

OkResponse
àà !
<
àà! "
object
àà" (
>
àà( )
(
àà) *
null
àà* .
)
àà. /
;
àà/ 0
}
ââ 	
public
ãã 
async
ãã 
Task
ãã 
<
ãã 
IResponseBase
ãã '
>
ãã' (!
ChangePasswordAsync
ãã) <
(
ãã< =
string
ãã= C
jwtToken
ããD L
,
ããL M'
SignInChangePasswordModel
ããN g(
signInChangePasswordModelããh Å
,ããÅ Ç
boolããÉ á 
checkOldPasswordããà ò
=ããô ö
trueããõ ü
)ããü †
{
åå 	
var
çç 
userId
çç 
=
çç 
_jwtService
çç $
.
çç$ % 
GetUserIdFromToken
çç% 7
(
çç7 8
jwtToken
çç8 @
)
çç@ A
;
ççA B
var
éé 
response
éé 
=
éé 
await
éé  
_userService
éé! -
.
éé- ."
GetCompleteByIdAsync
éé. B
(
ééB C
userId
ééC I
)
ééI J
;
ééJ K
if
èè 
(
èè 
!
èè 
response
èè 
.
èè 
	IsSuccess
èè #
)
èè# $
return
èè% +
new
èè, /
NoContentResponse
èè0 A
(
èèA B
)
èèB C
;
èèC D
var
êê 
user
êê 
=
êê 
(
êê 
(
êê 

OkResponse
êê #
<
êê# $
	UserModel
êê$ -
>
êê- .
)
êê. /
response
êê/ 7
)
êê7 8
.
êê8 9
Data
êê9 =
;
êê= >
if
íí 
(
íí 
checkOldPassword
íí 
&&
íí  "
!
íí# $
RSACipherHelper
íí$ 3
.
íí3 4#
ValidateEncryptedData
íí4 I
(
ííI J'
signInChangePasswordModel
ííJ c
.
ííc d
OldPassword
ííd o
,
íío p
Encoding
ííq y
.
ííy z
UTF8
ííz ~
.
íí~ 
	GetStringíí à
(ííà â
userííâ ç
.ííç é
Passwordííé ñ
)ííñ ó
)ííó ò
)ííò ô
return
ìì 
new
ìì "
UnauthorizedResponse
ìì /
(
ìì/ 0
)
ìì0 1
;
ìì1 2
user
ïï 
.
ïï 
LastChangeDate
ïï 
=
ïï  !
DateTime
ïï" *
.
ïï* +
UtcNow
ïï+ 1
;
ïï1 2
user
ññ 
.
ññ $
LastPasswordChangeDate
ññ '
=
ññ( )
DateTime
ññ* 2
.
ññ2 3
UtcNow
ññ3 9
;
ññ9 :
user
óó 
.
óó 
Password
óó 
=
óó 
Encoding
óó $
.
óó$ %
UTF8
óó% )
.
óó) *
GetBytes
óó* 2
(
óó2 3
RSACipherHelper
óó3 B
.
óóB C
EncryptString
óóC P
(
óóP Q'
signInChangePasswordModel
óóQ j
.
óój k
NewPassword
óók v
)
óóv w
)
óów x
;
óóx y
return
òò 
await
òò 
_userService
òò %
.
òò% &
UpdateAsync
òò& 1
(
òò1 2
user
òò2 6
)
òò6 7
;
òò7 8
}
ôô 	
public
õõ 
async
õõ 
Task
õõ 
<
õõ 
IResponseBase
õõ '
>
õõ' (,
ResendConfirmationCodeSmsAsync
õõ) G
(
õõG H
string
õõH N
phoneNumber
õõO Z
)
õõZ [
{
úú 	
var
ùù 
response
ùù 
=
ùù 
await
ùù  
_userService
ùù! -
.
ùù- .#
GetByPhoneNumberAsync
ùù. C
(
ùùC D
phoneNumber
ùùD O
)
ùùO P
;
ùùP Q
if
ûû 
(
ûû 
!
ûû 
response
ûû 
.
ûû 
	IsSuccess
ûû #
)
ûû# $
return
ûû% +
new
ûû, /
NoContentResponse
ûû0 A
(
ûûA B
)
ûûB C
;
ûûC D
var
üü 
user
üü 
=
üü 
(
üü 
(
üü 

OkResponse
üü #
<
üü# $
	UserModel
üü$ -
>
üü- .
)
üü. /
response
üü/ 7
)
üü7 8
.
üü8 9
Data
üü9 =
;
üü= >
if
†† 
(
†† 
user
†† 
.
†† 
UserValidation
†† #
==
††$ &
null
††' +
)
††+ ,
user
°° 
.
°° 
UserValidation
°° #
=
°°$ %
new
°°& )!
UserValidationModel
°°* =
(
°°= >
)
°°> ?
{
°°@ A#
EmailConfirmationCode
°°B W
=
°°X Y$
ConfirmationCodeHelper
°°Z p
.
°°p q'
GenerateConfirmationCode°°q â
(°°â ä
)°°ä ã
}°°å ç
;°°ç é
else
¢¢ 
{
££ 
user
§§ 
.
§§ 
UserValidation
§§ #
.
§§# $)
PhoneNumberConfirmationCode
§§$ ?
=
§§@ A$
ConfirmationCodeHelper
§§B X
.
§§X Y&
GenerateConfirmationCode
§§Y q
(
§§q r
)
§§r s
;
§§s t
user
•• 
.
•• 
UserValidation
•• #
.
••# $"
PhoneNumberValidated
••$ 8
=
••9 :
false
••; @
;
••@ A
}
¶¶ 
response
ßß 
=
ßß 
await
ßß $
_userValidationService
ßß 3
.
ßß3 4
AddOrUpdateAsync
ßß4 D
(
ßßD E
user
ßßE I
.
ßßI J
UserValidation
ßßJ X
)
ßßX Y
;
ßßY Z
if
®® 
(
®® 
!
®® 
response
®® 
.
®® 
	IsSuccess
®® #
)
®®# $
return
®®% +
new
®®, / 
BadRequestResponse
®®0 B
(
®®B C
ConstantMessages
®®C S
.
®®S T
CRUD_UPDATE_FAIL
®®T d
,
®®d e
response
®®f n
)
®®n o
;
®®o p
var
©© 
userValidation
©© 
=
©©  
(
©©! "
(
©©" #

OkResponse
©©# -
<
©©- .!
UserValidationModel
©©. A
>
©©A B
)
©©B C
response
©©C K
)
©©K L
.
©©L M
Data
©©M Q
;
©©Q R
var
™™ 
message
™™ 
=
™™ 
string
™™  
.
™™  !
Format
™™! '
(
™™' (
ConstantMessages
™™( 8
.
™™8 9+
MESSAGE_SMS_CONFIRMATION_CODE
™™9 V
,
™™V W
userValidation
™™X f
.
™™f g*
PhoneNumberConfirmationCode™™g Ç
)™™Ç É
;™™É Ñ
return
¨¨ 
new
¨¨ 

OkResponse
¨¨ !
<
¨¨! "
bool
¨¨" &
>
¨¨& '
(
¨¨' (
true
¨¨( ,
)
¨¨, -
;
¨¨- .
}
≠≠ 	
public
ØØ 
async
ØØ 
Task
ØØ 
<
ØØ 
IResponseBase
ØØ '
>
ØØ' (.
 ResendConfirmationCodeEmailAsync
ØØ) I
(
ØØI J
string
ØØJ P
email
ØØQ V
)
ØØV W
{
∞∞ 	
var
±± 
response
±± 
=
±± 
await
±±  
_userService
±±! -
.
±±- .
GetByEmailAsync
±±. =
(
±±= >
email
±±> C
)
±±C D
;
±±D E
if
≤≤ 
(
≤≤ 
!
≤≤ 
response
≤≤ 
.
≤≤ 
	IsSuccess
≤≤ #
)
≤≤# $
return
≤≤% +
new
≤≤, /
NoContentResponse
≤≤0 A
(
≤≤A B
)
≤≤B C
;
≤≤C D
var
≥≥ 
user
≥≥ 
=
≥≥ 
(
≥≥ 
(
≥≥ 

OkResponse
≥≥ #
<
≥≥# $
	UserModel
≥≥$ -
>
≥≥- .
)
≥≥. /
response
≥≥/ 7
)
≥≥7 8
.
≥≥8 9
Data
≥≥9 =
;
≥≥= >
if
¥¥ 
(
¥¥ 
user
¥¥ 
.
¥¥ 
UserValidation
¥¥ #
==
¥¥$ &
null
¥¥' +
)
¥¥+ ,
user
µµ 
.
µµ 
UserValidation
µµ #
=
µµ$ %
new
µµ& )!
UserValidationModel
µµ* =
(
µµ= >
)
µµ> ?
{
µµ@ A#
EmailConfirmationCode
µµB W
=
µµX Y$
ConfirmationCodeHelper
µµZ p
.
µµp q'
GenerateConfirmationCodeµµq â
(µµâ ä
)µµä ã
}µµå ç
;µµç é
else
∂∂ 
{
∑∑ 
user
∏∏ 
.
∏∏ 
UserValidation
∏∏ #
.
∏∏# $#
EmailConfirmationCode
∏∏$ 9
=
∏∏: ;$
ConfirmationCodeHelper
∏∏< R
.
∏∏R S&
GenerateConfirmationCode
∏∏S k
(
∏∏k l
)
∏∏l m
;
∏∏m n
user
ππ 
.
ππ 
UserValidation
ππ #
.
ππ# $
EmailValidated
ππ$ 2
=
ππ3 4
false
ππ5 :
;
ππ: ;
}
∫∫ 
response
ªª 
=
ªª 
await
ªª $
_userValidationService
ªª 3
.
ªª3 4
AddOrUpdateAsync
ªª4 D
(
ªªD E
user
ªªE I
.
ªªI J
UserValidation
ªªJ X
)
ªªX Y
;
ªªY Z
if
ºº 
(
ºº 
!
ºº 
response
ºº 
.
ºº 
	IsSuccess
ºº #
)
ºº# $
return
ºº% +
new
ºº, / 
BadRequestResponse
ºº0 B
(
ººB C
ConstantMessages
ººC S
.
ººS T
CRUD_UPDATE_FAIL
ººT d
,
ººd e
response
ººf n
)
ººn o
;
ººo p
var
ΩΩ 
userValidation
ΩΩ 
=
ΩΩ  
(
ΩΩ! "
(
ΩΩ" #

OkResponse
ΩΩ# -
<
ΩΩ- .!
UserValidationModel
ΩΩ. A
>
ΩΩA B
)
ΩΩB C
response
ΩΩC K
)
ΩΩK L
.
ΩΩL M
Data
ΩΩM Q
;
ΩΩQ R
await
ææ "
_notificationService
ææ &
.
ææ& '6
(SendValidationCodeNotificationEmailAsync
ææ' O
(
ææO P
user
ææP T
.
ææT U
Name
ææU Y
,
ææY Z
user
ææ[ _
.
ææ_ `
Email
ææ` e
,
ææe f
userValidation
ææg u
.
ææu v$
EmailConfirmationCodeææv ã
)ææã å
;ææå ç
return
øø 
new
øø 

OkResponse
øø !
<
øø! "
bool
øø" &
>
øø& '
(
øø' (
true
øø( ,
)
øø, -
;
øø- .
}
¿¿ 	
public
¬¬ 
async
¬¬ 
Task
¬¬ 
<
¬¬ 
IResponseBase
¬¬ '
>
¬¬' (*
SignInSignUpSocialMediaAsync
¬¬) E
(
¬¬E F$
SignInSocialMediaModel
¬¬F \$
signInSocialMediaModel
¬¬] s
)
¬¬s t
{
√√ 	
switch
ƒƒ 
(
ƒƒ $
signInSocialMediaModel
ƒƒ *
.
ƒƒ* +
SocialMediaType
ƒƒ+ :
)
ƒƒ: ;
{
≈≈ 
case
∆∆ 

AslaveCare
∆∆ 
.
∆∆  
Domain
∆∆  &
.
∆∆& '
Enums
∆∆' ,
.
∆∆, -
SocialMediaType
∆∆- <
.
∆∆< =
Google
∆∆= C
:
∆∆C D
return
«« 
await
««   
SignInSignUpGoogle
««! 3
(
««3 4$
signInSocialMediaModel
««4 J
)
««J K
;
««K L
case
…… 

AslaveCare
…… 
.
……  
Domain
……  &
.
……& '
Enums
……' ,
.
……, -
SocialMediaType
……- <
.
……< =
Apple
……= B
:
……B C
return
   
await
    
SignInSignUpApple
  ! 2
(
  2 3$
signInSocialMediaModel
  3 I
)
  I J
;
  J K
default
ÃÃ 
:
ÃÃ 
return
ÕÕ 
new
ÕÕ "
UnauthorizedResponse
ÕÕ 3
(
ÕÕ3 4
)
ÕÕ4 5
;
ÕÕ5 6
}
ŒŒ 
}
œœ 	
private
““ 
async
““ 
Task
““ 
<
““ 
IResponseBase
““ (
>
““( )
SignInSignUpApple
““* ;
(
““; <$
SignInSocialMediaModel
““< R$
signInSocialMediaModel
““S i
)
““i j
{
”” 	
	UserModel
‘‘ 
user
‘‘ 
=
‘‘ 
null
‘‘ !
;
‘‘! "
var
’’ 
jwtData
’’ 
=
’’ 
_jwtService
’’ %
.
’’% &(
ReadAppleAuthenticationJwt
’’& @
(
’’@ A$
signInSocialMediaModel
’’A W
.
’’W X
SocialMediaToken
’’X h
)
’’h i
;
’’i j
if
◊◊ 
(
◊◊ 
jwtData
◊◊ 
==
◊◊ 
null
◊◊ 
||
◊◊  "
!
◊◊# $
jwtData
◊◊$ +
.
◊◊+ ,
EmailVerified
◊◊, 9
.
◊◊9 :
Value
◊◊: ?
)
◊◊? @
return
◊◊A G
new
◊◊H K"
UnauthorizedResponse
◊◊L `
(
◊◊` a
)
◊◊a b
;
◊◊b c
var
€€ 
response
€€ 
=
€€ 
await
€€  
_userService
€€! -
.
€€- .#
GetByAppleUserIdAsync
€€. C
(
€€C D
jwtData
€€D K
.
€€K L
AppleUserId
€€L W
)
€€W X
;
€€X Y
if
›› 
(
›› 
!
›› 
response
›› 
.
›› 
	IsSuccess
›› #
)
››# $
{
ﬁﬁ 
var
ﬂﬂ 
newUser
ﬂﬂ 
=
ﬂﬂ 
new
ﬂﬂ !
UserAddModel
ﬂﬂ" .
{
‡‡ 
Email
·· 
=
·· 
jwtData
·· #
.
··# $
Email
··$ )
,
··) *
Password
‚‚ 
=
‚‚ 
jwtData
‚‚ &
.
‚‚& '
AppleUserId
‚‚' 2
,
‚‚2 3
AppleUserId
„„ 
=
„„  !
jwtData
„„" )
.
„„) *
AppleUserId
„„* 5
,
„„5 6
Name
‰‰ 
=
‰‰ $
signInSocialMediaModel
‰‰ 1
.
‰‰1 2
Name
‰‰2 6
,
‰‰6 7
}
ÂÂ 
;
ÂÂ 
newUser
ÁÁ 
.
ÁÁ 
UserValidation
ÁÁ &
=
ÁÁ' (
new
ÁÁ) ,$
UserValidationAddModel
ÁÁ- C
{
ËË 
EmailValidated
ÈÈ "
=
ÈÈ# $
true
ÈÈ% )
,
ÈÈ) *
CreationDate
ÍÍ  
=
ÍÍ! "
DateTime
ÍÍ# +
.
ÍÍ+ ,
UtcNow
ÍÍ, 2
}
ÎÎ 
;
ÎÎ 
response
ÌÌ 
=
ÌÌ 
await
ÌÌ  
_userService
ÌÌ! -
.
ÌÌ- ."
AddUserWithRoleAsync
ÌÌ. B
(
ÌÌB C
newUser
ÌÌC J
,
ÌÌJ K$
signInSocialMediaModel
ÌÌL b
.
ÌÌb c
UserType
ÌÌc k
)
ÌÌk l
;
ÌÌl m
if
ÔÔ 
(
ÔÔ 
!
ÔÔ 
response
ÔÔ 
.
ÔÔ 
	IsSuccess
ÔÔ '
)
ÔÔ' (
return
ÔÔ) /
new
ÔÔ0 3"
UnauthorizedResponse
ÔÔ4 H
(
ÔÔH I
)
ÔÔI J
;
ÔÔJ K
user
ÒÒ 
=
ÒÒ 
(
ÒÒ 
(
ÒÒ 

OkResponse
ÒÒ #
<
ÒÒ# $
	UserModel
ÒÒ$ -
>
ÒÒ- .
)
ÒÒ. /
response
ÒÒ/ 7
)
ÒÒ7 8
.
ÒÒ8 9
Data
ÒÒ9 =
;
ÒÒ= >
if
ÛÛ 
(
ÛÛ 
!
ÛÛ 
response
ÛÛ 
.
ÛÛ 
	IsSuccess
ÛÛ '
)
ÛÛ' (
return
ÛÛ) /
new
ÛÛ0 3"
UnauthorizedResponse
ÛÛ4 H
(
ÛÛH I
)
ÛÛI J
;
ÛÛJ K
}
ÙÙ 
else
ıı 
{
ˆˆ 
user
˜˜ 
=
˜˜ 
(
˜˜ 
(
˜˜ 

OkResponse
˜˜ #
<
˜˜# $
	UserModel
˜˜$ -
>
˜˜- .
)
˜˜. /
response
˜˜/ 7
)
˜˜7 8
.
˜˜8 9
Data
˜˜9 =
;
˜˜= >
}
¯¯ 
var
˙˙ 
authentication
˙˙ 
=
˙˙  
await
˙˙! &
_oAuthService
˙˙' 4
.
˙˙4 52
$CreateSignInAuthenticationEmailAsync
˙˙5 Y
(
˙˙Y Z
user
˙˙Z ^
)
˙˙^ _
;
˙˙_ `
await
˚˚ 
_userService
˚˚ 
.
˚˚ "
UpdateLastLoginAsync
˚˚ 3
(
˚˚3 4
user
˚˚4 8
.
˚˚8 9
Id
˚˚9 ;
)
˚˚; <
;
˚˚< =
authentication
¸¸ 
.
¸¸ 
User
¸¸ 
=
¸¸  !
Mapper
¸¸" (
.
¸¸( )
Map
¸¸) ,
<
¸¸, -
UserSignInModel
¸¸- <
>
¸¸< =
(
¸¸= >
user
¸¸> B
)
¸¸B C
;
¸¸C D
return
˛˛ 
new
˛˛ 

OkResponse
˛˛ !
<
˛˛! "'
SignInAuthenticationModel
˛˛" ;
>
˛˛; <
(
˛˛< =
authentication
˛˛= K
)
˛˛K L
;
˛˛L M
}
ˇˇ 	
private
ÇÇ 
async
ÇÇ 
Task
ÇÇ 
<
ÇÇ 
IResponseBase
ÇÇ (
>
ÇÇ( ) 
SignInSignUpGoogle
ÇÇ* <
(
ÇÇ< =$
SignInSocialMediaModel
ÇÇ= S$
signInSocialMediaModel
ÇÇT j
)
ÇÇj k
{
ÉÉ 	
	UserModel
ÑÑ 
user
ÑÑ 
=
ÑÑ 
null
ÑÑ !
;
ÑÑ! "
var
ÖÖ 
response
ÖÖ 
=
ÖÖ 
await
ÖÖ  "
_googleOAuth2Service
ÖÖ! 5
.
ÖÖ5 6/
!ValidateGoogleTokenAuthentication
ÖÖ6 W
(
ÖÖW X$
signInSocialMediaModel
ÖÖX n
.
ÖÖn o
SocialMediaToken
ÖÖo 
)ÖÖ Ä
;ÖÖÄ Å
if
áá 
(
áá 
!
áá 
response
áá 
.
áá 
	IsSuccess
áá #
)
áá# $
return
áá% +
new
áá, /"
UnauthorizedResponse
áá0 D
(
ááD E
)
ááE F
;
ááF G
var
ââ #
googleTokenValitation
ââ %
=
ââ& '
(
ââ( )
GoogleOkResponse
ââ) 9
)
ââ9 :
response
ââ: B
;
ââB C
response
ãã 
=
ãã 
await
ãã 
_userService
ãã )
.
ãã) *
GetByEmailAsync
ãã* 9
(
ãã9 :#
googleTokenValitation
ãã: O
.
ããO P
email
ããP U
)
ããU V
;
ããV W
if
çç 
(
çç 
!
çç 
response
çç 
.
çç 
	IsSuccess
çç #
)
çç# $
{
éé 
var
èè 
newUser
èè 
=
èè 
new
èè !
UserAddModel
èè" .
{
êê 
Email
ëë 
=
ëë #
googleTokenValitation
ëë 1
.
ëë1 2
email
ëë2 7
,
ëë7 8
Password
íí 
=
íí #
googleTokenValitation
íí 4
.
íí4 5
user_id
íí5 <
,
íí< =
Name
ìì 
=
ìì $
signInSocialMediaModel
ìì 1
.
ìì1 2
Name
ìì2 6
,
ìì6 7
}
îî 
;
îî 
newUser
ññ 
.
ññ 
UserValidation
ññ &
=
ññ' (
new
ññ) ,$
UserValidationAddModel
ññ- C
{
óó 
EmailValidated
òò "
=
òò# $
true
òò% )
,
òò) *
CreationDate
ôô  
=
ôô! "
DateTime
ôô# +
.
ôô+ ,
UtcNow
ôô, 2
}
öö 
;
öö 
response
úú 
=
úú 
await
úú  
_userService
úú! -
.
úú- ."
AddUserWithRoleAsync
úú. B
(
úúB C
newUser
úúC J
,
úúJ K$
signInSocialMediaModel
úúL b
.
úúb c
UserType
úúc k
)
úúk l
;
úúl m
if
ûû 
(
ûû 
!
ûû 
response
ûû 
.
ûû 
	IsSuccess
ûû '
)
ûû' (
return
ûû) /
new
ûû0 3"
UnauthorizedResponse
ûû4 H
(
ûûH I
)
ûûI J
;
ûûJ K
user
†† 
=
†† 
(
†† 
(
†† 

OkResponse
†† #
<
††# $
	UserModel
††$ -
>
††- .
)
††. /
response
††/ 7
)
††7 8
.
††8 9
Data
††9 =
;
††= >
if
¢¢ 
(
¢¢ 
!
¢¢ 
response
¢¢ 
.
¢¢ 
	IsSuccess
¢¢ '
)
¢¢' (
return
¢¢) /
new
¢¢0 3"
UnauthorizedResponse
¢¢4 H
(
¢¢H I
)
¢¢I J
;
¢¢J K
}
££ 
else
§§ 
{
•• 
user
¶¶ 
=
¶¶ 
(
¶¶ 
(
¶¶ 

OkResponse
¶¶ #
<
¶¶# $
	UserModel
¶¶$ -
>
¶¶- .
)
¶¶. /
response
¶¶/ 7
)
¶¶7 8
.
¶¶8 9
Data
¶¶9 =
;
¶¶= >
}
ßß 
var
©© 
authentication
©© 
=
©©  
await
©©! &
_oAuthService
©©' 4
.
©©4 52
$CreateSignInAuthenticationEmailAsync
©©5 Y
(
©©Y Z
user
©©Z ^
)
©©^ _
;
©©_ `
await
™™ 
_userService
™™ 
.
™™ "
UpdateLastLoginAsync
™™ 3
(
™™3 4
user
™™4 8
.
™™8 9
Id
™™9 ;
)
™™; <
;
™™< =
authentication
´´ 
.
´´ 
User
´´ 
=
´´  !
Mapper
´´" (
.
´´( )
Map
´´) ,
<
´´, -
UserSignInModel
´´- <
>
´´< =
(
´´= >
user
´´> B
)
´´B C
;
´´C D
return
≠≠ 
new
≠≠ 

OkResponse
≠≠ !
<
≠≠! "'
SignInAuthenticationModel
≠≠" ;
>
≠≠; <
(
≠≠< =
authentication
≠≠= K
)
≠≠K L
;
≠≠L M
}
ÆÆ 	
public
∞∞ 
async
∞∞ 
Task
∞∞ 
<
∞∞ 
IResponseBase
∞∞ '
>
∞∞' (
GetByTokenAsync
∞∞) 8
(
∞∞8 9
string
∞∞9 ?
jwtToken
∞∞@ H
,
∞∞H I
CancellationToken
∞∞J [
cancellationToken
∞∞\ m
)
∞∞m n
{
±± 	
var
≤≤ 
userId
≤≤ 
=
≤≤ 
_jwtService
≤≤ $
.
≤≤$ % 
GetUserIdFromToken
≤≤% 7
(
≤≤7 8
jwtToken
≤≤8 @
)
≤≤@ A
;
≤≤A B
var
≥≥ 
userType
≥≥ 
=
≥≥ 
_jwtService
≥≥ &
.
≥≥& '
GetRoleFromToken
≥≥' 7
(
≥≥7 8
jwtToken
≥≥8 @
)
≥≥@ A
;
≥≥A B
switch
µµ 
(
µµ 
userType
µµ 
)
µµ 
{
∂∂ 
case
∑∑ 
Domain
∑∑ 
.
∑∑ 
Entities
∑∑ $
.
∑∑$ %
Enums
∑∑% *
.
∑∑* +
UserType
∑∑+ 3
.
∑∑3 4
Manager
∑∑4 ;
:
∑∑; <
return
∏∏ 
await
∏∏  
_managerService
∏∏! 0
.
∏∏0 1
GetByUserIdAsync
∏∏1 A
(
∏∏A B
userId
∏∏B H
,
∏∏H I
cancellationToken
∏∏J [
)
∏∏[ \
;
∏∏\ ]
case
∫∫ 
Domain
∫∫ 
.
∫∫ 
Entities
∫∫ $
.
∫∫$ %
Enums
∫∫% *
.
∫∫* +
UserType
∫∫+ 3
.
∫∫3 4
Employee
∫∫4 <
:
∫∫< =
return
ªª 
await
ªª  
_employeeService
ªª! 1
.
ªª1 2
GetByUserIdAsync
ªª2 B
(
ªªB C
userId
ªªC I
,
ªªI J
cancellationToken
ªªK \
)
ªª\ ]
;
ªª] ^
default
ΩΩ 
:
ΩΩ 
return
ææ 
new
ææ 
NoContentResponse
ææ 0
(
ææ0 1
)
ææ1 2
;
ææ2 3
}
øø 
}
¿¿ 	
public
¬¬ 
async
¬¬ 
Task
¬¬ 
<
¬¬ 
IResponseBase
¬¬ '
>
¬¬' (
GetAnyToListAsync
¬¬) :
(
¬¬: ;
CancellationToken
¬¬; L
cancellationToken
¬¬M ^
)
¬¬^ _
{
√√ 	
var
ƒƒ 
anyUsersToList
ƒƒ 
=
ƒƒ  
new
ƒƒ! $
List
ƒƒ% )
<
ƒƒ) *<
.GenericUserProfileGetWithoutSensitiveDataModel
ƒƒ* X
>
ƒƒX Y
(
ƒƒY Z
)
ƒƒZ [
;
ƒƒ[ \
var
∆∆ 
response
∆∆ 
=
∆∆ 
await
∆∆  
_managerService
∆∆! 0
.
∆∆0 1
GetAnyToListAsync
∆∆1 B
(
∆∆B C
cancellationToken
∆∆C T
)
∆∆T U
;
∆∆U V
if
»» 
(
»» 
response
»» 
.
»» 
	IsSuccess
»» "
)
»»" #
{
…… 
var
   
managers
   
=
   
(
    
(
    !

OkResponse
  ! +
<
  + ,
IEnumerable
  , 7
<
  7 8<
.GenericUserProfileGetWithoutSensitiveDataModel
  8 f
>
  f g
>
  g h
)
  h i
response
  i q
)
  q r
.
  r s
Data
  s w
;
  w x
anyUsersToList
ÀÀ 
.
ÀÀ 
AddRange
ÀÀ '
(
ÀÀ' (
Mapper
ÀÀ( .
.
ÀÀ. /
Map
ÀÀ/ 2
<
ÀÀ2 3
IEnumerable
ÀÀ3 >
<
ÀÀ> ?<
.GenericUserProfileGetWithoutSensitiveDataModel
ÀÀ? m
>
ÀÀm n
>
ÀÀn o
(
ÀÀo p
managers
ÀÀp x
)
ÀÀx y
)
ÀÀy z
;
ÀÀz {
}
ÃÃ 
response
ŒŒ 
=
ŒŒ 
await
ŒŒ 
_employeeService
ŒŒ -
.
ŒŒ- .
GetAnyToListAsync
ŒŒ. ?
(
ŒŒ? @
cancellationToken
ŒŒ@ Q
)
ŒŒQ R
;
ŒŒR S
if
–– 
(
–– 
response
–– 
.
–– 
	IsSuccess
–– "
)
––" #
{
—— 
var
““ 
	employees
““ 
=
““ 
(
““  !
(
““! "

OkResponse
““" ,
<
““, -
IEnumerable
““- 8
<
““8 9<
.GenericUserProfileGetWithoutSensitiveDataModel
““9 g
>
““g h
>
““h i
)
““i j
response
““j r
)
““r s
.
““s t
Data
““t x
;
““x y
anyUsersToList
”” 
.
”” 
AddRange
”” '
(
””' (
Mapper
””( .
.
””. /
Map
””/ 2
<
””2 3
IEnumerable
””3 >
<
””> ?<
.GenericUserProfileGetWithoutSensitiveDataModel
””? m
>
””m n
>
””n o
(
””o p
	employees
””p y
)
””y z
)
””z {
;
””{ |
}
‘‘ 
if
÷÷ 
(
÷÷ 
anyUsersToList
÷÷ 
.
÷÷ 
Count
÷÷ $
>
÷÷% &
$num
÷÷' (
)
÷÷( )
return
◊◊ 
new
◊◊ 

OkResponse
◊◊ %
<
◊◊% &
IEnumerable
◊◊& 1
<
◊◊1 2<
.GenericUserProfileGetWithoutSensitiveDataModel
◊◊2 `
>
◊◊` a
>
◊◊a b
(
◊◊b c
anyUsersToList
◊◊c q
)
◊◊q r
;
◊◊r s
return
ŸŸ 
new
ŸŸ 
NoContentResponse
ŸŸ (
(
ŸŸ( )
)
ŸŸ) *
;
ŸŸ* +
}
⁄⁄ 	
}
€€ 
}‹‹ ¸2
cE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Services\v1\Authentication\OAuthService.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Services %
.% &
v1& (
.( )
Authentication) 7
{		 
public

 

class

 
OAuthService

 
:

 
IOAuthService

  -
{ 
private 
readonly 
IJwtService $
_jwtService% 0
;0 1
public 
OAuthService 
( 
IJwtService '

jwtService( 2
)2 3
{ 	
_jwtService 
= 

jwtService $
;$ %
} 	
public 
async 
Task 
< %
SignInAuthenticationModel 3
>3 40
$CreateSignInAuthenticationEmailAsync5 Y
(Y Z
	UserModelZ c
	userModeld m
,m n
doubleo u"
expirationTimeSeconds	v ã
=
å ç
$num
é è
,
è ê
RefreshTokenData
ë °
refreshTokenData
¢ ≤
=
≥ ¥
null
µ π
)
π ∫
{ 	
return 
await 
_jwtService $
.$ %0
$CreateSignInAuthenticationEmailAsync% I
(I J
	userModelJ S
,S T!
expirationTimeSecondsU j
,j k
refreshTokenDatal |
)| }
;} ~
} 	
public 
async 
Task 
< %
SignInAuthenticationModel 3
>3 46
*CreateSignInAuthenticationPhoneNumberAsync5 _
(_ `
	UserModel` i
	userModelj s
,s t
doubleu {"
expirationTimeSeconds	| ë
=
í ì
$num
î ï
,
ï ñ
RefreshTokenData
ó ß
refreshTokenData
® ∏
=
π ∫
null
ª ø
)
ø ¿
{ 	
return 
await 
_jwtService $
.$ %6
*CreateSignInAuthenticationPhoneNumberAsync% O
(O P
	userModelP Y
,Y Z!
expirationTimeSeconds[ p
,p q
refreshTokenData	r Ç
)
Ç É
;
É Ñ
} 	
public 
async 
Task 
< %
SignInAuthenticationModel 3
>3 46
*CreateSignInAuthenticationSocialMediaAsync5 _
(_ `
	UserModel` i
	userModelj s
,s t
doubleu {"
expirationTimeSeconds	| ë
=
í ì
$num
î ï
,
ï ñ
RefreshTokenData
ó ß
refreshTokenData
® ∏
=
π ∫
null
ª ø
)
ø ¿
{ 	
return 
await 
_jwtService $
.$ %6
*CreateSignInAuthenticationSocialMediaAsync% O
(O P
	userModelP Y
,Y Z!
expirationTimeSeconds[ p
,p q
refreshTokenData	r Ç
)
Ç É
;
É Ñ
}   	
public"" 
async"" 
Task"" 
<"" %
SignUpAuthenticationModel"" 3
>""3 40
$CreateSignUpAuthenticationEmailAsync""5 Y
(""Y Z
	UserModel""Z c
	userModel""d m
,""m n
double""o u"
expirationTimeSeconds	""v ã
=
""å ç
$num
""é è
,
""è ê
RefreshTokenData
""ë °
refreshTokenData
""¢ ≤
=
""≥ ¥
null
""µ π
)
""π ∫
{## 	
return$$ 
await$$ 
_jwtService$$ $
.$$$ %0
$CreateSignUpAuthenticationEmailAsync$$% I
($$I J
	userModel$$J S
,$$S T!
expirationTimeSeconds$$U j
,$$j k
refreshTokenData$$l |
)$$| }
;$$} ~
}%% 	
public'' 
async'' 
Task'' 
<'' %
SignUpAuthenticationModel'' 3
>''3 46
*CreateSignUpAuthenticationPhoneNumberAsync''5 _
(''_ `
	UserModel''` i
	userModel''j s
,''s t
double''u {"
expirationTimeSeconds	''| ë
=
''í ì
$num
''î ï
,
''ï ñ
RefreshTokenData
''ó ß
refreshTokenData
''® ∏
=
''π ∫
null
''ª ø
)
''ø ¿
{(( 	
return)) 
await)) 
_jwtService)) $
.))$ %6
*CreateSignUpAuthenticationPhoneNumberAsync))% O
())O P
	userModel))P Y
,))Y Z!
expirationTimeSeconds))[ p
,))p q
refreshTokenData	))r Ç
)
))Ç É
;
))É Ñ
}** 	
public,, 
async,, 
Task,, 
<,, %
SignUpAuthenticationModel,, 3
>,,3 46
*CreateSignUpAuthenticationSocialMediaAsync,,5 _
(,,_ `
	UserModel,,` i
	userModel,,j s
,,,s t
double,,u {"
expirationTimeSeconds	,,| ë
=
,,í ì
$num
,,î ï
,
,,ï ñ
RefreshTokenData
,,ó ß
refreshTokenData
,,® ∏
=
,,π ∫
null
,,ª ø
)
,,ø ¿
{-- 	
return.. 
await.. 
_jwtService.. $
...$ %6
*CreateSignUpAuthenticationSocialMediaAsync..% O
(..O P
	userModel..P Y
,..Y Z!
expirationTimeSeconds..[ p
,..p q
refreshTokenData	..r Ç
)
..Ç É
;
..É Ñ
}// 	
public11 
async11 
Task11 
<11 4
(SignInRecoverPasswordAuthenticationModel11 B
>11B C9
-CreateRecoverPasswordAuthenticationEmailAsync11D q
(11q r
	UserModel11r {
	userModel	11| Ö
,
11Ö Ü
double
11á ç#
expirationTimeSeconds
11é £
=
11§ •
$num
11¶ ß
,
11ß ®
RefreshTokenData
11© π
refreshTokenData
11∫  
=
11À Ã
null
11Õ —
)
11— “
{22 	
return33 
await33 
_jwtService33 $
.33$ %9
-CreateRecoverPasswordAuthenticationEmailAsync33% R
(33R S
	userModel33S \
,33\ ]!
expirationTimeSeconds33^ s
,33s t
refreshTokenData	33u Ö
)
33Ö Ü
;
33Ü á
}44 	
}55 
}66 á√
aE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Services\v1\Authentication\JwtService.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Services %
.% &
v1& (
.( )
Authentication) 7
{ 
public 

class 

JwtService 
: 
IJwtService )
{ 
private 
readonly !
SigningConfigurations ."
_signingConfigurations/ E
;E F
private 
readonly 
TokenConfigurations , 
_tokenConfigurations- A
;A B
private 
readonly 
IDistributedCache *
_cache+ 1
;1 2
public 

JwtService 
( !
SigningConfigurations /!
signingConfigurations0 E
,E F
TokenConfigurations #
tokenConfigurations$ 7
,7 8
IDistributedCache !
cache" '
)' (
{ 	"
_signingConfigurations "
=# $!
signingConfigurations% :
;: ; 
_tokenConfigurations    
=  ! "
tokenConfigurations  # 6
;  6 7
_cache!! 
=!! 
cache!! 
;!! 
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ %
SignUpAuthenticationModel$$ 3
>$$3 40
$CreateSignUpAuthenticationEmailAsync$$5 Y
($$Y Z
	UserModel$$Z c
	userModel$$d m
,$$m n
double$$o u"
expirationTimeSeconds	$$v ã
,
$$ã å
RefreshTokenData
$$ç ù
refreshTokenData
$$û Æ
)
$$Æ Ø
{%% 	
try&& 
{'' 
var(( 
claimsIdentity(( "
=((# $'
EmailAuthenticationIdentity((% @
(((@ A
	userModel((A J
)((J K
;((K L
return** 
await** &
CreateSignUpAuthentication** 7
(**7 8
	userModel**8 A
,**A B
claimsIdentity**C Q
,**Q R!
expirationTimeSeconds**S h
)**h i
;**i j
}++ 
catch,, 
(,, 
	Exception,, 
ex,, 
),,  
{-- 
throw.. 
new..  
ApplicationException.. .
(... /
$"../ 1
$str..1 T
{..T U
ex..U W
...W X
Message..X _
}.._ `
"..` a
)..a b
;..b c
}// 
}00 	
public22 
async22 
Task22 
<22 %
SignUpAuthenticationModel22 3
>223 46
*CreateSignUpAuthenticationPhoneNumberAsync225 _
(22_ `
	UserModel22` i
	userModel22j s
,22s t
double22u {"
expirationTimeSeconds	22| ë
,
22ë í
RefreshTokenData
22ì £
refreshTokenData
22§ ¥
)
22¥ µ
{33 	
try44 
{55 
var66 
claimsIdentity66 "
=66# $-
!PhoneNumberAuthenticationIdentity66% F
(66F G
	userModel66G P
)66P Q
;66Q R
return88 
await88 &
CreateSignUpAuthentication88 7
(887 8
	userModel888 A
,88A B
claimsIdentity88C Q
,88Q R!
expirationTimeSeconds88S h
)88h i
;88i j
}99 
catch:: 
(:: 
	Exception:: 
ex:: 
)::  
{;; 
throw<< 
new<<  
ApplicationException<< .
(<<. /
$"<</ 1
$str<<1 T
{<<T U
ex<<U W
.<<W X
Message<<X _
}<<_ `
"<<` a
)<<a b
;<<b c
}== 
}>> 	
public@@ 
async@@ 
Task@@ 
<@@ %
SignUpAuthenticationModel@@ 3
>@@3 46
*CreateSignUpAuthenticationSocialMediaAsync@@5 _
(@@_ `
	UserModel@@` i
	userModel@@j s
,@@s t
double@@u {"
expirationTimeSeconds	@@| ë
,
@@ë í
RefreshTokenData
@@ì £
refreshTokenData
@@§ ¥
)
@@¥ µ
{AA 	
tryBB 
{CC 
varDD 
claimsIdentityDD "
=DD# $'
EmailAuthenticationIdentityDD% @
(DD@ A
	userModelDDA J
)DDJ K
;DDK L
returnFF 
awaitFF &
CreateSignUpAuthenticationFF 7
(FF7 8
	userModelFF8 A
,FFA B
claimsIdentityFFC Q
,FFQ R!
expirationTimeSecondsFFS h
)FFh i
;FFi j
}GG 
catchHH 
(HH 
	ExceptionHH 
exHH 
)HH  
{II 
throwJJ 
newJJ  
ApplicationExceptionJJ .
(JJ. /
$"JJ/ 1
$strJJ1 T
{JJT U
exJJU W
.JJW X
MessageJJX _
}JJ_ `
"JJ` a
)JJa b
;JJb c
}KK 
}LL 	
publicNN 
asyncNN 
TaskNN 
<NN %
SignInAuthenticationModelNN 3
>NN3 40
$CreateSignInAuthenticationEmailAsyncNN5 Y
(NNY Z
	UserModelNNZ c
	userModelNNd m
,NNm n
doubleNNo u"
expirationTimeSeconds	NNv ã
=
NNå ç
$num
NNé è
,
NNè ê
RefreshTokenData
NNë °
refreshTokenData
NN¢ ≤
=
NN≥ ¥
null
NNµ π
)
NNπ ∫
{OO 	
tryPP 
{QQ 
varRR 
claimsIdentityRR "
=RR# $'
EmailAuthenticationIdentityRR% @
(RR@ A
	userModelRRA J
)RRJ K
;RRK L
returnTT 
awaitTT &
CreateSignInAuthenticationTT 7
(TT7 8
	userModelTT8 A
,TTA B
claimsIdentityTTC Q
,TTQ R!
expirationTimeSecondsTTS h
,TTh i
refreshTokenDataTTj z
)TTz {
;TT{ |
}UU 
catchVV 
(VV 
	ExceptionVV 
exVV 
)VV  
{WW 
throwXX 
newXX  
ApplicationExceptionXX .
(XX. /
$"XX/ 1
$strXX1 T
{XXT U
exXXU W
.XXW X
MessageXXX _
}XX_ `
"XX` a
)XXa b
;XXb c
}YY 
}ZZ 	
public\\ 
async\\ 
Task\\ 
<\\ %
SignInAuthenticationModel\\ 3
>\\3 46
*CreateSignInAuthenticationPhoneNumberAsync\\5 _
(\\_ `
	UserModel\\` i
	userModel\\j s
,\\s t
double\\u {"
expirationTimeSeconds	\\| ë
=
\\í ì
$num
\\î ï
,
\\ï ñ
RefreshTokenData
\\ó ß
refreshTokenData
\\® ∏
=
\\π ∫
null
\\ª ø
)
\\ø ¿
{]] 	
try^^ 
{__ 
var`` 
claimsIdentity`` "
=``# $-
!PhoneNumberAuthenticationIdentity``% F
(``F G
	userModel``G P
)``P Q
;``Q R
returnbb 
awaitbb &
CreateSignInAuthenticationbb 7
(bb7 8
	userModelbb8 A
,bbA B
claimsIdentitybbC Q
,bbQ R!
expirationTimeSecondsbbS h
,bbh i
refreshTokenDatabbj z
)bbz {
;bb{ |
}cc 
catchdd 
(dd 
	Exceptiondd 
exdd 
)dd  
{ee 
throwff 
newff  
ApplicationExceptionff .
(ff. /
$"ff/ 1
$strff1 T
{ffT U
exffU W
.ffW X
MessageffX _
}ff_ `
"ff` a
)ffa b
;ffb c
}gg 
}hh 	
publicjj 
asyncjj 
Taskjj 
<jj %
SignInAuthenticationModeljj 3
>jj3 46
*CreateSignInAuthenticationSocialMediaAsyncjj5 _
(jj_ `
	UserModeljj` i
	userModeljjj s
,jjs t
doublejju {"
expirationTimeSeconds	jj| ë
=
jjí ì
$num
jjî ï
,
jjï ñ
RefreshTokenData
jjó ß
refreshTokenData
jj® ∏
=
jjπ ∫
null
jjª ø
)
jjø ¿
{kk 	
tryll 
{mm 
varnn 
claimsIdentitynn "
=nn# $'
EmailAuthenticationIdentitynn% @
(nn@ A
	userModelnnA J
)nnJ K
;nnK L
returnpp 
awaitpp &
CreateSignInAuthenticationpp 7
(pp7 8
	userModelpp8 A
,ppA B
claimsIdentityppC Q
,ppQ R!
expirationTimeSecondsppS h
,pph i
refreshTokenDatappj z
)ppz {
;pp{ |
}qq 
catchrr 
(rr 
	Exceptionrr 
exrr 
)rr  
{ss 
throwtt 
newtt  
ApplicationExceptiontt .
(tt. /
$"tt/ 1
$strtt1 T
{ttT U
exttU W
.ttW X
MessagettX _
}tt_ `
"tt` a
)tta b
;ttb c
}uu 
}vv 	
publicxx 
asyncxx 
Taskxx 
<xx 
RefreshTokenDataxx *
>xx* +%
ValidateRefreshTokenAsyncxx, E
(xxE F
stringxxF L
refreshTokenxxM Y
,xxY Z
Guidxx[ _
userIdxx` f
)xxf g
{yy 	
returnzz 
awaitzz $
GetRefreshTokenFromRediszz 1
(zz1 2
refreshTokenzz2 >
,zz> ?
userIdzz@ F
)zzF G
;zzG H
}{{ 	
private}} 
async}} 
Task}} 
<}} 
RefreshTokenData}} +
>}}+ ,$
GetRefreshTokenFromRedis}}- E
(}}E F
string}}F L
refreshToken}}M Y
,}}Y Z
Guid}}[ _
userId}}` f
)}}f g
{~~ 	
var 
storedToken 
= 
await #
_cache$ *
.* +
GetStringAsync+ 9
(9 :
refreshToken: F
)F G
;G H
if
ÄÄ 
(
ÄÄ 
string
ÄÄ 
.
ÄÄ 
IsNullOrEmpty
ÄÄ $
(
ÄÄ$ %
storedToken
ÄÄ% 0
)
ÄÄ0 1
)
ÄÄ1 2
{
ÅÅ 
return
ÇÇ 
null
ÇÇ 
;
ÇÇ 
}
ÉÉ 
var
ÖÖ 
refreshTokenData
ÖÖ  
=
ÖÖ! "
JsonConvert
ÖÖ# .
.
ÖÖ. /
DeserializeObject
ÖÖ/ @
<
ÖÖ@ A
RefreshTokenData
ÖÖA Q
>
ÖÖQ R
(
ÖÖR S
storedToken
ÖÖS ^
)
ÖÖ^ _
;
ÖÖ_ `
if
áá 
(
áá 
refreshTokenData
áá  
.
áá  !
key
áá! $
.
áá$ %
Equals
áá% +
(
áá+ ,
userId
áá, 2
.
áá2 3
ToString
áá3 ;
(
áá; <
)
áá< =
)
áá= >
)
áá> ?
{
àà 
return
ââ 
refreshTokenData
ââ '
;
ââ' (
}
ää 
return
åå 
null
åå 
;
åå 
}
çç 	
private
èè 
ClaimsIdentity
èè )
EmailAuthenticationIdentity
èè :
(
èè: ;
	UserModel
èè; D
	userModel
èèE N
)
èèN O
{
êê 	
ClaimsIdentity
ëë 
identity
ëë #
=
ëë$ %
new
ëë& )
ClaimsIdentity
ëë* 8
(
ëë8 9
new
íí 
GenericIdentity
íí #
(
íí# $
	userModel
íí$ -
.
íí- .
Email
íí. 3
,
íí3 4
$str
íí5 <
)
íí< =
,
íí= >
new
ìì 
[
ìì 
]
ìì 
{
ìì 
new
ìì 
Claim
ìì !
(
ìì! "
$str
ìì" ;
,
ìì; <
	userModel
ìì= F
.
ììF G
Id
ììG I
.
ììI J
ToString
ììJ R
(
ììR S
)
ììS T
)
ììT U
}
ììV W
)
îî 
;
îî 
var
ññ 
roles
ññ 
=
ññ 
	userModel
ññ !
.
ññ! "
	UserRoles
ññ" +
.
ññ+ ,
Select
ññ, 2
(
ññ2 3
x
ññ3 4
=>
ññ5 7
x
ññ8 9
.
ññ9 :
Role
ññ: >
)
ññ> ?
.
ññ? @
ToList
ññ@ F
(
ññF G
)
ññG H
;
ññH I
if
òò 
(
òò 
roles
òò 
.
òò 
Any
òò 
(
òò 
)
òò 
)
òò 
foreach
ôô 
(
ôô 
var
ôô 
role
ôô !
in
ôô" $
roles
ôô% *
)
ôô* +
identity
öö 
.
öö 
AddClaim
öö %
(
öö% &
new
öö& )
Claim
öö* /
(
öö/ 0

ClaimTypes
öö0 :
.
öö: ;
Role
öö; ?
,
öö? @
role
ööA E
.
ööE F
Name
ööF J
)
ööJ K
)
ööK L
;
ööL M
return
úú 
identity
úú 
;
úú 
}
ùù 	
private
üü 
ClaimsIdentity
üü /
!PhoneNumberAuthenticationIdentity
üü @
(
üü@ A
	UserModel
üüA J
	userModel
üüK T
)
üüT U
{
†† 	
ClaimsIdentity
°° 
identity
°° #
=
°°$ %
new
°°& )
ClaimsIdentity
°°* 8
(
°°8 9
new
¢¢ 
GenericIdentity
¢¢ #
(
¢¢# $
	userModel
¢¢$ -
.
¢¢- .
PhoneNumber
¢¢. 9
,
¢¢9 :
$str
¢¢; B
)
¢¢B C
,
¢¢C D
new
££ 
[
££ 
]
££ 
{
££ 
new
££ 
Claim
££ !
(
££! "
$str
££" ;
,
££; <
	userModel
££= F
.
££F G
Id
££G I
.
££I J
ToString
££J R
(
££R S
)
££S T
)
££T U
}
££V W
)
§§ 
;
§§ 
var
¶¶ 
roles
¶¶ 
=
¶¶ 
	userModel
¶¶ !
.
¶¶! "
	UserRoles
¶¶" +
.
¶¶+ ,
Select
¶¶, 2
(
¶¶2 3
x
¶¶3 4
=>
¶¶5 7
x
¶¶8 9
.
¶¶9 :
Role
¶¶: >
)
¶¶> ?
.
¶¶? @
ToList
¶¶@ F
(
¶¶F G
)
¶¶G H
;
¶¶H I
if
®® 
(
®® 
roles
®® 
.
®® 
Any
®® 
(
®® 
)
®® 
)
®® 
foreach
©© 
(
©© 
var
©© 
role
©© !
in
©©" $
roles
©©% *
)
©©* +
identity
™™ 
.
™™ 
AddClaim
™™ %
(
™™% &
new
™™& )
Claim
™™* /
(
™™/ 0

ClaimTypes
™™0 :
.
™™: ;
Role
™™; ?
,
™™? @
role
™™A E
.
™™E F
Name
™™F J
)
™™J K
)
™™K L
;
™™L M
return
¨¨ 
identity
¨¨ 
;
¨¨ 
}
≠≠ 	
private
ØØ 
async
ØØ 
Task
ØØ 
<
ØØ '
SignInAuthenticationModel
ØØ 4
>
ØØ4 5(
CreateSignInAuthentication
ØØ6 P
(
ØØP Q
	UserModel
ØØQ Z
	userModel
ØØ[ d
,
ØØd e
ClaimsIdentity
ØØf t
claimsIdentityØØu É
,ØØÉ Ñ
doubleØØÖ ã%
expirationTimeSecondsØØå °
=ØØ¢ £
$numØØ§ •
,ØØ• ¶ 
RefreshTokenDataØØß ∑ 
refreshTokenDataØØ∏ »
=ØØ…  
nullØØÀ œ
)ØØœ –
{
∞∞ 	
var
±± 
creationDate
±± 
=
±± 
DateTime
±± '
.
±±' (
UtcNow
±±( .
;
±±. /
var
≤≤ 
expirationDate
≤≤ 
=
≤≤  
creationDate
≤≤! -
+
≤≤. /
TimeSpan
≤≤0 8
.
≤≤8 9
FromSeconds
≤≤9 D
(
≤≤D E#
expirationTimeSeconds
≤≤E Z
==
≤≤[ ]
$num
≤≤^ _
?
≤≤` a"
_tokenConfigurations
≤≤b v
.
≤≤v w"
AccessTokenValidity≤≤w ä
:≤≤ã å%
expirationTimeSeconds≤≤ç ¢
)≤≤¢ £
;≤≤£ §
var
≥≥ !
finalExpirationDate
≥≥ #
=
≥≥$ %
creationDate
≥≥& 2
+
≥≥3 4
TimeSpan
≥≥5 =
.
≥≥= >
FromSeconds
≥≥> I
(
≥≥I J"
_tokenConfigurations
≥≥J ^
.
≥≥^ _"
RefreshTokenValidity
≥≥_ s
)
≥≥s t
;
≥≥t u
string
µµ 
refreshToken
µµ 
=
µµ  !
Guid
µµ" &
.
µµ& '
NewGuid
µµ' .
(
µµ. /
)
µµ/ 0
.
µµ0 1
ToString
µµ1 9
(
µµ9 :
$str
µµ: =
)
µµ= >
;
µµ> ?
if
∑∑ 
(
∑∑ 
refreshTokenData
∑∑  
!=
∑∑! #
null
∑∑$ (
)
∑∑( )
{
∏∏ !
finalExpirationDate
ππ #
=
ππ$ %
refreshTokenData
ππ& 6
.
ππ6 7
FinalExpiration
ππ7 F
;
ππF G
refreshToken
∫∫ 
=
∫∫ 
refreshTokenData
∫∫ /
.
∫∫/ 0
RefreshToken
∫∫0 <
;
∫∫< =
}
ªª 
string
ΩΩ 
accessToken
ΩΩ 
=
ΩΩ  !
GenerateAccessToken
ΩΩ! 4
(
ΩΩ4 5
claimsIdentity
ΩΩ5 C
,
ΩΩC D
creationDate
ΩΩE Q
,
ΩΩQ R
expirationDate
ΩΩS a
)
ΩΩa b
;
ΩΩb c
await
øø $
SendAccessTokenToRedis
øø (
(
øø( )
accessToken
øø) 4
,
øø4 5
	userModel
øø6 ?
.
øø? @
Id
øø@ B
,
øøB C
expirationDate
øøD R
)
øøR S
;
øøS T
await
¿¿ %
SendRefreshTokenToRedis
¿¿ )
(
¿¿) *
refreshToken
¿¿* 6
,
¿¿6 7
	userModel
¿¿8 A
.
¿¿A B
Id
¿¿B D
,
¿¿D E!
finalExpirationDate
¿¿F Y
)
¿¿Y Z
;
¿¿Z [
var
¬¬ !
authenticationModel
¬¬ #
=
¬¬$ %
new
¬¬& )'
SignInAuthenticationModel
¬¬* C
(
¬¬C D
)
¬¬D E
{
√√ 
AccessToken
ƒƒ 
=
ƒƒ 
accessToken
ƒƒ )
,
ƒƒ) *#
AccessTokenExpiration
≈≈ %
=
≈≈& '
expirationDate
≈≈( 6
,
≈≈6 7
RefreshToken
∆∆ 
=
∆∆ 
refreshToken
∆∆ +
,
∆∆+ ,$
RefreshTokenExpiration
«« &
=
««' (!
finalExpirationDate
««) <
}
»» 
;
»» 
return
   !
authenticationModel
   &
;
  & '
}
ÀÀ 	
private
ÕÕ 
async
ÕÕ 
Task
ÕÕ 
<
ÕÕ '
SignUpAuthenticationModel
ÕÕ 4
>
ÕÕ4 5(
CreateSignUpAuthentication
ÕÕ6 P
(
ÕÕP Q
	UserModel
ÕÕQ Z
	userModel
ÕÕ[ d
,
ÕÕd e
ClaimsIdentity
ÕÕf t
claimsIdentityÕÕu É
,ÕÕÉ Ñ
doubleÕÕÖ ã%
expirationTimeSecondsÕÕå °
)ÕÕ° ¢
{
ŒŒ 	
var
œœ 
creationDate
œœ 
=
œœ 
DateTime
œœ '
.
œœ' (
UtcNow
œœ( .
;
œœ. /
var
–– 
expirationDate
–– 
=
––  
creationDate
––! -
+
––. /
TimeSpan
––0 8
.
––8 9
FromSeconds
––9 D
(
––D E#
expirationTimeSeconds
––E Z
==
––[ ]
$num
––^ _
?
––` a"
_tokenConfigurations
––b v
.
––v w"
AccessTokenValidity––w ä
:––ã å%
expirationTimeSeconds––ç ¢
)––¢ £
;––£ §
string
““ 
accessToken
““ 
=
““  !
GenerateAccessToken
““! 4
(
““4 5
claimsIdentity
““5 C
,
““C D
creationDate
““E Q
,
““Q R
expirationDate
““S a
)
““a b
;
““b c
await
‘‘ $
SendAccessTokenToRedis
‘‘ (
(
‘‘( )
accessToken
‘‘) 4
,
‘‘4 5
	userModel
‘‘6 ?
.
‘‘? @
Id
‘‘@ B
,
‘‘B C
expirationDate
‘‘D R
)
‘‘R S
;
‘‘S T
var
÷÷ !
authenticationModel
÷÷ #
=
÷÷$ %
new
÷÷& )'
SignUpAuthenticationModel
÷÷* C
(
÷÷C D
)
÷÷D E
{
◊◊ 
AccessToken
ÿÿ 
=
ÿÿ 
accessToken
ÿÿ )
,
ÿÿ) *
}
ŸŸ 
;
ŸŸ 
return
€€ !
authenticationModel
€€ &
;
€€& '
}
‹‹ 	
public
ﬁﬁ 
bool
ﬁﬁ !
ValidateAccessToken
ﬁﬁ '
(
ﬁﬁ' (
string
ﬁﬁ( .
token
ﬁﬁ/ 4
,
ﬁﬁ4 5
Guid
ﬁﬁ6 :
userId
ﬁﬁ; A
)
ﬁﬁA B
{
ﬂﬂ 	
var
‡‡ 
storedToken
‡‡ 
=
‡‡ %
GetAccessTokenFromRedis
‡‡ 5
(
‡‡5 6
userId
‡‡6 <
)
‡‡< =
;
‡‡= >
if
·· 
(
·· 
storedToken
·· 
==
·· 
null
·· #
)
··# $
return
‚‚ 
false
‚‚ 
;
‚‚ 
return
‰‰ 
token
‰‰ 
.
‰‰ 
Equals
‰‰ 
(
‰‰  
storedToken
‰‰  +
)
‰‰+ ,
;
‰‰, -
}
ÂÂ 	
private
ÁÁ 
string
ÁÁ %
GetAccessTokenFromRedis
ÁÁ .
(
ÁÁ. /
Guid
ÁÁ/ 3
userId
ÁÁ4 :
)
ÁÁ: ;
{
ËË 	
var
ÈÈ 
storedToken
ÈÈ 
=
ÈÈ 
_cache
ÈÈ $
.
ÈÈ$ %
	GetString
ÈÈ% .
(
ÈÈ. /
userId
ÈÈ/ 5
.
ÈÈ5 6
ToString
ÈÈ6 >
(
ÈÈ> ?
)
ÈÈ? @
)
ÈÈ@ A
;
ÈÈA B
if
ÍÍ 
(
ÍÍ 
string
ÍÍ 
.
ÍÍ 
IsNullOrEmpty
ÍÍ $
(
ÍÍ$ %
storedToken
ÍÍ% 0
)
ÍÍ0 1
)
ÍÍ1 2
{
ÎÎ 
return
ÏÏ 
null
ÏÏ 
;
ÏÏ 
}
ÌÌ 
return
ÔÔ 
storedToken
ÔÔ 
;
ÔÔ 
}
 	
private
ÚÚ 
string
ÚÚ !
GenerateAccessToken
ÚÚ *
(
ÚÚ* +
ClaimsIdentity
ÚÚ+ 9
identity
ÚÚ: B
,
ÚÚB C
DateTime
ÚÚD L
creationDate
ÚÚM Y
,
ÚÚY Z
DateTime
ÚÚ[ c
expirationDate
ÚÚd r
)
ÚÚr s
{
ÛÛ 	
var
ÙÙ 
handler
ÙÙ 
=
ÙÙ 
new
ÙÙ %
JwtSecurityTokenHandler
ÙÙ 5
(
ÙÙ5 6
)
ÙÙ6 7
;
ÙÙ7 8
var
ıı 
securityToken
ıı 
=
ıı 
handler
ıı  '
.
ıı' (
CreateToken
ıı( 3
(
ıı3 4
new
ıı4 7%
SecurityTokenDescriptor
ıı8 O
{
ˆˆ 
Issuer
˜˜ 
=
˜˜ "
_tokenConfigurations
˜˜ -
.
˜˜- .
Issuer
˜˜. 4
,
˜˜4 5
Audience
¯¯ 
=
¯¯ "
_tokenConfigurations
¯¯ /
.
¯¯/ 0
Audience
¯¯0 8
,
¯¯8 9 
SigningCredentials
˘˘ "
=
˘˘# $$
_signingConfigurations
˘˘% ;
.
˘˘; < 
SigningCredentials
˘˘< N
,
˘˘N O
Subject
˙˙ 
=
˙˙ 
identity
˙˙ "
,
˙˙" #
	NotBefore
˚˚ 
=
˚˚ 
creationDate
˚˚ (
,
˚˚( )
Expires
¸¸ 
=
¸¸ 
expirationDate
¸¸ (
}
˝˝ 
)
˝˝ 
;
˝˝ 
return
ˇˇ 
handler
ˇˇ 
.
ˇˇ 

WriteToken
ˇˇ %
(
ˇˇ% &
securityToken
ˇˇ& 3
)
ˇˇ3 4
;
ˇˇ4 5
}
ÄÄ 	
public
ÇÇ 
Guid
ÇÇ  
GetUserIdFromToken
ÇÇ &
(
ÇÇ& '
string
ÇÇ' -
jwtToken
ÇÇ. 6
)
ÇÇ6 7
{
ÉÉ 	
jwtToken
ÑÑ 
=
ÑÑ 
jwtToken
ÑÑ 
.
ÑÑ  
Replace
ÑÑ  '
(
ÑÑ' (
$str
ÑÑ( 1
,
ÑÑ1 2
string
ÑÑ3 9
.
ÑÑ9 :
Empty
ÑÑ: ?
)
ÑÑ? @
;
ÑÑ@ A
var
ÖÖ 
handler
ÖÖ 
=
ÖÖ 
new
ÖÖ %
JwtSecurityTokenHandler
ÖÖ 5
(
ÖÖ5 6
)
ÖÖ6 7
;
ÖÖ7 8
if
ÜÜ 
(
ÜÜ 
!
ÜÜ 
handler
ÜÜ 
.
ÜÜ 
CanReadToken
ÜÜ %
(
ÜÜ% &
jwtToken
ÜÜ& .
)
ÜÜ. /
)
ÜÜ/ 0
return
ÜÜ1 7
Guid
ÜÜ8 <
.
ÜÜ< =
Empty
ÜÜ= B
;
ÜÜB C
var
áá 
	jsonToken
áá 
=
áá 
handler
áá #
.
áá# $
ReadJwtToken
áá$ 0
(
áá0 1
jwtToken
áá1 9
)
áá9 :
;
áá: ;
var
àà 
UserId
àà 
=
àà 
	jsonToken
àà "
.
àà" #
Claims
àà# )
.
àà) *
Where
àà* /
(
àà/ 0
x
àà0 1
=>
àà2 4
x
àà5 6
.
àà6 7
Type
àà7 ;
==
àà< >
$str
àà? X
)
ààX Y
.
ààY Z
First
ààZ _
(
àà_ `
)
àà` a
.
ààa b
Value
ààb g
;
ààg h
return
ââ 
new
ââ 
Guid
ââ 
(
ââ 
UserId
ââ "
)
ââ" #
;
ââ# $
}
ää 	
public
åå 
UserType
åå 
?
åå 
GetRoleFromToken
åå )
(
åå) *
string
åå* 0
jwtToken
åå1 9
)
åå9 :
{
çç 	
jwtToken
éé 
=
éé 
jwtToken
éé 
.
éé  
Replace
éé  '
(
éé' (
$str
éé( 1
,
éé1 2
string
éé3 9
.
éé9 :
Empty
éé: ?
)
éé? @
;
éé@ A
var
èè 
handler
èè 
=
èè 
new
èè %
JwtSecurityTokenHandler
èè 5
(
èè5 6
)
èè6 7
;
èè7 8
if
êê 
(
êê 
!
êê 
handler
êê 
.
êê 
CanReadToken
êê %
(
êê% &
jwtToken
êê& .
)
êê. /
)
êê/ 0
return
êê1 7
null
êê8 <
;
êê< =
var
ëë 
	jsonToken
ëë 
=
ëë 
handler
ëë #
.
ëë# $
ReadJwtToken
ëë$ 0
(
ëë0 1
jwtToken
ëë1 9
)
ëë9 :
;
ëë: ;
var
íí 
role
íí 
=
íí 
	jsonToken
íí  
.
íí  !
Claims
íí! '
.
íí' (
Where
íí( -
(
íí- .
x
íí. /
=>
íí0 2
x
íí3 4
.
íí4 5
Type
íí5 9
==
íí: <
$str
íí= C
)
ííC D
.
ííD E
First
ííE J
(
ííJ K
)
ííK L
.
ííL M
Value
ííM R
;
ííR S
var
ìì 
roleType
ìì 
=
ìì 
Enum
ìì 
.
ìì  
Parse
ìì  %
<
ìì% &
UserType
ìì& .
>
ìì. /
(
ìì/ 0
role
ìì1 5
)
ìì5 6
;
ìì6 7
return
îî 
roleType
îî 
;
îî 
}
ïï 	
public
óó 
JwtSecurityToken
óó 
ReadJwt
óó  '
(
óó' (
string
óó( .
jwtToken
óó/ 7
)
óó7 8
{
òò 	
var
ôô 
handler
ôô 
=
ôô 
new
ôô %
JwtSecurityTokenHandler
ôô 5
(
ôô5 6
)
ôô6 7
;
ôô7 8
if
öö 
(
öö 
!
öö 
handler
öö 
.
öö 
CanReadToken
öö %
(
öö% &
jwtToken
öö& .
)
öö. /
)
öö/ 0
return
öö1 7
null
öö8 <
;
öö< =
return
õõ 
handler
õõ 
.
õõ 
ReadJwtToken
õõ '
(
õõ' (
jwtToken
õõ( 0
)
õõ0 1
;
õõ1 2
}
úú 	
private
ûû 
async
ûû 
Task
ûû $
SendAccessTokenToRedis
ûû 1
(
ûû1 2
string
ûû2 8
accessToken
ûû9 D
,
ûûD E
Guid
ûûF J
userId
ûûK Q
,
ûûQ R
DateTime
ûûS [
finalExpiration
ûû\ k
)
ûûk l
{
üü 	
var
†† 
cacheOptions
†† 
=
†† 
new
†† "*
DistributedCacheEntryOptions
††# ?
(
††? @
)
††@ A
;
††A B
cacheOptions
°° 
.
°° #
SetAbsoluteExpiration
°° .
(
°°. /
finalExpiration
°°/ >
)
°°> ?
;
°°? @
await
££ 
_cache
££ 
.
££ 
SetStringAsync
££ '
(
££' (
userId
££( .
.
££. /
ToString
££/ 7
(
££7 8
)
££8 9
,
££9 :
accessToken
££; F
,
££F G
cacheOptions
££H T
)
££T U
;
££U V
}
§§ 	
private
¶¶ 
async
¶¶ 
Task
¶¶ %
SendRefreshTokenToRedis
¶¶ 2
(
¶¶2 3
string
¶¶3 9
refreshToken
¶¶: F
,
¶¶F G
Guid
¶¶H L
userId
¶¶M S
,
¶¶S T
DateTime
¶¶U ]
finalExpiration
¶¶^ m
)
¶¶m n
{
ßß 	
var
®® 
cacheOptions
®® 
=
®® 
new
®® "*
DistributedCacheEntryOptions
®®# ?
(
®®? @
)
®®@ A
;
®®A B
cacheOptions
©© 
.
©© #
SetAbsoluteExpiration
©© .
(
©©. /
finalExpiration
©©/ >
)
©©> ?
;
©©? @
var
™™ 
refreshTokenData
™™  
=
™™! "
new
™™# &
RefreshTokenData
™™' 7
{
´´ 
RefreshToken
¨¨ 
=
¨¨ 
refreshToken
¨¨ +
,
¨¨+ ,
key
≠≠ 
=
≠≠ 
userId
≠≠ 
.
≠≠ 
ToString
≠≠ %
(
≠≠% &
)
≠≠& '
,
≠≠' (
FinalExpiration
ÆÆ 
=
ÆÆ  !
finalExpiration
ÆÆ" 1
}
ØØ 
;
ØØ 
await
±± 
_cache
±± 
.
±± 
SetStringAsync
±± '
(
±±' (
refreshToken
±±( 4
,
±±4 5
JsonConvert
±±6 A
.
±±A B
SerializeObject
±±B Q
(
±±Q R
refreshTokenData
±±R b
)
±±b c
,
±±c d
cacheOptions
±±e q
)
±±q r
;
±±r s
}
≤≤ 	
public
¥¥ 
async
¥¥ 
Task
¥¥ 
<
¥¥ 6
(SignInRecoverPasswordAuthenticationModel
¥¥ B
>
¥¥B C;
-CreateRecoverPasswordAuthenticationEmailAsync
¥¥D q
(
¥¥q r
	UserModel
¥¥r {
	userModel¥¥| Ö
,¥¥Ö Ü
double¥¥á ç%
expirationTimeSeconds¥¥é £
,¥¥£ § 
RefreshTokenData¥¥• µ 
refreshTokenData¥¥∂ ∆
)¥¥∆ «
{
µµ 	
try
∂∂ 
{
∑∑ 
var
∏∏ 
claimsIdentity
∏∏ "
=
∏∏# $)
EmailAuthenticationIdentity
∏∏% @
(
∏∏@ A
	userModel
∏∏A J
)
∏∏J K
;
∏∏K L
return
∫∫ 
await
∫∫ 1
#CreateRecoverPasswordAuthentication
∫∫ @
(
∫∫@ A
	userModel
∫∫A J
,
∫∫J K
claimsIdentity
∫∫L Z
,
∫∫Z [#
expirationTimeSeconds
∫∫\ q
)
∫∫q r
;
∫∫r s
}
ªª 
catch
ºº 
(
ºº 
	Exception
ºº 
ex
ºº 
)
ºº  
{
ΩΩ 
throw
ææ 
new
ææ "
ApplicationException
ææ .
(
ææ. /
$"
ææ/ 1
$str
ææ1 T
{
ææT U
ex
ææU W
.
ææW X
Message
ææX _
}
ææ_ `
"
ææ` a
)
ææa b
;
ææb c
}
øø 
}
¿¿ 	
private
¬¬ 
async
¬¬ 
Task
¬¬ 
<
¬¬ 6
(SignInRecoverPasswordAuthenticationModel
¬¬ C
>
¬¬C D1
#CreateRecoverPasswordAuthentication
¬¬E h
(
¬¬h i
	UserModel
¬¬i r
	userModel
¬¬s |
,
¬¬| }
ClaimsIdentity¬¬~ å
claimsIdentity¬¬ç õ
,¬¬õ ú
double¬¬ù £%
expirationTimeSeconds¬¬§ π
)¬¬π ∫
{
√√ 	
var
ƒƒ 
creationDate
ƒƒ 
=
ƒƒ 
DateTime
ƒƒ '
.
ƒƒ' (
UtcNow
ƒƒ( .
;
ƒƒ. /
var
≈≈ 
expirationDate
≈≈ 
=
≈≈  
creationDate
≈≈! -
+
≈≈. /
TimeSpan
≈≈0 8
.
≈≈8 9
FromSeconds
≈≈9 D
(
≈≈D E#
expirationTimeSeconds
≈≈E Z
==
≈≈[ ]
$num
≈≈^ _
?
≈≈` a"
_tokenConfigurations
≈≈b v
.
≈≈v w"
AccessTokenValidity≈≈w ä
:≈≈ã å%
expirationTimeSeconds≈≈ç ¢
)≈≈¢ £
;≈≈£ §
string
«« 
accessToken
«« 
=
««  !
GenerateAccessToken
««! 4
(
««4 5
claimsIdentity
««5 C
,
««C D
creationDate
««E Q
,
««Q R
expirationDate
««S a
)
««a b
;
««b c
await
…… $
SendAccessTokenToRedis
…… (
(
……( )
accessToken
……) 4
,
……4 5
	userModel
……6 ?
.
……? @
Id
……@ B
,
……B C
expirationDate
……D R
)
……R S
;
……S T
var
ÀÀ !
authenticationModel
ÀÀ #
=
ÀÀ$ %
new
ÀÀ& )6
(SignInRecoverPasswordAuthenticationModel
ÀÀ* R
(
ÀÀR S
)
ÀÀS T
{
ÃÃ 
AccessToken
ÕÕ 
=
ÕÕ 
accessToken
ÕÕ )
,
ÕÕ) *
}
ŒŒ 
;
ŒŒ 
return
–– !
authenticationModel
–– &
;
––& '
}
—— 	
public
”” 0
"SignInSignUpAppleAutheicationModel
”” 1(
ReadAppleAuthenticationJwt
””2 L
(
””L M
string
””M S
jwtToken
””T \
)
””\ ]
{
‘‘ 	
var
’’ 
	jsonToken
’’ 
=
’’ 
ReadJwt
’’ #
(
’’# $
jwtToken
’’$ ,
)
’’, -
;
’’- .
if
÷÷ 
(
÷÷ 
	jsonToken
÷÷ 
==
÷÷ 
null
÷÷ !
)
÷÷! "
return
÷÷# )
null
÷÷* .
;
÷÷. /
var
ÿÿ 
model
ÿÿ 
=
ÿÿ 
new
ÿÿ 0
"SignInSignUpAppleAutheicationModel
ÿÿ >
(
ÿÿ> ?
)
ÿÿ? @
;
ÿÿ@ A
int
⁄⁄ 
.
⁄⁄ 
TryParse
⁄⁄ 
(
⁄⁄ 
	jsonToken
⁄⁄ "
.
⁄⁄" #
Claims
⁄⁄# )
.
⁄⁄) *
FirstOrDefault
⁄⁄* 8
(
⁄⁄8 9
x
⁄⁄9 :
=>
⁄⁄; =
x
⁄⁄> ?
.
⁄⁄? @
Type
⁄⁄@ D
==
⁄⁄E G
$str
⁄⁄H M
)
⁄⁄M N
?
⁄⁄N O
.
⁄⁄O P
Value
⁄⁄P U
,
⁄⁄U V
out
⁄⁄W Z
var
⁄⁄[ ^

expiration
⁄⁄_ i
)
⁄⁄i j
;
⁄⁄j k
int
€€ 
.
€€ 
TryParse
€€ 
(
€€ 
	jsonToken
€€ "
.
€€" #
Claims
€€# )
.
€€) *
FirstOrDefault
€€* 8
(
€€8 9
x
€€9 :
=>
€€; =
x
€€> ?
.
€€? @
Type
€€@ D
==
€€E G
$str
€€H M
)
€€M N
?
€€N O
.
€€O P
Value
€€P U
,
€€U V
out
€€W Z
var
€€[ ^
	startTime
€€_ h
)
€€h i
;
€€i j
bool
‹‹ 
.
‹‹ 
TryParse
‹‹ 
(
‹‹ 
	jsonToken
‹‹ #
.
‹‹# $
Claims
‹‹$ *
.
‹‹* +
FirstOrDefault
‹‹+ 9
(
‹‹9 :
x
‹‹: ;
=>
‹‹< >
x
‹‹? @
.
‹‹@ A
Type
‹‹A E
==
‹‹F H
$str
‹‹I Y
)
‹‹Y Z
?
‹‹Z [
.
‹‹[ \
Value
‹‹\ a
,
‹‹a b
out
‹‹c f
var
‹‹g j
emailVerified
‹‹k x
)
‹‹x y
;
‹‹y z
int
›› 
.
›› 
TryParse
›› 
(
›› 
	jsonToken
›› "
.
››" #
Claims
››# )
.
››) *
FirstOrDefault
››* 8
(
››8 9
x
››9 :
=>
››; =
x
››> ?
.
››? @
Type
››@ D
==
››E G
$str
››H S
)
››S T
?
››T U
.
››U V
Value
››V [
,
››[ \
out
››] `
var
››a d 
authenticationTime
››e w
)
››w x
;
››x y
bool
ﬁﬁ 
.
ﬁﬁ 
TryParse
ﬁﬁ 
(
ﬁﬁ 
	jsonToken
ﬁﬁ #
.
ﬁﬁ# $
Claims
ﬁﬁ$ *
.
ﬁﬁ* +
FirstOrDefault
ﬁﬁ+ 9
(
ﬁﬁ9 :
x
ﬁﬁ: ;
=>
ﬁﬁ< >
x
ﬁﬁ? @
.
ﬁﬁ@ A
Type
ﬁﬁA E
==
ﬁﬁF H
$str
ﬁﬁI Z
)
ﬁﬁZ [
?
ﬁﬁ[ \
.
ﬁﬁ\ ]
Value
ﬁﬁ] b
,
ﬁﬁb c
out
ﬁﬁd g
var
ﬁﬁh k
nonceSupported
ﬁﬁl z
)
ﬁﬁz {
;
ﬁﬁ{ |
int
ﬂﬂ 
.
ﬂﬂ 
TryParse
ﬂﬂ 
(
ﬂﬂ 
	jsonToken
ﬂﬂ "
.
ﬂﬂ" #
Claims
ﬂﬂ# )
.
ﬂﬂ) *
FirstOrDefault
ﬂﬂ* 8
(
ﬂﬂ8 9
x
ﬂﬂ9 :
=>
ﬂﬂ; =
x
ﬂﬂ> ?
.
ﬂﬂ? @
Type
ﬂﬂ@ D
==
ﬂﬂE G
$str
ﬂﬂH Z
)
ﬂﬂZ [
?
ﬂﬂ[ \
.
ﬂﬂ\ ]
Value
ﬂﬂ] b
,
ﬂﬂb c
out
ﬂﬂd g
var
ﬂﬂh k
realUserStatus
ﬂﬂl z
)
ﬂﬂz {
;
ﬂﬂ{ |
return
·· 
new
·· 0
"SignInSignUpAppleAutheicationModel
·· 9
{
‚‚ 
	UrlOrigem
„„ 
=
„„ 
	jsonToken
„„ %
.
„„% &
Claims
„„& ,
.
„„, -
FirstOrDefault
„„- ;
(
„„; <
x
„„< =
=>
„„> @
x
„„A B
.
„„B C
Type
„„C G
==
„„H J
$str
„„K P
)
„„P Q
.
„„Q R
Value
„„R W
,
„„W X
	AppOrigem
‰‰ 
=
‰‰ 
	jsonToken
‰‰ %
.
‰‰% &
Claims
‰‰& ,
.
‰‰, -
FirstOrDefault
‰‰- ;
(
‰‰; <
x
‰‰< =
=>
‰‰> @
x
‰‰A B
.
‰‰B C
Type
‰‰C G
==
‰‰H J
$str
‰‰K P
)
‰‰P Q
.
‰‰Q R
Value
‰‰R W
,
‰‰W X

Expiration
ÂÂ 
=
ÂÂ 

expiration
ÂÂ '
,
ÂÂ' (
	StartTime
ÊÊ 
=
ÊÊ 
	startTime
ÊÊ %
,
ÊÊ% &
AppleUserId
ÁÁ 
=
ÁÁ 
	jsonToken
ÁÁ '
.
ÁÁ' (
Claims
ÁÁ( .
.
ÁÁ. /
FirstOrDefault
ÁÁ/ =
(
ÁÁ= >
x
ÁÁ> ?
=>
ÁÁ@ B
x
ÁÁC D
.
ÁÁD E
Type
ÁÁE I
==
ÁÁJ L
$str
ÁÁM R
)
ÁÁR S
.
ÁÁS T
Value
ÁÁT Y
,
ÁÁY Z
CHash
ËË 
=
ËË 
	jsonToken
ËË !
.
ËË! "
Claims
ËË" (
.
ËË( )
FirstOrDefault
ËË) 7
(
ËË7 8
x
ËË8 9
=>
ËË: <
x
ËË= >
.
ËË> ?
Type
ËË? C
==
ËËD F
$str
ËËG O
)
ËËO P
.
ËËP Q
Value
ËËQ V
,
ËËV W
Email
ÈÈ 
=
ÈÈ 
	jsonToken
ÈÈ !
.
ÈÈ! "
Claims
ÈÈ" (
.
ÈÈ( )
FirstOrDefault
ÈÈ) 7
(
ÈÈ7 8
x
ÈÈ8 9
=>
ÈÈ: <
x
ÈÈ= >
.
ÈÈ> ?
Type
ÈÈ? C
==
ÈÈD F
$str
ÈÈG N
)
ÈÈN O
.
ÈÈO P
Value
ÈÈP U
,
ÈÈU V
EmailVerified
ÍÍ 
=
ÍÍ 
emailVerified
ÍÍ  -
,
ÍÍ- .
IsPrivateEmail
ÎÎ 
=
ÎÎ  
	jsonToken
ÎÎ! *
.
ÎÎ* +
Claims
ÎÎ+ 1
.
ÎÎ1 2
FirstOrDefault
ÎÎ2 @
(
ÎÎ@ A
x
ÎÎA B
=>
ÎÎC E
x
ÎÎF G
.
ÎÎG H
Type
ÎÎH L
==
ÎÎM O
$str
ÎÎP b
)
ÎÎb c
?
ÎÎc d
.
ÎÎd e
Value
ÎÎe j
,
ÎÎj k 
AuthenticationTime
ÏÏ "
=
ÏÏ# $ 
authenticationTime
ÏÏ% 7
,
ÏÏ7 8
NonceSupported
ÌÌ 
=
ÌÌ  
nonceSupported
ÌÌ! /
,
ÌÌ/ 0
RealUserStatus
ÓÓ 
=
ÓÓ  
realUserStatus
ÓÓ! /
}
ÔÔ 
;
ÔÔ 
}
 	
}
ÒÒ 
}ÚÚ ßñ
UE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Services\Base\ServiceBase.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Services %
.% &
Base& *
{ 
public 

abstract 
class 
ServiceBase %
<% &
	TAddModel& /
,/ 0
TUpdateModel1 =
,= >
TPatchModel? J
,J K
	TGetModelL U
,U V
TModelW ]
,] ^
TEntity_ f
,f g
TKeyh l
>l m
:n o
IServiceBasep |
<| }
	TAddModel	} Ü
,
Ü á
TUpdateModel
à î
,
î ï
TPatchModel
ñ °
,
° ¢
	TGetModel
£ ¨
,
¨ ≠
TModel
Æ ¥
,
¥ µ
TKey
∂ ∫
>
∫ ª
,
ª º
IDisposable
Ω »
where 
	TAddModel 
: 
EntityModel %
<% &
TKey& *
>* +
,+ ,
IEntityModel- 9
<9 :
TKey: >
>> ?
,? @
newA D
(D E
)E F
where 
TUpdateModel 
: 
EntityModel (
<( )
TKey) -
>- .
,. /
IEntityModel0 <
<< =
TKey= A
>A B
,B C
newD G
(G H
)H I
where 
TPatchModel 
: 
EntityModel '
<' (
TKey( ,
>, -
,- .
IEntityModel/ ;
<; <
TKey< @
>@ A
,A B
newC F
(F G
)G H
where 
	TGetModel 
: 
EntityModel %
<% &
TKey& *
>* +
,+ ,
IEntityModel- 9
<9 :
TKey: >
>> ?
,? @
newA D
(D E
)E F
where 
TModel 
: 
EntityModel "
<" #
TKey# '
>' (
,( )
IEntityModel* 6
<6 7
TKey7 ;
>; <
,< =
new> A
(A B
)B C
where 
TEntity 
: 
Entity 
< 
TKey #
># $
,$ %
IEntity& -
<- .
TKey. 2
>2 3
,3 4
new5 8
(8 9
)9 :
{ 
private 
readonly 
IRepositoryBase (
<( )
TEntity) 0
,0 1
TKey2 6
>6 7
_repositoryBase8 G
;G H
public 
readonly 
IMapper 
Mapper  &
;& '
	protected 
ServiceBase 
( 
IRepositoryBase -
<- .
TEntity. 5
,5 6
TKey7 ;
>; <
repositoryBase= K
,K L
IServiceContext *
serviceContext+ 9
)9 :
{ 	
_repositoryBase   
=   
repositoryBase   ,
;  , -
Mapper!! 
=!! 
serviceContext!! #
.!!# $
Mapper!!$ *
;!!* +
}"" 	
public$$ 
virtual$$ 
async$$ 
Task$$ !
<$$! "
IResponseBase$$" /
>$$/ 0
AddOrUpdateAsync$$1 A
($$A B
TModel$$B H
model$$I N
)$$N O
{%% 	
var&& 
entity&& 
=&& 
await&& 
_repositoryBase&& .
.&&. /
AddOrUpdateAsync&&/ ?
(&&? @
Mapper&&@ F
.&&F G
Map&&G J
<&&J K
TEntity&&K R
>&&R S
(&&S T
model&&T Y
)&&Y Z
)&&Z [
;&&[ \
if'' 
('' 
entity'' 
=='' 
null'' 
)'' 
return''  &
new''' *
BadRequestResponse''+ =
(''= >
ConstantMessages''> N
.''N O
CRUD_CREATE_FAIL''O _
,''_ `
entity''a g
)''g h
;''h i
return(( 
new(( 

OkResponse(( !
<((! "
TModel((" (
>((( )
((() *
Mapper((* 0
.((0 1
Map((1 4
<((4 5
TModel((5 ;
>((; <
(((< =
entity((= C
)((C D
)((D E
;((E F
})) 	
public++ 
virtual++ 
async++ 
Task++ !
<++! "
IResponseBase++" /
>++/ 0
AddAsync++1 9
(++9 :
	TAddModel++: C
model++D I
)++I J
{,, 	
var-- 
entity-- 
=-- 
await-- 
_repositoryBase-- .
.--. /
AddAsync--/ 7
(--7 8
Mapper--8 >
.--> ?
Map--? B
<--B C
TEntity--C J
>--J K
(--K L
model--L Q
)--Q R
)--R S
;--S T
if.. 
(.. 
entity.. 
==.. 
null.. 
).. 
return..  &
new..' *
BadRequestResponse..+ =
(..= >
ConstantMessages..> N
...N O
CRUD_CREATE_FAIL..O _
,.._ `
entity..a g
)..g h
;..h i
return// 
new// 
CreatedResponse// &
(//& '
entity//' -
)//- .
;//. /
}00 	
public22 
virtual22 
async22 
Task22 !
<22! "
IResponseBase22" /
>22/ 0
UpdateAsync221 <
(22< =
TUpdateModel22= I
model22J O
)22O P
{33 	
var44 
entity44 
=44 
await44 
_repositoryBase44 .
.44. /
UpdateAsync44/ :
(44: ;
Mapper44; A
.44A B
Map44B E
<44E F
TEntity44F M
>44M N
(44N O
model44O T
)44T U
)44U V
;44V W
if55 
(55 
entity55 
==55 
null55 
)55 
return55  &
new55' *
NoContentResponse55+ <
(55< =
)55= >
;55> ?
return66 
new66 

OkResponse66 !
<66! "
	TGetModel66" +
>66+ ,
(66, -
Mapper66- 3
.663 4
Map664 7
<667 8
	TGetModel668 A
>66A B
(66B C
entity66C I
)66I J
)66J K
;66K L
}77 	
public99 
virtual99 
async99 
Task99 !
<99! "
IResponseBase99" /
>99/ 0
AddOrUpdateAsync991 A
(99A B
IEnumerable99B M
<99M N
TModel99N T
>99T U
models99V \
)99\ ]
{:: 	
var;; 
entities;; 
=;; 
await;;  
_repositoryBase;;! 0
.;;0 1
AddOrUpdateAsync;;1 A
(;;A B
Mapper;;B H
.;;H I
Map;;I L
<;;L M
IEnumerable;;M X
<;;X Y
TEntity;;Y `
>;;` a
>;;a b
(;;b c
models;;c i
);;i j
);;j k
;;;k l
if<< 
(<< 
!<< 
entities<< 
.<< 
Any<< 
(<< 
)<< 
)<<  
return<<! '
new<<( +
BadRequestResponse<<, >
(<<> ?
ConstantMessages<<? O
.<<O P
CRUD_UPDATE_FAIL<<P `
,<<` a
entities<<b j
)<<j k
;<<k l
return== 
new== 

OkResponse== !
<==! "
IList==" '
<==' (
TModel==( .
>==. /
>==/ 0
(==0 1
Mapper==1 7
.==7 8
Map==8 ;
<==; <
IList==< A
<==A B
TModel==B H
>==H I
>==I J
(==J K
entities==K S
)==S T
)==T U
;==U V
}>> 	
public@@ 
virtual@@ 
async@@ 
Task@@ !
<@@! "
IResponseBase@@" /
>@@/ 0
GetAllAsync@@1 <
(@@< =
CancellationToken@@= N
cancellationToken@@O `
=@@a b
default@@c j
)@@j k
{AA 	
varBB 
entitiesBB 
=BB 
awaitBB  
_repositoryBaseBB! 0
.BB0 1
GetAllAsyncBB1 <
(BB< =
cancellationTokenBB= N
:BBN O
cancellationTokenBBP a
)BBa b
;BBb c
ifCC 
(CC 
!CC 
entitiesCC 
.CC 
AnyCC 
(CC 
)CC 
)CC  
returnCC! '
newCC( +
NoContentResponseCC, =
(CC= >
)CC> ?
;CC? @
returnDD 
newDD 

OkResponseDD !
<DD! "
IListDD" '
<DD' (
	TGetModelDD( 1
>DD1 2
>DD2 3
(DD3 4
MapperDD4 :
.DD: ;
MapDD; >
<DD> ?
IListDD? D
<DDD E
	TGetModelDDE N
>DDN O
>DDO P
(DDP Q
entitiesDDQ Y
)DDY Z
)DDZ [
;DD[ \
}EE 	
publicGG 
virtualGG 
asyncGG 
TaskGG !
<GG! "
IResponseBaseGG" /
>GG/ 0
GetAllPagedAsyncGG1 A
(GGA B
intGGB E
?GGE F
pageGGG K
,GGK L
intGGM P
?GGP Q
pageSizeGGR Z
,GGZ [
CancellationTokenGG\ m
cancellationTokenGGn 
=
GGÄ Å
default
GGÇ â
)
GGâ ä
{HH 	
varII 
entitiesII 
=II 
awaitII  
_repositoryBaseII! 0
.II0 1
GetAllPagedAsyncII1 A
(IIA B
pageIIB F
,IIF G
pageSizeIIH P
,IIP Q
cancellationTokenIIR c
)IIc d
;IId e
ifJJ 
(JJ 
!JJ 
entitiesJJ 
.JJ 
AnyJJ 
(JJ 
)JJ 
)JJ  
returnJJ! '
newJJ( +
NoContentResponseJJ, =
(JJ= >
)JJ> ?
;JJ? @
returnKK 
newKK 

OkResponseKK !
<KK! "
IListKK" '
<KK' (
	TGetModelKK( 1
>KK1 2
>KK2 3
(KK3 4
MapperKK4 :
.KK: ;
MapKK; >
<KK> ?
IListKK? D
<KKD E
	TGetModelKKE N
>KKN O
>KKO P
(KKP Q
entitiesKKQ Y
)KKY Z
)KKZ [
;KK[ \
}LL 	
publicNN 
virtualNN 
asyncNN 
TaskNN !
<NN! "
IResponseBaseNN" /
>NN/ 0
GetByIdAsyncNN1 =
(NN= >
TKeyNN> B
idNNC E
,NNE F
CancellationTokenNNG X
cancellationTokenNNY j
=NNk l
defaultNNm t
)NNt u
{OO 	
varPP 
entityPP 
=PP 
awaitPP 
_repositoryBasePP .
.PP. /
GetByIdAsyncPP/ ;
(PP; <
idPP< >
,PP> ?
cancellationTokenPP@ Q
)PPQ R
;PPR S
ifQQ 
(QQ 
entityQQ 
==QQ 
nullQQ 
)QQ 
returnQQ  &
newQQ' *
NoContentResponseQQ+ <
(QQ< =
)QQ= >
;QQ> ?
returnRR 
newRR 

OkResponseRR !
<RR! "
	TGetModelRR" +
>RR+ ,
(RR, -
MapperRR- 3
.RR3 4
MapRR4 7
<RR7 8
	TGetModelRR8 A
>RRA B
(RRB C
entityRRC I
)RRI J
)RRJ K
;RRK L
}SS 	
publicUU 
virtualUU 
asyncUU 
TaskUU !
<UU! "
IResponseBaseUU" /
>UU/ 0 
GetCompleteByIdAsyncUU1 E
(UUE F
TKeyUUF J
idUUK M
,UUM N
CancellationTokenUUO `
cancellationTokenUUa r
=UUs t
defaultUUu |
)UU| }
{VV 	
varWW 
entityWW 
=WW 
awaitWW 
_repositoryBaseWW .
.WW. /
GetByIdAsyncWW/ ;
(WW; <
idWW< >
,WW> ?
cancellationTokenWW@ Q
)WWQ R
;WWR S
ifXX 
(XX 
entityXX 
==XX 
nullXX 
)XX 
returnXX  &
newXX' *
NoContentResponseXX+ <
(XX< =
)XX= >
;XX> ?
returnYY 
newYY 

OkResponseYY !
<YY! "
TModelYY" (
>YY( )
(YY) *
MapperYY* 0
.YY0 1
MapYY1 4
<YY4 5
TModelYY5 ;
>YY; <
(YY< =
entityYY= C
)YYC D
)YYD E
;YYE F
}ZZ 	
public\\ 
virtual\\ 
void\\ 
Delete\\ "
(\\" #
TModel\\# )
model\\* /
)\\/ 0
{]] 	
_repositoryBase^^ 
.^^ 
Delete^^ "
(^^" #
Mapper^^# )
.^^) *
Map^^* -
<^^- .
TEntity^^. 5
>^^5 6
(^^6 7
model^^7 <
)^^< =
)^^= >
;^^> ?
}__ 	
publicaa 
virtualaa 
voidaa 
Deleteaa "
(aa" #
IEnumerableaa# .
<aa. /
TModelaa/ 5
>aa5 6
modelsaa7 =
)aa= >
{bb 	
_repositoryBasecc 
.cc 
Deletecc "
(cc" #
Mappercc# )
.cc) *
Mapcc* -
<cc- .
IEnumerablecc. 9
<cc9 :
TEntitycc: A
>ccA B
>ccB C
(ccC D
modelsccD J
)ccJ K
)ccK L
;ccL M
}dd 	
publicff 
virtualff 
voidff 
Deleteff "
(ff" #
TKeyff# '
idff( *
)ff* +
{gg 	
varhh 
entityhh 
=hh 
newhh 
TEntityhh $
(hh$ %
)hh% &
{hh' (
Idhh) +
=hh, -
idhh. 0
}hh1 2
;hh2 3
_repositoryBaseii 
.ii 
Deleteii "
(ii" #
entityii# )
)ii) *
;ii* +
}jj 	
publicll 
virtualll 
voidll 
Deletell "
(ll" #
IEnumerablell# .
<ll. /
TKeyll/ 3
>ll3 4
idsll5 8
)ll8 9
{mm 	
varnn 
entitiesnn 
=nn 
newnn 
Listnn #
<nn# $
TEntitynn$ +
>nn+ ,
(nn, -
)nn- .
;nn. /
foreachpp 
(pp 
varpp 
idpp 
inpp 
idspp "
)pp" #
entitiesqq 
.qq 
Addqq 
(qq 
newqq  
TEntityqq! (
(qq( )
)qq) *
{qq+ ,
Idqq- /
=qq0 1
idqq2 4
}qq5 6
)qq6 7
;qq7 8
_repositoryBasess 
.ss 
Deletess "
(ss" #
entitiesss# +
)ss+ ,
;ss, -
}tt 	
publicvv 
virtualvv 
asyncvv 
Taskvv !
<vv! "
IResponseBasevv" /
>vv/ 0
Patchvv1 6
(vv6 7
TKeyvv7 ;
idvv< >
,vv> ?
TPatchModelvv@ K
modelvvL Q
)vvQ R
{ww 	
varxx 
modelPropertiesxx 
=xx  !
typeofxx" (
(xx( )
TPatchModelxx) 4
)xx4 5
.xx5 6
GetPropertiesxx6 C
(xxC D
)xxD E
;xxE F
varyy 
entityyy 
=yy 
awaityy 
_repositoryBaseyy .
.yy. /
GetByIdAsyncyy/ ;
(yy; <
idyy< >
)yy> ?
;yy? @
ifzz 
(zz 
entityzz 
==zz 
nullzz 
)zz 
returnzz  &
newzz' *
NoContentResponsezz+ <
(zz< =
)zz= >
;zz> ?
var{{ 
entityProperties{{  
={{! "
typeof{{# )
({{) *
TEntity{{* 1
){{1 2
.{{2 3
GetProperties{{3 @
({{@ A
){{A B
;{{B C
var|| 
updateProperties||  
=||! "
modelProperties||# 2
.||2 3
Where||3 8
(||8 9
p}} 
=>}} 
p}} 
.}} 
GetValue}} 
(}}  
model}}  %
,}}% &
null}}' +
)}}+ ,
!=}}- /
null}}0 4
)}}4 5
;}}5 6
foreach~~ 
(~~ 
var~~ 
modelProperty~~ &
in~~' )
updateProperties~~* :
)~~: ;
{ 
if
ÄÄ 
(
ÄÄ 
!
ÄÄ 
modelProperty
ÄÄ "
.
ÄÄ" #
Name
ÄÄ# '
.
ÄÄ' (
Equals
ÄÄ( .
(
ÄÄ. /
$str
ÄÄ/ 3
)
ÄÄ3 4
)
ÄÄ4 5
{
ÅÅ 
var
ÇÇ 
property
ÇÇ  
=
ÇÇ! "
entityProperties
ÇÇ# 3
.
ÇÇ3 4
SingleOrDefault
ÇÇ4 C
(
ÇÇC D
p
ÇÇD E
=>
ÇÇF H
p
ÇÇI J
.
ÇÇJ K
Name
ÇÇK O
==
ÇÇP R
modelProperty
ÇÇS `
.
ÇÇ` a
Name
ÇÇa e
)
ÇÇe f
;
ÇÇf g
property
ÉÉ 
.
ÉÉ 
SetValue
ÉÉ %
(
ÉÉ% &
entity
ÉÉ& ,
,
ÉÉ, -
modelProperty
ÉÉ. ;
.
ÉÉ; <
GetValue
ÉÉ< D
(
ÉÉD E
model
ÉÉE J
,
ÉÉJ K
null
ÉÉL P
)
ÉÉP Q
)
ÉÉQ R
;
ÉÉR S
}
ÑÑ 
}
ÖÖ 
await
áá 
_repositoryBase
áá !
.
áá! "
UpdateAsync
áá" -
(
áá- .
entity
áá. 4
)
áá4 5
;
áá5 6
return
àà 
new
àà 

OkResponse
àà !
<
àà! "
	TGetModel
àà" +
>
àà+ ,
(
àà, -
Mapper
àà- 3
.
àà3 4
Map
àà4 7
<
àà7 8
	TGetModel
àà8 A
>
ààA B
(
ààB C
entity
ààC I
)
ààI J
)
ààJ K
;
ààK L
}
ââ 	
public
ãã 
void
ãã 
Dispose
ãã 
(
ãã 
)
ãã 
{
åå 	
GC
çç 
.
çç 
SuppressFinalize
çç 
(
çç  
this
çç  $
)
çç$ %
;
çç% &
}
éé 	
}
èè 
}êê ˇ0
XE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Services\Base\MtMServiceBase.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Services %
.% &
Base& *
{ 
public 

abstract 
class 
MtMServiceBase (
<( )!
TStrongEntityMtMModel) >
,> ?
TWeakEntityMtMModel@ S
,S T 
TEntityMtMPatchModelU i
,i j
TEntityMtMModelk z
,z {

TEntityMtM	| Ü
,
Ü á

TStrongKey
à í
,
í ì
TWeakKey
î ú
>
ú ù
:
û ü
IMtMServiceBase
† Ø
<
Ø ∞#
TStrongEntityMtMModel
∞ ≈
,
≈ ∆!
TWeakEntityMtMModel
« ⁄
,
⁄ €"
TEntityMtMPatchModel
‹ 
,
 Ò
TEntityMtMModel
Ú Å
,
Å Ç

TStrongKey
É ç
,
ç é
TWeakKey
è ó
>
ó ò
where !
TStrongEntityMtMModel #
:$ %
MtMEntityModel& 4
,4 5
IMtMEntityModel6 E
,E F
newG J
(J K
)K L
where 
TWeakEntityMtMModel !
:" #
MtMEntityModel$ 2
,2 3
IMtMEntityModel4 C
,C D
newE H
(H I
)I J
where  
TEntityMtMPatchModel "
:# $
MtMEntityModel% 3
,3 4
IMtMEntityModel5 D
,D E
newF I
(I J
)J K
where 
TEntityMtMModel 
: 
MtMEntityModel  .
,. /
IMtMEntityModel0 ?
,? @
newA D
(D E
)E F
where 

TEntityMtM 
: 
	EntityMtM $
,$ %

IMtMEntity& 0
,0 1
new2 5
(5 6
)6 7
{ 
private 
readonly 
IMtMRepositoryBase +
<+ ,

TEntityMtM, 6
,6 7

TStrongKey8 B
,B C
TWeakKeyD L
>L M
_repositoryBaseN ]
;] ^
public 
readonly 
IMapper 
Mapper  &
;& '
	protected 
MtMServiceBase  
(  !
IMtMRepositoryBase! 3
<3 4

TEntityMtM4 >
,> ?

TStrongKey@ J
,J K
TWeakKeyL T
>T U
repositoryBaseV d
,d e
IServiceContext *
serviceContext+ 9
)9 :
{ 	
_repositoryBase 
= 
repositoryBase ,
;, -
Mapper 
= 
serviceContext #
.# $
Mapper$ *
;* +
} 	
public   
virtual   
async   
Task   !
<  ! "
IResponseBase  " /
>  / 0
AddOrDeleteAsync  1 A
(  A B

TStrongKey  B L
id  M O
,  O P
IEnumerable  Q \
<  \ ] 
TEntityMtMPatchModel  ] q
>  q r
models  s y
)  y z
{!! 	
var"" 
	oldModels"" 
="" 
await"" !
_repositoryBase""" 1
.""1 2
GetByStrongIdAsync""2 D
(""D E
id""E G
)""G H
;""H I
var## 
entities## 
=## 
await##  
_repositoryBase##! 0
.##0 1
AddOrDeleteAsync##1 A
(##A B
Mapper##B H
.##H I
Map##I L
<##L M
IEnumerable##M X
<##X Y

TEntityMtM##Y c
>##c d
>##d e
(##e f
models##f l
)##l m
,##m n
Mapper##o u
.##u v
Map##v y
<##y z
IEnumerable	##z Ö
<
##Ö Ü

TEntityMtM
##Ü ê
>
##ê ë
>
##ë í
(
##í ì
	oldModels
##ì ú
)
##ú ù
)
##ù û
;
##û ü
if$$ 
($$ 
entities$$ 
==$$ 
null$$  
)$$  !
return$$" (
new$$) ,
NoContentResponse$$- >
($$> ?
)$$? @
;$$@ A
return%% 
new%% 

OkResponse%% !
<%%! "
IEnumerable%%" -
<%%- .
TEntityMtMModel%%. =
>%%= >
>%%> ?
(%%? @
Mapper%%@ F
.%%F G
Map%%G J
<%%J K
IEnumerable%%K V
<%%V W
TEntityMtMModel%%W f
>%%f g
>%%g h
(%%h i
entities%%i q
)%%q r
)%%r s
;%%s t
}&& 	
public(( 
abstract(( 
Task(( 
<(( 
IResponseBase(( *
>((* +
UpdateAsync((, 7
(((7 8
IEnumerable((8 C
<((C D
TEntityMtMModel((D S
>((S T
entitiesMtM((U `
)((` a
;((a b
public** 
abstract** 
Task** 
<** 
IResponseBase** *
>*** +
GetByIdsAsync**, 9
(**9 :

TStrongKey**: D
sid**E H
,**H I
TWeakKey**J R
wid**S V
,**V W
CancellationToken**X i
cancellationToken**j {
=**| }
default	**~ Ö
)
**Ö Ü
;
**Ü á
public,, 
abstract,, 
Task,, 
<,, 
IResponseBase,, *
>,,* +
GetByStrongIdAsync,,, >
(,,> ?

TStrongKey,,? I
id,,J L
,,,L M
CancellationToken,,N _
cancellationToken,,` q
=,,r s
default,,t {
),,{ |
;,,| }
public.. 
abstract.. 
Task.. 
<.. 
IResponseBase.. *
>..* +
GetByWeakIdAsync.., <
(..< =
TWeakKey..= E
id..F H
,..H I
CancellationToken..J [
cancellationToken..\ m
=..n o
default..p w
)..w x
;..x y
}// 
}00 Ù
YE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\ServiceContext\ServiceContext.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
ServiceContext +
{ 
public 

class 
ServiceContext 
:  !
IServiceContext" 1
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
public		 
ServiceContext		 
(		 
IMapper		 %
mapper		& ,
)		, -
{

 	
Mapper 
= 
mapper 
; 
} 	
} 
} ﬂ
ZE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\ServiceContext\IServiceContext.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
ServiceContext +
{ 
public 

	interface 
IServiceContext $
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
}		 ⁄≈
SE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Mappings\MappingProfile.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Mappings %
{ 
public 

class 
MappingProfile 
:  !
Profile" )
{ 
public 
MappingProfile 
( 
) 
{ 	
UserMappings 
( 
) 
; 
RoleMappings 
( 
) 
; 
ManagerMappings 
( 
) 
; 
EmployeeMappings 
( 
) 
; 
UserRoleMappings   
(   
)   
;   "
UserValidationMappings!! "
(!!" #
)!!# $
;!!$ %
SupplierMappings"" 
("" 
)"" 
;"" 
StockMappings## 
(## 
)## 
;## 
RegisterInMappings$$ 
($$ 
)$$  
;$$  !#
RegisterInStockMappings%% #
(%%# $
)%%$ %
;%%% &
RegisterOutMappings&& 
(&&  
)&&  !
;&&! "$
RegisterOutStockMappings'' $
(''$ %
)''% &
;''& '
StockTypeMappings(( 
((( 
)(( 
;((  
TaskNoteMappings)) 
()) 
))) 
;)) 
}** 	
private,, 
void,, 
TaskNoteMappings,, %
(,,% &
),,& '
{-- 	
	CreateMap.. 
<.. 
TaskNote.. 
,.. 
TaskNoteModel..  -
>..- .
(... /
)../ 0
...0 1

ReverseMap..1 ;
(..; <
)..< =
;..= >
	CreateMap// 
<// 
TaskNote// 
,// 
TaskNoteAddModel//  0
>//0 1
(//1 2
)//2 3
.//3 4

ReverseMap//4 >
(//> ?
)//? @
;//@ A
	CreateMap00 
<00 
TaskNote00 
,00 
TaskNoteGetModel00  0
>000 1
(001 2
)002 3
;003 4
	CreateMap11 
<11 
TaskNote11 
,11 
TaskNotePatchModel11  2
>112 3
(113 4
)114 5
.115 6

ReverseMap116 @
(11@ A
)11A B
;11B C
	CreateMap22 
<22 
TaskNote22 
,22 
TaskNoteUpdateModel22  3
>223 4
(224 5
)225 6
.226 7

ReverseMap227 A
(22A B
)22B C
;22C D
}33 	
private55 
void55 
StockTypeMappings55 &
(55& '
)55' (
{66 	
	CreateMap77 
<77 
	StockType77 
,77  
StockTypeModel77! /
>77/ 0
(770 1
)771 2
.772 3

ReverseMap773 =
(77= >
)77> ?
;77? @
	CreateMap88 
<88 
	StockType88 
,88  
StockTypeAddModel88! 2
>882 3
(883 4
)884 5
.885 6

ReverseMap886 @
(88@ A
)88A B
;88B C
	CreateMap99 
<99 
	StockType99 
,99  
StockTypeGetModel99! 2
>992 3
(993 4
)994 5
;995 6
	CreateMap:: 
<:: 
	StockType:: 
,::  
StockTypePatchModel::! 4
>::4 5
(::5 6
)::6 7
.::7 8

ReverseMap::8 B
(::B C
)::C D
;::D E
	CreateMap;; 
<;; 
	StockType;; 
,;;   
StockTypeUpdateModel;;! 5
>;;5 6
(;;6 7
);;7 8
.;;8 9

ReverseMap;;9 C
(;;C D
);;D E
;;;E F
}<< 	
private>> 
void>> $
RegisterOutStockMappings>> -
(>>- .
)>>. /
{?? 	
	CreateMap@@ 
<@@ 
RegisterOutStock@@ &
,@@& '/
#RegisterOutStockGetRegisterOutModel@@( K
>@@K L
(@@L M
)@@M N
.@@N O

ReverseMap@@O Y
(@@Y Z
)@@Z [
;@@[ \
	CreateMapAA 
<AA 
RegisterOutStockAA &
,AA& ')
RegisterOutStockGetStockModelAA( E
>AAE F
(AAF G
)AAG H
;AAH I
	CreateMapBB 
<BB 
RegisterOutStockBB &
,BB& '&
RegisterOutStockPatchModelBB( B
>BBB C
(BBC D
)BBD E
.BBE F

ReverseMapBBF P
(BBP Q
)BBQ R
;BBR S
	CreateMapCC 
<CC 
RegisterOutStockCC &
,CC& '!
RegisterOutStockModelCC( =
>CC= >
(CC> ?
)CC? @
.CC@ A

ReverseMapCCA K
(CCK L
)CCL M
;CCM N
	CreateMapDD 
<DD 
RegisterOutStockDD &
,DD& '5
)RegisterOutStockGetConsumptionReportModelDD( Q
>DDQ R
(DDR S
)DDS T
.EE 
	ForMemberEE 
(EE 
destEE 
=>EE  "
destEE# '
.EE' (
	StockNameEE( 1
,EE1 2
optEE3 6
=>EE7 9
optEE: =
.EE= >
MapFromEE> E
(EEE F
srcEEF I
=>EEJ L
srcEEM P
.EEP Q
StockEEQ V
.EEV W
NameEEW [
)EE[ \
)EE\ ]
.FF 
	ForMemberFF 
(FF 
destFF 
=>FF  "
destFF# '
.FF' (
StockTypeIdFF( 3
,FF3 4
optFF5 8
=>FF9 ;
optFF< ?
.FF? @
MapFromFF@ G
(FFG H
srcFFH K
=>FFL N
srcFFO R
.FFR S
StockFFS X
.FFX Y
StockTypeIdFFY d
)FFd e
)FFe f
;FFf g
}GG 	
privateII 
voidII 
RegisterOutMappingsII (
(II( )
)II) *
{JJ 	
	CreateMapKK 
<KK 
RegisterOutKK !
,KK! "
RegisterOutModelKK# 3
>KK3 4
(KK4 5
)KK5 6
.KK6 7

ReverseMapKK7 A
(KKA B
)KKB C
;KKC D
	CreateMapLL 
<LL 
RegisterOutLL !
,LL! "
RegisterOutAddModelLL# 6
>LL6 7
(LL7 8
)LL8 9
.LL9 :

ReverseMapLL: D
(LLD E
)LLE F
;LLF G
	CreateMapMM 
<MM 
RegisterOutMM !
,MM! "
RegisterOutGetModelMM# 6
>MM6 7
(MM7 8
)MM8 9
;MM9 :
	CreateMapNN 
<NN 
RegisterOutNN !
,NN! "!
RegisterOutPatchModelNN# 8
>NN8 9
(NN9 :
)NN: ;
.NN; <

ReverseMapNN< F
(NNF G
)NNG H
;NNH I
	CreateMapOO 
<OO 
RegisterOutOO !
,OO! ""
RegisterOutUpdateModelOO# 9
>OO9 :
(OO: ;
)OO; <
.OO< =

ReverseMapOO= G
(OOG H
)OOH I
;OOI J
}PP 	
privateRR 
voidRR #
RegisterInStockMappingsRR ,
(RR, -
)RR- .
{SS 	
	CreateMapTT 
<TT 
RegisterInStockTT %
,TT% &:
.RegisterInStockGetRegisterInRestockReportModelTT' U
>TTU V
(TTV W
)TTW X
;TTX Y
	CreateMapUU 
<UU 
RegisterInStockUU %
,UU% &-
!RegisterInStockGetRegisterInModelUU' H
>UUH I
(UUI J
)UUJ K
;UUK L
	CreateMapVV 
<VV 
RegisterInStockVV %
,VV% &(
RegisterInStockGetStockModelVV' C
>VVC D
(VVD E
)VVE F
;VVF G
	CreateMapWW 
<WW 
RegisterInStockWW %
,WW% &%
RegisterInStockPatchModelWW' @
>WW@ A
(WWA B
)WWB C
.WWC D

ReverseMapWWD N
(WWN O
)WWO P
;WWP Q
	CreateMapXX 
<XX 
RegisterInStockXX %
,XX% & 
RegisterInStockModelXX' ;
>XX; <
(XX< =
)XX= >
.XX> ?

ReverseMapXX? I
(XXI J
)XXJ K
;XXK L
	CreateMapZZ 
<ZZ 
RegisterInStockZZ %
,ZZ% &1
%RegisterInStockGetDonationReportModelZZ' L
>ZZL M
(ZZM N
)ZZN O
.[[ 
	ForMember[[ 
([[ 
dest[[ 
=>[[  "
dest[[# '
.[[' (
	StockName[[( 1
,[[1 2
opt[[3 6
=>[[7 9
opt[[: =
.[[= >
MapFrom[[> E
([[E F
src[[F I
=>[[J L
src[[M P
.[[P Q
Stock[[Q V
.[[V W
Name[[W [
)[[[ \
)[[\ ]
.\\ 
	ForMember\\ 
(\\ 
dest\\ 
=>\\  "
dest\\# '
.\\' (
StockTypeId\\( 3
,\\3 4
opt\\5 8
=>\\9 ;
opt\\< ?
.\\? @
MapFrom\\@ G
(\\G H
src\\H K
=>\\L N
src\\O R
.\\R S
Stock\\S X
.\\X Y
StockTypeId\\Y d
)\\d e
)\\e f
.]] 
	ForMember]] 
(]] 
dest]] 
=>]]  "
dest]]# '
.]]' (
Total]]( -
,]]- .
opt]]/ 2
=>]]3 5
opt]]6 9
.]]9 :
MapFrom]]: A
(]]A B
src]]B E
=>]]F H
src]]I L
.]]L M
Price]]M R
)]]R S
)]]S T
;]]T U
}^^ 	
private`` 
void`` 
RegisterInMappings`` '
(``' (
)``( )
{aa 	
	CreateMapbb 
<bb 

RegisterInbb  
,bb  !
RegisterInModelbb" 1
>bb1 2
(bb2 3
)bb3 4
.bb4 5

ReverseMapbb5 ?
(bb? @
)bb@ A
;bbA B
	CreateMapcc 
<cc 

RegisterIncc  
,cc  !
RegisterInAddModelcc" 4
>cc4 5
(cc5 6
)cc6 7
.cc7 8

ReverseMapcc8 B
(ccB C
)ccC D
;ccD E
	CreateMapdd 
<dd 

RegisterIndd  
,dd  !
RegisterInGetModeldd" 4
>dd4 5
(dd5 6
)dd6 7
;dd7 8
	CreateMapee 
<ee 

RegisterInee  
,ee  !+
RegisterInGetRestockReportModelee" A
>eeA B
(eeB C
)eeC D
;eeD E
	CreateMapff 
<ff 

RegisterInff  
,ff  ! 
RegisterInPatchModelff" 6
>ff6 7
(ff7 8
)ff8 9
.ff9 :

ReverseMapff: D
(ffD E
)ffE F
;ffF G
	CreateMapgg 
<gg 

RegisterIngg  
,gg  !!
RegisterInUpdateModelgg" 7
>gg7 8
(gg8 9
)gg9 :
.gg: ;

ReverseMapgg; E
(ggE F
)ggF G
;ggG H
}hh 	
privatejj 
voidjj 
StockMappingsjj "
(jj" #
)jj# $
{kk 	
	CreateMapll 
<ll 
Stockll 
,ll 

StockModelll '
>ll' (
(ll( )
)ll) *
.ll* +

ReverseMapll+ 5
(ll5 6
)ll6 7
;ll7 8
	CreateMapmm 
<mm 
Stockmm 
,mm 
StockAddModelmm *
>mm* +
(mm+ ,
)mm, -
.mm- .

ReverseMapmm. 8
(mm8 9
)mm9 :
;mm: ;
	CreateMapnn 
<nn 
Stocknn 
,nn 
StockGetModelnn *
>nn* +
(nn+ ,
)nn, -
.oo 
	ForMemberoo 
(oo 
destoo 
=>oo  "
destoo# '
.oo' (
RegisterInStocksoo( 8
,oo8 9
optoo: =
=>oo> @
optooA D
.ooD E
IgnoreooE K
(ooK L
)ooL M
)ooM N
.pp 
	ForMemberpp 
(pp 
destpp 
=>pp  "
destpp# '
.pp' (
RegisterOutStockspp( 9
,pp9 :
optpp; >
=>pp? A
optppB E
.ppE F
IgnoreppF L
(ppL M
)ppM N
)ppN O
;ppO P
	CreateMapqq 
<qq 
Stockqq 
,qq 
StockPatchModelqq ,
>qq, -
(qq- .
)qq. /
.qq/ 0

ReverseMapqq0 :
(qq: ;
)qq; <
;qq< =
	CreateMaprr 
<rr 
Stockrr 
,rr 
StockUpdateModelrr -
>rr- .
(rr. /
)rr/ 0
.rr0 1

ReverseMaprr1 ;
(rr; <
)rr< =
;rr= >
	CreateMapss 
<ss 
Stockss 
,ss &
StockGetRestockReportModelss 7
>ss7 8
(ss8 9
)ss9 :
;ss: ;
}tt 	
privatevv 
voidvv 
SupplierMappingsvv %
(vv% &
)vv& '
{ww 	
	CreateMapxx 
<xx 
Supplierxx 
,xx 
SupplierModelxx  -
>xx- .
(xx. /
)xx/ 0
.xx0 1

ReverseMapxx1 ;
(xx; <
)xx< =
;xx= >
	CreateMapyy 
<yy 
Supplieryy 
,yy 
SupplierAddModelyy  0
>yy0 1
(yy1 2
)yy2 3
.yy3 4

ReverseMapyy4 >
(yy> ?
)yy? @
;yy@ A
	CreateMapzz 
<zz 
Supplierzz 
,zz 
SupplierGetModelzz  0
>zz0 1
(zz1 2
)zz2 3
;zz3 4
	CreateMap{{ 
<{{ 
Supplier{{ 
,{{ 
SupplierPatchModel{{  2
>{{2 3
({{3 4
){{4 5
.{{5 6

ReverseMap{{6 @
({{@ A
){{A B
;{{B C
	CreateMap|| 
<|| 
Supplier|| 
,|| 
SupplierUpdateModel||  3
>||3 4
(||4 5
)||5 6
.||6 7

ReverseMap||7 A
(||A B
)||B C
;||C D
	CreateMap~~ 
<~~ 
Supplier~~ 
,~~ !
SupplierGetDonorModel~~  5
>~~5 6
(~~6 7
)~~7 8
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
Quantity( 0
,0 1
opt
ÄÄ 
=>
ÄÄ 
opt
ÄÄ 
.
ÄÄ 
MapFrom
ÄÄ "
(
ÄÄ" #
src
ÄÄ# &
=>
ÄÄ' )
src
ÅÅ 
.
ÅÅ 
RegistersIn
ÅÅ 
.
ÅÅ  
Sum
ÅÅ  #
(
ÅÅ# $
x
ÅÅ$ %
=>
ÅÅ& (
x
ÅÅ) *
.
ÅÅ* +
RegisterInStocks
ÅÅ+ ;
.
ÅÅ; <
Sum
ÅÅ< ?
(
ÅÅ? @
x
ÅÅ@ A
=>
ÅÅB D
x
ÅÅE F
.
ÅÅF G
Quantity
ÅÅG O
)
ÅÅO P
)
ÅÅP Q
)
ÅÅQ R
)
ÅÅR S
;
ÅÅS T
}
ÇÇ 	
private
ÑÑ 
void
ÑÑ 
EmployeeMappings
ÑÑ %
(
ÑÑ% &
)
ÑÑ& '
{
ÖÖ 	
	CreateMap
ÜÜ 
<
ÜÜ 
Employee
ÜÜ 
,
ÜÜ 
EmployeeModel
ÜÜ  -
>
ÜÜ- .
(
ÜÜ. /
)
ÜÜ/ 0
.
ÜÜ0 1

ReverseMap
ÜÜ1 ;
(
ÜÜ; <
)
ÜÜ< =
;
ÜÜ= >
	CreateMap
áá 
<
áá 
Employee
áá 
,
áá 
EmployeeAddModel
áá  0
>
áá0 1
(
áá1 2
)
áá2 3
.
áá3 4

ReverseMap
áá4 >
(
áá> ?
)
áá? @
;
áá@ A
	CreateMap
àà 
<
àà 
Employee
àà 
,
àà 
EmployeeGetModel
àà  0
>
àà0 1
(
àà1 2
)
àà2 3
;
àà3 4
	CreateMap
ââ 
<
ââ 
Employee
ââ 
,
ââ  
EmployeePatchModel
ââ  2
>
ââ2 3
(
ââ3 4
)
ââ4 5
.
ââ5 6

ReverseMap
ââ6 @
(
ââ@ A
)
ââA B
;
ââB C
	CreateMap
ää 
<
ää 
Employee
ää 
,
ää !
EmployeeUpdateModel
ää  3
>
ää3 4
(
ää4 5
)
ää5 6
.
ää6 7

ReverseMap
ää7 A
(
ääA B
)
ääB C
;
ääC D
	CreateMap
ãã 
<
ãã 
Employee
ãã 
,
ãã <
.GenericUserProfileGetWithoutSensitiveDataModel
ãã  N
>
ããN O
(
ããO P
)
ããP Q
;
ããQ R
	CreateMap
åå 
<
åå 
Employee
åå 
,
åå 2
$EmployeeGetWithoutSensitiveDataModel
åå  D
>
ååD E
(
ååE F
)
ååF G
;
ååG H
}
çç 	
private
èè 
void
èè 
ManagerMappings
èè $
(
èè$ %
)
èè% &
{
êê 	
	CreateMap
ëë 
<
ëë 
Manager
ëë 
,
ëë 
ManagerModel
ëë +
>
ëë+ ,
(
ëë, -
)
ëë- .
.
ëë. /

ReverseMap
ëë/ 9
(
ëë9 :
)
ëë: ;
;
ëë; <
	CreateMap
íí 
<
íí 
Manager
íí 
,
íí 
ManagerAddModel
íí .
>
íí. /
(
íí/ 0
)
íí0 1
.
íí1 2

ReverseMap
íí2 <
(
íí< =
)
íí= >
;
íí> ?
	CreateMap
ìì 
<
ìì 
Manager
ìì 
,
ìì 
ManagerGetModel
ìì .
>
ìì. /
(
ìì/ 0
)
ìì0 1
;
ìì1 2
	CreateMap
îî 
<
îî 
Manager
îî 
,
îî  
ManagerUpdateModel
îî 1
>
îî1 2
(
îî2 3
)
îî3 4
.
îî4 5

ReverseMap
îî5 ?
(
îî? @
)
îî@ A
;
îîA B
	CreateMap
ïï 
<
ïï 
Manager
ïï 
,
ïï <
.GenericUserProfileGetWithoutSensitiveDataModel
ïï M
>
ïïM N
(
ïïN O
)
ïïO P
;
ïïP Q
	CreateMap
ññ 
<
ññ 
Manager
ññ 
,
ññ 1
#ManagerGetWithoutSensitiveDataModel
ññ B
>
ññB C
(
ññC D
)
ññD E
;
ññE F
}
óó 	
private
ôô 
void
ôô $
UserValidationMappings
ôô +
(
ôô+ ,
)
ôô, -
{
öö 	
	CreateMap
õõ 
<
õõ 
UserValidation
õõ $
,
õõ$ %!
UserValidationModel
õõ& 9
>
õõ9 :
(
õõ: ;
)
õõ; <
.
õõ< =

ReverseMap
õõ= G
(
õõG H
)
õõH I
;
õõI J
	CreateMap
úú 
<
úú 
UserValidation
úú $
,
úú$ %$
UserValidationAddModel
úú& <
>
úú< =
(
úú= >
)
úú> ?
.
úú? @

ReverseMap
úú@ J
(
úúJ K
)
úúK L
;
úúL M
	CreateMap
ùù 
<
ùù 
UserValidation
ùù $
,
ùù$ %$
UserValidationGetModel
ùù& <
>
ùù< =
(
ùù= >
)
ùù> ?
;
ùù? @
	CreateMap
ûû 
<
ûû 
UserValidation
ûû $
,
ûû$ %$
UserValidationGetModel
ûû& <
>
ûû< =
(
ûû= >
)
ûû> ?
;
ûû? @
	CreateMap
üü 
<
üü 
UserValidation
üü $
,
üü$ %'
UserValidationUpdateModel
üü& ?
>
üü? @
(
üü@ A
)
üüA B
.
üüB C

ReverseMap
üüC M
(
üüM N
)
üüN O
;
üüO P
	CreateMap
†† 
<
†† 
UserValidation
†† $
,
††$ %8
*UserValidationGetWithoutSensitiveDataModel
††& P
>
††P Q
(
††Q R
)
††R S
;
††S T
	CreateMap
°° 
<
°° !
UserValidationModel
°° )
,
°°) *8
*UserValidationGetWithoutSensitiveDataModel
°°+ U
>
°°U V
(
°°V W
)
°°W X
;
°°X Y
}
¢¢ 	
private
§§ 
void
§§ 
RoleMappings
§§ !
(
§§! "
)
§§" #
{
•• 	
	CreateMap
¶¶ 
<
¶¶ 
Role
¶¶ 
,
¶¶ 
	RoleModel
¶¶ %
>
¶¶% &
(
¶¶& '
)
¶¶' (
.
¶¶( )

ReverseMap
¶¶) 3
(
¶¶3 4
)
¶¶4 5
;
¶¶5 6
	CreateMap
ßß 
<
ßß 
Role
ßß 
,
ßß 
RoleAddModel
ßß (
>
ßß( )
(
ßß) *
)
ßß* +
.
ßß+ ,

ReverseMap
ßß, 6
(
ßß6 7
)
ßß7 8
;
ßß8 9
	CreateMap
®® 
<
®® 
Role
®® 
,
®® 
RoleGetModel
®® (
>
®®( )
(
®®) *
)
®®* +
;
®®+ ,
	CreateMap
©© 
<
©© 
Role
©© 
,
©© 
RoleUpdateModel
©© +
>
©©+ ,
(
©©, -
)
©©- .
.
©©. /

ReverseMap
©©/ 9
(
©©9 :
)
©©: ;
;
©©; <
}
™™ 	
private
¨¨ 
void
¨¨ 
UserRoleMappings
¨¨ %
(
¨¨% &
)
¨¨& '
{
≠≠ 	
	CreateMap
ÆÆ 
<
ÆÆ 
UserRole
ÆÆ 
,
ÆÆ 
UserRoleModel
ÆÆ  -
>
ÆÆ- .
(
ÆÆ. /
)
ÆÆ/ 0
.
ÆÆ0 1

ReverseMap
ÆÆ1 ;
(
ÆÆ; <
)
ÆÆ< =
;
ÆÆ= >
	CreateMap
ØØ 
<
ØØ 
UserRole
ØØ 
,
ØØ "
UserRoleGetRoleModel
ØØ  4
>
ØØ4 5
(
ØØ5 6
)
ØØ6 7
;
ØØ7 8
}
∞∞ 	
private
≤≤ 
void
≤≤ 
UserMappings
≤≤ !
(
≤≤! "
)
≤≤" #
{
≥≥ 	
	CreateMap
¥¥ 
<
¥¥ 
User
¥¥ 
,
¥¥ 
	UserModel
¥¥ %
>
¥¥% &
(
¥¥& '
)
¥¥' (
.
¥¥( )

ReverseMap
¥¥) 3
(
¥¥3 4
)
¥¥4 5
;
¥¥5 6
	CreateMap
µµ 
<
µµ 
User
µµ 
,
µµ 
UserGetModel
µµ (
>
µµ( )
(
µµ) *
)
µµ* +
;
µµ+ ,
	CreateMap
∂∂ 
<
∂∂ 
User
∂∂ 
,
∂∂ 
UserAddModel
∂∂ (
>
∂∂( )
(
∂∂) *
)
∂∂* +
;
∂∂+ ,
	CreateMap
∑∑ 
<
∑∑ 
User
∑∑ 
,
∑∑ 
UserUpdateModel
∑∑ +
>
∑∑+ ,
(
∑∑, -
)
∑∑- .
;
∑∑. /
	CreateMap
∏∏ 
<
∏∏ 
	UserModel
∏∏ 
,
∏∏  
UserUpdateModel
∏∏! 0
>
∏∏0 1
(
∏∏1 2
)
∏∏2 3
;
∏∏3 4
	CreateMap
ππ 
<
ππ 
	UserModel
ππ 
,
ππ  
UserGetModel
ππ! -
>
ππ- .
(
ππ. /
)
ππ/ 0
;
ππ0 1
	CreateMap
∫∫ 
<
∫∫ 
	UserModel
∫∫ 
,
∫∫  
UserSignInModel
∫∫! 0
>
∫∫0 1
(
∫∫1 2
)
∫∫2 3
;
∫∫3 4
	CreateMap
ªª 
<
ªª 
UserAddModel
ªª "
,
ªª" #
User
ªª$ (
>
ªª( )
(
ªª) *
)
ªª* +
.
ºº 
	ForMember
ºº 
(
ºº 
dest
ºº 
=>
ºº  "
dest
ºº# '
.
ºº' (
Password
ºº( 0
,
ºº0 1
opt
ºº2 5
=>
ºº6 8
opt
ºº9 <
.
ºº< =
MapFrom
ºº= D
(
ººD E
src
ººE H
=>
ººI K
string
ººL R
.
ººR S
IsNullOrEmpty
ººS `
(
ºº` a
src
ººa d
.
ººd e
Password
ººe m
)
ººm n
?
ººo p
null
ººq u
:
ººv w
Encodingººx Ä
.ººÄ Å
UTF8ººÅ Ö
.ººÖ Ü
GetBytesººÜ é
(ººé è
RSACipherHelperººè û
.ººû ü
EncryptStringººü ¨
(ºº¨ ≠
srcºº≠ ∞
.ºº∞ ±
Passwordºº± π
)ººπ ∫
)ºº∫ ª
)ººª º
)ººº Ω
;ººΩ æ
	CreateMap
ææ 
<
ææ 
UserUpdateModel
ææ %
,
ææ% &
User
ææ' +
>
ææ+ ,
(
ææ, -
)
ææ- .
.
øø 
	ForMember
øø 
(
øø 
dest
øø 
=>
øø  "
dest
øø# '
.
øø' (
Password
øø( 0
,
øø0 1
opt
øø2 5
=>
øø6 8
opt
øø9 <
.
øø< =
Ignore
øø= C
(
øøC D
)
øøD E
)
øøE F
;
øøF G
}
¡¡ 	
}
¬¬ 
}√√ Ï
[E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Helpers\JsonConfigurationHelper.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Helpers $
{ 
public 

static 
class #
JsonConfigurationHelper /
{ 
public 
static "
JsonSerializerSettings ,
GetJsonSettings- <
(< =
)= >
{		 	
return

 
new

 "
JsonSerializerSettings

 -
{ 
DateFormatString  
=! "
$str# =
,= >
ContractResolver  
=! "
new# &2
&CamelCasePropertyNamesContractResolver' M
(M N
)N O
,O P!
ReferenceLoopHandling %
=& '!
ReferenceLoopHandling( =
.= >
Ignore> D
,D E 
DateTimeZoneHandling $
=% & 
DateTimeZoneHandling' ;
.; <
Utc< ?
} 
; 
} 	
} 
} ˛

ZE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Service\Helpers\ConfirmationCodeHelper.cs
	namespace 	

AslaveCare
 
. 
Service 
. 
Helpers $
{ 
public 

static 
class "
ConfirmationCodeHelper .
{ 
public		 
static		 
string		 $
GenerateConfirmationCode		 5
(		5 6
)		6 7
{

 	
var 
random 
= 
new 
Random #
(# $
)$ %
;% &
const 
string 
chars 
=  
$str! -
;- .
return 
new 
string 
( 

Enumerable (
.( )
Repeat) /
(/ 0
chars0 5
,5 6
ConstantsGeneral7 G
.G H$
CONFIRMATION_CODE_LENGTHH `
)` a
.( )
Select) /
(/ 0
s0 1
=>2 4
s5 6
[6 7
random7 =
.= >
Next> B
(B C
sC D
.D E
LengthE K
)K L
]L M
)M N
.N O
ToArrayO V
(V W
)W X
)X Y
;Y Z
} 	
} 
} 