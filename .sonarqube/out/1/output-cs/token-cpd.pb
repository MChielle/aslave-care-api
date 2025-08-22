Ÿ)
aE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\Whatsapp\Services\WhatsappService.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !
Whatsapp! )
.) *
Services* 2
{ 
public 

class 
WhatsappService  
:! "
IWhatsappService# 3
{		 
private

 
readonly

 
string

 
_urlBase

  (
;

( )
private 
readonly 
string 
_instanceId  +
;+ ,
private 
readonly 
string 
	_clientId  )
;) *
private 
readonly 
string 
_clientSecret  -
;- .
public 
WhatsappService 
( 
string %
urlBase& -
,- .
string/ 5
clientId6 >
,> ?
string@ F
clientSecretG S
,S T
stringU [

instanceId\ f
)f g
{ 	
_urlBase 
= 
urlBase 
; 
	_clientId 
= 
clientId  
;  !
_clientSecret 
= 
clientSecret (
;( )
_instanceId 
= 

instanceId $
;$ %
} 	
public 
bool 
sendMessage 
(  
string  &
number' -
,- .
string/ 5
message6 =
)= >
{ 	
var 
url 
= 
_urlBase 
+  
_instanceId! ,
;, -
bool 
success 
= 
true 
;  
try 
{ 
using 
( 
	WebClient  
client! '
=( )
new* -
	WebClient. 7
(7 8
)8 9
)9 :
{ 
client   
.   
Headers   "
[  " #
HttpRequestHeader  # 4
.  4 5
ContentType  5 @
]  @ A
=  B C
$str  D V
;  V W
client!! 
.!! 
Headers!! "
[!!" #
$str!!# 3
]!!3 4
=!!5 6
	_clientId!!7 @
;!!@ A
client"" 
."" 
Headers"" "
[""" #
$str""# 7
]""7 8
=""9 :
_clientSecret""; H
;""H I
Payload$$ 

payloadObj$$ &
=$$' (
new$$) ,
Payload$$- 4
($$4 5
)$$5 6
{$$7 8
number$$9 ?
=$$@ A
number$$B H
,$$H I
message$$J Q
=$$R S
message$$T [
}$$\ ]
;$$] ^
string%% 
postData%% #
=%%$ %
JsonConvert%%& 1
.%%1 2
SerializeObject%%2 A
(%%A B

payloadObj%%B L
)%%L M
;%%M N
client'' 
.'' 
Encoding'' #
=''$ %
Encoding''& .
.''. /
UTF8''/ 3
;''3 4
string(( 
response(( #
=(($ %
client((& ,
.((, -
UploadString((- 9
(((9 :
url((: =
,((= >
postData((? G
)((G H
;((H I
Console)) 
.)) 
	WriteLine)) %
())% &
response))& .
))). /
;))/ 0
}** 
}++ 
catch,, 
(,, 
WebException,, 
webEx,,  %
),,% &
{-- 
Console.. 
... 
	WriteLine.. !
(..! "
(.." #
(..# $
HttpWebResponse..$ 3
)..3 4
webEx..4 9
...9 :
Response..: B
)..B C
...C D

StatusCode..D N
)..N O
;..O P
Stream// 
stream// 
=// 
(//  !
(//! "
HttpWebResponse//" 1
)//1 2
webEx//2 7
.//7 8
Response//8 @
)//@ A
.//A B
GetResponseStream//B S
(//S T
)//T U
;//U V
StreamReader00 
reader00 #
=00$ %
new00& )
StreamReader00* 6
(006 7
stream007 =
)00= >
;00> ?
String11 
body11 
=11 
reader11 $
.11$ %
	ReadToEnd11% .
(11. /
)11/ 0
;110 1
Console22 
.22 
	WriteLine22 !
(22! "
body22" &
)22& '
;22' (
success33 
=33 
false33 
;33  
}44 
return66 
success66 
;66 
}77 	
public99 
class99 
Payload99 
{:: 	
public;; 
string;; 
number;;  
{;;! "
get;;# &
;;;& '
set;;( +
;;;+ ,
};;- .
public<< 
string<< 
message<< !
{<<" #
get<<$ '
;<<' (
set<<) ,
;<<, -
}<<. /
}== 	
}>> 
}?? à
dE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\Whatsapp\Interfaces\IWhatsappService.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !
Whatsapp! )
.) *

Interfaces* 4
{ 
public 

	interface 
IWhatsappService %
{ 
} 
} ƒ
hE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\SmsDev\Services\SmsDevService.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
SmsDev, 2
.2 3
Services3 ;
{		 
public 

class 
SmsDevService 
:  
ISmsDevService! /
{ 
private 
readonly 
SmsDevConfiguration , 
_smsDevConfiguration- A
;A B
private 
readonly 

HttpClient #
_client$ +
;+ ,
public 
SmsDevService 
( 
SmsDevConfiguration 0
smsDevConfiguration1 D
)D E
{ 	 
_smsDevConfiguration  
=! "
smsDevConfiguration# 6
;6 7
_client 
= 
new 

HttpClient $
($ %
)% &
;& '
} 	
public 
async 
Task 
< 
IResponseBase '
>' (
SendMessage) 4
(4 5
string5 ;
toPhoneNumber< I
,I J
stringK Q
messageR Y
)Y Z
{ 	
return 
await (
SendPushNotificationSmsAsync 5
(5 6
new6 9"
SmsDevSendMessageModel: P
(P Q
)Q R
{ 
Key 
=  
_smsDevConfiguration *
.* +
	AccessKey+ 4
,4 5
Type 
= 
$num 
, 
Number 
= 
toPhoneNumber &
,& '
Msg 
= 
message 
} 
) 
; 
} 	
private!! 
async!! 
Task!! 
<!! 
IResponseBase!! (
>!!( )(
SendPushNotificationSmsAsync!!* F
(!!F G"
SmsDevSendMessageModel!!G ]*
smsDevPushNotificationSmsModel!!^ |
)!!| }
{"" 	
var## 
uri## 
=## 
new## 
Uri## 
(##  
_smsDevConfiguration## 2
.##2 3
BaseUrl##3 :
+##; <
$str##= C
)##C D
;##D E
var$$ 
model$$ 
=$$ 
JsonConvert$$ #
.$$# $
SerializeObject$$$ 3
($$3 4*
smsDevPushNotificationSmsModel$$4 R
)$$R S
;$$S T
var%% 

parameters%% 
=%% 
JsonConvert%% (
.%%( )
DeserializeObject%%) :
<%%: ;

Dictionary%%; E
<%%E F
string%%F L
,%%L M
string%%N T
>%%T U
>%%U V
(%%V W
model%%W \
)%%\ ]
;%%] ^
var&& 
content&& 
=&& 
new&& !
FormUrlEncodedContent&& 3
(&&3 4

parameters&&4 >
)&&> ?
;&&? @
var'' 
response'' 
='' 
await''  
_client''! (
.''( )
	PostAsync'') 2
(''2 3
uri''3 6
,''6 7
content''8 ?
)''? @
;''@ A
if(( 
((( 
response(( 
.(( 
IsSuccessStatusCode(( ,
)((, -
return)) 
new)) 
SmsDevOkResponse)) +
())+ ,
))), -
;))- .
else** 
return++ 
new++ $
SmsDevBadRequestResponse++ 3
(++3 4
)++4 5
;++5 6
},, 	
}-- 
}..  
lE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\SmsDev\Responses\SmsDevOkResponse.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
SmsDev, 2
.2 3
	Responses3 <
{ 
internal 
class 
SmsDevOkResponse #
:$ %
IResponseBase& 3
{ 
public 
bool 
	IsSuccess 
=>  
true! %
;% &
} 
}		 €
tE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\SmsDev\Responses\SmsDevBadRequestResponse.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
SmsDev, 2
.2 3
	Responses3 <
{ 
internal 
class $
SmsDevBadRequestResponse +
:, -
IResponseBase. ;
{ 
public 
bool 
	IsSuccess 
=>  
false! &
;& '
} 
}		 õ
wE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\SmsDev\Models\SmsDevPushNotificationSmsModel.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
SmsDev, 2
.2 3
Models3 9
{ 
public 

class "
SmsDevSendMessageModel '
{ 
public 
string 
Key 
{ 
get 
;  
set! $
;$ %
}& '
public		 
int		 
Type		 
{		 
get		 
;		 
set		 "
;		" #
}		$ %
public

 
string

 
Number

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
string 
Msg 
{ 
get 
;  
set! $
;$ %
}& '
} 
} ™
kE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\SmsDev\Interfaces\ISmsDevService.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
SmsDev, 2
.2 3

Interfaces3 =
{ 
public 

	interface 
ISmsDevService #
{ 
Task 
< 
IResponseBase 
> 
SendMessage '
(' (
string( .
toPhoneNumber/ <
,< =
string> D
messageE L
)L M
;M N
} 
}		 å	
sE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\SmsDev\Configuration\SmsDevConfiguration.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
SmsDev, 2
.2 3
Configuration3 @
{ 
public 

class 
SmsDevConfiguration $
{ 
public 
SmsDevConfiguration "
(" #
string# )
baseUrl* 1
,1 2
string3 9
	accessKey: C
)C D
{ 	
BaseUrl 
= 
baseUrl 
; 
	AccessKey 
= 
	accessKey !
;! "
}		 	
internal 
string 
BaseUrl 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
internal 
string 
	AccessKey !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
} 
} ÇI
iE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\HttpSms\Service\HttpSmsService.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
HttpSms, 3
.3 4
Service4 ;
{ 
public 

class 
HttpSmsService 
:  !
HttpSmsServiceBase" 4
,4 5
IHttpSmsService6 E
{ 
public 
HttpSmsService 
(  
HttpSmsConfiguration 2 
httpSmsConfiguration3 G
)G H
:I J
baseK O
(O P 
httpSmsConfigurationP d
)d e
{ 	
} 	
public 
async 
Task 
< 
IResponseBase '
>' (
SendMessage) 4
(4 5#
HttpSmsSendMessageModel5 L
modelM R
)R S
{ 	
model 
. 
From 
= &
GetPhoneGatewayByCountryId 3
(3 4
model4 9
.9 :
	CountryId: C
)C D
;D E
if 
( 
string 
. 
IsNullOrEmpty $
($ %
model% *
.* +
From+ /
)/ 0
)0 1
return2 8
new9 <%
HttpSmsBadRequestResponse= V
{ 
Message 
= 
ConstantMessages *
.* +"
CRUD_INVALID_PARAMETER+ A
} 
; 
var 
response 
= 
await  
_client! (
.( )
	PostAsync) 2
(2 3
CombineUrlPath 
( !
_httpSmsConfiguration 4
.4 5
BaseUrl5 <
,< =
$str> M
)M N
,N O
new   
StringContent   !
(  ! "
JsonConvert!! 
.!!  
SerializeObject!!  /
(!!/ 0
new!!0 3
{"" 
model## 
.## 
From## "
,##" #
model$$ 
.$$ 
To$$  
,$$  !
model%% 
.%% 
Content%% %
,%%% &
}&& 
)&& 
,&& 
Encoding'' 
.'' 
UTF8'' !
,''! "
$str(( &
))) 
)** 
;** 
var,, 
content,, 
=,, 
await,, 
response,,  (
.,,( )
Content,,) 0
.,,0 1
ReadAsStringAsync,,1 B
(,,B C
),,C D
;,,D E
return.. 
await.. 
GetHttpSmsResponse.. +
<..+ ,(
HttpSmsOkSendMessageResponse.., H
>..H I
(..I J
response..J R
...R S

StatusCode..S ]
,..] ^
content.._ f
)..f g
;..g h
}// 	
public11 
async11 
Task11 
<11 
IResponseBase11 '
>11' (
	GetPhones11) 2
(112 3!
HttpSmsGetPhonesModel113 H
model11I N
)11N O
{22 	
var33 
uri33 
=33 
CombineUrlPath33 $
(33$ %!
_httpSmsConfiguration33% :
.33: ;
BaseUrl33; B
,33B C
$str33D L
)33L M
;33M N
var55 
query55 
=55 
HttpUtility55 #
.55# $
ParseQueryString55$ 4
(554 5
string555 ;
.55; <
Empty55< A
)55A B
;55B C
if77 
(77 
model77 
.77 
Skip77 
!=77 
null77 "
)77" #
query77$ )
[77) *
nameof77* 0
(770 1!
HttpSmsGetPhonesModel771 F
.77F G
Skip77G K
)77K L
]77L M
=77N O
model77P U
.77U V
Skip77V Z
.77Z [
ToString77[ c
(77c d
)77d e
;77e f
if88 
(88 
model88 
.88 
Limit88 
!=88 
null88 #
)88# $
query88% *
[88* +
nameof88+ 1
(881 2!
HttpSmsGetPhonesModel882 G
.88G H
Limit88H M
)88M N
]88N O
=88P Q
model88R W
.88W X
Limit88X ]
.88] ^
ToString88^ f
(88f g
)88g h
;88h i
if99 
(99 
model99 
.99 
Query99 
!=99 
null99 #
)99# $
query99% *
[99* +
nameof99+ 1
(991 2!
HttpSmsGetPhonesModel992 G
.99G H
Query99H M
)99M N
]99N O
=99P Q
model99R W
.99W X
Query99X ]
.99] ^
ToString99^ f
(99f g
)99g h
;99h i
if;; 
(;; 
query;; 
.;; 
HasKeys;; 
(;; 
);; 
);;  
uri<< 
=<< 
uri<< 
+<< 
$str<< 
+<<  !
query<<" '
.<<' (
ToString<<( 0
(<<0 1
)<<1 2
;<<2 3
var>> 
response>> 
=>> 
await>>  
_client>>! (
.>>( )
GetAsync>>) 1
(>>1 2
uri>>2 5
)>>5 6
;>>6 7
var@@ 
content@@ 
=@@ 
await@@ 
response@@  (
.@@( )
Content@@) 0
.@@0 1
ReadAsStringAsync@@1 B
(@@B C
)@@C D
;@@D E
returnBB 
awaitBB 
GetHttpSmsResponseBB +
<BB+ ,&
HttpSmsOkGetPhonesResponseBB, F
>BBF G
(BBG H
responseBBH P
.BBP Q

StatusCodeBBQ [
,BB[ \
contentBB] d
)BBd e
;BBe f
}CC 	
publicEE 
asyncEE 
TaskEE 
<EE 
IResponseBaseEE '
>EE' (
AddOrUpdatePhonesEE) :
(EE: ;$
HttpSmsUpsertPhonesModelEE; S
modelEET Y
)EEY Z
{FF 	
varGG 
uriGG 
=GG 
CombineUrlPathGG $
(GG$ %!
_httpSmsConfigurationGG% :
.GG: ;
BaseUrlGG; B
,GGB C
$strGGD L
)GGL M
;GGM N
varII 
responseII 
=II 
awaitII  
_clientII! (
.II( )
PutAsyncII) 1
(II1 2
uriJJ 
,JJ 
newKK 
StringContentKK !
(KK! "
JsonConvertLL 
.LL  
SerializeObjectLL  /
(LL/ 0
newLL0 3
{MM 
modelNN 
.NN 
Messages_per_minuteNN 1
,NN1 2
modelOO 
.OO 
Max_send_attemptsOO /
,OO/ 0
modelPP 
.PP &
Message_expiration_secondsPP 8
,PP8 9
modelQQ 
.QQ 
Phone_numberQQ *
,QQ* +
modelRR 
.RR 
	Fcm_tokenRR '
}SS 
)SS 
,SS 
EncodingTT 
.TT 
UTF8TT !
,TT! "
$strUU &
)VV 
)WW 
;WW 
varYY 
contentYY 
=YY 
awaitYY 
responseYY  (
.YY( )
ContentYY) 0
.YY0 1
ReadAsStringAsyncYY1 B
(YYB C
)YYC D
;YYD E
return[[ 
await[[ 
GetHttpSmsResponse[[ +
<[[+ ,)
HttpSmsOkUpdatePhonesResponse[[, I
>[[I J
([[J K
response[[K S
.[[S T

StatusCode[[T ^
,[[^ _
content[[` g
)[[g h
;[[h i
}\\ 	
public^^ 
async^^ 
Task^^ 
<^^ 
IResponseBase^^ '
>^^' (
DeletePhones^^) 5
(^^5 6$
HttpSmsDeletePhonesModel^^6 N
model^^O T
)^^T U
{__ 	
var`` 
uri`` 
=`` 
CombineUrlPath`` $
(``$ %!
_httpSmsConfiguration``% :
.``: ;
BaseUrl``; B
,``B C
$"``D F
$str``F M
{``M N
model``N S
.``S T
PhoneId``T [
}``[ \
"``\ ]
)``] ^
;``^ _
varbb 
responsebb 
=bb 
awaitbb  
_clientbb! (
.bb( )
DeleteAsyncbb) 4
(bb4 5
uribb5 8
)bb8 9
;bb9 :
vardd 
contentdd 
=dd 
awaitdd 
responsedd  (
.dd( )
Contentdd) 0
.dd0 1
ReadAsStringAsyncdd1 B
(ddB C
)ddC D
;ddD E
returnff 
awaitff 
GetHttpSmsResponseff +
<ff+ ,$
HttpSmsNoContentResponseff, D
>ffD E
(ffE F
responseffF N
.ffN O

StatusCodeffO Y
,ffY Z
contentff[ b
)ffb c
;ffc d
}gg 	
}hh 
}ii ∂'
rE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\HttpSms\Service\Base\HttpSmsServiceBase.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
HttpSms, 3
.3 4
Service4 ;
.; <
Base< @
{ 
public		 

class		 
HttpSmsServiceBase		 #
{

 
internal 
readonly  
HttpSmsConfiguration .!
_httpSmsConfiguration/ D
;D E
internal 
readonly 

HttpClient $
_client% ,
;, -
internal 
HttpSmsServiceBase #
(# $ 
HttpSmsConfiguration$ 8 
httpSmsConfiguration9 M
)M N
{ 	!
_httpSmsConfiguration !
=" # 
httpSmsConfiguration$ 8
;8 9
_client 
= 
new 

HttpClient $
($ %
)% &
;& '
_client 
. !
DefaultRequestHeaders )
.) *
Add* -
(- .
$str. 9
,9 :!
_httpSmsConfiguration; P
.P Q
HttpSmsTokenQ ]
)] ^
;^ _
} 	
internal 
string 
CombineUrlPath &
(& '
params' -
string. 4
[4 5
]5 6
paramsToCombine7 F
)F G
{ 	
if 
( 
paramsToCombine 
.  
Length  &
==' )
$num* +
)+ ,
return- 3
string4 :
.: ;
Empty; @
;@ A
var 
url 
= 
string 
. 
Join !
(! "
$str" %
,% &
paramsToCombine' 6
)6 7
;7 8
return 
url 
. 
Replace 
( 
$str #
,# $
$str% (
)( )
;) *
} 	
internal 
async 
Task 
< 
IResponseBase )
>) *
GetHttpSmsResponse+ =
<= >
T> ?
>? @
(@ A
HttpStatusCodeA O

statusCodeP Z
,Z [
string\ b
contentc j
)j k
where 
T 
: 
class 
, 
IResponseBase *
{ 	
switch 
( 

statusCode 
) 
{   
case!! 
HttpStatusCode!! #
.!!# $
OK!!$ &
:!!& '
return"" 
JsonConvert"" &
.""& '
DeserializeObject""' 8
<""8 9
T""9 :
>"": ;
(""; <
content""< C
)""C D
;""D E
case$$ 
HttpStatusCode$$ #
.$$# $
	NoContent$$$ -
:$$- .
return%% 
JsonConvert%% &
.%%& '
DeserializeObject%%' 8
<%%8 9
T%%9 :
>%%: ;
(%%; <
content%%< C
)%%C D
;%%D E
case'' 
HttpStatusCode'' #
.''# $

BadRequest''$ .
:''. /
return(( 
JsonConvert(( &
.((& '
DeserializeObject((' 8
<((8 9%
HttpSmsBadRequestResponse((9 R
>((R S
(((S T
content((T [
)(([ \
;((\ ]
case** 
HttpStatusCode** #
.**# $
Unauthorized**$ 0
:**0 1
return++ 
JsonConvert++ &
.++& '
DeserializeObject++' 8
<++8 9'
HttpSmsUnauthorizedResponse++9 T
>++T U
(++U V
content++V ]
)++] ^
;++^ _
case-- 
HttpStatusCode-- #
.--# $
UnprocessableEntity--$ 7
:--7 8
return.. 
JsonConvert.. &
...& '
DeserializeObject..' 8
<..8 9.
"HttpSmsUnprocessableEntityResponse..9 [
>..[ \
(..\ ]
content..] d
)..d e
;..e f
default00 
:00 
return11 
JsonConvert11 &
.11& '
DeserializeObject11' 8
<118 9.
"HttpSmsInternalServerErrorResponse119 [
>11[ \
(11\ ]
content11] d
)11d e
;11e f
}22 
}33 	
internal55 
string55 &
GetPhoneGatewayByCountryId55 2
(552 3
string553 9
	CountryId55: C
)55C D
{66 	
return77 !
_httpSmsConfiguration77 (
.77( )
GatewayPhoneNumber77) ;
.77; <
GetValueOrDefault77< M
(77M N
	CountryId77N W
)77W X
;77X Y
}88 	
}99 
}:: …
E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\HttpSms\Responses\HttpSmsUnprocessableEntityResponse.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
HttpSms, 3
.3 4
	Responses4 =
{ 
internal 
class .
"HttpSmsUnprocessableEntityResponse 5
:6 7
IResponseBase8 E
{ 
public 
bool 
	IsSuccess 
=>  
false! &
;& '
internal 
UnprocessableData "
Data# '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
internal		 
string		 
?		 
Message		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
internal

 
string

 
?

 
Status

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
} 
internal 
class 
UnprocessableData $
{ 
internal 
string 
[ 
] 
? 
AdditionalProp1 *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
internal 
string 
[ 
] 
? 
AdditionalProp2 *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
internal 
string 
[ 
] 
? 
AdditionalProp3 *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
} 
} „
xE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\HttpSms\Responses\HttpSmsUnauthorizedResponse.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
HttpSms, 3
.3 4
	Responses4 =
{ 
internal 
class '
HttpSmsUnauthorizedResponse .
:/ 0
IResponseBase1 >
{ 
public 
bool 
	IsSuccess 
=>  
false! &
;& '
internal 
string 
? 
Data 
{ 
get  #
;# $
set% (
;( )
}* +
internal		 
string		 
?		 
Message		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
internal

 
string

 
?

 
Status

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
} 
} º
zE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\HttpSms\Responses\HttpSmsOkUpdatePhonesResponse.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
HttpSms, 3
.3 4
	Responses4 =
{ 
internal 
class )
HttpSmsOkUpdatePhonesResponse 0
:1 2
IResponseBase3 @
{ 
public 
bool 
	IsSuccess 
=>  
true! %
;% &
[

 	
JsonProperty

	 
(

 
$str

 
)

 
]

 
public 
OkUpdateData 
Data  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
$str 
)  
]  !
public 
string 
? 
Message 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
$str 
) 
]  
public 
string 
? 
Status 
{ 
get  #
;# $
set% (
;( )
}* +
} 
public 

class 
OkUpdateData 
{ 
[ 	
JsonProperty	 
( 
$str "
)" #
]# $
public 
DateTime 
? 

Created_at #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
JsonProperty	 
( 
$str !
)! "
]" #
public 
string 
? 
	Fcm_token  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
? 
Id 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
JsonProperty	 
( 
$str )
)) *
]* +
public   
int   
?   
Max_send_attempts   %
{  & '
get  ( +
;  + ,
set  - 0
;  0 1
}  2 3
["" 	
JsonProperty""	 
("" 
$str"" 2
)""2 3
]""3 4
public## 
int## 
?## &
Message_expiration_seconds## .
{##/ 0
get##1 4
;##4 5
set##6 9
;##9 :
}##; <
[%% 	
JsonProperty%%	 
(%% 
$str%% +
)%%+ ,
]%%, -
public&& 
int&& 
?&& 
Messages_per_minute&& '
{&&( )
get&&* -
;&&- .
set&&/ 2
;&&2 3
}&&4 5
[(( 	
JsonProperty((	 
((( 
$str(( $
)(($ %
]((% &
public)) 
string)) 
?)) 
Phone_number)) #
{))$ %
get))& )
;))) *
set))+ .
;)). /
}))0 1
[++ 	
JsonProperty++	 
(++ 
$str++ "
)++" #
]++# $
public,, 
DateTime,, 
?,, 

Updated_at,, #
{,,$ %
get,,& )
;,,) *
set,,+ .
;,,. /
},,0 1
[.. 	
JsonProperty..	 
(.. 
$str.. 
)..  
]..  !
public// 
string// 
?// 
User_id// 
{//  
get//! $
;//$ %
set//& )
;//) *
}//+ ,
}00 
}11 ˘=
yE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\HttpSms\Responses\HttpSmsOkSendMessageResponse.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
HttpSms, 3
.3 4
	Responses4 =
{ 
internal 
class (
HttpSmsOkSendMessageResponse /
:0 1
IResponseBase2 ?
{ 
public 
bool 
	IsSuccess 
=>  
true! %
;% &
[

 	
JsonProperty

	 
(

 
$str

 
)

 
]

 
internal 

OkSendData 
Data  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
$str 
)  
]  !
internal 
string 
Message 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
JsonProperty	 
( 
$str 
) 
]  
internal 
string 
Status 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
internal 
class 

OkSendData 
{ 
[ 	
JsonProperty	 
( 
$str %
)% &
]& '
internal 
bool 
? 
Can_be_polled $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
JsonProperty	 
( 
$str 
)  
]  !
internal 
string 
? 
Contact  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
$str 
)  
]  !
internal 
string 
? 
Content  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
$str "
)" #
]# $
internal   
DateTime   
?   

Created_at   %
{  & '
get  ( +
;  + ,
set  - 0
;  0 1
}  2 3
["" 	
JsonProperty""	 
("" 
$str"" $
)""$ %
]""% &
internal## 
DateTime## 
?## 
Delivered_at## '
{##( )
get##* -
;##- .
set##/ 2
;##2 3
}##4 5
[%% 	
JsonProperty%%	 
(%% 
$str%% "
)%%" #
]%%# $
internal&& 
DateTime&& 
?&& 

Expired_at&& %
{&&& '
get&&( +
;&&+ ,
set&&- 0
;&&0 1
}&&2 3
[(( 	
JsonProperty((	 
((( 
$str(( !
)((! "
]((" #
internal)) 
DateTime)) 
?)) 
	Failed_at)) $
{))% &
get))' *
;))* +
set)), /
;))/ 0
}))1 2
[++ 	
JsonProperty++	 
(++ 
$str++ &
)++& '
]++' (
internal,, 
string,, 
?,, 
Failure_reason,, '
{,,( )
get,,* -
;,,- .
set,,/ 2
;,,2 3
},,4 5
[.. 	
JsonProperty..	 
(.. 
$str.. 
).. 
].. 
internal// 
string// 
?// 
Id// 
{// 
get// !
;//! "
set//# &
;//& '
}//( )
[11 	
JsonProperty11	 
(11 
$str11 )
)11) *
]11* +
internal22 
DateTime22 
?22 
Last_attempted_at22 ,
{22- .
get22/ 2
;222 3
set224 7
;227 8
}229 :
[44 	
JsonProperty44	 
(44 
$str44 )
)44) *
]44* +
internal55 
int55 
?55 
Max_send_attempts55 '
{55( )
get55* -
;55- .
set55/ 2
;552 3
}554 5
[77 	
JsonProperty77	 
(77 
$str77 '
)77' (
]77( )
internal88 
DateTime88 
?88 
Order_timestamp88 *
{88+ ,
get88- 0
;880 1
set882 5
;885 6
}887 8
[:: 	
JsonProperty::	 
(:: 
$str:: 
):: 
]:: 
internal;; 
string;; 
?;; 
Owner;; 
{;;  
get;;! $
;;;$ %
set;;& )
;;;) *
};;+ ,
[== 	
JsonProperty==	 
(== 
$str== #
)==# $
]==$ %
internal>> 
DateTime>> 
?>> 
Received_at>> &
{>>' (
get>>) ,
;>>, -
set>>. 1
;>>1 2
}>>3 4
[@@ 	
JsonProperty@@	 
(@@ 
$str@@ +
)@@+ ,
]@@, -
internalAA 
DateTimeAA 
?AA 
Request_received_atAA .
{AA/ 0
getAA1 4
;AA4 5
setAA6 9
;AA9 :
}AA; <
[CC 	
JsonPropertyCC	 
(CC 
$strCC $
)CC$ %
]CC% &
internalDD 
DateTimeDD 
?DD 
Scheduled_atDD '
{DD( )
getDD* -
;DD- .
setDD/ 2
;DD2 3
}DD4 5
[FF 	
JsonPropertyFF	 
(FF 
$strFF *
)FF* +
]FF+ ,
internalGG 
intGG 
?GG 
Send_attempt_countGG (
{GG) *
getGG+ .
;GG. /
setGG0 3
;GG3 4
}GG5 6
[II 	
JsonPropertyII	 
(II 
$strII !
)II! "
]II" #
internalJJ 
intJJ 
?JJ 
	Send_timeJJ 
{JJ  !
getJJ" %
;JJ% &
setJJ' *
;JJ* +
}JJ, -
[LL 	
JsonPropertyLL	 
(LL 
$strLL 
)LL  
]LL  !
internalMM 
DateTimeMM 
?MM 
Sent_atMM "
{MM# $
getMM% (
;MM( )
setMM* -
;MM- .
}MM/ 0
[OO 	
JsonPropertyOO	 
(OO 
$strOO 
)OO 
]OO  
internalPP 
stringPP 
?PP 
StatusPP 
{PP  !
getPP" %
;PP% &
setPP' *
;PP* +
}PP, -
[RR 	
JsonPropertyRR	 
(RR 
$strRR 
)RR 
]RR 
internalSS 
stringSS 
?SS 
TypeSS 
{SS 
getSS  #
;SS# $
setSS% (
;SS( )
}SS* +
[UU 	
JsonPropertyUU	 
(UU 
$strUU "
)UU" #
]UU# $
internalVV 
DateTimeVV 
?VV 

Updated_atVV %
{VV& '
getVV( +
;VV+ ,
setVV- 0
;VV0 1
}VV2 3
[XX 	
JsonPropertyXX	 
(XX 
$strXX 
)XX  
]XX  !
internalYY 
stringYY 
?YY 
User_idYY  
{YY! "
getYY# &
;YY& '
setYY( +
;YY+ ,
}YY- .
}ZZ 
}[[ ∆
wE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\HttpSms\Responses\HttpSmsOkGetPhonesResponse.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
HttpSms, 3
.3 4
	Responses4 =
{ 
public 

class &
HttpSmsOkGetPhonesResponse +
:, -
IResponseBase. ;
{ 
public 
bool 
	IsSuccess 
=>  
true! %
;% &
[

 	
JsonProperty

	 
(

 
$str

 
)

 
]

 
internal 
	OkGetData 
[ 
] 
Data !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
JsonProperty	 
( 
$str 
)  
]  !
internal 
string 
Message 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
JsonProperty	 
( 
$str 
) 
]  
internal 
string 
Status 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
public 

class 
	OkGetData 
{ 
[ 	
JsonProperty	 
( 
$str 
) 
] 
internal 
string 
? 
Id 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
JsonProperty	 
( 
$str 
)  
]  !
internal 
string 
? 
User_id  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
$str !
)! "
]" #
internal 
string 
? 
	Fcm_token "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
JsonProperty	 
( 
$str $
)$ %
]% &
internal   
string   
?   
Phone_number   %
{  & '
get  ( +
;  + ,
set  - 0
;  0 1
}  2 3
["" 	
JsonProperty""	 
("" 
$str"" +
)""+ ,
]"", -
internal## 
int## 
?## 
Messages_per_minute## )
{##* +
get##, /
;##/ 0
set##1 4
;##4 5
}##6 7
[%% 	
JsonProperty%%	 
(%% 
$str%% )
)%%) *
]%%* +
internal&& 
int&& 
?&& 
Max_send_attempts&& '
{&&( )
get&&* -
;&&- .
set&&/ 2
;&&2 3
}&&4 5
[(( 	
JsonProperty((	 
((( 
$str(( 2
)((2 3
]((3 4
internal)) 
int)) 
?)) &
Message_expiration_seconds)) 0
{))1 2
get))3 6
;))6 7
set))8 ;
;)); <
}))= >
[++ 	
JsonProperty++	 
(++ 
$str++ "
)++" #
]++# $
internal,, 
DateTime,, 
?,, 

Created_at,, %
{,,& '
get,,( +
;,,+ ,
set,,- 0
;,,0 1
},,2 3
[.. 	
JsonProperty..	 
(.. 
$str.. "
).." #
]..# $
internal// 
DateTime// 
?// 

Updated_at// %
{//& '
get//( +
;//+ ,
set//- 0
;//0 1
}//2 3
}00 
}11 ˇ
uE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\HttpSms\Responses\HttpSmsNoContentResponse.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
HttpSms, 3
.3 4
	Responses4 =
{ 
internal 
class $
HttpSmsNoContentResponse +
:, -
IResponseBase. ;
{ 
public 
bool 
	IsSuccess 
=>  
true! %
;% &
[

 	
JsonProperty

	 
(

 
$str

 
)

  
]

  !
public 
string 
? 
Message 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
$str 
) 
]  
public 
string 
? 
Status 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ò	
E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\HttpSms\Responses\HttpSmsInternalServerErrorResponse.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
HttpSms, 3
.3 4
	Responses4 =
{ 
internal 
class .
"HttpSmsInternalServerErrorResponse 5
:6 7
IResponseBase8 E
{ 
public 
bool 
	IsSuccess 
=>  
false! &
;& '
[

 	
JsonProperty

	 
(

 
$str

 
)

  
]

  !
internal 
string 
? 
Message  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
$str 
) 
]  
internal 
string 
? 
Status 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ó
vE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\HttpSms\Responses\HttpSmsBadRequestResponse.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
HttpSms, 3
.3 4
	Responses4 =
{ 
internal 
class %
HttpSmsBadRequestResponse ,
:- .
IResponseBase/ <
{ 
public 
bool 
	IsSuccess 
=>  
false! &
;& '
[

 	
JsonProperty

	 
(

 
$str

 
)

 
]

 
internal 
string 
? 
Data 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
JsonProperty	 
( 
$str 
)  
]  !
internal 
string 
? 
Message  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
$str 
) 
]  
internal 
string 
? 
Status 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} Ú
rE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\HttpSms\Models\HttpSmsUpsertPhonesModel.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
HttpSms, 3
.3 4
Models4 :
{ 
public 

class $
HttpSmsUpsertPhonesModel )
{ 
[ 	
JsonProperty	 
( 
$str !
)! "
]" #
public 
string 
	Fcm_token 
{  !
get" %
;% &
set' *
;* +
}, -
[

 	
JsonProperty

	 
(

 
$str

 )
)

) *
]

* +
public 
int 
Max_send_attempts $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
JsonProperty	 
( 
$str 2
)2 3
]3 4
public 
int &
Message_expiration_seconds -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
[ 	
JsonProperty	 
( 
$str +
)+ ,
], -
public 
int 
Messages_per_minute &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
JsonProperty	 
( 
$str $
)$ %
]% &
public 
string 
Phone_number "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} †
qE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\HttpSms\Models\HttpSmsSendMessageModel.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
HttpSms, 3
.3 4
Models4 :
{ 
public 

class #
HttpSmsSendMessageModel (
{ 
public 
string 
From 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
To 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	CountryId 
{  !
get" %
;% &
set' *
;* +
}, -
}		 
}

 ß
oE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\HttpSms\Models\HttpSmsGetPhonesModel.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
HttpSms, 3
.3 4
Models4 :
{ 
public 

class !
HttpSmsGetPhonesModel &
{ 
public 
int 
? 
Skip 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
? 
Query 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
? 
Limit 
{ 
get 
;  
set! $
;$ %
}& '
} 
}		 ’
rE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\HttpSms\Models\HttpSmsDeletePhonesModel.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
HttpSms, 3
.3 4
Models4 :
{ 
public 

class $
HttpSmsDeletePhonesModel )
{ 
public 
Guid 
PhoneId 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ﬂ	
mE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\HttpSms\Interfaces\IHttpSmsService.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
HttpSms, 3
.3 4

Interfaces4 >
{ 
public 

	interface 
IHttpSmsService $
{ 
Task 
< 
IResponseBase 
> 
DeletePhones (
(( )$
HttpSmsDeletePhonesModel) A
modelB G
)G H
;H I
Task

 
<

 
IResponseBase

 
>

 
	GetPhones

 %
(

% &!
HttpSmsGetPhonesModel

& ;
model

< A
)

A B
;

B C
Task 
< 
IResponseBase 
> 
SendMessage '
(' (#
HttpSmsSendMessageModel( ?
model@ E
)E F
;F G
Task 
< 
IResponseBase 
> 
AddOrUpdatePhones -
(- .$
HttpSmsUpsertPhonesModel. F
modelG L
)L M
;M N
} 
} ≠
uE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\HttpSms\Configuration\HttpSmsConfiguration.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
HttpSms, 3
.3 4
Configuration4 A
{ 
public 

class  
HttpSmsConfiguration %
{ 
public  
HttpSmsConfiguration #
(# $
string$ *
httpSmsToken+ 7
,7 8
string9 ?
baseUrl@ G
,G H

DictionaryI S
<S T
stringT Z
,Z [
string\ b
>b c
gatewayPhoneNumberd v
)v w
{ 	
HttpSmsToken 
= 
httpSmsToken '
;' (
BaseUrl 
= 
baseUrl 
; 
GatewayPhoneNumber		 
=		  
gatewayPhoneNumber		! 3
;		3 4
}

 	
internal 
string 
HttpSmsToken $
{% &
get' *
;* +
private, 3
set4 7
;7 8
}9 :
internal 
string 
BaseUrl 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
internal 

Dictionary 
< 
string "
," #
string$ *
>* +
GatewayPhoneNumber, >
{? @
getA D
;D E
privateF M
setN Q
;Q R
}S T
} 
} Â 
hE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\Devino\Services\DevinoService.cs
	namespace		 	

AslaveCare		
 
.		 
Integration		  
.		  !

SmsMessage		! +
.		+ ,
Devino		, 2
.		2 3
Services		3 ;
{

 
public 

class 
DevinoService 
:  
IDevinoService! /
{ 
private 
readonly 

HttpClient #
_client$ +
;+ ,
private 
readonly 
DevinoConfiguration , 
_devinoConfiguration- A
;A B
public 
DevinoService 
( 
DevinoConfiguration 0
devinoConfiguration1 D
)D E
{ 	
_client 
= 
new 

HttpClient $
($ %
)% &
;& ' 
_devinoConfiguration  
=! "
devinoConfiguration# 6
;6 7
} 	
public 
async 
Task 
< 
IResponseBase '
>' (
SendMessage) 4
(4 5
string5 ;
toPhoneNumber< I
,I J
stringK Q
messageR Y
)Y Z
{ 	
var 
sms 
= 
new 
List 
< 
DevinoMessageModel 1
>1 2
(2 3
)3 4
;4 5
sms 
. 
Add 
( 
new 
DevinoMessageModel *
(* +
)+ ,
{ 
from 
=  
_devinoConfiguration +
.+ ,
ApplicationName, ;
,; <
to 
= 
toPhoneNumber "
," #
text 
= 
message 
} 
) 
; 
return   
await   (
SendPushNotificationSmsAsync   5
(  5 6
new  6 9"
DevinoSendMessageModel  : P
(  P Q
)  Q R
{!! 
messages"" 
="" 
sms"" 
}## 
)## 
;## 
}$$ 	
private&& 
async&& 
Task&& 
<&& 
IResponseBase&& (
>&&( )(
SendPushNotificationSmsAsync&&* F
(&&F G"
DevinoSendMessageModel&&G ]-
!smsDevinoPushNotificationSmsModel&&^ 
)	&& Ä
{'' 	
var(( 
uri(( 
=(( 
new(( 
Uri(( 
(((  
_devinoConfiguration(( 2
.((2 3
BaseUrl((3 :
)((: ;
;((; <
var)) 
model)) 
=)) 
JsonConvert)) #
.))# $
SerializeObject))$ 3
())3 4-
!smsDevinoPushNotificationSmsModel))4 U
)))U V
;))V W
var** 
content** 
=** 
new** 
StringContent** +
(**+ ,
model**, 1
,**1 2
null**3 7
,**7 8
$str**9 K
)**K L
;**L M
_client++ 
.++ !
DefaultRequestHeaders++ )
.++) *
Authorization++* 7
=++8 9
new++: =%
AuthenticationHeaderValue++> W
(++W X
$str++X ]
,++] ^ 
_devinoConfiguration++_ s
.++s t
	AccessKey++t }
)++} ~
;++~ 
var,, 
response,, 
=,, 
await,,  
_client,,! (
.,,( )
	PostAsync,,) 2
(,,2 3
uri,,3 6
,,,6 7
content,,8 ?
),,? @
;,,@ A
if-- 
(-- 
response-- 
.-- 
IsSuccessStatusCode-- ,
)--, -
return.. 
new.. 
DevinoOkResponse.. +
(..+ ,
).., -
;..- .
else// 
return00 
new00 $
DevinoBadRequestResponse00 3
(003 4
)004 5
;005 6
}11 	
}22 
}33 »
lE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\Devino\Responses\DevinoOkResponse.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
Devino, 2
.2 3
	Responses3 <
{ 
public 

class 
DevinoOkResponse !
:" #
IResponseBase$ 1
{ 
public 
bool 
	IsSuccess 
=>  
true! %
;% &
} 
}		 Ÿ
tE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\Devino\Responses\DevinoBadRequestResponse.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
Devino, 2
.2 3
	Responses3 <
{ 
public 

class $
DevinoBadRequestResponse )
:* +
IResponseBase, 9
{ 
public 
bool 
	IsSuccess 
=>  
false! &
;& '
} 
}		 á
hE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\Devino\Models\DevinoSendModel.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
Devino, 2
.2 3
Models3 9
{ 
public 

class "
DevinoSendMessageModel '
{ 
public 
List 
< 
DevinoMessageModel &
>& '
messages( 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
} 
} Ù
kE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\Devino\Models\DevinoMessageModel.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
Devino, 2
.2 3
Models3 9
{ 
public 

class 
DevinoMessageModel #
{ 
public 
string 
from 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
to 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
text 
{ 
get  
;  !
set" %
;% &
}' (
} 
}		 ™
kE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\Devino\Interfaces\IDevinoService.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
Devino, 2
.2 3

Interfaces3 =
{ 
public 

	interface 
IDevinoService #
{ 
Task 
< 
IResponseBase 
> 
SendMessage '
(' (
string( .
toPhoneNumber/ <
,< =
string> D
messageE L
)L M
;M N
} 
}		 ﬁ
sE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\SmsMessage\Devino\Configuration\DevinoConfiguration.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !

SmsMessage! +
.+ ,
Devino, 2
.2 3
Configuration3 @
{ 
public 

class 
DevinoConfiguration $
{ 
public 
DevinoConfiguration "
(" #
string# )
baseUrl* 1
,1 2
string3 9
	accessKey: C
,C D
stringE K
applicationNameL [
)[ \
{ 	
BaseUrl 
= 
baseUrl 
; 
	AccessKey 
= 
	accessKey !
;! "
ApplicationName		 
=		 
applicationName		 -
;		- .
}

 	
internal 
string 
ApplicationName '
{( )
get* -
;- .
private/ 6
set7 :
;: ;
}< =
internal 
string 
BaseUrl 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
internal 
string 
	AccessKey !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
} 
} è
jE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\Google\OAuth2\Services\GoogleOAuth2Service.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !
Google! '
.' (
OAuth2( .
.. /
Services/ 7
{		 
public

 

class

 
GoogleOAuth2Service

 $
:

% &
GoogleServiceBase

' 8
,

8 9 
IGoogleOAuth2Service

: N
{ 
public 
GoogleOAuth2Service "
(" #%
GoogleOAuth2Configuration# <%
googleOAuth2Configuration= V
)V W
: 
base 
( %
googleOAuth2Configuration ,
), -
{ 	
} 	
public 
async 
Task 
< 
IResponseBase '
>' (-
!ValidateGoogleTokenAuthentication) J
(J K
stringK Q
tokenR W
)W X
{ 	
var 
url 
= 
CombineUrlPath $
($ %
_baseUrl% -
,- .
$str/ :
): ;
;; <
var 
query 
= 
HttpUtility #
.# $
ParseQueryString$ 4
(4 5
string5 ;
.; <
Empty< A
)A B
;B C
query 
[ 
$str  
]  !
=" #
token$ )
;) *
if 
( 
query 
. 
HasKeys 
( 
) 
)  
url 
+= 
$str 
+ 
query "
." #
ToString# +
(+ ,
), -
;- .
var 
response 
= 
await  
_httpClient! ,
., -
GetAsync- 5
(5 6
url6 9
)9 :
;: ;
var 
content 
= 
await 
response  (
.( )
Content) 0
.0 1
ReadAsStringAsync1 B
(B C
)C D
;D E
return 
await 
GetHttpResponse (
<( )
GoogleOkResponse) 9
>9 :
(: ;
response; C
.C D

StatusCodeD N
,N O
contentP W
)W X
;X Y
}   	
}!! 
}"" Ÿ
mE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\Google\OAuth2\Services\Base\GoogleServiceBase.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !
Google! '
.' (
OAuth2( .
.. /
Services/ 7
.7 8
Base8 <
{ 
public		 

class		 
GoogleServiceBase		 "
{

 
internal 
readonly 
string  
_baseUrl! )
;) *
internal 
readonly 

HttpClient $
_httpClient% 0
;0 1
internal 
GoogleServiceBase "
(" #%
GoogleOAuth2Configuration# <%
googleOAuth2Configuration= V
)V W
{ 	
_baseUrl 
= %
googleOAuth2Configuration 0
.0 1
_baseUrl1 9
;9 :
_httpClient 
= 
new 

HttpClient (
(( )
)) *
;* +
} 	
internal 
async 
Task 
< 
IResponseBase )
>) *
GetHttpResponse+ :
<: ;
T; <
>< =
(= >
HttpStatusCode> L

statusCodeM W
,W X
stringY _
content` g
)g h
where 
T 
: 
class 
, 
IResponseBase *
{ 	
switch 
( 

statusCode 
) 
{ 
case 
HttpStatusCode #
.# $
OK$ &
:& '
return 
JsonConvert &
.& '
DeserializeObject' 8
<8 9
T9 :
>: ;
(; <
content< C
)C D
;D E
case 
HttpStatusCode #
.# $

BadRequest$ .
:. /
return 
JsonConvert &
.& '
DeserializeObject' 8
<8 9$
GoogleBadRequestResponse9 Q
>Q R
(R S
contentS Z
)Z [
;[ \
default   
:   
return!! 
JsonConvert!! &
.!!& '
DeserializeObject!!' 8
<!!8 9-
!GoogleInternalServerErrorResponse!!9 Z
>!!Z [
(!![ \
content!!\ c
)!!c d
;!!d e
}"" 
}## 	
internal%% 
string%% 
CombineUrlPath%% &
(%%& '
params%%' -
string%%. 4
[%%4 5
]%%5 6
paramsToCombine%%7 F
)%%F G
{&& 	
if'' 
('' 
paramsToCombine'' 
.''  
Length''  &
==''' )
$num''* +
)''+ ,
return''- 3
string''4 :
.'': ;
Empty''; @
;''@ A
var(( 
url(( 
=(( 
string(( 
.(( 
Join(( !
(((! "
$str((" %
,((% &
paramsToCombine((' 6
)((6 7
;((7 8
return)) 
url)) 
.)) 
Replace)) 
()) 
$str)) #
,))# $
$str))% (
)))( )
;))) *
}** 	
}++ 
},, Ë
oE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\Google\OAuth2\Models\Responses\GoogleOkResponse.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !
Google! '
.' (
OAuth2( .
.. /
Models/ 5
.5 6
	Responses6 ?
{ 
public 

class 
GoogleOkResponse !
:" #
IResponseBase$ 1
{ 
public 
bool 
	IsSuccess 
=>  
true! %
;% &
public 
string 
	issued_to 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
string		 
audience		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
string

 
user_id

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
string 
scope 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
? 

expires_in 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
email 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
? 
verified_email #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
access_type !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ê
ÄE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\Google\OAuth2\Models\Responses\GoogleInternalServerErrorResponse.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !
Google! '
.' (
OAuth2( .
.. /
Models/ 5
.5 6
	Responses6 ?
{ 
internal 
class -
!GoogleInternalServerErrorResponse 4
:5 6
IResponseBase7 D
{ 
public 
bool 
	IsSuccess 
=>  
false! &
;& '
} 
}		 ª
wE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\Google\OAuth2\Models\Responses\GoogleBadRequestResponse.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !
Google! '
.' (
OAuth2( .
.. /
Models/ 5
.5 6
	Responses6 ?
{ 
internal 
class $
GoogleBadRequestResponse +
:, -
IResponseBase. ;
{ 
public 
bool 
	IsSuccess 
=>  
false! &
;& '
public 
string 
error 
{ 
get !
;! "
set# &
;& '
}( )
public		 
string		 
error_description		 '
{		( )
get		* -
;		- .
set		/ 2
;		2 3
}		4 5
}

 
} Ñ
mE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\Google\OAuth2\Interfaces\IGoogleOAuth2Service.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !
Google! '
.' (
OAuth2( .
.. /

Interfaces/ 9
{ 
public 

	interface  
IGoogleOAuth2Service )
{ 
Task 
< 
IResponseBase 
> -
!ValidateGoogleTokenAuthentication =
(= >
string> D
tokenE J
)J K
;K L
} 
}		 …
vE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\Google\OAuth2\Configurations\GoogleOAuth2Configuration.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !
Google! '
.' (
OAuth2( .
.. /
Configurations/ =
{ 
public 

class %
GoogleOAuth2Configuration *
{ 
public 
string 
_baseUrl 
{  
get! $
;$ %
set& )
;) *
}+ ,
public %
GoogleOAuth2Configuration (
(( )
string) /
baseUrl0 7
)7 8
{ 	
_baseUrl		 
=		 
baseUrl		 
;		 
}

 	
} 
} Ù
aE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\Firebase\Services\FireBaseService.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !
Firebase! )
.) *
Services* 2
{ 
public 

class 
FirebaseService  
:! "
IFirebaseService# 3
{ 
public 
async 
Task 
< 
bool 
> 
SendMessage  +
(+ ,
string, 2%
fireBaseCloudMessageToken3 L
,L M
PriorityN V
priorityW _
,_ `
stringa g
titleh m
,m n
stringo u
messagev }
,} ~

Dictionary	 â
<
â ä
string
ä ê
,
ê ë
string
í ò
>
ò ô
data
ö û
)
û ü
{		 	
try

 
{ 
data 
. 
Add 
( 
$str '
,' (
$str) E
)E F
;F G
var 
response 
= 
await $
FirebaseMessaging% 6
.6 7
DefaultInstance7 F
.F G
	SendAsyncG P
(P Q
newQ T
MessageU \
{ 
Token 
= %
fireBaseCloudMessageToken 5
,5 6
Android 
= 
new !
AndroidConfig" /
{ 
Priority  
=! "
priority# +
,+ ,

TimeToLive "
=# $
TimeSpan% -
.- .
	FromHours. 7
(7 8
$num8 9
)9 :
} 
, 
Apns 
= 
new 

ApnsConfig )
{ 
Aps 
= 
new !
Aps" %
{ 
Badge !
=" #
$num$ %
,% &
Sound !
=" #
$str$ -
} 
, 
Headers 
=  !
new" %

Dictionary& 0
<0 1
string1 7
,7 8
string9 ?
>? @
{ 
{ 
$str +
,+ ,
$str- 3
}4 5
,5 6
{   
$str   )
,  ) *
$str  + /
}  0 1
,  1 2
}!! 
}"" 
,"" 
Data## 
=## 
data## 
,##  
Notification$$  
=$$! "
new$$# &
Notification$$' 3
{%% 
Title&& 
=&& 
title&&  %
,&&% &
Body'' 
='' 
message'' &
}(( 
})) 
))) 
;)) 
return** 
true** 
;** 
}++ 
catch,, 
(,, 
	Exception,, 
ex,, 
),,  
{-- 
return.. 
false.. 
;.. 
}// 
}00 	
}11 
}22 è
dE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\Firebase\Interfaces\IFireBaseService.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !
Firebase! )
.) *

Interfaces* 4
{ 
public 

	interface 
IFirebaseService %
{ 
Task 
< 
bool 
> 
SendMessage 
( 
string %%
fireBaseCloudMessageToken& ?
,? @
PriorityA I
priorityJ R
,R S
stringT Z
title[ `
,` a
stringb h
messagei p
,p q

Dictionaryr |
<| }
string	} É
,
É Ñ
string
Ö ã
>
ã å
data
ç ë
)
ë í
;
í ì
} 
}		 ƒw
`E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\Amazon\S3\Services\S3FileService.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !
Amazon! '
.' (
S3( *
.* +
Services+ 3
{ 
public 

class 
S3FileService 
:  
IS3FileService! /
{ 
private 
readonly 
	IAmazonS3 "
_client# *
;* +
private 
readonly 
S3Configuration (
_s3Configuration) 9
;9 :
public 
S3FileService 
( 
S3Configuration ,
s3Configuration- <
)< =
{ 	
_s3Configuration 
= 
s3Configuration .
;. /
_client 
= 
new 
AmazonS3Client (
(( )
_s3Configuration) 9
.9 :
AccessKeyId: E
,E F
_s3ConfigurationG W
.W X
AccessSecretKeyX g
,g h
_s3Configurationi y
.y z
RegionEndpoint	z à
)
à â
;
â ä
} 	
public 
async 
Task 
< %
S3FileUploadResponseModel 3
>3 4
UploadImageToS35 D
(D E
stringE K
fileNameL T
,T U
stringV \
fileBase64String] m
,m n
ImageFileTypeo |
imageFileType	} ä
)
ä ã
{ 	
return 
await 
CreateAndUploadFile ,
(, -
fileName- 5
,5 6
fileBase64String7 G
,G H
FileTypeI Q
.Q R
ImageR W
,W X
imageFileTypeY f
)f g
;g h
} 	
public 
async 
Task 
DeleteImageFromS3 +
(+ ,
string, 2
fileName3 ;
,; <
ImageFileType= J
imageFileTypeK X
)X Y
{   	
fileName!! 
=!! 
Path!! 
.!! 
GetFileName!! '
(!!' (
fileName!!( 0
)!!0 1
;!!1 2
await"" 

DeleteFile"" 
("" 
fileName"" %
,""% &
FileType""' /
.""/ 0
Image""0 5
,""5 6
imageFileType""7 D
)""D E
;""E F
}## 	
private)) 
async)) 
Task)) 
<)) 
ListObjectsResponse)) .
>)). /
GetFilesFromFolder))0 B
())B C
string))C I

folderPath))J T
)))T U
{** 	
return++ 
await++ 
_client++  
.++  !
ListObjectsAsync++! 1
(++1 2
_s3Configuration++2 B
.++B C

BucketName++C M
,++M N

folderPath++O Y
)++Y Z
;++Z [
},, 	
private.. 
async.. 
Task.. 
<.. %
S3FileUploadResponseModel.. 4
>..4 5
CreateAndUploadFile..6 I
(..I J
string..J P
fileName..Q Y
,..Y Z
string..[ a
fileBase64String..b r
,..r s
FileType..t |

s3FileType	..} á
,
..á à
ImageFileType
..â ñ
imageFileType
..ó §
)
..§ •
{// 	
var00 
	fileBytes00 
=00 
GetFileBytes00 (
(00( )
fileBase64String00) 9
)009 :
;00: ;
var22 
fullFileName22 
=22 7
+GetFileNameAndExtensionFromBase64FileString22 J
(22J K
fileName22K S
,22S T
fileBase64String22U e
)22e f
;22f g
CreateLocalFile44 
(44 
fullFileName44 (
,44( )
	fileBytes44* 3
)443 4
;444 5
var66 
s3FolderPath66 
=66 
GetBucketFilePath66 0
(660 1

s3FileType661 ;
,66; <
imageFileType66= J
)66J K
;66K L
return88 
await88 

UploadFile88 #
(88# $
fullFileName88$ 0
,880 1
s3FolderPath882 >
)88> ?
;88? @
}99 	
private;; 
static;; 
void;; 
CreateLocalFile;; +
(;;+ ,
string;;, 2
fileName;;3 ;
,;;; <
byte;;= A
[;;A B
];;B C
	fileBytes;;D M
);;M N
{<< 	
File== 
.== 
WriteAllBytes== 
(== 
fileName== '
,==' (
	fileBytes==) 2
)==2 3
;==3 4
}>> 	
private@@ 
static@@ 
string@@ 7
+GetFileNameAndExtensionFromBase64FileString@@ I
(@@I J
string@@J P
fileName@@Q Y
,@@Y Z
string@@[ a
fileBytesString@@b q
)@@q r
{AA 	
RegexBB 
regexBB 
=BB 
newBB 
RegexBB #
(BB# $
$strBB$ 6
)BB6 7
;BB7 8
varCC  
fileTypeAndExtensionCC $
=CC% &
regexCC' ,
.CC, -
MatchCC- 2
(CC2 3
fileBytesStringCC3 B
)CCB C
.CCC D
ToStringCCD L
(CCL M
)CCM N
.CCN O
SplitCCO T
(CCT U
$charCCU X
)CCX Y
;CCY Z
returnDD 
$"DD 
{DD 
fileNameDD 
}DD 
$strDD  
{DD  ! 
fileTypeAndExtensionDD! 5
?DD5 6
[DD6 7
$numDD7 8
]DD8 9
}DD9 :
"DD: ;
;DD; <
}EE 	
privateGG 
staticGG 
byteGG 
[GG 
]GG 
GetFileBytesGG *
(GG* +
stringGG+ 1
fileBytesStringGG2 A
)GGA B
{HH 	
varII 
regexII 
=II 
newII 
RegexII !
(II! "
$strII" 8
)II8 9
;II9 :
fileBytesStringJJ 
=JJ 
regexJJ #
.JJ# $
ReplaceJJ$ +
(JJ+ ,
fileBytesStringJJ, ;
,JJ; <
stringJJ= C
.JJC D
EmptyJJD I
)JJI J
;JJJ K
returnKK 
ConvertKK 
.KK 
FromBase64StringKK +
(KK+ ,
fileBytesStringKK, ;
)KK; <
;KK< =
}LL 	
privateNN 
asyncNN 
TaskNN 
<NN %
S3FileUploadResponseModelNN 4
>NN4 5

UploadFileNN6 @
(NN@ A
stringNNA G
fileNameNNH P
,NNP Q
stringNNR X
s3FolderPathNNY e
)NNe f
{OO 	
varPP 
uploadResponsePP 
=PP  
newPP! $%
S3FileUploadResponseModelPP% >
(PP> ?
)PP? @
;PP@ A
varQQ 
fullPathQQ 
=QQ 
stringQQ !
.QQ! "
ConcatQQ" (
(QQ( )
s3FolderPathQQ) 5
,QQ5 6
$strQQ7 :
,QQ: ;
fileNameQQ< D
)QQD E
;QQE F
trySS 
{TT 
varUU 
requestUU 
=UU 
newUU !
PutObjectRequestUU" 2
{VV 

BucketNameWW 
=WW  $
GetBucketEnvironmentNameWW! 9
(WW9 :
)WW: ;
,WW; <
KeyXX 
=XX 
fullPathXX "
,XX" #
FilePathYY 
=YY 
fileNameYY '
,YY' (
	CannedACLZZ 
=ZZ 
S3CannedACLZZ  +
.ZZ+ ,

PublicReadZZ, 6
,ZZ6 7
}[[ 
;[[ 
var]] 
response]] 
=]] 
await]] $
_client]]% ,
.]], -
PutObjectAsync]]- ;
(]]; <
request]]< C
)]]C D
;]]D E
uploadResponse__ 
.__ 
HttpStatusCode__ -
=__. /
response__0 8
.__8 9
HttpStatusCode__9 G
;__G H
if`` 
(`` 
response`` 
.`` 
HttpStatusCode`` +
==``, .
System``/ 5
.``5 6
Net``6 9
.``9 :
HttpStatusCode``: H
.``H I
OK``I K
)``K L
{aa 
uploadResponsebb "
.bb" #
Messagebb# *
=bb+ ,
responsebb- 5
.bb5 6
ETagbb6 :
;bb: ;
uploadResponsecc "
.cc" #
	S3FileUrlcc# ,
=cc- .#
GetUploadedFileFullPathcc/ F
(ccF G
fullPathccG O
)ccO P
;ccP Q
}dd 
returnhh 
uploadResponsehh %
;hh% &
}ii 
catchjj 
(jj 
	Exceptionjj 
ejj 
)jj 
{kk 
uploadResponsemm 
.mm 
Messagemm &
=mm' (
emm) *
.mm* +
Messagemm+ 2
;mm2 3
returnnn 
uploadResponsenn %
;nn% &
}oo 
finallypp 
{qq 
Filerr 
.rr 
Deleterr 
(rr 
$"rr 
$strrr  
{rr  !
fileNamerr! )
}rr) *
"rr* +
)rr+ ,
;rr, -
}ss 
}tt 	
privatevv 
stringvv #
GetUploadedFileFullPathvv .
(vv. /
stringvv/ 5
fullPathvv6 >
)vv> ?
{ww 	
returnxx 
stringxx 
.xx 
Concatxx  
(xx  !
$"xx! #
$strxx# +
{xx+ ,"
GetEnvironmentFromRulexx, B
(xxB C
)xxC D
}xxD E
$strxxE V
{xxV W
_s3ConfigurationxxW g
.xxg h
RegionEndpointxxh v
.xxv w

SystemName	xxw Å
}
xxÅ Ç
$str
xxÇ ê
"
xxê ë
,
xxë í
$str
xxì ñ
,
xxñ ó
fullPath
xxò †
)
xx† °
;
xx° ¢
}yy 	
private{{ 
string{{ $
GetBucketEnvironmentName{{ /
({{/ 0
){{0 1
{|| 	
return}} 
string}} 
.}} 
Concat}}  
(}}  !"
GetEnvironmentFromRule}}! 7
(}}7 8
)}}8 9
,}}9 :
$str}}; >
,}}> ?
_s3Configuration}}@ P
.}}P Q

BucketName}}Q [
)}}[ \
;}}\ ]
}~~ 	
private
ÄÄ 
string
ÄÄ $
GetEnvironmentFromRule
ÄÄ -
(
ÄÄ- .
)
ÄÄ. /
{
ÅÅ 	
switch
ÇÇ 
(
ÇÇ 
EnvironmentHelper
ÇÇ %
.
ÇÇ% &
Environment
ÇÇ& 1
)
ÇÇ1 2
{
ÉÉ 
case
ÑÑ 
EnvironmentType
ÑÑ $
.
ÑÑ$ %

Production
ÑÑ% /
:
ÑÑ/ 0
case
ÖÖ 
EnvironmentType
ÖÖ $
.
ÖÖ$ %
Homologation
ÖÖ% 1
:
ÖÖ1 2
return
ÜÜ 
EnvironmentHelper
ÜÜ ,
.
ÜÜ, -
Environment
ÜÜ- 8
.
ÜÜ8 9
GetDescription
ÜÜ9 G
(
ÜÜG H
)
ÜÜH I
.
ÜÜI J
ToLower
ÜÜJ Q
(
ÜÜQ R
)
ÜÜR S
;
ÜÜS T
default
àà 
:
àà 
return
ââ 
EnvironmentType
ââ *
.
ââ* +
Development
ââ+ 6
.
ââ6 7
GetDescription
ââ7 E
(
ââE F
)
ââF G
.
ââG H
ToLower
ââH O
(
ââO P
)
ââP Q
;
ââQ R
}
ää 
}
ãã 	
private
çç 
string
çç 
GetBucketFilePath
çç (
(
çç( )
FileType
çç) 1

s3FileType
çç2 <
,
çç< =
ImageFileType
çç> K
imageFileType
ççL Y
)
ççY Z
{
éé 	
switch
èè 
(
èè 

s3FileType
èè 
)
èè 
{
êê 
case
ëë 
FileType
ëë 
.
ëë 
Image
ëë #
:
ëë# $
switch
íí 
(
íí 
imageFileType
íí )
)
íí) *
{
ìì 
case
îî 
ImageFileType
îî *
.
îî* +
Logo
îî+ /
:
îî/ 0
return
ïï "
string
ïï# )
.
ïï) *
Concat
ïï* 0
(
ïï0 1
_s3Configuration
ïï1 A
.
ïïA B
BucketImageName
ïïB Q
,
ïïQ R
$str
ïïS V
,
ïïV W
_s3Configuration
ïïX h
.
ïïh i!
BucketImageLogoName
ïïi |
)
ïï| }
;
ïï} ~
case
óó 
ImageFileType
óó *
.
óó* +
Photo
óó+ 0
:
óó0 1
return
òò "
string
òò# )
.
òò) *
Concat
òò* 0
(
òò0 1
_s3Configuration
òò1 A
.
òòA B
BucketImageName
òòB Q
,
òòQ R
$str
òòS V
,
òòV W
_s3Configuration
òòX h
.
òòh i"
BucketImagePhotoName
òòi }
)
òò} ~
;
òò~ 
case
öö 
ImageFileType
öö *
.
öö* +
Gallery
öö+ 2
:
öö2 3
return
õõ "
string
õõ# )
.
õõ) *
Concat
õõ* 0
(
õõ0 1
_s3Configuration
õõ1 A
.
õõA B
BucketImageName
õõB Q
,
õõQ R
$str
õõS V
,
õõV W
_s3Configuration
õõX h
.
õõh i$
BucketImageGalleryName
õõi 
)õõ Ä
;õõÄ Å
default
ùù 
:
ùù  
throw
ûû !
new
ûû" %%
NotImplementedException
ûû& =
(
ûû= >
)
ûû> ?
;
ûû? @
}
üü 
default
†† 
:
†† 
return
°° 
string
°° !
.
°°! "
Empty
°°" '
;
°°' (
}
¢¢ 
}
££ 	
private
•• 
async
•• 
Task
•• 

DeleteFile
•• %
(
••% &
string
••& ,
fileName
••- 5
,
••5 6
FileType
••7 ?

s3FileType
••@ J
,
••J K
ImageFileType
••L Y
imageFileType
••Z g
)
••g h
{
¶¶ 	
var
ßß 
s3FolderPath
ßß 
=
ßß 
GetBucketFilePath
ßß 0
(
ßß0 1

s3FileType
ßß1 ;
,
ßß; <
imageFileType
ßß= J
)
ßßJ K
;
ßßK L
await
©© 
_client
©© 
.
©© 
DeleteAsync
©© %
(
©©% &&
GetBucketEnvironmentName
©©& >
(
©©> ?
)
©©? @
,
©©@ A
string
©©B H
.
©©H I
Concat
©©I O
(
©©O P
s3FolderPath
©©P \
,
©©\ ]
$str
©©^ a
,
©©a b
fileName
©©c k
)
©©k l
,
©©l m
null
©©n r
)
©©r s
;
©©s t
}
™™ 	
}
≠≠ 
}ÆÆ å
iE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\Amazon\S3\Model\S3FileUploadResponseModel.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !
Amazon! '
.' (
S3( *
.* +
Model+ 0
{ 
public 

class %
S3FileUploadResponseModel *
{ 
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
HttpStatusCode		 
HttpStatusCode		 ,
{		- .
get		/ 2
;		2 3
set		4 7
;		7 8
}		9 :
public 
string 
	S3FileUrl 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ¿
cE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\Amazon\S3\Interfaces\IS3FileService.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !
Amazon! '
.' (
S3( *
.* +

Interfaces+ 5
{ 
public 

	interface 
IS3FileService #
{ 
Task 
DeleteImageFromS3 
( 
string %
fileName& .
,. /
ImageFileType0 =
imageFileType> K
)K L
;L M
Task

 
<

 %
S3FileUploadResponseModel

 &
>

& '
UploadImageToS3

( 7
(

7 8
string

8 >
fileName

? G
,

G H
string

I O
fileBase64String

P `
,

` a
ImageFileType

b o
imageFileType

p }
)

} ~
;

~ 
} 
} ±
hE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Integration\Amazon\S3\Configurations\S3Configuration.cs
	namespace 	

AslaveCare
 
. 
Integration  
.  !
Amazon! '
.' (
S3( *
.* +
Configurations+ 9
{ 
public 

class 
S3Configuration  
{ 
internal 
string 
AccessKeyId #
{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
internal 
string 
AccessSecretKey '
{( )
get* -
;- .
private/ 6
set7 :
;: ;
}< =
internal		 
string		 

BucketName		 "
{		# $
get		% (
;		( )
private		* 1
set		2 5
;		5 6
}		7 8
internal

 
string

 
BucketImageName

 '
{

( )
get

* -
;

- .
private

/ 6
set

7 :
;

: ;
}

< =
internal 
string 
BucketImageLogoName +
{, -
get. 1
;1 2
private3 :
set; >
;> ?
}@ A
internal 
string  
BucketImagePhotoName ,
{- .
get/ 2
;2 3
private4 ;
set< ?
;? @
}A B
internal 
string "
BucketImageGalleryName .
{/ 0
get1 4
;4 5
private6 =
set> A
;A B
}C D
internal 
RegionEndpoint 
RegionEndpoint  .
{/ 0
get1 4
;4 5
private6 =
set> A
;A B
}C D
public 
S3Configuration 
( 
string %
accessKeyId& 1
,1 2
string3 9
accessSecretKey: I
,I J
stringK Q

bucketNameR \
,\ ]
string^ d
bucketImageNamee t
,t u
stringv | 
bucketImageLogoName	} ê
,
ê ë
string
í ò"
bucketImagePhotoName
ô ≠
,
≠ Æ
string
Ø µ$
bucketImageGalleryName
∂ Ã
,
Ã Õ
string
Œ ‘
regionEndpoint
’ „
)
„ ‰
{ 	
AccessKeyId 
= 
accessKeyId %
;% &
AccessSecretKey 
= 
accessSecretKey -
;- .

BucketName 
= 

bucketName #
;# $
BucketImageName 
= 
bucketImageName -
;- .
BucketImageLogoName 
=  !
bucketImageLogoName" 5
;5 6 
BucketImagePhotoName  
=! " 
bucketImagePhotoName# 7
;7 8"
BucketImageGalleryName "
=# $"
bucketImageGalleryName% ;
;; <
RegionEndpoint 
= 
RegionEndpoint +
.+ ,
GetBySystemName, ;
(; <
regionEndpoint< J
)J K
;K L
} 	
} 
} 