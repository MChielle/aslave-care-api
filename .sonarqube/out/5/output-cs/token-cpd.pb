π
`E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Validators\User\UserUpdateModelValidator.cs
	namespace 	

AslaveCare
 
. 
Api 
. 

Validators #
.# $
User$ (
{ 
public 

class $
UserUpdateModelValidator )
:* +
AbstractValidator, =
<= >
UserUpdateModel> M
>M N
{ 
public		 $
UserUpdateModelValidator		 '
(		' (
)		( )
{

 	
RuleFor 
( 
x 
=> 
x 
. 
Email  
)  !
. 
EmailAddress 
( 
) 
.  
WithMessage  +
(+ ,
$str, 3
.3 4"
MessageForInvalidValue4 J
(J K
)K L
)L M
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
$str( /
./ 0#
MessageForEmptyProperty0 G
(G H
)H I
)I J
;J K
RuleFor 
( 
x 
=> 
x 
. 
PhoneNumber &
)& '
. 
Matches 
( 
$str  
)  !
.! "
WithMessage" -
(- .
$str. ;
.; <"
MessageForInvalidValue< R
(R S
)S T
)T U
. 
MaximumLength 
( 
$num !
)! "
;" #
} 	
} 
} ˆ

]E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Validators\User\UserAddModelValidator.cs
	namespace 	

AslaveCare
 
. 
Api 
. 

Validators #
.# $
User$ (
{ 
public 

class !
UserAddModelValidator &
:' (
AbstractValidator) :
<: ;
UserAddModel; G
>G H
{ 
public		 !
UserAddModelValidator		 $
(		$ %
)		% &
{

 	
RuleFor 
( 
x 
=> 
x 
. 
Email  
)  !
. 
EmailAddress 
( 
) 
.  
WithMessage  +
(+ ,
nameof, 2
(2 3
UserAddModel3 ?
.? @
Email@ E
)E F
.F G"
MessageForInvalidValueG ]
(] ^
)^ _
)_ `
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
nameof( .
(. /
UserAddModel/ ;
.; <
Email< A
)A B
.B C#
MessageForEmptyPropertyC Z
(Z [
)[ \
)\ ]
;] ^
} 	
} 
} Ì
jE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Validators\SignUp\SignUpPhoneRequestModelValidator.cs
	namespace 	

AslaveCare
 
. 
Api 
. 

Validators #
.# $
SignUp$ *
{ 
public 

class ,
 SignUpPhoneRequestModelValidator 1
:2 3
AbstractValidator4 E
<E F
SignUpPhoneModelF V
>V W
{		 
public

 ,
 SignUpPhoneRequestModelValidator

 /
(

/ 0
)

0 1
{ 	
RuleFor 
( 
x 
=> 
x 
. 
PhoneNumber &
)& '
. 
Matches 
( 
$str $
)$ %
.% &
WithMessage& 1
(1 2
nameof2 8
(8 9
SignUpPhoneModel9 I
.I J
PhoneNumberJ U
)U V
.V W"
MessageForInvalidValueW m
(m n
)n o
)o p
. 
NotEmpty 
( 
) 
.  
WithMessage  +
(+ ,
nameof, 2
(2 3
SignUpPhoneModel3 C
.C D
PhoneNumberD O
)O P
.P Q#
MessageForEmptyPropertyQ h
(h i
)i j
)j k
. 
MaximumLength "
(" #
$num# %
)% &
;& '
RuleFor 
( 
x 
=> 
x 
. 
Password #
)# $
. 
NotNull 
( 
) 
. 
WithMessage &
(& '
nameof' -
(- .
SignUpPhoneModel. >
.> ?
Password? G
)G H
.H I"
MessageForNullPropertyI _
(_ `
)` a
)a b
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
nameof( .
(. /
SignUpPhoneModel/ ?
.? @
Password@ H
)H I
.I J#
MessageForEmptyPropertyJ a
(a b
)b c
)c d
. 
MinimumLength 
( 
ConstantsGeneral /
./ 0#
PASSWORD_MINIMUN_LENGTH0 G
)G H
;H I
} 	
} 
} Ò
jE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Validators\SignUp\SignUpEmailRequestModelValidator.cs
	namespace 	

AslaveCare
 
. 
Api 
. 

Validators #
.# $
SignUp$ *
{ 
public 

class ,
 SignUpEmailRequestModelValidator 1
:2 3
AbstractValidator4 E
<E F
SignUpEmailModelF V
>V W
{		 
public

 ,
 SignUpEmailRequestModelValidator

 /
(

/ 0
)

0 1
{ 	
RuleFor 
( 
x 
=> 
x 
. 
Email  
)  !
. 
EmailAddress 
( 
) 
.  
WithMessage  +
(+ ,
nameof, 2
(2 3
SignUpEmailModel3 C
.C D
EmailD I
)I J
.J K"
MessageForInvalidValueK a
(a b
)b c
)c d
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
nameof( .
(. /
SignUpEmailModel/ ?
.? @
Email@ E
)E F
.F G#
MessageForEmptyPropertyG ^
(^ _
)_ `
)` a
;a b
RuleFor 
( 
x 
=> 
x 
. 
Password #
)# $
. 
NotNull 
( 
) 
. 
WithMessage &
(& '
nameof' -
(- .
SignUpEmailModel. >
.> ?
Password? G
)G H
.H I"
MessageForNullPropertyI _
(_ `
)` a
)a b
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
nameof( .
(. /
SignUpEmailModel/ ?
.? @
Email@ E
)E F
.F G#
MessageForEmptyPropertyG ^
(^ _
)_ `
)` a
. 
MinimumLength 
( 
ConstantsGeneral /
./ 0#
PASSWORD_MINIMUN_LENGTH0 G
)G H
;H I
} 	
} 
} ¯
tE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Validators\SignIn\SignInRecoverPasswordRequestModelValidator.cs
	namespace 	

AslaveCare
 
. 
Api 
. 

Validators #
.# $
SignIn$ *
{ 
public 

class 6
*SignInRecoverPasswordRequestModelValidator ;
:< =
AbstractValidator> O
<O P-
!SignInRecoverPasswordRequestModelP q
>q r
{ 
public		 6
*SignInRecoverPasswordRequestModelValidator		 9
(		9 :
)		: ;
{

 	
RuleFor 
( 
x 
=> 
x 
. 
Email  
)  !
. 
EmailAddress 
( 
) 
.  
WithMessage  +
(+ ,
nameof, 2
(2 3-
!SignInRecoverPasswordRequestModel3 T
.T U
EmailU Z
)Z [
.[ \"
MessageForInvalidValue\ r
(r s
)s t
)t u
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
nameof( .
(. /-
!SignInRecoverPasswordRequestModel/ P
.P Q
EmailQ V
)V W
.W X#
MessageForEmptyPropertyX o
(o p
)p q
)q r
;r s
} 	
} 
} È
sE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Validators\SignIn\SignInEmailConfirmationCodeModelValidator.cs
	namespace 	

AslaveCare
 
. 
Api 
. 

Validators #
.# $
SignIn$ *
{ 
public 

class 5
)SignInEmailConfirmationCodeModelValidator :
:; <
AbstractValidator= N
<N O,
 SignInEmailConfirmationCodeModelO o
>o p
{		 
public

 5
)SignInEmailConfirmationCodeModelValidator

 8
(

8 9
)

9 :
{ 	
RuleFor 
( 
x 
=> 
x 
. 
Email  
)  !
. 
EmailAddress 
( 
) 
.  
WithMessage  +
(+ ,
nameof, 2
(2 3,
 SignInEmailConfirmationCodeModel3 S
.S T
EmailT Y
)Y Z
.Z ["
MessageForInvalidValue[ q
(q r
)r s
)s t
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
nameof( .
(. /,
 SignInEmailConfirmationCodeModel/ O
.O P
EmailP U
)U V
.V W#
MessageForEmptyPropertyW n
(n o
)o p
)p q
;q r
RuleFor 
( 
x 
=> 
x 
. 
ConfirmationCode +
)+ ,
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
nameof( .
(. /,
 SignInEmailConfirmationCodeModel/ O
.O P
ConfirmationCodeP `
)` a
.a b#
MessageForEmptyPropertyb y
(y z
)z {
){ |
. 
NotNull 
( 
) 
. 
WithMessage &
(& '
nameof' -
(- .,
 SignInEmailConfirmationCodeModel. N
.N O
ConfirmationCodeO _
)_ `
.` a"
MessageForNullPropertya w
(w x
)x y
)y z
. 
Matches 
( 
$str  
)  !
.! "
WithMessage" -
(- .
nameof. 4
(4 5,
 SignInEmailConfirmationCodeModel5 U
.U V
ConfirmationCodeV f
)f g
.g h!
MessageForNumericOnlyh }
(} ~
)~ 
)	 Ä
. 
Length 
( 
ConstantsGeneral (
.( )$
CONFIRMATION_CODE_LENGTH) A
)A B
;B C
} 	
} 
} ≥
UE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Validators\Base\ValidatorBase.cs
	namespace 	

AslaveCare
 
. 
Api 
. 

Validators #
.# $
Base$ (
{ 
public 

class 
ValidatorBase 
< 
TModel %
,% &
TKey' +
>+ ,
:- .
AbstractValidator/ @
<@ A
TModelA G
>G H
where 
TModel 
: 
EntityModel "
<" #
TKey# '
>' (
,( )
IEntityModel* 6
<6 7
TKey7 ;
>; <
{		 
public

 
void

 
KeyValidation

 !
(

! "
)

" #
{ 	
RuleFor 
( 
x 
=> 
x 
. 
Id 
) 
. 
NotNull 
( 
) 
. 
WithMessage &
(& '-
!FluentValidationMessageExtensions' H
.H I"
MessageForNullPropertyI _
(_ `
$str` d
)d e
)e f
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (-
!FluentValidationMessageExtensions( I
.I J#
MessageForEmptyPropertyJ a
(a b
$strb f
)f g
)g h
;h i
} 	
} 
} Í8
?E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Startup.cs
	namespace 	

AslaveCare
 
. 
Api 
{ 
public 

class 
Startup 
{ 
private 
readonly 
ILogger  
_logger! (
;( )
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
Startup 
( 
IConfiguration %
configuration& 3
,3 4
IWebHostEnvironment5 H
environmentI T
,T U
ILoggerV ]
<] ^
Startup^ e
>e f
loggerg m
)m n
{ 	
Configuration 
= 
configuration )
;) *
EnvironmentHelper 
. 
Environment )
=* +
Enum, 0
.0 1
Parse1 6
<6 7
EnvironmentType7 F
>F G
(G H
environmentH S
.S T
EnvironmentNameT c
)c d
;d e
_logger 
= 
logger 
; 
} 	
public 
virtual 
void 
ConfigureServices -
(- .
IServiceCollection. @
servicesA I
)I J
{ 	
services 
.   
AddControllers   
(    
)    !
.!! 
AddFluentValidation!! $
(!!$ %
c!!% &
=>!!' )
{"" 
c## 
.## 4
(RegisterValidatorsFromAssemblyContaining## >
<##> ?
Startup##? F
>##F G
(##G H
)##H I
;##I J
}$$ 
)$$ 
;$$ 
services&& 
.&& -
!AddFluentValidationRulesToSwagger&& 6
(&&6 7
)&&7 8
;&&8 9
InjectionFactory(( 
.(( 
Build(( "
(((" #
services((# +
,((+ ,
Configuration((- :
,((: ;
EnvironmentHelper((< M
.((M N
Environment((N Y
,((Y Z
_logger(([ b
)((b c
;((c d
var** 
appSettingsSection** "
=**# $
Configuration**% 2
.**2 3

GetSection**3 =
(**= >
$str**> K
)**K L
;**L M
services,, 
.,, 
	Configure,, 
<,, 
AppSettings,, *
>,,* +
(,,+ ,
appSettingsSection,,, >
),,> ?
;,,? @
StartupHelper.. 
... +
ConfigureMvcAndFluentValidation.. 9
(..9 :
services..: B
,..B C
_logger..D K
)..K L
;..L M
StartupHelper// 
.// 
ConfigureNewtonsoft// -
(//- .
services//. 6
,//6 7
_logger//8 ?
)//? @
;//@ A
StartupHelper00 
.00 
ConfigureAutoMapper00 -
(00- .
services00. 6
,006 7
_logger008 ?
)00? @
;00@ A
StartupHelper22 
.22 #
ConfigureAuthentication22 1
(221 2
services222 :
,22: ;
_logger22< C
)22C D
;22D E
StartupHelper33 
.33 "
ConfigureAuthorization33 0
(330 1
services331 9
,339 :
_logger33; B
)33B C
;33C D
StartupHelper44 
.44 
ConfigureRedis44 (
(44( )
services44) 1
,441 2
_logger443 :
)44: ;
;44; <
StartupHelper99 
.99 !
ConfigureGoogleOAuth299 /
(99/ 0
services990 8
,998 9
_logger99: A
)99A B
;99B C
StartupHelper;; 
.;; )
ConfigureIntegrationProviders;; 7
(;;7 8
_logger;;8 ?
);;? @
;;;@ A
StartupHelper<< 
.<< 
ConfigureHttpSms<< *
(<<* +
services<<+ 3
,<<3 4
_logger<<5 <
)<<< =
;<<= >
StartupHelper== 
.== 
ConfigureDevino== )
(==) *
services==* 2
,==2 3
_logger==4 ;
)==; <
;==< =
StartupHelper>> 
.>> 
ConfigureSmsDev>> )
(>>) *
services>>* 2
,>>2 3
_logger>>4 ;
)>>; <
;>>< =
StartupHelper@@ 
.@@ 
ConfigureSwagger@@ *
(@@* +
services@@+ 3
,@@3 4
_logger@@5 <
)@@< =
;@@= >
servicesBB 
.BB -
!ConfigureProblemDetailsModelStateBB 6
(BB6 7
_loggerBB7 >
)BB> ?
;BB? @
}CC 	
publicEE 
virtualEE 
voidEE 
	ConfigureEE %
(EE% &
IApplicationBuilderEE& 9
appEE: =
,EE= >
IWebHostEnvironmentEE? R
envEES V
,EEV W
ILoggerFactoryEEX f
loggerFactoryEEg t
)EEt u
{FF 	
appGG 
.GG 
UseForwardedHeadersGG #
(GG# $
)GG$ %
;GG% &
ifII 
(II 
EnvironmentHelperII !
.II! "
EnvironmentII" -
!=II. 0
EnvironmentTypeII1 @
.II@ A

ProductionIIA K
)IIK L
{JJ 
appKK 
.KK %
UseDeveloperExceptionPageKK -
(KK- .
)KK. /
;KK/ 0
StartupHelperLL 
.LL 

UseSwaggerLL (
(LL( )
appLL) ,
)LL, -
;LL- .
}MM 
elseNN 
{OO 
appPP 
.PP 
UseHstsPP 
(PP 
)PP 
;PP 
}QQ 
appSS 
.SS 
UseHttpsRedirectionSS #
(SS# $
)SS$ %
;SS% &
appUU 
.UU 

UseRoutingUU 
(UU 
)UU 
;UU 
StartupHelperWW 
.WW 
UseCorsWW !
(WW! "
appWW" %
)WW% &
;WW& '
appYY 
.YY 
UseAuthenticationYY !
(YY! "
)YY" #
;YY# $
app[[ 
.[[ 
UseAuthorization[[  
([[  !
)[[! "
;[[" #
StartupHelper]] 
.]] 
ConfigureRewriter]] +
(]]+ ,
app]], /
)]]/ 0
;]]0 1
app__ 
.__ -
!UseProblemDetailsExceptionHandler__ 1
(__1 2
loggerFactory__2 ?
)__? @
;__@ A
appaa 
.aa 
UseEndpointsaa 
(aa 
	endpointsaa &
=>aa' )
{bb 
	endpointscc 
.cc 
MapControllerscc (
(cc( )
)cc) *
;cc* +
}gg 
)gg 
;gg 
appii 
.ii 
Buildii 
(ii 
)ii 
;ii 
}jj 	
}kk 
}ll £
?E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Program.cs
	namespace 	

AslaveCare
 
. 
Api 
{ 
public 

class 
Program 
{ 
private		 
const		 
int		 #
DEFAULT_KESTREL_TIMEOUT		 1
=		2 3
$num		4 5
;		5 6
public 
static 
Task 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
return 
BuildWebHost 
(  
args  $
)$ %
.% &
RunAsync& .
(. /
)/ 0
;0 1
} 	
public 
static 
IWebHost 
BuildWebHost +
(+ ,
string, 2
[2 3
]3 4
args5 9
)9 :
{ 	
var 
currentEnvironment "
=# $
System% +
.+ ,
Environment, 7
.7 8"
GetEnvironmentVariable8 N
(N O
$strO g
)g h
;h i
return++ 
WebHost++ 
.++  
CreateDefaultBuilder++ /
(++/ 0
args++0 4
)++4 5
.,, 

UseStartup,, 
<,, 
Startup,, #
>,,# $
(,,$ %
),,% &
.-- 
Build-- 
(-- 
)-- 
;-- 
}.. 	
}// 
}00 Ÿ≥
ME:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Helpers\StartupHelper.cs
	namespace// 	

AslaveCare//
 
.// 
Api// 
.// 
Helpers//  
{00 
public11 

static11 
class11 
StartupHelper11 %
{22 
public33 
static33 
void33 
UseCors33 "
(33" #
IApplicationBuilder33# 6
app337 :
)33: ;
{44 	
app55 
.55 
UseCors55 
(55 
options55 
=>55  "
{66 
var77 
urls77 
=77 
new77 
List77 #
<77# $
string77$ *
>77* +
{88 
$str99 +
,99+ ,
$str:: :
,::: ;
$str;; <
}<< 
;<< 
options>> 
.>> 
WithOrigins>> #
(>># $
urls>>$ (
.>>( )
ToArray>>) 0
(>>0 1
)>>1 2
)>>2 3
.?? 
AllowCredentials?? (
(??( )
)??) *
.@@ 
AllowAnyMethod@@ &
(@@& '
)@@' (
.AA 
AllowAnyHeaderAA &
(AA& '
)AA' (
;AA( )
}BB 
)BB 
;BB 
}CC 	
internalEE 
staticEE 
voidEE 
ConfigureRewriterEE .
(EE. /
IApplicationBuilderEE/ B
appEEC F
)EEF G
{FF 	
varGG 
optionsGG 
=GG 
newGG 
RewriteOptionsGG ,
(GG, -
)GG- .
;GG. /
optionsHH 
.HH 
AddRedirectHH 
(HH  
$strHH  $
,HH$ %
$strHH& 8
)HH8 9
;HH9 :
appII 
.II 
UseRewriterII 
(II 
optionsII #
)II# $
;II$ %
}JJ 	
internalLL 
staticLL 
TaskLL #
HandleOnMessageReceivedLL 4
(LL4 5"
MessageReceivedContextLL5 K
contextLLL S
)LLS T
{MM 	
varNN 
accessTokenNN 
=NN 
contextNN %
.NN% &
HttpContextNN& 1
.NN1 2
RequestNN2 9
.NN9 :
QueryNN: ?
[NN? @
$strNN@ N
]NNN O
;NNO P
varQQ 
pathQQ 
=QQ 
contextQQ 
.QQ 
HttpContextQQ *
.QQ* +
RequestQQ+ 2
.QQ2 3
PathQQ3 7
;QQ7 8
ifRR 
(RR 
!RR 
stringRR 
.RR 
IsNullOrWhiteSpaceRR *
(RR* +
accessTokenRR+ 6
)RR6 7
&&RR8 :
pathSS 
.SS 
StartsWithSegmentsSS '
(SS' (
$strSS( 4
)SS4 5
)SS5 6
contextTT 
.TT 
TokenTT 
=TT 
accessTokenTT  +
;TT+ ,
returnVV 
TaskVV 
.VV 
CompletedTaskVV %
;VV% &
}WW 	
internalYY 
staticYY 
voidYY 
ConfigureRedisYY +
(YY+ ,
IServiceCollectionYY, >
servicesYY? G
,YYG H
ILoggerYYI P
_loggerYYQ X
)YYX Y
{ZZ 	
var[[ 
redisContainerIP[[  
=[[! "
System[[# )
.[[) *
Environment[[* 5
.[[5 6"
GetEnvironmentVariable[[6 L
([[L M
$str[[M c
)[[c d
;[[d e
if\\ 
(\\ 
string\\ 
.\\ 
IsNullOrEmpty\\ $
(\\$ %
redisContainerIP\\% 5
)\\5 6
)\\6 7
throw]] 
new]]  
ApplicationException]] .
(]]. /
$str]]/ R
)]]R S
;]]S T
var__ 
options__ 
=__ 
new__  
ConfigurationOptions__ 2
(__2 3
)__3 4
{`` 
AbortOnConnectFailaa "
=aa# $
falseaa% *
,aa* +
	EndPointsbb 
=bb 
{bb 
redisContainerIPbb .
}bb/ 0
}cc 
;cc "
IConnectionMultiplexeree "
redisee# (
=ee) *!
ConnectionMultiplexeree+ @
.ee@ A
ConnecteeA H
(eeH I
optionseeI P
)eeP Q
;eeQ R
servicesff 
.ff 
	AddScopedff 
(ff 
xff  
=>ff! #
redisff$ )
.ff) *
GetDatabaseff* 5
(ff5 6
)ff6 7
)ff7 8
;ff8 9
_loggerhh 
.hh 
LogInformationhh "
(hh" #
stringhh# )
.hh) *
Concathh* 0
(hh0 1
$strhh1 B
.hhB C
FillhhC G
(hhG H
$charhhH K
,hhK L
ConstantsGeneralhhM ]
.hh] ^
DEFAULT_FILL_LENGHThh^ q
)hhq r
,hhr s
$strhht ~
)hh~ 
)	hh Ä
;
hhÄ Å
}ii 	
internalkk 
statickk 
voidkk 

UseSwaggerkk '
(kk' (
IApplicationBuilderkk( ;
appkk< ?
)kk? @
{ll 	
appmm 
.mm 

UseSwaggermm 
(mm 
)mm 
;mm 
appnn 
.nn 
UseSwaggerUInn 
(nn 
cnn 
=>nn !
{oo 
cpp 
.pp 
SwaggerEndpointpp !
(pp! "
$strpp" <
,pp< =
$strpp> B
)ppB C
;ppC D
}qq 
)qq 
;qq 
}rr 	
internaltt 
statictt 
voidtt 
ConfigureSwaggertt -
(tt- .
IServiceCollectiontt. @
servicesttA I
,ttI J
ILoggerttK R
_loggerttS Z
)ttZ [
{uu 	
servicesvv 
.vv 
AddSwaggerGenvv "
(vv" #
cvv# $
=>vv% '
{ww 
varxx 
titlexx 
=xx 
$"xx 
$strxx 3
{xx3 4
EnvironmentHelperxx4 E
.xxE F#
GetShortEnvironmentNamexxF ]
(xx] ^
)xx^ _
}xx_ `
$strxx` a
"xxa b
;xxb c
varyy 
descriptionyy 
=yy  !
$stryy" >
;yy> ?
varzz 
contactzz 
=zz 
newzz !
OpenApiContactzz" 0
{{{ 
Name|| 
=|| 
$str|| ,
,||, -
Url}} 
=}} 
new}} 
Uri}} !
(}}! "
$str}}" ?
)}}? @
,}}@ A
Email~~ 
=~~ 
$str~~ 6
} 
; 
c
ÅÅ 
.
ÅÅ 

SwaggerDoc
ÅÅ 
(
ÅÅ 
$str
ÅÅ !
,
ÅÅ! "
new
ÅÅ# &
OpenApiInfo
ÅÅ' 2
{
ÇÇ 
Version
ÉÉ 
=
ÉÉ 
$str
ÉÉ "
,
ÉÉ" #
Title
ÑÑ 
=
ÑÑ 
title
ÑÑ !
,
ÑÑ! "
Description
ÖÖ 
=
ÖÖ  !
description
ÖÖ" -
,
ÖÖ- .
Contact
ÜÜ 
=
ÜÜ 
contact
ÜÜ %
}
áá 
)
áá 
;
áá 
c
ââ 
.
ââ 

SwaggerDoc
ââ 
(
ââ 
$str
ââ !
,
ââ! "
new
ââ# &
OpenApiInfo
ââ' 2
{
ää 
Version
ãã 
=
ãã 
$str
ãã "
,
ãã" #
Title
åå 
=
åå 
title
åå !
,
åå! "
Description
çç 
=
çç  !
description
çç" -
,
çç- .
Contact
éé 
=
éé 
contact
éé %
}
èè 
)
èè 
;
èè 
c
ëë 
.
ëë #
AddSecurityDefinition
ëë '
(
ëë' (
$str
ëë( 0
,
ëë0 1
new
ëë2 5#
OpenApiSecurityScheme
ëë6 K
{
íí 
Description
ìì 
=
ìì  !
$str
ìì" T
,
ììT U
Name
îî 
=
îî 
$str
îî *
,
îî* +
In
ïï 
=
ïï 
ParameterLocation
ïï *
.
ïï* +
Header
ïï+ 1
,
ïï1 2
Type
ññ 
=
ññ  
SecuritySchemeType
ññ -
.
ññ- .
ApiKey
ññ. 4
,
ññ4 5
Scheme
óó 
=
óó 
$str
óó %
}
òò 
)
òò 
;
òò 
c
ôô 
.
ôô $
AddSecurityRequirement
ôô (
(
ôô( )
new
ôô) ,(
OpenApiSecurityRequirement
ôô- G
{
öö 
{
õõ 
new
úú #
OpenApiSecurityScheme
úú 1
{
ùù 
	Reference
ûû %
=
ûû& '
new
ûû( +
OpenApiReference
ûû, <
{
üü 
Type
††  $
=
††% &
ReferenceType
††' 4
.
††4 5
SecurityScheme
††5 C
,
††C D
Id
°°  "
=
°°# $
$str
°°% -
}
¢¢ 
}
££ 
,
££ 
Array
§§ 
.
§§ 
Empty
§§ #
<
§§# $
string
§§$ *
>
§§* +
(
§§+ ,
)
§§, -
}
•• 
}
¶¶ 
)
¶¶ 
;
¶¶ 
var
ßß 
xmlFilename
ßß 
=
ßß  !
$"
ßß" $
{
ßß$ %
Assembly
ßß% -
.
ßß- ."
GetExecutingAssembly
ßß. B
(
ßßB C
)
ßßC D
.
ßßD E
GetName
ßßE L
(
ßßL M
)
ßßM N
.
ßßN O
Name
ßßO S
}
ßßS T
$str
ßßT X
"
ßßX Y
;
ßßY Z
c
®® 
.
®®  
IncludeXmlComments
®® $
(
®®$ %
Path
®®% )
.
®®) *
Combine
®®* 1
(
®®1 2

AppContext
®®2 <
.
®®< =
BaseDirectory
®®= J
,
®®J K
xmlFilename
®®L W
)
®®W X
)
®®X Y
;
®®Y Z
}
©© 
)
©© 
;
©© 
_logger
´´ 
.
´´ 
LogInformation
´´ "
(
´´" #
string
´´# )
.
´´) *
Concat
´´* 0
(
´´0 1
$str
´´1 D
.
´´D E
Fill
´´E I
(
´´I J
$char
´´J M
,
´´M N
ConstantsGeneral
´´O _
.
´´_ `!
DEFAULT_FILL_LENGHT
´´` s
)
´´s t
,
´´t u
$str´´v Ä
)´´Ä Å
)´´Å Ç
;´´Ç É
}
¨¨ 	
internal
ÆÆ 
static
ÆÆ 
void
ÆÆ 
ConfigureSignalR
ÆÆ -
(
ÆÆ- . 
IServiceCollection
ÆÆ. @
services
ÆÆA I
,
ÆÆI J
ILogger
ÆÆK R
_logger
ÆÆS Z
)
ÆÆZ [
{
ØØ 	
services
∞∞ 
.
∞∞ 

AddSignalR
∞∞ 
(
∞∞  
hubOpts
∞∞  '
=>
∞∞( *
{
±± 
hubOpts
≤≤ 
.
≤≤ 
KeepAliveInterval
≤≤ )
=
≤≤* +
TimeSpan
≤≤, 4
.
≤≤4 5
FromSeconds
≤≤5 @
(
≤≤@ A
$num
≤≤A C
)
≤≤C D
;
≤≤D E
hubOpts
≥≥ 
.
≥≥ #
ClientTimeoutInterval
≥≥ -
=
≥≥. /
TimeSpan
≥≥0 8
.
≥≥8 9
FromSeconds
≥≥9 D
(
≥≥D E
$num
≥≥E G
)
≥≥G H
;
≥≥H I
hubOpts
µµ 
.
µµ "
EnableDetailedErrors
µµ ,
=
µµ- .
true
µµ/ 3
;
µµ3 4
}
∑∑ 
)
∑∑ 
;
∑∑ 
_logger
ππ 
.
ππ 
LogInformation
ππ "
(
ππ" #
string
ππ# )
.
ππ) *
Concat
ππ* 0
(
ππ0 1
$str
ππ1 D
.
ππD E
Fill
ππE I
(
ππI J
$char
ππJ M
,
ππM N
ConstantsGeneral
ππO _
.
ππ_ `!
DEFAULT_FILL_LENGHT
ππ` s
)
ππs t
,
ππt u
$strππv Ä
)ππÄ Å
)ππÅ Ç
;ππÇ É
}
∫∫ 	
internal
ºº 
static
ºº 
void
ºº !
ConfigureNewtonsoft
ºº 0
(
ºº0 1 
IServiceCollection
ºº1 C
services
ººD L
,
ººL M
ILogger
ººN U
_logger
ººV ]
)
ºº] ^
{
ΩΩ 	
services
ææ 
.
ææ 
AddMvc
ææ 
(
ææ 
c
ææ 
=>
ææ  
c
ææ! "
.
ææ" #
Conventions
ææ# .
.
ææ. /
Add
ææ/ 2
(
ææ2 3
new
ææ3 6"
ApiVersionConvention
ææ7 K
(
ææK L
)
ææL M
)
ææM N
)
ææN O
.
øø 
AddNewtonsoftJson
øø &
(
øø& '
option
øø' -
=>
øø. 0
{
¿¿ 
option
¡¡ 
.
¡¡  
SerializerSettings
¡¡ 1
.
¡¡1 2#
ReferenceLoopHandling
¡¡2 G
=
¡¡H I#
ReferenceLoopHandling
¡¡J _
.
¡¡_ `
Ignore
¡¡` f
;
¡¡f g
option
¬¬ 
.
¬¬  
SerializerSettings
¬¬ 1
.
¬¬1 2"
DateTimeZoneHandling
¬¬2 F
=
¬¬G H"
DateTimeZoneHandling
¬¬I ]
.
¬¬] ^
Utc
¬¬^ a
;
¬¬a b
option
√√ 
.
√√  
SerializerSettings
√√ 1
.
√√1 2
DateFormatString
√√2 B
=
√√C D
$str
√√E _
;
√√_ `
option
ƒƒ 
.
ƒƒ  
SerializerSettings
ƒƒ 1
.
ƒƒ1 2
NullValueHandling
ƒƒ2 C
=
ƒƒD E
NullValueHandling
ƒƒF W
.
ƒƒW X
Ignore
ƒƒX ^
;
ƒƒ^ _
}
≈≈ 
)
≈≈ 
;
≈≈ 
_logger
«« 
.
«« 
LogInformation
«« "
(
««" #
string
««# )
.
««) *
Concat
««* 0
(
««0 1
$str
««1 G
.
««G H
Fill
««H L
(
««L M
$char
««M P
,
««P Q
ConstantsGeneral
««R b
.
««b c!
DEFAULT_FILL_LENGHT
««c v
)
««v w
,
««w x
$str««y É
)««É Ñ
)««Ñ Ö
;««Ö Ü
}
»» 	
internal
   
static
   
void
   !
ConfigureAutoMapper
   0
(
  0 1 
IServiceCollection
  1 C
services
  D L
,
  L M
ILogger
  N U
_logger
  V ]
)
  ] ^
{
ÀÀ 	
var
ÃÃ 
mappingConfig
ÃÃ 
=
ÃÃ 
new
ÃÃ  #!
MapperConfiguration
ÃÃ$ 7
(
ÃÃ7 8
config
ÃÃ8 >
=>
ÃÃ? A
{
ÕÕ 
config
ŒŒ 
.
ŒŒ 
Internal
ŒŒ 
(
ŒŒ  
)
ŒŒ  !
.
ŒŒ! "&
RecursiveQueriesMaxDepth
ŒŒ" :
=
ŒŒ; <
$num
ŒŒ= >
;
ŒŒ> ?
config
œœ 
.
œœ 

AddProfile
œœ !
(
œœ! "
new
œœ" %
MappingProfile
œœ& 4
(
œœ4 5
)
œœ5 6
)
œœ6 7
;
œœ7 8
}
–– 
)
–– 
;
–– 
IMapper
—— 
mapper
—— 
=
—— 
mappingConfig
—— *
.
——* +
CreateMapper
——+ 7
(
——7 8
)
——8 9
;
——9 :
services
““ 
.
““ 
AddSingleton
““ !
(
““! "
mapper
““" (
)
““( )
;
““) *
_logger
‘‘ 
.
‘‘ 
LogInformation
‘‘ "
(
‘‘" #
string
‘‘# )
.
‘‘) *
Concat
‘‘* 0
(
‘‘0 1
$str
‘‘1 G
.
‘‘G H
Fill
‘‘H L
(
‘‘L M
$char
‘‘M P
,
‘‘P Q
ConstantsGeneral
‘‘R b
.
‘‘b c!
DEFAULT_FILL_LENGHT
‘‘c v
)
‘‘v w
,
‘‘w x
$str‘‘y É
)‘‘É Ñ
)‘‘Ñ Ö
;‘‘Ö Ü
}
’’ 	
internal
◊◊ 
static
◊◊ 
void
◊◊ $
ConfigureAuthorization
◊◊ 3
(
◊◊3 4 
IServiceCollection
◊◊4 F
services
◊◊G O
,
◊◊O P
ILogger
◊◊Q X
_logger
◊◊Y `
)
◊◊` a
{
ÿÿ 	
services
⁄⁄ 
.
⁄⁄ 
AddAuthorization
⁄⁄ %
(
⁄⁄% &
auth
⁄⁄& *
=>
⁄⁄+ -
{
€€ 
auth
‹‹ 
.
‹‹ 
	AddPolicy
‹‹ 
(
‹‹ 
$str
‹‹ '
,
‹‹' (
new
‹‹) ,(
AuthorizationPolicyBuilder
‹‹- G
(
‹‹G H
)
‹‹H I
.
›› &
AddAuthenticationSchemes
›› -
(
››- .
JwtBearerDefaults
››. ?
.
››? @"
AuthenticationScheme
››@ T
)
››T U
.
ﬁﬁ &
RequireAuthenticatedUser
ﬁﬁ -
(
ﬁﬁ- .
)
ﬁﬁ. /
.
ﬁﬁ/ 0
Build
ﬁﬁ0 5
(
ﬁﬁ5 6
)
ﬁﬁ6 7
)
ﬁﬁ7 8
;
ﬁﬁ8 9
}
ﬂﬂ 
)
ﬂﬂ 
;
ﬂﬂ 
_logger
‡‡ 
.
‡‡ 
LogInformation
‡‡ "
(
‡‡" #
string
‡‡# )
.
‡‡) *
Concat
‡‡* 0
(
‡‡0 1
$str
‡‡1 J
.
‡‡J K
Fill
‡‡K O
(
‡‡O P
$char
‡‡P S
,
‡‡S T
ConstantsGeneral
‡‡U e
.
‡‡e f!
DEFAULT_FILL_LENGHT
‡‡f y
)
‡‡y z
,
‡‡z {
$str‡‡| Ü
)‡‡Ü á
)‡‡á à
;‡‡à â
}
·· 	
internal
„„ 
static
„„ 
void
„„ %
ConfigureAuthentication
„„ 4
(
„„4 5 
IServiceCollection
„„5 G
services
„„H P
,
„„P Q
ILogger
„„R Y
_logger
„„Z a
)
„„a b
{
‰‰ 	
var
ÂÂ #
signingConfigurations
ÂÂ %
=
ÂÂ& '
new
ÂÂ( +#
SigningConfigurations
ÂÂ, A
(
ÂÂA B
_logger
ÂÂB I
)
ÂÂI J
;
ÂÂJ K
services
ÁÁ 
.
ÁÁ 
AddSingleton
ÁÁ !
(
ÁÁ! "#
signingConfigurations
ÁÁ" 7
)
ÁÁ7 8
;
ÁÁ8 9
var
ÈÈ !
tokenConfigurations
ÈÈ #
=
ÈÈ$ %
new
ÈÈ& )!
TokenConfigurations
ÈÈ* =
(
ÈÈ= >
)
ÈÈ> ?
{
ÍÍ 
Issuer
ÎÎ 
=
ÎÎ 
System
ÎÎ 
.
ÎÎ  
Environment
ÎÎ  +
.
ÎÎ+ ,$
GetEnvironmentVariable
ÎÎ, B
(
ÎÎB C
$str
ÎÎC Q
)
ÎÎQ R
,
ÎÎR S
Audience
ÏÏ 
=
ÏÏ 
System
ÏÏ !
.
ÏÏ! "
Environment
ÏÏ" -
.
ÏÏ- .$
GetEnvironmentVariable
ÏÏ. D
(
ÏÏD E
$str
ÏÏE U
)
ÏÏU V
,
ÏÏV W!
AccessTokenValidity
ÌÌ #
=
ÌÌ$ %
int
ÌÌ& )
.
ÌÌ) *
Parse
ÌÌ* /
(
ÌÌ/ 0
System
ÌÌ0 6
.
ÌÌ6 7
Environment
ÌÌ7 B
.
ÌÌB C$
GetEnvironmentVariable
ÌÌC Y
(
ÌÌY Z
$str
ÌÌZ q
)
ÌÌq r
)
ÌÌr s
,
ÌÌs t"
RefreshTokenValidity
ÓÓ $
=
ÓÓ% &
int
ÓÓ' *
.
ÓÓ* +
Parse
ÓÓ+ 0
(
ÓÓ0 1
System
ÓÓ1 7
.
ÓÓ7 8
Environment
ÓÓ8 C
.
ÓÓC D$
GetEnvironmentVariable
ÓÓD Z
(
ÓÓZ [
$str
ÓÓ[ s
)
ÓÓs t
)
ÓÓt u
}
ÔÔ 
;
ÔÔ 
services
ÒÒ 
.
ÒÒ 
AddSingleton
ÒÒ !
(
ÒÒ! "!
tokenConfigurations
ÒÒ" 5
)
ÒÒ5 6
;
ÒÒ6 7
services
ÛÛ 
.
ÛÛ 
AddAuthentication
ÛÛ &
(
ÛÛ& '
authOptions
ÛÛ' 2
=>
ÛÛ3 5
{
ÙÙ 
authOptions
ıı 
.
ıı '
DefaultAuthenticateScheme
ıı 5
=
ıı6 7
JwtBearerDefaults
ıı8 I
.
ııI J"
AuthenticationScheme
ııJ ^
;
ıı^ _
authOptions
ˆˆ 
.
ˆˆ $
DefaultChallengeScheme
ˆˆ 2
=
ˆˆ3 4
JwtBearerDefaults
ˆˆ5 F
.
ˆˆF G"
AuthenticationScheme
ˆˆG [
;
ˆˆ[ \
}
˜˜ 
)
˜˜ 
.
˜˜ 
AddJwtBearer
˜˜ 
(
˜˜ 
bearerOptions
˜˜ )
=>
˜˜* ,
{
¯¯ 
bearerOptions
˘˘ 
.
˘˘ "
RequireHttpsMetadata
˘˘ 2
=
˘˘3 4
false
˘˘5 :
;
˘˘: ;
bearerOptions
˙˙ 
.
˙˙ 
	SaveToken
˙˙ '
=
˙˙( )
true
˙˙* .
;
˙˙. /
bearerOptions
˚˚ 
.
˚˚ '
TokenValidationParameters
˚˚ 7
=
˚˚8 9
new
˚˚: ='
TokenValidationParameters
˚˚> W
{
¸¸ &
ValidateIssuerSigningKey
˝˝ ,
=
˝˝- .
true
˝˝/ 3
,
˝˝3 4
IssuerSigningKey
˛˛ $
=
˛˛% &#
signingConfigurations
˛˛' <
.
˛˛< =
Key
˛˛= @
,
˛˛@ A
ValidateIssuer
ˇˇ "
=
ˇˇ# $
false
ˇˇ% *
,
ˇˇ* +
ValidateAudience
ÄÄ $
=
ÄÄ% &
false
ÄÄ' ,
}
ÅÅ 
;
ÅÅ 
bearerOptions
ÉÉ 
.
ÉÉ 
Events
ÉÉ $
=
ÉÉ% &
new
ÉÉ' *
JwtBearerEvents
ÉÉ+ :
{
ÑÑ 
OnMessageReceived
ÖÖ %
=
ÖÖ& '
context
ÖÖ( /
=>
ÖÖ0 2%
HandleOnMessageReceived
ÖÖ3 J
(
ÖÖJ K
context
ÖÖK R
)
ÖÖR S
}
ÜÜ 
;
ÜÜ 
}
áá 
)
áá 
;
áá 
_logger
ââ 
.
ââ 
LogInformation
ââ "
(
ââ" #
string
ââ# )
.
ââ) *
Concat
ââ* 0
(
ââ0 1
$str
ââ1 K
.
ââK L
Fill
ââL P
(
ââP Q
$char
ââQ T
,
ââT U
ConstantsGeneral
ââV f
.
ââf g!
DEFAULT_FILL_LENGHT
ââg z
)
ââz {
,
ââ{ |
$strââ} á
)ââá à
)ââà â
;âââ ä
}
ää 	
internal
åå 
static
åå 
void
åå -
ConfigureMvcAndFluentValidation
åå <
(
åå< = 
IServiceCollection
åå= O
services
ååP X
,
ååX Y
ILogger
ååZ a
_logger
ååb i
)
ååi j
{
çç 	
services
éé 
.
éé 
AddMvc
éé 
(
éé 
options
éé #
=>
éé$ &
{
èè 
options
êê 
.
êê #
EnableEndpointRouting
êê -
=
êê. /
false
êê0 5
;
êê5 6
options
ëë 
.
ëë 
Filters
ëë 
.
ëë  
Add
ëë  #
(
ëë# $
typeof
ëë$ *
(
ëë* +
ActionFilter
ëë+ 7
)
ëë7 8
)
ëë8 9
;
ëë9 :
}
íí 
)
íí 
.
íí 
AddNewtonsoftJson
íí  
(
íí  !
option
íí! '
=>
íí( *
{
ìì 
option
îî 
.
îî  
SerializerSettings
îî )
.
îî) *#
ReferenceLoopHandling
îî* ?
=
îî@ A#
ReferenceLoopHandling
îîB W
.
îîW X
Ignore
îîX ^
;
îî^ _
option
ïï 
.
ïï  
SerializerSettings
ïï )
.
ïï) *"
DateTimeZoneHandling
ïï* >
=
ïï? @"
DateTimeZoneHandling
ïïA U
.
ïïU V
Unspecified
ïïV a
;
ïïa b
option
ññ 
.
ññ  
SerializerSettings
ññ )
.
ññ) *
ContractResolver
ññ* :
=
ññ; <
new
ññ= @4
&CamelCasePropertyNamesContractResolver
ññA g
(
ññg h
)
ññh i
;
ññi j
}
óó 
)
óó 
.
òò !
AddFluentValidation
òò  
(
òò  !
fvc
òò! $
=>
òò% '
fvc
òò( +
.
òò+ ,6
(RegisterValidatorsFromAssemblyContaining
òò, T
<
òòT U
Startup
òòU \
>
òò\ ]
(
òò] ^
)
òò^ _
)
òò_ `
;
òò` a
_logger
öö 
.
öö 
LogInformation
öö "
(
öö" #
string
öö# )
.
öö) *
Concat
öö* 0
(
öö0 1
$str
öö1 V
.
ööV W
Fill
ööW [
(
öö[ \
$char
öö\ _
,
öö_ `
ConstantsGeneral
ööa q
.
ööq r"
DEFAULT_FILL_LENGHTöör Ö
)ööÖ Ü
,ööÜ á
$strööà í
)ööí ì
)ööì î
;ööî ï
}
õõ 	
internal
ùù 
static
ùù 
void
ùù 
ConfigureHttpSms
ùù -
(
ùù- . 
IServiceCollection
ùù. @
services
ùùA I
,
ùùI J
ILogger
ùùK R
_logger
ùùS Z
)
ùùZ [
{
ûû 	
var
üü 
PhoneGateways
üü 
=
üü 
new
üü  #

Dictionary
üü$ .
<
üü. /
string
üü/ 5
,
üü5 6
string
üü7 =
>
üü= >
(
üü> ?
)
üü? @
;
üü@ A
foreach
†† 
(
†† 
var
†† 
	countryId
†† "
in
††# %
Enum
††& *
.
††* +
GetNames
††+ 3
<
††3 4
CountryType
††4 ?
>
††? @
(
††@ A
)
††A B
)
††B C
{
°° 
PhoneGateways
¢¢ 
.
¢¢ 
Add
¢¢ !
(
¢¢! "
	countryId
¢¢" +
,
¢¢+ ,
Environment
¢¢- 8
.
¢¢8 9$
GetEnvironmentVariable
¢¢9 O
(
¢¢O P
$"
¢¢P R
$str
¢¢R p
{
¢¢p q
	countryId
¢¢q z
}
¢¢z {
"
¢¢{ |
)
¢¢| }
)
¢¢} ~
;
¢¢~ 
}
££ 
var
•• "
httpSmsConfiguration
•• $
=
••% &
new
••' *"
HttpSmsConfiguration
••+ ?
(
¶¶ 
Environment
ßß 
.
ßß  $
GetEnvironmentVariable
ßß  6
(
ßß6 7
$str
ßß7 G
)
ßßG H
,
ßßH I
Environment
®® 
.
®®  $
GetEnvironmentVariable
®®  6
(
®®6 7
$str
®®7 J
)
®®J K
,
®®K L
PhoneGateways
©© !
)
™™ 
;
™™ 
services
¨¨ 
.
¨¨ 
AddSingleton
¨¨ !
(
¨¨! ""
httpSmsConfiguration
¨¨" 6
)
¨¨6 7
;
¨¨7 8
services
≠≠ 
.
≠≠ 
AddSingleton
≠≠ !
<
≠≠! "
IHttpSmsService
≠≠" 1
,
≠≠1 2
HttpSmsService
≠≠3 A
>
≠≠A B
(
≠≠B C
)
≠≠C D
;
≠≠D E
_logger
ØØ 
.
ØØ 
LogInformation
ØØ "
(
ØØ" #
string
ØØ# )
.
ØØ) *
Concat
ØØ* 0
(
ØØ0 1
$str
ØØ1 Q
.
ØØQ R
Fill
ØØR V
(
ØØV W
$char
ØØW Z
,
ØØZ [
ConstantsGeneral
ØØ\ l
.
ØØl m"
DEFAULT_FILL_LENGHTØØm Ä
)ØØÄ Å
,ØØÅ Ç
$strØØÉ ç
)ØØç é
)ØØé è
;ØØè ê
}
∞∞ 	
internal
≤≤ 
static
≤≤ 
void
≤≤ 
ConfigureDevino
≤≤ ,
(
≤≤, - 
IServiceCollection
≤≤- ?
services
≤≤@ H
,
≤≤H I
ILogger
≤≤J Q
_logger
≤≤R Y
)
≤≤Y Z
{
≥≥ 	
var
¥¥ !
devinoConfiguration
¥¥ #
=
¥¥$ %
new
¥¥& )!
DevinoConfiguration
¥¥* =
(
µµ 
Environment
∂∂ 
.
∂∂  $
GetEnvironmentVariable
∂∂  6
(
∂∂6 7
$str
∂∂7 L
)
∂∂L M
,
∂∂M N
Environment
∑∑ 
.
∑∑  $
GetEnvironmentVariable
∑∑  6
(
∑∑6 7
$str
∑∑7 G
)
∑∑G H
,
∑∑H I
Environment
∏∏ 
.
∏∏  $
GetEnvironmentVariable
∏∏  6
(
∏∏6 7
$str
∏∏7 I
)
∏∏I J
)
∫∫ 
;
∫∫ 
services
ºº 
.
ºº 
AddSingleton
ºº !
(
ºº! "!
devinoConfiguration
ºº" 5
)
ºº5 6
;
ºº6 7
services
ΩΩ 
.
ΩΩ 
AddSingleton
ΩΩ !
<
ΩΩ! "
IDevinoService
ΩΩ" 0
,
ΩΩ0 1
DevinoService
ΩΩ2 ?
>
ΩΩ? @
(
ΩΩ@ A
)
ΩΩA B
;
ΩΩB C
_logger
øø 
.
øø 
LogInformation
øø "
(
øø" #
string
øø# )
.
øø) *
Concat
øø* 0
(
øø0 1
$str
øø1 O
.
øøO P
Fill
øøP T
(
øøT U
$char
øøU X
,
øøX Y
ConstantsGeneral
øøZ j
.
øøj k!
DEFAULT_FILL_LENGHT
øøk ~
)
øø~ 
,øø Ä
$strøøÅ ã
)øøã å
)øøå ç
;øøç é
}
¿¿ 	
internal
¬¬ 
static
¬¬ 
void
¬¬ 
ConfigureSmsDev
¬¬ ,
(
¬¬, - 
IServiceCollection
¬¬- ?
services
¬¬@ H
,
¬¬H I
ILogger
¬¬J Q
_logger
¬¬R Y
)
¬¬Y Z
{
√√ 	
var
ƒƒ !
smsDevConfiguration
ƒƒ #
=
ƒƒ$ %
new
ƒƒ& )!
SmsDevConfiguration
ƒƒ* =
(
≈≈ 
Environment
∆∆ 
.
∆∆  $
GetEnvironmentVariable
∆∆  6
(
∆∆6 7
$str
∆∆7 I
)
∆∆I J
,
∆∆J K
Environment
«« 
.
««  $
GetEnvironmentVariable
««  6
(
««6 7
$str
««7 D
)
««D E
)
»» 
;
»» 
services
   
.
   
AddSingleton
   !
(
  ! "!
smsDevConfiguration
  " 5
)
  5 6
;
  6 7
services
ÀÀ 
.
ÀÀ 
AddSingleton
ÀÀ !
<
ÀÀ! "
ISmsDevService
ÀÀ" 0
,
ÀÀ0 1
SmsDevService
ÀÀ2 ?
>
ÀÀ? @
(
ÀÀ@ A
)
ÀÀA B
;
ÀÀB C
_logger
ÃÃ 
.
ÃÃ 
LogInformation
ÃÃ "
(
ÃÃ" #
string
ÃÃ# )
.
ÃÃ) *
Concat
ÃÃ* 0
(
ÃÃ0 1
$str
ÃÃ1 O
.
ÃÃO P
Fill
ÃÃP T
(
ÃÃT U
$char
ÃÃU X
,
ÃÃX Y
ConstantsGeneral
ÃÃZ j
.
ÃÃj k!
DEFAULT_FILL_LENGHT
ÃÃk ~
)
ÃÃ~ 
,ÃÃ Ä
$strÃÃÅ ã
)ÃÃã å
)ÃÃå ç
;ÃÃç é
}
ÕÕ 	
internal
œœ 
static
œœ 
void
œœ +
ConfigureIntegrationProviders
œœ :
(
œœ: ;
ILogger
œœ; B
_logger
œœC J
)
œœJ K
{
–– 	&
IntegrationConfiguration
—— $
.
——$ %
SmsProvider
——% 0
=
——1 2
Environment
——3 >
.
——> ?$
GetEnvironmentVariable
——? U
(
——U V
$str
——V l
)
——l m
;
——m n
_logger
““ 
.
““ 
LogInformation
““ "
(
““" #
string
““# )
.
““) *
Concat
““* 0
(
““0 1
$str
““1 R
.
““R S
Fill
““S W
(
““W X
$char
““X [
,
““[ \
ConstantsGeneral
““] m
.
““m n"
DEFAULT_FILL_LENGHT““n Å
)““Å Ç
,““Ç É
$str““Ñ é
)““é è
)““è ê
;““ê ë
}
”” 	
internal
’’ 
static
’’ 
void
’’ 
ConfigureFirebase
’’ .
(
’’. / 
IServiceCollection
’’/ A
services
’’B J
,
’’J K
ILogger
’’L S
_logger
’’T [
)
’’[ \
{
÷÷ 	
FirebaseApp
◊◊ 
.
◊◊ 
Create
◊◊ 
(
◊◊ 
new
◊◊ "

AppOptions
◊◊# -
{
ÿÿ 

Credential
ŸŸ 
=
ŸŸ 
GoogleCredential
ŸŸ -
.
ŸŸ- .
FromJson
ŸŸ. 6
(
ŸŸ6 7
JsonConvert
ŸŸ7 B
.
ŸŸB C
SerializeObject
ŸŸC R
(
ŸŸR S
new
ŸŸS V
{
⁄⁄ 
type
€€ 
=
€€ 
Environment
€€ &
.
€€& '$
GetEnvironmentVariable
€€' =
(
€€= >
$str
€€> M
)
€€M N
,
€€N O

project_id
‹‹ 
=
‹‹  
Environment
‹‹! ,
.
‹‹, -$
GetEnvironmentVariable
‹‹- C
(
‹‹C D
$str
‹‹D Y
)
‹‹Y Z
,
‹‹Z [
private_key_id
›› "
=
››# $
Environment
››% 0
.
››0 1$
GetEnvironmentVariable
››1 G
(
››G H
$str
››H a
)
››a b
,
››b c
private_key
ﬁﬁ 
=
ﬁﬁ  !
Environment
ﬁﬁ" -
.
ﬁﬁ- .$
GetEnvironmentVariable
ﬁﬁ. D
(
ﬁﬁD E
$str
ﬁﬁE [
)
ﬁﬁ[ \
,
ﬁﬁ\ ]
client_email
ﬂﬂ  
=
ﬂﬂ! "
Environment
ﬂﬂ# .
.
ﬂﬂ. /$
GetEnvironmentVariable
ﬂﬂ/ E
(
ﬂﬂE F
$str
ﬂﬂF ]
)
ﬂﬂ] ^
,
ﬂﬂ^ _
	client_id
‡‡ 
=
‡‡ 
Environment
‡‡  +
.
‡‡+ ,$
GetEnvironmentVariable
‡‡, B
(
‡‡B C
$str
‡‡C W
)
‡‡W X
,
‡‡X Y
auth_uri
·· 
=
·· 
Environment
·· *
.
··* +$
GetEnvironmentVariable
··+ A
(
··A B
$str
··B U
)
··U V
,
··V W
	token_uri
‚‚ 
=
‚‚ 
Environment
‚‚  +
.
‚‚+ ,$
GetEnvironmentVariable
‚‚, B
(
‚‚B C
$str
‚‚C W
)
‚‚W X
,
‚‚X Y)
auth_provider_x509_cert_url
„„ /
=
„„0 1
Environment
„„2 =
.
„„= >$
GetEnvironmentVariable
„„> T
(
„„T U
$str
„„U {
)
„„{ |
,
„„| }"
client_x509_cert_url
‰‰ (
=
‰‰) *
Environment
‰‰+ 6
.
‰‰6 7$
GetEnvironmentVariable
‰‰7 M
(
‰‰M N
$str
‰‰N m
)
‰‰m n
}
ÂÂ 
)
ÂÂ 
)
ÂÂ 
}
ÊÊ 
)
ÊÊ 
;
ÊÊ 
services
ÁÁ 
.
ÁÁ 
AddSingleton
ÁÁ !
<
ÁÁ! "
IFirebaseService
ÁÁ" 2
,
ÁÁ2 3
FirebaseService
ÁÁ4 C
>
ÁÁC D
(
ÁÁD E
)
ÁÁE F
;
ÁÁF G
_logger
ËË 
.
ËË 
LogInformation
ËË "
(
ËË" #
string
ËË# )
.
ËË) *
Concat
ËË* 0
(
ËË0 1
$str
ËË1 Q
.
ËËQ R
Fill
ËËR V
(
ËËV W
$char
ËËW Z
,
ËËZ [
ConstantsGeneral
ËË\ l
.
ËËl m"
DEFAULT_FILL_LENGHTËËm Ä
)ËËÄ Å
,ËËÅ Ç
$strËËÉ ç
)ËËç é
)ËËé è
;ËËè ê
}
ÈÈ 	
internal
ÎÎ 
static
ÎÎ 
void
ÎÎ 
ConfigureAmazonS3
ÎÎ .
(
ÎÎ. / 
IServiceCollection
ÎÎ/ A
services
ÎÎB J
,
ÎÎJ K
ILogger
ÎÎL S
_logger
ÎÎT [
)
ÎÎ[ \
{
ÏÏ 	
var
ÌÌ 
s3Configuration
ÌÌ 
=
ÌÌ  !
new
ÌÌ" %
S3Configuration
ÌÌ& 5
(
ÌÌ5 6
Environment
ÓÓ 
.
ÓÓ  $
GetEnvironmentVariable
ÓÓ  6
(
ÓÓ6 7
$str
ÓÓ7 ?
)
ÓÓ? @
,
ÓÓ@ A
Environment
ÔÔ 
.
ÔÔ  $
GetEnvironmentVariable
ÔÔ  6
(
ÔÔ6 7
$str
ÔÔ7 C
)
ÔÔC D
,
ÔÔD E
Environment
 
.
  $
GetEnvironmentVariable
  6
(
6 7
$str
7 C
)
C D
,
D E
Environment
ÒÒ 
.
ÒÒ  $
GetEnvironmentVariable
ÒÒ  6
(
ÒÒ6 7
$str
ÒÒ7 I
)
ÒÒI J
,
ÒÒJ K
Environment
ÚÚ 
.
ÚÚ  $
GetEnvironmentVariable
ÚÚ  6
(
ÚÚ6 7
$str
ÚÚ7 N
)
ÚÚN O
,
ÚÚO P
Environment
ÛÛ 
.
ÛÛ  $
GetEnvironmentVariable
ÛÛ  6
(
ÛÛ6 7
$str
ÛÛ7 O
)
ÛÛO P
,
ÛÛP Q
Environment
ÙÙ 
.
ÙÙ  $
GetEnvironmentVariable
ÙÙ  6
(
ÙÙ6 7
$str
ÙÙ7 Q
)
ÙÙQ R
,
ÙÙR S
Environment
ıı 
.
ıı  $
GetEnvironmentVariable
ıı  6
(
ıı6 7
$str
ıı7 C
)
ııC D
)
ˆˆ 
;
ˆˆ 
services
¯¯ 
.
¯¯ 
AddSingleton
¯¯ !
(
¯¯! "
s3Configuration
¯¯" 1
)
¯¯1 2
;
¯¯2 3
services
˘˘ 
.
˘˘ 
AddSingleton
˘˘ !
<
˘˘! "
IS3FileService
˘˘" 0
,
˘˘0 1
S3FileService
˘˘2 ?
>
˘˘? @
(
˘˘@ A
)
˘˘A B
;
˘˘B C
_logger
˙˙ 
.
˙˙ 
LogInformation
˙˙ "
(
˙˙" #
string
˙˙# )
.
˙˙) *
Concat
˙˙* 0
(
˙˙0 1
$str
˙˙1 R
.
˙˙R S
Fill
˙˙S W
(
˙˙W X
$char
˙˙X [
,
˙˙[ \
ConstantsGeneral
˙˙] m
.
˙˙m n"
DEFAULT_FILL_LENGHT˙˙n Å
)˙˙Å Ç
,˙˙Ç É
$str˙˙Ñ é
)˙˙é è
)˙˙è ê
;˙˙ê ë
}
˚˚ 	
internal
˝˝ 
static
˝˝ 
void
˝˝ #
ConfigureGoogleOAuth2
˝˝ 2
(
˝˝2 3 
IServiceCollection
˝˝3 E
services
˝˝F N
,
˝˝N O
ILogger
˝˝P W
_logger
˝˝X _
)
˝˝_ `
{
˛˛ 	
var
ˇˇ '
googleOAuth2Configuration
ˇˇ )
=
ˇˇ* +
new
ˇˇ, /'
GoogleOAuth2Configuration
ˇˇ0 I
(
ˇˇI J
Environment
ÄÄ 
.
ÄÄ  $
GetEnvironmentVariable
ÄÄ  6
(
ÄÄ6 7
$str
ÄÄ7 O
)
ÄÄO P
)
ÅÅ 
;
ÅÅ 
services
ÉÉ 
.
ÉÉ 
AddSingleton
ÉÉ !
(
ÉÉ! "'
googleOAuth2Configuration
ÉÉ" ;
)
ÉÉ; <
;
ÉÉ< =
services
ÑÑ 
.
ÑÑ 
AddSingleton
ÑÑ !
<
ÑÑ! ""
IGoogleOAuth2Service
ÑÑ" 6
,
ÑÑ6 7!
GoogleOAuth2Service
ÑÑ8 K
>
ÑÑK L
(
ÑÑL M
)
ÑÑM N
;
ÑÑN O
_logger
ÖÖ 
.
ÖÖ 
LogInformation
ÖÖ "
(
ÖÖ" #
string
ÖÖ# )
.
ÖÖ) *
Concat
ÖÖ* 0
(
ÖÖ0 1
$str
ÖÖ1 V
.
ÖÖV W
Fill
ÖÖW [
(
ÖÖ[ \
$char
ÖÖ\ _
,
ÖÖ_ `
ConstantsGeneral
ÖÖa q
.
ÖÖq r"
DEFAULT_FILL_LENGHTÖÖr Ö
)ÖÖÖ Ü
,ÖÖÜ á
$strÖÖà í
)ÖÖí ì
)ÖÖì î
;ÖÖî ï
}
ÜÜ 	
}
áá 
}àà Éq
LE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Filters\ActionFilter.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Filters  
{ 
public 

class 
ActionFilter 
: 
IActionFilter  -
,- . 
IAuthorizationFilter/ C
{ 
public 
bool 
IsTestEnvironment %
{& '
get( +
;+ ,
}- .
public 
void 
OnAuthorization #
(# $&
AuthorizationFilterContext$ >
context? F
)F G
{ 	
var 
_jwtService 
= 
context %
.% &
HttpContext& 1
.1 2
RequestServices2 A
.A B

GetServiceB L
<L M
IJwtServiceM X
>X Y
(Y Z
)Z [
;[ \
if 
( 
context 
. 
HttpContext #
.# $
Request$ +
.+ ,
Headers, 3
.3 4
Any4 7
(7 8
x8 9
=>: <
x= >
.> ?
Value? D
.D E
EqualsE K
(K L
$strL [
)[ \
)\ ]
&&^ `
contexta h
.h i
HttpContexti t
.t u
Requestu |
.| }
Path	} Å
.
Å Ç
Value
Ç á
.
á à
Contains
à ê
(
ê ë
$str
ë †
)
† °
)
° ¢
return 
; 
if 
( 
IsTestEnvironment !
||" $
context% ,
., -
Filters- 4
.4 5
Any5 8
(8 9
item9 =
=>> @
itemA E
isF H!
IAllowAnonymousFilterI ^
)^ _
)_ `
return 
; 
if   
(   
context   
.   
HttpContext   #
.  # $
Request  $ +
.  + ,
Headers  , 3
.  3 4
Any  4 7
(  7 8
x  8 9
=>  : <
x  = >
.  > ?
Value  ? D
.  D E
Equals  E K
(  K L
$str  L f
)  f g
)  g h
)  h i
return!! 
;!! 
var## 
token## 
=## 
context## 
.##  
HttpContext##  +
.##+ ,
Request##, 3
.##3 4
Headers##4 ;
[##; <
$str##< K
]##K L
.##L M
ToString##M U
(##U V
)##V W
;##W X
if%% 
(%% 
string%% 
.%% 
IsNullOrEmpty%% $
(%%$ %
token%%% *
)%%* +
)%%+ ,
{&& 
context'' 
.'' 
Result'' 
=''  
new''! $
UnauthorizedResult''% 7
(''7 8
)''8 9
;''9 :
return(( 
;(( 
})) 
var++ 
key++ 
=++ 
	JWTHelper++ 
.++  !
GetUniqueKeyFromToken++  5
(++5 6
token++6 ;
)++; <
;++< =
if-- 
(-- 
!-- 
_jwtService-- 
.-- 
ValidateAccessToken-- 0
(--0 1
token--1 6
.--6 7
Replace--7 >
(--> ?
$str--? H
,--H I
string--J P
.--P Q
Empty--Q V
)--V W
,--W X
new--Y \
Guid--] a
(--a b
key--b e
)--e f
)--f g
)--g h
{.. 
context// 
.// 
Result// 
=//  
new//! $
UnauthorizedResult//% 7
(//7 8
)//8 9
;//9 :
}00 
}11 	
public33 
void33 
OnActionExecuting33 %
(33% &"
ActionExecutingContext33& <
context33= D
)33D E
{44 	
if55 
(55 
context55 
!=55 
null55 
&&55  "
!55# $
context55$ +
.55+ ,

ModelState55, 6
.556 7
IsValid557 >
)55> ?
{66 
var77 
erros77 
=77 
context77 #
.77# $

ModelState77$ .
.77. /
Values77/ 5
.775 6
Select776 <
(77< =
x77= >
=>77? A
String77B H
.77H I
Join77I M
(77M N
$str77N R
,77R S
x77T U
.77U V
Errors77V \
.77\ ]
Select77] c
(77c d
x77d e
=>77f h
x77i j
.77j k
ErrorMessage77k w
)77w x
.77x y
ToList77y 
(	77 Ä
)
77Ä Å
)
77Å Ç
)
77Ç É
.
77É Ñ
ToList
77Ñ ä
(
77ä ã
)
77ã å
;
77å ç
context88 
.88 
Result88 
=88  
new88! $+
UnprocessableEntityObjectResult88% D
(88D E
new88E H!
UnprocessableResponse88I ^
(88^ _
String88_ e
.88e f
Join88f j
(88j k
$str88k p
,88p q
erros88r w
)88w x
,88x y
context	88z Å
.
88Å Ç

ModelState
88Ç å
,
88å ç
context
88é ï
.
88ï ñ
HttpContext
88ñ °
.
88° ¢
TraceIdentifier
88¢ ±
)
88± ≤
)
88≤ ≥
;
88≥ ¥
}99 
}:: 	
public<< 
void<< 
OnActionExecuted<< $
(<<$ %!
ActionExecutedContext<<% :
context<<; B
)<<B C
{== 	
if>> 
(>> 
context>> 
.>> 
	Exception>> !
!=>>" $
null>>% )
)>>) *
{?? 
Log@@ 
(@@ 
context@@ 
)@@ 
;@@ 
contextAA 
.AA 
ResultAA 
=AA  
newAA! $
ObjectResultAA% 1
(AA1 2
contextAA2 9
.AA9 :
	ExceptionAA: C
?AAC D
.AAD E
MessageAAE L
)AAL M
{AAN O

StatusCodeAAP Z
=AA[ \
$numAA] `
}AAa b
;AAb c
contextCC 
.CC 
ExceptionHandledCC (
=CC) *
trueCC+ /
;CC/ 0
}DD 
elseEE 
ifEE 
(EE 
contextEE 
.EE 
ResultEE #
isEE$ &
ObjectResultEE' 3
resultEE4 :
)EE: ;
{FF 
contextGG 
.GG 
ResultGG 
=GG  
HttpActionResultGG! 1
(GG1 2
resultGG2 8
,GG8 9
contextGG: A
.GGA B
HttpContextGGB M
.GGM N
TraceIdentifierGGN ]
)GG] ^
;GG^ _
}HH 
}II 	
privateKK 
staticKK 
voidKK 
LogKK 
(KK  !
ActionExecutedContextKK  5
contextKK6 =
)KK= >
{LL 	
varMM 
loggerMM 
=MM 
contextMM  
.MM  !
HttpContextMM! ,
.MM, -
RequestServicesMM- <
.MM< =

GetServiceMM= G
(MMG H
typeofMMH N
(MMN O
ILoggerMMO V
<MMV W%
ApplicationControllerBaseMMW p
>MMp q
)MMq r
)MMr s
asMMt v
ILoggerMMw ~
;MM~ 
loggerNN 
.NN 
LogErrorNN 
(NN 
contextNN #
.NN# $
	ExceptionNN$ -
,NN- .
contextNN/ 6
.NN6 7
	ExceptionNN7 @
.NN@ A
MessageNNA H
)NNH I
;NNI J
}OO 	
privateQQ 
IActionResultQQ 
HttpActionResultQQ .
(QQ. /
ObjectResultQQ/ ;
resultQQ< B
,QQB C
stringQQD J
	requestIdQQK T
)QQT U
{RR 	
switchSS 
(SS 
resultSS 
.SS 
ValueSS  
.SS  !
GetTypeSS! (
(SS( )
)SS) *
)SS* +
{TT 
caseVV 
varVV 
tVV 
whenVV 
tVV  !
.VV! "
EqualsVV" (
(VV( )
typeofVV) /
(VV/ 0
CreatedResponseVV0 ?
)VV? @
)VV@ A
:VVA B
varWW 
createWW 
=WW  
(WW! "
CreatedResponseWW" 1
)WW1 2
resultWW2 8
.WW8 9
ValueWW9 >
;WW> ?
createXX 
.XX 
DataXX 
=XX  !
nullXX" &
;XX& '
createYY 
.YY 
	RequestIdYY $
=YY% &
	requestIdYY' 0
;YY0 1
returnZZ 
newZZ 
CreatedResultZZ ,
(ZZ, -
$strZZ- /
,ZZ/ 0
createZZ1 7
)ZZ7 8
;ZZ8 9
case]] 
var]] 
t]] 
when]] 
t]]  !
.]]! "
Equals]]" (
(]]( )
typeof]]) /
(]]/ 0
AcceptedResponse]]0 @
)]]@ A
)]]A B
:]]B C
var^^ 
accepted^^  
=^^! "
(^^# $
AcceptedResponse^^$ 4
)^^4 5
result^^5 ;
.^^; <
Value^^< A
;^^A B
accepted__ 
.__ 
Data__ !
=__" #
null__$ (
;__( )
accepted`` 
.`` 
	RequestId`` &
=``' (
	requestId``) 2
;``2 3
returnaa 
newaa 
AcceptedResultaa -
(aa- .
$straa. 0
,aa0 1
acceptedaa2 :
)aa: ;
;aa; <
casedd 
vardd 
tdd 
whendd 
tdd  !
.dd! "
Equalsdd" (
(dd( )
typeofdd) /
(dd/ 0
NoContentResponsedd0 A
)ddA B
)ddB C
:ddC D
returnee 
newee 
NoContentResultee .
(ee. /
)ee/ 0
;ee0 1
casehh 
varhh 
thh 
whenhh 
thh  !
.hh! "
Equalshh" (
(hh( )
typeofhh) /
(hh/ 0
BadRequestResponsehh0 B
)hhB C
)hhC D
:hhD E
varii 
badii 
=ii 
(ii 
BadRequestResponseii 1
)ii1 2
resultii2 8
.ii8 9
Valueii9 >
;ii> ?
badjj 
.jj 
	RequestIdjj !
=jj" #
	requestIdjj$ -
;jj- .
returnkk 
newkk "
BadRequestObjectResultkk 5
(kk5 6
badkk6 9
)kk9 :
;kk: ;
casenn 
varnn 
tnn 
whennn 
tnn  !
.nn! "
Equalsnn" (
(nn( )
typeofnn) /
(nn/ 0 
UnauthorizedResponsenn0 D
)nnD E
)nnE F
:nnF G
returnoo 
newoo 
UnauthorizedResultoo 1
(oo1 2
)oo2 3
;oo3 4
caserr 
varrr 
trr 
whenrr 
trr  !
.rr! "
Equalsrr" (
(rr( )
typeofrr) /
(rr/ 0
ForbiddenResponserr0 A
)rrA B
)rrB C
:rrC D
returnss 
newss 
ForbidResultss +
(ss+ ,
)ss, -
;ss- .
casevv 
varvv 
tvv 
whenvv 
tvv  !
.vv! "
Equalsvv" (
(vv( )
typeofvv) /
(vv/ 0
NotFoundResponsevv0 @
)vv@ A
)vvA B
:vvB C
varww 
notfoundww  
=ww! "
(ww# $
NotFoundResponseww$ 4
)ww4 5
resultww5 ;
.ww; <
Valueww< A
;wwA B
notfoundxx 
.xx 
	RequestIdxx &
=xx' (
	requestIdxx) 2
;xx2 3
returnyy 
newyy  
NotFoundObjectResultyy 3
(yy3 4
notfoundyy4 <
)yy< =
;yy= >
case|| 
var|| 
t|| 
when|| 
t||  !
.||! "
Equals||" (
(||( )
typeof||) /
(||/ 0
ConflictResponse||0 @
)||@ A
)||A B
:||B C
var}} 
conflict}}  
=}}! "
(}}# $
ConflictResponse}}$ 4
)}}4 5
result}}5 ;
.}}; <
Value}}< A
;}}A B
conflict~~ 
.~~ 
	RequestId~~ &
=~~' (
	requestId~~) 2
;~~2 3
return 
new  
ConflictObjectResult 3
(3 4
conflict4 <
)< =
;= >
case
ÇÇ 
var
ÇÇ 
t
ÇÇ 
when
ÇÇ 
t
ÇÇ  !
.
ÇÇ! "
Equals
ÇÇ" (
(
ÇÇ( )
typeof
ÇÇ) /
(
ÇÇ/ 0#
UnprocessableResponse
ÇÇ0 E
)
ÇÇE F
)
ÇÇF G
:
ÇÇG H
var
ÉÉ 
unprocessable
ÉÉ %
=
ÉÉ& '
(
ÉÉ( )#
UnprocessableResponse
ÉÉ) >
)
ÉÉ> ?
result
ÉÉ? E
.
ÉÉE F
Value
ÉÉF K
;
ÉÉK L
unprocessable
ÑÑ !
.
ÑÑ! "
	RequestId
ÑÑ" +
=
ÑÑ, -
	requestId
ÑÑ. 7
;
ÑÑ7 8
return
ÖÖ 
new
ÖÖ -
UnprocessableEntityObjectResult
ÖÖ >
(
ÖÖ> ?
unprocessable
ÖÖ? L
)
ÖÖL M
;
ÖÖM N
default
ëë 
:
ëë 
if
íí 
(
íí 
result
íí 
is
íí !
OkObjectResult
íí" 0
)
íí0 1
return
ìì 
result
ìì %
;
ìì% &
else
îî 
return
ïï 
new
ïï "
OkObjectResult
ïï# 1
(
ïï1 2
result
ïï2 8
.
ïï8 9
Value
ïï9 >
)
ïï> ?
;
ïï? @
}
ññ 
}
óó 	
}
òò 
}ôô î3
[E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Extensions\ProblemDetailsExtensions.cs
	namespace 	

AslaveCare
 
. 
Api 
. 

Extensions #
{ 
public 

static 
class $
ProblemDetailsExtensions 0
{ 
public 
static 
void -
!UseProblemDetailsExceptionHandler <
(< =
this= A
IApplicationBuilderB U
appV Y
,Y Z
ILoggerFactory[ i
loggerFactoryj w
)w x
{ 	
app 
. 
UseExceptionHandler #
(# $
builder$ +
=>, .
{ 
builder 
. 
Run 
( 
async !
context" )
=>* ,
{ 
var #
exceptionHandlerFeature /
=0 1
context2 9
.9 :
Features: B
.B C
GetC F
<F G$
IExceptionHandlerFeatureG _
>_ `
(` a
)a b
;b c
if 
( #
exceptionHandlerFeature /
!=0 2
null3 7
)7 8
{ 
var 
	exception %
=& '#
exceptionHandlerFeature( ?
.? @
Error@ E
;E F
var 
problemDetails *
=+ ,
new- 0
ProblemDetails1 ?
{ 
Instance $
=% &
context' .
.. /
Request/ 6
.6 7
HttpContext7 B
.B C
RequestC J
.J K
PathK O
} 
; 
if!! 
(!! 
	exception!! %
is!!& (#
BadHttpRequestException!!) @#
badHttpRequestException!!A X
)!!X Y
{"" 
problemDetails## *
.##* +
Title##+ 0
=##1 2
$str##3 K
;##K L
problemDetails$$ *
.$$* +
Status$$+ 1
=$$2 3
StatusCodes$$4 ?
.$$? @
Status400BadRequest$$@ S
;$$S T
problemDetails%% *
.%%* +
Detail%%+ 1
=%%2 3#
badHttpRequestException%%4 K
.%%K L
Message%%L S
;%%S T
}&& 
else'' 
{(( 
var)) 
logger))  &
=))' (
loggerFactory))) 6
.))6 7
CreateLogger))7 C
())C D
$str))D \
)))\ ]
;))] ^
logger** "
.**" #
LogError**# +
(**+ ,
$"**, .
$str**. @
{**@ A#
exceptionHandlerFeature**A X
.**X Y
Error**Y ^
}**^ _
"**_ `
)**` a
;**a b
problemDetails,, *
.,,* +
Title,,+ 0
=,,1 2
	exception,,3 <
.,,< =
Message,,= D
;,,D E
problemDetails-- *
.--* +
Status--+ 1
=--2 3
StatusCodes--4 ?
.--? @(
Status500InternalServerError--@ \
;--\ ]
problemDetails.. *
...* +
Detail..+ 1
=..2 3
	exception..4 =
...= >

StackTrace..> H
...H I
ToString..I Q
(..Q R
)..R S
;..S T
}// 
context11 
.11  
Response11  (
.11( )

StatusCode11) 3
=114 5
problemDetails116 D
.11D E
Status11E K
.11K L
Value11L Q
;11Q R
context22 
.22  
Response22  (
.22( )
ContentType22) 4
=225 6
$str227 Q
;22Q R
var44 
json44  
=44! "
JsonConvert44# .
.44. /
SerializeObject44/ >
(44> ?
problemDetails44? M
,44M N#
JsonConfigurationHelper44O f
.44f g
GetJsonSettings44g v
(44v w
)44w x
)44x y
;44y z
await55 
context55 %
.55% &
Response55& .
.55. /

WriteAsync55/ 9
(559 :
json55: >
)55> ?
;55? @
}66 
}77 
)77 
;77 
}88 
)88 
;88 
}99 	
public;; 
static;; 
IServiceCollection;; (-
!ConfigureProblemDetailsModelState;;) J
(;;J K
this;;K O
IServiceCollection;;P b
services;;c k
,;;k l
ILogger;;m t
_logger;;u |
);;| }
{<< 	
_logger== 
.== 
LogInformation== "
(==" #
string==# )
.==) *
Concat==* 0
(==0 1
$str==1 U
.==U V
Fill==V Z
(==Z [
$char==[ ^
,==^ _
ConstantsGeneral==` p
.==p q 
DEFAULT_FILL_LENGHT	==q Ñ
)
==Ñ Ö
,
==Ö Ü
$str
==á ë
)
==ë í
)
==í ì
;
==ì î
return>> 
services>> 
.>> 
	Configure>> %
<>>% &
ApiBehaviorOptions>>& 8
>>>8 9
(>>9 :
options>>: A
=>>>B D
{?? 
options@@ 
.@@ ,
 InvalidModelStateResponseFactory@@ 8
=@@9 :
context@@; B
=>@@C E
{AA 
varBB 
problemDetailsBB &
=BB' (
newBB) ,$
ValidationProblemDetailsBB- E
(BBE F
contextBBF M
.BBM N

ModelStateBBN X
)BBX Y
{CC 
InstanceDD  
=DD! "
contextDD# *
.DD* +
HttpContextDD+ 6
.DD6 7
RequestDD7 >
.DD> ?
PathDD? C
,DDC D
StatusEE 
=EE  
StatusCodesEE! ,
.EE, -
Status400BadRequestEE- @
,EE@ A
DetailFF 
=FF  
$strFF! ]
}GG 
;GG 
returnII 
newII "
BadRequestObjectResultII 5
(II5 6
problemDetailsII6 D
)IID E
{JJ 
ContentTypesKK $
=KK% &
{KK' (
$strKK) C
,KKC D
$strKKE ^
}KK_ `
}LL 
;LL 
}MM 
;MM 
}NN 
)NN 
;NN 
}OO 	
}PP 
}QQ õ°
UE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Controllers\v1\UserController.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Controllers $
.$ %
v1% '
{ 
public 

class 
UserController 
:  !
EntityController" 2
<2 3
UserAddModel3 ?
,? @
UserUpdateModelA P
,P Q
UserPatchModelR `
,` a
UserGetModelb n
,n o
	UserModelp y
,y z
Guid{ 
>	 Ä
{ 
private 
readonly 
IUserService %
_service& .
;. /
public 
UserController 
( 
IUserService *
service+ 2
)2 3
: 
base 
( 
service 
) 
{ 	
_service 
= 
service 
; 
} 	
[ 	

HttpDelete	 
( 
$str &
)& '
]' (
[   	 
ProducesResponseType  	 
(   
typeof   $
(  $ %

OkResponse  % /
<  / 0"
DefaultMessageResponse  0 F
>  F G
)  G H
,  H I
(  J K
int  K N
)  N O
HttpStatusCode  O ]
.  ] ^
OK  ^ `
)  ` a
]  a b
[!! 	 
ProducesResponseType!!	 
(!! 
typeof!! $
(!!$ % 
UnauthorizedResponse!!% 9
)!!9 :
,!!: ;
(!!< =
int!!= @
)!!@ A
HttpStatusCode!!A O
.!!O P
Unauthorized!!P \
)!!\ ]
]!!] ^
["" 	 
ProducesResponseType""	 
("" 
typeof"" $
(""$ %
NoContentResponse""% 6
)""6 7
,""7 8
(""9 :
int"": =
)""= >
HttpStatusCode""> L
.""L M
	NoContent""M V
)""V W
]""W X
[## 	 
ProducesResponseType##	 
(## 
typeof## $
(##$ %
ConflictResponse##% 5
)##5 6
,##6 7
(##8 9
int##9 <
)##< =
HttpStatusCode##= K
.##K L
Conflict##L T
)##T U
]##U V
[$$ 	 
ProducesResponseType$$	 
($$ 
typeof$$ $
($$$ %
BadRequestResponse$$% 7
)$$7 8
,$$8 9
($$: ;
int$$; >
)$$> ?
HttpStatusCode$$? M
.$$M N

BadRequest$$N X
)$$X Y
]$$Y Z
[%% 	 
ProducesResponseType%%	 
(%% 
typeof%% $
(%%$ %
object%%% +
)%%+ ,
,%%, -
(%%. /
int%%/ 2
)%%2 3
HttpStatusCode%%3 A
.%%A B
InternalServerError%%B U
)%%U V
]%%V W
public&& 
async&& 
Task&& 
<&& 
IResponseBase&& '
>&&' (

SoftDelete&&) 3
(&&3 4
Guid&&4 8
id&&9 ;
)&&; <
{'' 	
return(( 
await(( 
_service(( !
.((! "
SoftDeleteById((" 0
(((0 1
id((1 3
)((3 4
;((4 5
})) 	
[// 	

HttpDelete//	 
(// 
$str// 2
)//2 3
]//3 4
[00 	 
ProducesResponseType00	 
(00 
typeof00 $
(00$ %

OkResponse00% /
<00/ 0"
DefaultMessageResponse000 F
>00F G
)00G H
,00H I
(00J K
int00K N
)00N O
HttpStatusCode00O ]
.00] ^
OK00^ `
)00` a
]00a b
[11 	 
ProducesResponseType11	 
(11 
typeof11 $
(11$ % 
UnauthorizedResponse11% 9
)119 :
,11: ;
(11< =
int11= @
)11@ A
HttpStatusCode11A O
.11O P
Unauthorized11P \
)11\ ]
]11] ^
[22 	 
ProducesResponseType22	 
(22 
typeof22 $
(22$ %
NoContentResponse22% 6
)226 7
,227 8
(229 :
int22: =
)22= >
HttpStatusCode22> L
.22L M
	NoContent22M V
)22V W
]22W X
[33 	 
ProducesResponseType33	 
(33 
typeof33 $
(33$ %
ConflictResponse33% 5
)335 6
,336 7
(338 9
int339 <
)33< =
HttpStatusCode33= K
.33K L
Conflict33L T
)33T U
]33U V
[44 	 
ProducesResponseType44	 
(44 
typeof44 $
(44$ %
BadRequestResponse44% 7
)447 8
,448 9
(44: ;
int44; >
)44> ?
HttpStatusCode44? M
.44M N

BadRequest44N X
)44X Y
]44Y Z
[55 	 
ProducesResponseType55	 
(55 
typeof55 $
(55$ %
object55% +
)55+ ,
,55, -
(55. /
int55/ 2
)552 3
HttpStatusCode553 A
.55A B
InternalServerError55B U
)55U V
]55V W
public66 
async66 
Task66 
<66 
IResponseBase66 '
>66' (
SoftDeleteByEmail66) :
(66: ;
string66; A
email66B G
)66G H
{77 	
return88 
await88 
_service88 !
.88! "
SoftDeleteByEmail88" 3
(883 4
email884 9
)889 :
;88: ;
}99 	
[?? 	

HttpDelete??	 
(?? 
$str?? ?
)??? @
]??@ A
[@@ 	 
ProducesResponseType@@	 
(@@ 
typeof@@ $
(@@$ %

OkResponse@@% /
<@@/ 0"
DefaultMessageResponse@@0 F
>@@F G
)@@G H
,@@H I
(@@J K
int@@K N
)@@N O
HttpStatusCode@@O ]
.@@] ^
OK@@^ `
)@@` a
]@@a b
[AA 	 
ProducesResponseTypeAA	 
(AA 
typeofAA $
(AA$ % 
UnauthorizedResponseAA% 9
)AA9 :
,AA: ;
(AA< =
intAA= @
)AA@ A
HttpStatusCodeAAA O
.AAO P
UnauthorizedAAP \
)AA\ ]
]AA] ^
[BB 	 
ProducesResponseTypeBB	 
(BB 
typeofBB $
(BB$ %
NoContentResponseBB% 6
)BB6 7
,BB7 8
(BB9 :
intBB: =
)BB= >
HttpStatusCodeBB> L
.BBL M
	NoContentBBM V
)BBV W
]BBW X
[CC 	 
ProducesResponseTypeCC	 
(CC 
typeofCC $
(CC$ %
ConflictResponseCC% 5
)CC5 6
,CC6 7
(CC8 9
intCC9 <
)CC< =
HttpStatusCodeCC= K
.CCK L
ConflictCCL T
)CCT U
]CCU V
[DD 	 
ProducesResponseTypeDD	 
(DD 
typeofDD $
(DD$ %
BadRequestResponseDD% 7
)DD7 8
,DD8 9
(DD: ;
intDD; >
)DD> ?
HttpStatusCodeDD? M
.DDM N

BadRequestDDN X
)DDX Y
]DDY Z
[EE 	 
ProducesResponseTypeEE	 
(EE 
typeofEE $
(EE$ %
objectEE% +
)EE+ ,
,EE, -
(EE. /
intEE/ 2
)EE2 3
HttpStatusCodeEE3 A
.EEA B
InternalServerErrorEEB U
)EEU V
]EEV W
publicFF 
asyncFF 
TaskFF 
<FF 
IResponseBaseFF '
>FF' (#
SoftDeleteByPhoneNumberFF) @
(FF@ A
stringFFA G
phoneNumberFFH S
)FFS T
{GG 	
returnHH 
awaitHH 
_serviceHH !
.HH! "#
SoftDeleteByPhoneNumberHH" 9
(HH9 :
phoneNumberHH: E
)HHE F
;HHF G
}II 	
[OO 	
HttpPutOO	 
(OO 
$strOO 
)OO 
]OO 
[PP 	 
ProducesResponseTypePP	 
(PP 
typeofPP $
(PP$ %

OkResponsePP% /
<PP/ 0
UserGetModelPP0 <
>PP< =
)PP= >
,PP> ?
(PP@ A
intPPA D
)PPD E
HttpStatusCodePPE S
.PPS T
OKPPT V
)PPV W
]PPW X
[QQ 	 
ProducesResponseTypeQQ	 
(QQ 
typeofQQ $
(QQ$ % 
UnauthorizedResponseQQ% 9
)QQ9 :
,QQ: ;
(QQ< =
intQQ= @
)QQ@ A
HttpStatusCodeQQA O
.QQO P
UnauthorizedQQP \
)QQ\ ]
]QQ] ^
[RR 	 
ProducesResponseTypeRR	 
(RR 
typeofRR $
(RR$ %
NoContentResponseRR% 6
)RR6 7
,RR7 8
(RR9 :
intRR: =
)RR= >
HttpStatusCodeRR> L
.RRL M
	NoContentRRM V
)RRV W
]RRW X
[SS 	 
ProducesResponseTypeSS	 
(SS 
typeofSS $
(SS$ %
ConflictResponseSS% 5
)SS5 6
,SS6 7
(SS8 9
intSS9 <
)SS< =
HttpStatusCodeSS= K
.SSK L
ConflictSSL T
)SST U
]SSU V
[TT 	 
ProducesResponseTypeTT	 
(TT 
typeofTT $
(TT$ %
BadRequestResponseTT% 7
)TT7 8
,TT8 9
(TT: ;
intTT; >
)TT> ?
HttpStatusCodeTT? M
.TTM N

BadRequestTTN X
)TTX Y
]TTY Z
[UU 	 
ProducesResponseTypeUU	 
(UU 
typeofUU $
(UU$ %
objectUU% +
)UU+ ,
,UU, -
(UU. /
intUU/ 2
)UU2 3
HttpStatusCodeUU3 A
.UUA B
InternalServerErrorUUB U
)UUU V
]UUV W
publicVV 
asyncVV 
TaskVV 
<VV 
IResponseBaseVV '
>VV' (
UpdateByTokenAsyncVV) ;
(VV; <
[VV< =
FromBodyVV= E
]VVE F
UserUpdateModelVVG V
modelVVW \
)VV\ ]
{WW 	
returnXX 
awaitXX 
_serviceXX !
.XX! "
UpdateByTokenAsyncXX" 4
(XX4 5
RequestXX5 <
.XX< =
HeadersXX= D
[XXD E
$strXXE T
]XXT U
,XXU V
modelXXW \
)XX\ ]
;XX] ^
}YY 	
[[[ 	
ApiExplorerSettings[[	 
([[ 
	IgnoreApi[[ &
=[[' (
true[[) -
)[[- .
][[. /
public\\ 
override\\ 
IResponseBase\\ %
Delete\\& ,
(\\, -
Guid\\- 1
id\\2 4
)\\4 5
{]] 	
return^^ 
base^^ 
.^^ 
Delete^^ 
(^^ 
id^^ !
)^^! "
;^^" #
}__ 	
[aa 	
ApiExplorerSettingsaa	 
(aa 
	IgnoreApiaa &
=aa' (
trueaa) -
)aa- .
]aa. /
publicbb 
overridebb 
Taskbb 
<bb 
IResponseBasebb *
>bb* +
Putbb, /
(bb/ 0
Guidbb0 4
idbb5 7
,bb7 8
[bb9 :
FromBodybb: B
]bbB C
UserUpdateModelbbD S
modelbbT Y
)bbY Z
{cc 	
returndd 
basedd 
.dd 
Putdd 
(dd 
iddd 
,dd 
modeldd  %
)dd% &
;dd& '
}ee 	
[gg 	
ApiExplorerSettingsgg	 
(gg 
	IgnoreApigg &
=gg' (
truegg) -
)gg- .
]gg. /
publichh 
overridehh 
asynchh 
Taskhh "
<hh" #
IResponseBasehh# 0
>hh0 1
Posthh2 6
(hh6 7
[hh7 8
FromBodyhh8 @
]hh@ A
UserAddModelhhB N
modelhhO T
)hhT U
{ii 	
returnjj 
awaitjj 
Taskjj 
.jj 
Runjj !
(jj! "
(jj" #
)jj# $
=>jj% '
{jj( )
returnjj* 0
newjj1 4 
UnauthorizedResponsejj5 I
(jjI J
)jjJ K
;jjK L
}jjM N
)jjN O
;jjO P
}kk 	
[mm 	
ApiExplorerSettingsmm	 
(mm 
	IgnoreApimm &
=mm' (
truemm) -
)mm- .
]mm. /
publicnn 
overridenn 
asyncnn 
Tasknn "
<nn" #
IResponseBasenn# 0
>nn0 1
Getnn2 5
(nn5 6
intnn6 9
?nn9 :
pagenn; ?
,nn? @
intnnA D
?nnD E
pageSizennF N
)nnN O
{oo 	
returnpp 
awaitpp 
Taskpp 
.pp 
Runpp !
(pp! "
(pp" #
)pp# $
=>pp% '
{pp( )
returnpp* 0
newpp1 4 
UnauthorizedResponsepp5 I
(ppI J
)ppJ K
;ppK L
}ppM N
)ppN O
;ppO P
}qq 	
[ss 	
HttpPostss	 
(ss 
$strss :
)ss: ;
]ss; <
publictt 
asynctt 
Tasktt 
<tt 
IResponseBasett '
>tt' (
CheckPhoneNumbertt) 9
(tt9 :
stringtt: @
phoneNumberttA L
)ttL M
{uu 	
returnvv 
awaitvv 
_servicevv !
.vv! "#
CheckPhoneNumberByTokenvv" 9
(vv9 :
Requestvv: A
.vvA B
HeadersvvB I
[vvI J
$strvvJ Y
]vvY Z
,vvZ [
phoneNumbervv\ g
)vvg h
;vvh i
}ww 	
[yy 	
HttpPostyy	 
(yy 
$stryy b
)yyb c
]yyc d
publiczz 
asynczz 
Taskzz 
<zz 
IResponseBasezz '
>zz' (
ValidatePhoneNumberzz) <
(zz< =
stringzz= C
phoneNumberzzD O
,zzO P
stringzzQ W
confirmationCodezzX h
)zzh i
{{{ 	
return|| 
await|| 
_service|| !
.||! "/
#ValidateAndUpdatePhoneNumberByToken||" E
(||E F
Request||F M
.||M N
Headers||N U
[||U V
$str||V e
]||e f
,||f g
phoneNumber||h s
,||s t
confirmationCode	||u Ö
)
||Ö Ü
;
||Ü á
}}} 	
[
ÇÇ 	
HttpGet
ÇÇ	 
(
ÇÇ 
$str
ÇÇ $
)
ÇÇ$ %
]
ÇÇ% &
[
ÉÉ 	"
ProducesResponseType
ÉÉ	 
(
ÉÉ 
typeof
ÉÉ $
(
ÉÉ$ %

OkResponse
ÉÉ% /
<
ÉÉ/ 0
IEnumerable
ÉÉ0 ;
<
ÉÉ; <
UserGetModel
ÉÉ< H
>
ÉÉH I
>
ÉÉI J
)
ÉÉJ K
,
ÉÉK L
(
ÉÉM N
int
ÉÉN Q
)
ÉÉQ R
HttpStatusCode
ÉÉR `
.
ÉÉ` a
OK
ÉÉa c
)
ÉÉc d
]
ÉÉd e
[
ÑÑ 	"
ProducesResponseType
ÑÑ	 
(
ÑÑ 
typeof
ÑÑ $
(
ÑÑ$ %"
UnauthorizedResponse
ÑÑ% 9
)
ÑÑ9 :
,
ÑÑ: ;
(
ÑÑ< =
int
ÑÑ= @
)
ÑÑ@ A
HttpStatusCode
ÑÑA O
.
ÑÑO P
Unauthorized
ÑÑP \
)
ÑÑ\ ]
]
ÑÑ] ^
[
ÖÖ 	"
ProducesResponseType
ÖÖ	 
(
ÖÖ 
typeof
ÖÖ $
(
ÖÖ$ %
NoContentResponse
ÖÖ% 6
)
ÖÖ6 7
,
ÖÖ7 8
(
ÖÖ9 :
int
ÖÖ: =
)
ÖÖ= >
HttpStatusCode
ÖÖ> L
.
ÖÖL M
	NoContent
ÖÖM V
)
ÖÖV W
]
ÖÖW X
[
ÜÜ 	"
ProducesResponseType
ÜÜ	 
(
ÜÜ 
typeof
ÜÜ $
(
ÜÜ$ % 
BadRequestResponse
ÜÜ% 7
)
ÜÜ7 8
,
ÜÜ8 9
(
ÜÜ: ;
int
ÜÜ; >
)
ÜÜ> ?
HttpStatusCode
ÜÜ? M
.
ÜÜM N

BadRequest
ÜÜN X
)
ÜÜX Y
]
ÜÜY Z
[
áá 	"
ProducesResponseType
áá	 
(
áá 
typeof
áá $
(
áá$ %
object
áá% +
)
áá+ ,
,
áá, -
(
áá. /
int
áá/ 2
)
áá2 3
HttpStatusCode
áá3 A
.
ááA B!
InternalServerError
ááB U
)
ááU V
]
ááV W
public
àà 
async
àà 
Task
àà 
<
àà 
IResponseBase
àà '
>
àà' (
GetByParams
àà) 4
(
àà4 5
[
àà5 6
	FromQuery
àà6 ?
]
àà? @&
UserGetByParametersModel
ààA Y

parameters
ààZ d
)
ààd e
{
ââ 	
return
ää 
await
ää 
_service
ää !
.
ää! "
GetByParameters
ää" 1
(
ää1 2

parameters
ää2 <
)
ää< =
;
ää= >
}
ãã 	
[
íí 	!
ApiExplorerSettings
íí	 
(
íí 
	IgnoreApi
íí &
=
íí' (
true
íí) -
)
íí- .
]
íí. /
[
ìì 	
	Authorize
ìì	 
(
ìì 
Roles
ìì 
=
ìì 
UserType
ìì #
.
ìì# $
Master
ìì$ *
)
ìì* +
]
ìì+ ,
[
îî 	
HttpPut
îî	 
(
îî 
$str
îî #
)
îî# $
]
îî$ %
[
ïï 	"
ProducesResponseType
ïï	 
(
ïï 
typeof
ïï $
(
ïï$ %

OkResponse
ïï% /
<
ïï/ 0
UserGetModel
ïï0 <
>
ïï< =
)
ïï= >
,
ïï> ?
(
ïï@ A
int
ïïA D
)
ïïD E
HttpStatusCode
ïïE S
.
ïïS T
OK
ïïT V
)
ïïV W
]
ïïW X
[
ññ 	"
ProducesResponseType
ññ	 
(
ññ 
typeof
ññ $
(
ññ$ %"
UnauthorizedResponse
ññ% 9
)
ññ9 :
,
ññ: ;
(
ññ< =
int
ññ= @
)
ññ@ A
HttpStatusCode
ññA O
.
ññO P
Unauthorized
ññP \
)
ññ\ ]
]
ññ] ^
[
óó 	"
ProducesResponseType
óó	 
(
óó 
typeof
óó $
(
óó$ %
NoContentResponse
óó% 6
)
óó6 7
,
óó7 8
(
óó9 :
int
óó: =
)
óó= >
HttpStatusCode
óó> L
.
óóL M
	NoContent
óóM V
)
óóV W
]
óóW X
[
òò 	"
ProducesResponseType
òò	 
(
òò 
typeof
òò $
(
òò$ %
ConflictResponse
òò% 5
)
òò5 6
,
òò6 7
(
òò8 9
int
òò9 <
)
òò< =
HttpStatusCode
òò= K
.
òòK L
Conflict
òòL T
)
òòT U
]
òòU V
[
ôô 	"
ProducesResponseType
ôô	 
(
ôô 
typeof
ôô $
(
ôô$ % 
BadRequestResponse
ôô% 7
)
ôô7 8
,
ôô8 9
(
ôô: ;
int
ôô; >
)
ôô> ?
HttpStatusCode
ôô? M
.
ôôM N

BadRequest
ôôN X
)
ôôX Y
]
ôôY Z
[
öö 	"
ProducesResponseType
öö	 
(
öö 
typeof
öö $
(
öö$ %
object
öö% +
)
öö+ ,
,
öö, -
(
öö. /
int
öö/ 2
)
öö2 3
HttpStatusCode
öö3 A
.
ööA B!
InternalServerError
ööB U
)
ööU V
]
ööV W
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
õõ' (!
UpdateByMasterAsync
õõ) <
(
õõ< =
[
õõ= >
	FromRoute
õõ> G
]
õõG H
Guid
õõI M
id
õõN P
,
õõP Q
[
õõR S
FromBody
õõS [
]
õõ[ \%
UserUpdateByMasterModel
õõ] t
model
õõu z
)
õõz {
{
úú 	
return
ùù 
await
ùù 
_service
ùù !
.
ùù! "!
UpdateByMasterAsync
ùù" 5
(
ùù5 6
id
ùù6 8
,
ùù8 9
model
ùù: ?
)
ùù? @
;
ùù@ A
}
ûû 	
}
üü 
}†† ¨	
UE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Controllers\v1\TypeController.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Controllers $
.$ %
v1% '
{		 
[

 
AllowAnonymous

 
]

 
[ 
Route 

(
 
$str  
)  !
]! "
[ 
Produces 
( 
$str  
)  !
]! "
public 

class 
TypeController 
:  !
ControllerBase" 0
{ 
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
IResponseBase 
GetStockType )
() *
)* +
{ 	
return 
new 

OkResponse !
<! "
object" (
>( )
() *
EnumExtensions* 8
.8 9
EnumToObject9 E
<E F
	StockTypeF O
>O P
(P Q
)Q R
)R S
;S T
} 	
} 
} ˆ+
YE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Controllers\v1\TaskNoteController.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Controllers $
.$ %
v1% '
{ 
public 

class 
TaskNoteController #
:$ %
EntityController& 6
<6 7
TaskNoteAddModel7 G
,G H
TaskNoteUpdateModelI \
,\ ]
TaskNotePatchModel^ p
,p q
TaskNoteGetModel	r Ç
,
Ç É
TaskNoteModel
Ñ ë
,
ë í
Guid
ì ó
>
ó ò
{ 
private 
readonly 
ITaskNoteService )
_service* 2
;2 3
public 
TaskNoteController !
(! "
ITaskNoteService" 2
service3 :
): ;
: 
base 
( 
service 
) 
{ 	
_service 
= 
service 
; 
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
[   	 
ProducesResponseType  	 
(   
typeof   $
(  $ %

OkResponse  % /
<  / 0
IEnumerable  0 ;
<  ; <
StockGetModel  < I
>  I J
>  J K
)  K L
,  L M
(  N O
int  O R
)  R S
HttpStatusCode  S a
.  a b
OK  b d
)  d e
]  e f
[!! 	 
ProducesResponseType!!	 
(!! 
typeof!! $
(!!$ % 
UnauthorizedResponse!!% 9
)!!9 :
,!!: ;
(!!< =
int!!= @
)!!@ A
HttpStatusCode!!A O
.!!O P
Unauthorized!!P \
)!!\ ]
]!!] ^
["" 	 
ProducesResponseType""	 
("" 
typeof"" $
(""$ %
NoContentResponse""% 6
)""6 7
,""7 8
(""9 :
int"": =
)""= >
HttpStatusCode""> L
.""L M
	NoContent""M V
)""V W
]""W X
[## 	 
ProducesResponseType##	 
(## 
typeof## $
(##$ %
BadRequestResponse##% 7
)##7 8
,##8 9
(##: ;
int##; >
)##> ?
HttpStatusCode##? M
.##M N

BadRequest##N X
)##X Y
]##Y Z
[$$ 	 
ProducesResponseType$$	 
($$ 
typeof$$ $
($$$ %
object$$% +
)$$+ ,
,$$, -
($$. /
int$$/ 2
)$$2 3
HttpStatusCode$$3 A
.$$A B
InternalServerError$$B U
)$$U V
]$$V W
public%% 
async%% 
Task%% 
<%% 
IResponseBase%% '
>%%' (
GetToListAsync%%) 7
(%%7 8
CancellationToken%%8 I
cancellation%%J V
)%%V W
{&& 	
return'' 
await'' 
_service'' !
.''! "
GetToListAsync''" 0
(''0 1
Request''1 8
.''8 9
Headers''9 @
[''@ A
$str''A P
]''P Q
,''Q R
cancellation''S _
)''_ `
;''` a
}(( 	
public** 
override** 
async** 
Task** "
<**" #
IResponseBase**# 0
>**0 1
Get**2 5
(**5 6
int**6 9
?**9 :
page**; ?
,**? @
int**A D
?**D E
pageSize**F N
)**N O
{++ 	
return,, 
await,, 
Task,, 
.,, 
Run,, !
(,,! "
(,," #
),,# $
=>,,% '
{,,( )
return,,* 0
new,,1 4 
UnauthorizedResponse,,5 I
(,,I J
),,J K
;,,K L
},,M N
),,N O
;,,O P
}-- 	
public// 
override// 
async// 
Task// "
<//" #
IResponseBase//# 0
>//0 1
Get//2 5
(//5 6
Guid//6 :
id//; =
)//= >
{00 	
return11 
await11 
Task11 
.11 
Run11 !
(11! "
(11" #
)11# $
=>11% '
{11( )
return11* 0
new111 4 
UnauthorizedResponse115 I
(11I J
)11J K
;11K L
}11M N
)11N O
;11O P
}22 	
public44 
override44 
async44 
Task44 "
<44" #
IResponseBase44# 0
>440 1
Put442 5
(445 6
Guid446 :
id44; =
,44= >
[44? @
FromBody44@ H
]44H I
TaskNoteUpdateModel44J ]
model44^ c
)44c d
{55 	
return66 
await66 
Task66 
.66 
Run66 !
(66! "
(66" #
)66# $
=>66% '
{66( )
return66* 0
new661 4 
UnauthorizedResponse665 I
(66I J
)66J K
;66K L
}66M N
)66N O
;66O P
}77 	
public99 
override99 
IResponseBase99 %
Delete99& ,
(99, -
Guid99- 1
id992 4
)994 5
{:: 	
return;; 
new;;  
UnauthorizedResponse;; +
(;;+ ,
);;, -
;;;- .
}<< 	
}== 
}>> Ì;
YE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Controllers\v1\SupplierController.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Controllers $
.$ %
v1% '
{ 
public 

class 
SupplierController #
:$ %
EntityController& 6
<6 7
SupplierAddModel7 G
,G H
SupplierUpdateModelI \
,\ ]
SupplierPatchModel^ p
,p q
SupplierGetModel	r Ç
,
Ç É
SupplierModel
Ñ ë
,
ë í
Guid
ì ó
>
ó ò
{ 
private 
readonly 
ISupplierService )
_supplierService* :
;: ;
public 
SupplierController !
(! "
ISupplierService" 2
supplierService3 B
)B C
: 
base 
( 
supplierService "
)" #
{ 	
_supplierService 
= 
supplierService .
;. /
} 	
[ 	
HttpGet	 
( 
$str '
)' (
]( )
[ 	 
ProducesResponseType	 
( 
typeof $
($ %

OkResponse% /
</ 0
SupplierGetModel0 @
>@ A
)A B
,B C
(D E
intE H
)H I
HttpStatusCodeI W
.W X
OKX Z
)Z [
][ \
[ 	 
ProducesResponseType	 
( 
typeof $
($ % 
UnauthorizedResponse% 9
)9 :
,: ;
(< =
int= @
)@ A
HttpStatusCodeA O
.O P
UnauthorizedP \
)\ ]
]] ^
[   	 
ProducesResponseType  	 
(   
typeof   $
(  $ %
NoContentResponse  % 6
)  6 7
,  7 8
(  9 :
int  : =
)  = >
HttpStatusCode  > L
.  L M
	NoContent  M V
)  V W
]  W X
[!! 	 
ProducesResponseType!!	 
(!! 
typeof!! $
(!!$ %
BadRequestResponse!!% 7
)!!7 8
,!!8 9
(!!: ;
int!!; >
)!!> ?
HttpStatusCode!!? M
.!!M N

BadRequest!!N X
)!!X Y
]!!Y Z
["" 	 
ProducesResponseType""	 
("" 
typeof"" $
(""$ %
object""% +
)""+ ,
,"", -
("". /
int""/ 2
)""2 3
HttpStatusCode""3 A
.""A B
InternalServerError""B U
)""U V
]""V W
public## 
async## 
Task## 
<## 
IResponseBase## '
>##' (
GetByEmailAsync##) 8
(##8 9
[##9 :
	FromRoute##: C
]##C D
[##D E
Required##E M
]##M N
string##O U
email##V [
)##[ \
{$$ 	
return%% 
await%% 
_supplierService%% )
.%%) *
GetByEmailAsync%%* 9
(%%9 :
email%%: ?
)%%? @
;%%@ A
}&& 	
[++ 	
HttpGet++	 
(++ 
$str++ $
)++$ %
]++% &
[,, 	 
ProducesResponseType,,	 
(,, 
typeof,, $
(,,$ %

OkResponse,,% /
<,,/ 0
IEnumerable,,0 ;
<,,; <
SupplierGetModel,,< L
>,,L M
>,,M N
),,N O
,,,O P
(,,Q R
int,,R U
),,U V
HttpStatusCode,,V d
.,,d e
OK,,e g
),,g h
],,h i
[-- 	 
ProducesResponseType--	 
(-- 
typeof-- $
(--$ % 
UnauthorizedResponse--% 9
)--9 :
,--: ;
(--< =
int--= @
)--@ A
HttpStatusCode--A O
.--O P
Unauthorized--P \
)--\ ]
]--] ^
[.. 	 
ProducesResponseType..	 
(.. 
typeof.. $
(..$ %
NoContentResponse..% 6
)..6 7
,..7 8
(..9 :
int..: =
)..= >
HttpStatusCode..> L
...L M
	NoContent..M V
)..V W
]..W X
[// 	 
ProducesResponseType//	 
(// 
typeof// $
(//$ %
BadRequestResponse//% 7
)//7 8
,//8 9
(//: ;
int//; >
)//> ?
HttpStatusCode//? M
.//M N

BadRequest//N X
)//X Y
]//Y Z
[00 	 
ProducesResponseType00	 
(00 
typeof00 $
(00$ %
object00% +
)00+ ,
,00, -
(00. /
int00/ 2
)002 3
HttpStatusCode003 A
.00A B
InternalServerError00B U
)00U V
]00V W
public11 
async11 
Task11 
<11 
IResponseBase11 '
>11' (
GetByParams11) 4
(114 5
[115 6
	FromQuery116 ?
]11? @(
SupplierGetByParametersModel11A ]

parameters11^ h
)11h i
{22 	
return33 
await33 
_supplierService33 )
.33) *
GetByParameters33* 9
(339 :

parameters33: D
)33D E
;33E F
}44 	
[99 	
HttpGet99	 
(99 
$str99 
)99 
]99 
[:: 	 
ProducesResponseType::	 
(:: 
typeof:: $
(::$ %

OkResponse::% /
<::/ 0
IEnumerable::0 ;
<::; <
SupplierGetModel::< L
>::L M
>::M N
)::N O
,::O P
(::Q R
int::R U
)::U V
HttpStatusCode::V d
.::d e
OK::e g
)::g h
]::h i
[;; 	 
ProducesResponseType;;	 
(;; 
typeof;; $
(;;$ % 
UnauthorizedResponse;;% 9
);;9 :
,;;: ;
(;;< =
int;;= @
);;@ A
HttpStatusCode;;A O
.;;O P
Unauthorized;;P \
);;\ ]
];;] ^
[<< 	 
ProducesResponseType<<	 
(<< 
typeof<< $
(<<$ %
NoContentResponse<<% 6
)<<6 7
,<<7 8
(<<9 :
int<<: =
)<<= >
HttpStatusCode<<> L
.<<L M
	NoContent<<M V
)<<V W
]<<W X
[== 	 
ProducesResponseType==	 
(== 
typeof== $
(==$ %
BadRequestResponse==% 7
)==7 8
,==8 9
(==: ;
int==; >
)==> ?
HttpStatusCode==? M
.==M N

BadRequest==N X
)==X Y
]==Y Z
[>> 	 
ProducesResponseType>>	 
(>> 
typeof>> $
(>>$ %
object>>% +
)>>+ ,
,>>, -
(>>. /
int>>/ 2
)>>2 3
HttpStatusCode>>3 A
.>>A B
InternalServerError>>B U
)>>U V
]>>V W
public?? 
async?? 
Task?? 
<?? 
IResponseBase?? '
>??' (
GetToListAsync??) 7
(??7 8
)??8 9
{@@ 	
returnAA 
awaitAA 
_supplierServiceAA )
.AA) *
GetToListAsyncAA* 8
(AA8 9
)AA9 :
;AA: ;
}BB 	
}CC 
}DD ‡
ZE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Controllers\v1\StockTypeController.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Controllers $
.$ %
v1% '
{ 
public 

class 
StockTypeController $
:% &
EntityController' 7
<7 8
StockTypeAddModel8 I
,I J 
StockTypeUpdateModelK _
,_ `
StockTypePatchModela t
,t u
StockTypeGetModel	v á
,
á à
StockTypeModel
â ó
,
ó ò
string
ô ü
>
ü †
{ 
private 
readonly 
IStockTypeService *
_service+ 3
;3 4
public 
StockTypeController "
(" #
IStockTypeService# 4
service5 <
)< =
: 
base 
( 
service 
) 
{ 	
_service 
= 
service 
; 
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
[ 	 
ProducesResponseType	 
( 
typeof $
($ %

OkResponse% /
</ 0
IEnumerable0 ;
<; <
StockTypeGetModel< M
>M N
>N O
)O P
,P Q
(R S
intS V
)V W
HttpStatusCodeW e
.e f
OKf h
)h i
]i j
[ 	 
ProducesResponseType	 
( 
typeof $
($ % 
UnauthorizedResponse% 9
)9 :
,: ;
(< =
int= @
)@ A
HttpStatusCodeA O
.O P
UnauthorizedP \
)\ ]
]] ^
[ 	 
ProducesResponseType	 
( 
typeof $
($ %
NoContentResponse% 6
)6 7
,7 8
(9 :
int: =
)= >
HttpStatusCode> L
.L M
	NoContentM V
)V W
]W X
[ 	 
ProducesResponseType	 
( 
typeof $
($ %
BadRequestResponse% 7
)7 8
,8 9
(: ;
int; >
)> ?
HttpStatusCode? M
.M N

BadRequestN X
)X Y
]Y Z
[   	 
ProducesResponseType  	 
(   
typeof   $
(  $ %
object  % +
)  + ,
,  , -
(  . /
int  / 2
)  2 3
HttpStatusCode  3 A
.  A B
InternalServerError  B U
)  U V
]  V W
public!! 
async!! 
Task!! 
<!! 
IResponseBase!! '
>!!' (
GetToListAsync!!) 7
(!!7 8
CancellationToken!!8 I
cancellation!!J V
)!!V W
{"" 	
return## 
await## 
_service## !
.##! "
GetToListAsync##" 0
(##0 1
cancellation##1 =
)##= >
;##> ?
}$$ 	
}%% 
}&& ·L
VE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Controllers\v1\StockController.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Controllers $
.$ %
v1% '
{ 
public 

class 
StockController  
:! "
EntityController# 3
<3 4
StockAddModel4 A
,A B
StockUpdateModelC S
,S T
StockPatchModelU d
,d e
StockGetModelf s
,s t

StockModelu 
,	 Ä
Guid
Å Ö
>
Ö Ü
{ 
private 
readonly 
IStockService &
_service' /
;/ 0
public 
StockController 
( 
IStockService ,
service- 4
)4 5
: 
base 
( 
service 
) 
{ 	
_service 
= 
service 
; 
} 	
[ 	
HttpGet	 
( 
$str $
)$ %
]% &
[ 	 
ProducesResponseType	 
( 
typeof $
($ %

OkResponse% /
</ 0
IEnumerable0 ;
<; <
StockGetModel< I
>I J
>J K
)K L
,L M
(N O
intO R
)R S
HttpStatusCodeS a
.a b
OKb d
)d e
]e f
[ 	 
ProducesResponseType	 
( 
typeof $
($ % 
UnauthorizedResponse% 9
)9 :
,: ;
(< =
int= @
)@ A
HttpStatusCodeA O
.O P
UnauthorizedP \
)\ ]
]] ^
[ 	 
ProducesResponseType	 
( 
typeof $
($ %
NoContentResponse% 6
)6 7
,7 8
(9 :
int: =
)= >
HttpStatusCode> L
.L M
	NoContentM V
)V W
]W X
[   	 
ProducesResponseType  	 
(   
typeof   $
(  $ %
BadRequestResponse  % 7
)  7 8
,  8 9
(  : ;
int  ; >
)  > ?
HttpStatusCode  ? M
.  M N

BadRequest  N X
)  X Y
]  Y Z
[!! 	 
ProducesResponseType!!	 
(!! 
typeof!! $
(!!$ %
object!!% +
)!!+ ,
,!!, -
(!!. /
int!!/ 2
)!!2 3
HttpStatusCode!!3 A
.!!A B
InternalServerError!!B U
)!!U V
]!!V W
public"" 
async"" 
Task"" 
<"" 
IResponseBase"" '
>""' (
GetByParams"") 4
(""4 5
[""5 6
	FromQuery""6 ?
]""? @%
StockGetByParametersModel""A Z

parameters""[ e
)""e f
{## 	
return$$ 
await$$ 
_service$$ !
.$$! "
GetByParameters$$" 1
($$1 2

parameters$$2 <
)$$< =
;$$= >
}%% 	
[** 	
HttpGet**	 
(** 
$str** 
)** 
]** 
[++ 	 
ProducesResponseType++	 
(++ 
typeof++ $
(++$ %

OkResponse++% /
<++/ 0
IEnumerable++0 ;
<++; <
StockGetModel++< I
>++I J
>++J K
)++K L
,++L M
(++N O
int++O R
)++R S
HttpStatusCode++S a
.++a b
OK++b d
)++d e
]++e f
[,, 	 
ProducesResponseType,,	 
(,, 
typeof,, $
(,,$ % 
UnauthorizedResponse,,% 9
),,9 :
,,,: ;
(,,< =
int,,= @
),,@ A
HttpStatusCode,,A O
.,,O P
Unauthorized,,P \
),,\ ]
],,] ^
[-- 	 
ProducesResponseType--	 
(-- 
typeof-- $
(--$ %
NoContentResponse--% 6
)--6 7
,--7 8
(--9 :
int--: =
)--= >
HttpStatusCode--> L
.--L M
	NoContent--M V
)--V W
]--W X
[.. 	 
ProducesResponseType..	 
(.. 
typeof.. $
(..$ %
BadRequestResponse..% 7
)..7 8
,..8 9
(..: ;
int..; >
)..> ?
HttpStatusCode..? M
...M N

BadRequest..N X
)..X Y
]..Y Z
[// 	 
ProducesResponseType//	 
(// 
typeof// $
(//$ %
object//% +
)//+ ,
,//, -
(//. /
int/// 2
)//2 3
HttpStatusCode//3 A
.//A B
InternalServerError//B U
)//U V
]//V W
public00 
async00 
Task00 
<00 
IResponseBase00 '
>00' (
GetToListAsync00) 7
(007 8
)008 9
{11 	
return22 
await22 
_service22 !
.22! "
GetToListAsync22" 0
(220 1
)221 2
;222 3
}33 	
[88 	
HttpGet88	 
(88 
$str88 (
)88( )
]88) *
[99 	 
ProducesResponseType99	 
(99 
typeof99 $
(99$ %

OkResponse99% /
<99/ 0
IEnumerable990 ;
<99; <
StockGetModel99< I
>99I J
>99J K
)99K L
,99L M
(99N O
int99O R
)99R S
HttpStatusCode99S a
.99a b
OK99b d
)99d e
]99e f
[:: 	 
ProducesResponseType::	 
(:: 
typeof:: $
(::$ % 
UnauthorizedResponse::% 9
)::9 :
,::: ;
(::< =
int::= @
)::@ A
HttpStatusCode::A O
.::O P
Unauthorized::P \
)::\ ]
]::] ^
[;; 	 
ProducesResponseType;;	 
(;; 
typeof;; $
(;;$ %
NoContentResponse;;% 6
);;6 7
,;;7 8
(;;9 :
int;;: =
);;= >
HttpStatusCode;;> L
.;;L M
	NoContent;;M V
);;V W
];;W X
[<< 	 
ProducesResponseType<<	 
(<< 
typeof<< $
(<<$ %
BadRequestResponse<<% 7
)<<7 8
,<<8 9
(<<: ;
int<<; >
)<<> ?
HttpStatusCode<<? M
.<<M N

BadRequest<<N X
)<<X Y
]<<Y Z
[== 	 
ProducesResponseType==	 
(== 
typeof== $
(==$ %
object==% +
)==+ ,
,==, -
(==. /
int==/ 2
)==2 3
HttpStatusCode==3 A
.==A B
InternalServerError==B U
)==U V
]==V W
public>> 
async>> 
Task>> 
<>> 
IResponseBase>> '
>>>' (
GetLowerStocks>>) 7
(>>7 8
int>>8 ;
number>>< B
,>>B C
CancellationToken>>D U
cancellationToken>>V g
)>>g h
{?? 	
return@@ 
await@@ 
_service@@ !
.@@! "
GetLowerStocks@@" 0
(@@0 1
number@@1 7
,@@7 8
cancellationToken@@9 J
)@@J K
;@@K L
}AA 	
[FF 	
HttpGetFF	 
(FF 
$strFF 0
)FF0 1
]FF1 2
[GG 	 
ProducesResponseTypeGG	 
(GG 
typeofGG $
(GG$ %

OkResponseGG% /
<GG/ 0
IEnumerableGG0 ;
<GG; <&
StocksQuantityWarningModelGG< V
>GGV W
>GGW X
)GGX Y
,GGY Z
(GG[ \
intGG\ _
)GG_ `
HttpStatusCodeGG` n
.GGn o
OKGGo q
)GGq r
]GGr s
[HH 	 
ProducesResponseTypeHH	 
(HH 
typeofHH $
(HH$ % 
UnauthorizedResponseHH% 9
)HH9 :
,HH: ;
(HH< =
intHH= @
)HH@ A
HttpStatusCodeHHA O
.HHO P
UnauthorizedHHP \
)HH\ ]
]HH] ^
[II 	 
ProducesResponseTypeII	 
(II 
typeofII $
(II$ %
NoContentResponseII% 6
)II6 7
,II7 8
(II9 :
intII: =
)II= >
HttpStatusCodeII> L
.IIL M
	NoContentIIM V
)IIV W
]IIW X
[JJ 	 
ProducesResponseTypeJJ	 
(JJ 
typeofJJ $
(JJ$ %
BadRequestResponseJJ% 7
)JJ7 8
,JJ8 9
(JJ: ;
intJJ; >
)JJ> ?
HttpStatusCodeJJ? M
.JJM N

BadRequestJJN X
)JJX Y
]JJY Z
[KK 	 
ProducesResponseTypeKK	 
(KK 
typeofKK $
(KK$ %
objectKK% +
)KK+ ,
,KK, -
(KK. /
intKK/ 2
)KK2 3
HttpStatusCodeKK3 A
.KKA B
InternalServerErrorKKB U
)KKU V
]KKV W
publicLL 
asyncLL 
TaskLL 
<LL 
IResponseBaseLL '
>LL' ()
GetTotalStocksQuantityWarningLL) F
(LLF G
CancellationTokenLLG X
cancellationTokenLLY j
)LLj k
{MM 	
returnNN 
awaitNN 
_serviceNN !
.NN! ")
GetTotalStocksQuantityWarningNN" ?
(NN? @
cancellationTokenNN@ Q
)NNQ R
;NNR S
}OO 	
}PP 
}QQ ı
WE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Controllers\v1\SignUpController.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Controllers $
.$ %
v1% '
{ 
public 

class 
SignUpController !
:" #%
ApplicationControllerBase$ =
{ 
private 
readonly 
ISignUpService '
_signUpService( 6
;6 7
public 
SignUpController 
(  
ISignUpService  .
service/ 6
)6 7
{ 	
_signUpService 
= 
service $
;$ %
} 	
[ 	
AllowAnonymous	 
] 
[ 	
HttpPost	 
( 
$str 
) 
] 
[ 	 
ProducesResponseType	 
( 
typeof $
($ %

OkResponse% /
</ 0
object0 6
>6 7
)7 8
,8 9
(: ;
int; >
)> ?
HttpStatusCode? M
.M N
OKN P
)P Q
]Q R
[ 	 
ProducesResponseType	 
( 
typeof $
($ % 
UnauthorizedResponse% 9
)9 :
,: ;
(< =
int= @
)@ A
HttpStatusCodeA O
.O P
UnauthorizedP \
)\ ]
]] ^
[ 	 
ProducesResponseType	 
( 
typeof $
($ %
NoContentResponse% 6
)6 7
,7 8
(9 :
int: =
)= >
HttpStatusCode> L
.L M
	NoContentM V
)V W
]W X
[ 	 
ProducesResponseType	 
( 
typeof $
($ %
BadRequestResponse% 7
)7 8
,8 9
(: ;
int; >
)> ?
HttpStatusCode? M
.M N

BadRequestN X
)X Y
]Y Z
[ 	 
ProducesResponseType	 
( 
typeof $
($ %
object% +
)+ ,
,, -
(. /
int/ 2
)2 3
HttpStatusCode3 A
.A B
InternalServerErrorB U
)U V
]V W
public 
async 
Task 
< 
IResponseBase '
>' (
SignUpEmailAsync) 9
(9 :
[: ;
FromBody; C
]C D
SignUpEmailModelE U
signUpEmailModelV f
)f g
{ 	
return   
await   
_signUpService   '
.  ' (
SignUpEmailAsync  ( 8
(  8 9
signUpEmailModel  9 I
,  I J
UserType  K S
.  S T
Employee  T \
)  \ ]
;  ] ^
}!! 	
}"" 
}## ±À
WE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Controllers\v1\SignInController.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Controllers $
.$ %
v1% '
{ 
public 

class 
SignInController !
:" #%
ApplicationControllerBase$ =
{ 
private 
readonly 
ISignInService '
_service( 0
;0 1
public 
SignInController 
(  
ISignInService  .
signInService/ <
)< =
{ 	
_service 
= 
signInService $
;$ %
} 	
[!! 	
AllowAnonymous!!	 
]!! 
["" 	
HttpPost""	 
("" 
$str"" 
)"" 
]"" 
[## 	 
ProducesResponseType##	 
(## 
typeof## $
(##$ %

OkResponse##% /
<##/ 0%
SignInAuthenticationModel##0 I
>##I J
)##J K
,##K L
(##M N
int##N Q
)##Q R
HttpStatusCode##R `
.##` a
OK##a c
)##c d
]##d e
[$$ 	 
ProducesResponseType$$	 
($$ 
typeof$$ $
($$$ %
ConflictResponse$$% 5
)$$5 6
,$$6 7
($$8 9
int$$9 <
)$$< =
HttpStatusCode$$= K
.$$K L
Conflict$$L T
)$$T U
]$$U V
[%% 	 
ProducesResponseType%%	 
(%% 
typeof%% $
(%%$ %
NoContentResponse%%% 6
)%%6 7
,%%7 8
(%%9 :
int%%: =
)%%= >
HttpStatusCode%%> L
.%%L M
	NoContent%%M V
)%%V W
]%%W X
[&& 	 
ProducesResponseType&&	 
(&& 
typeof&& $
(&&$ %
BadRequestResponse&&% 7
)&&7 8
,&&8 9
(&&: ;
int&&; >
)&&> ?
HttpStatusCode&&? M
.&&M N

BadRequest&&N X
)&&X Y
]&&Y Z
['' 	 
ProducesResponseType''	 
('' 
typeof'' $
(''$ %
object''% +
)''+ ,
,'', -
(''. /
int''/ 2
)''2 3
HttpStatusCode''3 A
.''A B
InternalServerError''B U
)''U V
]''V W
public(( 
async(( 
Task(( 
<(( 
IResponseBase(( '
>((' (
SignInAsync(() 4
(((4 5
[((5 6
FromBody((6 >
]((> ?#
SignInEmailRequestModel((@ W#
signInEmailRequestModel((X o
)((o p
{)) 	
return** 
await** 
_service** !
.**! "
SignInAsync**" -
(**- .#
signInEmailRequestModel**. E
)**E F
;**F G
}++ 	
[11 	
AllowAnonymous11	 
]11 
[22 	
HttpPost22	 
(22 
$str22 ,
)22, -
]22- .
[33 	 
ProducesResponseType33	 
(33 
typeof33 $
(33$ %

OkResponse33% /
<33/ 0
object330 6
>336 7
)337 8
,338 9
(33: ;
int33; >
)33> ?
HttpStatusCode33? M
.33M N
OK33N P
)33P Q
]33Q R
[44 	 
ProducesResponseType44	 
(44 
typeof44 $
(44$ %
BadRequestResponse44% 7
)447 8
,448 9
(44: ;
int44; >
)44> ?
HttpStatusCode44? M
.44M N

BadRequest44N X
)44X Y
]44Y Z
[55 	 
ProducesResponseType55	 
(55 
typeof55 $
(55$ %
object55% +
)55+ ,
,55, -
(55. /
int55/ 2
)552 3
HttpStatusCode553 A
.55A B
InternalServerError55B U
)55U V
]55V W
public66 
async66 
Task66 
<66 
IResponseBase66 '
>66' (
RecoverPassword66) 8
(668 9
[669 :
FromBody66: B
]66B C-
!SignInRecoverPasswordRequestModel66D e.
!signInRecoverPasswordRequestModel	66f á
)
66á à
{77 	
return88 
await88 
_service88 !
.88! ".
"RequestRecoverPasswordByEmailAsync88" D
(88D E-
!signInRecoverPasswordRequestModel88E f
.88f g
Email88g l
)88l m
;88m n
}99 	
[@@ 	
AllowAnonymous@@	 
]@@ 
[AA 	
HttpPostAA	 
(AA 
$strAA 4
)AA4 5
]AA5 6
[BB 	 
ProducesResponseTypeBB	 
(BB 
typeofBB $
(BB$ %

OkResponseBB% /
<BB/ 04
(SignInRecoverPasswordAuthenticationModelBB0 X
>BBX Y
)BBY Z
,BBZ [
(BB\ ]
intBB] `
)BB` a
HttpStatusCodeBBa o
.BBo p
OKBBp r
)BBr s
]BBs t
[CC 	 
ProducesResponseTypeCC	 
(CC 
typeofCC $
(CC$ %
NoContentResponseCC% 6
)CC6 7
,CC7 8
(CC9 :
intCC: =
)CC= >
HttpStatusCodeCC> L
.CCL M
	NoContentCCM V
)CCV W
]CCW X
[DD 	 
ProducesResponseTypeDD	 
(DD 
typeofDD $
(DD$ %
BadRequestResponseDD% 7
)DD7 8
,DD8 9
(DD: ;
intDD; >
)DD> ?
HttpStatusCodeDD? M
.DDM N

BadRequestDDN X
)DDX Y
]DDY Z
[EE 	 
ProducesResponseTypeEE	 
(EE 
typeofEE $
(EE$ %
objectEE% +
)EE+ ,
,EE, -
(EE. /
intEE/ 2
)EE2 3
HttpStatusCodeEE3 A
.EEA B
InternalServerErrorEEB U
)EEU V
]EEV W
publicFF 
asyncFF 
TaskFF 
<FF 
IResponseBaseFF '
>FF' ($
ValidateConfirmationCodeFF) A
(FFA B
[FFB C
FromBodyFFC K
]FFK L,
 SignInEmailConfirmationCodeModelFFM m'
emailConfirmationCodeModel	FFn à
)
FFà â
{GG 	
returnHH 
awaitHH 
_serviceHH !
.HH! ".
"ValidateEmailConfirmationCodeAsyncHH" D
(HHD E&
emailConfirmationCodeModelHHE _
)HH_ `
;HH` a
}II 	
[PP 	
AllowAnonymousPP	 
]PP 
[QQ 	
HttpPostQQ	 
(QQ 
$strQQ ;
)QQ; <
]QQ< =
[RR 	 
ProducesResponseTypeRR	 
(RR 
typeofRR $
(RR$ %

OkResponseRR% /
<RR/ 04
(SignInRecoverPasswordAuthenticationModelRR0 X
>RRX Y
)RRY Z
,RRZ [
(RR\ ]
intRR] `
)RR` a
HttpStatusCodeRRa o
.RRo p
OKRRp r
)RRr s
]RRs t
[SS 	 
ProducesResponseTypeSS	 
(SS 
typeofSS $
(SS$ %
ConflictResponseSS% 5
)SS5 6
,SS6 7
(SS8 9
intSS9 <
)SS< =
HttpStatusCodeSS= K
.SSK L
ConflictSSL T
)SST U
]SSU V
[TT 	 
ProducesResponseTypeTT	 
(TT 
typeofTT $
(TT$ %
BadRequestResponseTT% 7
)TT7 8
,TT8 9
(TT: ;
intTT; >
)TT> ?
HttpStatusCodeTT? M
.TTM N

BadRequestTTN X
)TTX Y
]TTY Z
[UU 	 
ProducesResponseTypeUU	 
(UU 
typeofUU $
(UU$ %
objectUU% +
)UU+ ,
,UU, -
(UU. /
intUU/ 2
)UU2 3
HttpStatusCodeUU3 A
.UUA B
InternalServerErrorUUB U
)UUU V
]UUV W
publicVV 
asyncVV 
TaskVV 
<VV 
IResponseBaseVV '
>VV' ($
ValidateConfirmationCodeVV) A
(VVA B
[VVB C
FromBodyVVC K
]VVK L2
&SignInPhoneNumberConfirmationCodeModelVVM s-
 phoneNumberConfirmationCodeModel	VVt î
)
VVî ï
{WW 	
returnXX 
awaitXX 
_serviceXX !
.XX! "4
(ValidatePhoneNumberConfirmationCodeAsyncXX" J
(XXJ K,
 phoneNumberConfirmationCodeModelXXK k
)XXk l
;XXl m
}YY 	
[`` 	
AllowAnonymous``	 
]`` 
[aa 	
HttpPostaa	 
(aa 
$straa ?
)aa? @
]aa@ A
[bb 	 
ProducesResponseTypebb	 
(bb 
typeofbb $
(bb$ %

OkResponsebb% /
<bb/ 04
(SignInRecoverPasswordAuthenticationModelbb0 X
>bbX Y
)bbY Z
,bbZ [
(bb\ ]
intbb] `
)bb` a
HttpStatusCodebba o
.bbo p
OKbbp r
)bbr s
]bbs t
[cc 	 
ProducesResponseTypecc	 
(cc 
typeofcc $
(cc$ %
NoContentResponsecc% 6
)cc6 7
,cc7 8
(cc9 :
intcc: =
)cc= >
HttpStatusCodecc> L
.ccL M
	NoContentccM V
)ccV W
]ccW X
[dd 	 
ProducesResponseTypedd	 
(dd 
typeofdd $
(dd$ %
BadRequestResponsedd% 7
)dd7 8
,dd8 9
(dd: ;
intdd; >
)dd> ?
HttpStatusCodedd? M
.ddM N

BadRequestddN X
)ddX Y
]ddY Z
[ee 	 
ProducesResponseTypeee	 
(ee 
typeofee $
(ee$ %
objectee% +
)ee+ ,
,ee, -
(ee. /
intee/ 2
)ee2 3
HttpStatusCodeee3 A
.eeA B
InternalServerErroreeB U
)eeU V
]eeV W
publicff 
asyncff 
Taskff 
<ff 
IResponseBaseff '
>ff' (3
'ValidateRecoverPasswordConfirmationCodeff) P
(ffP Q
[ffQ R
FromBodyffR Z
]ffZ [,
 SignInEmailConfirmationCodeModelff\ |'
emailConfirmationCodeModel	ff} ó
)
ffó ò
{gg 	
returnhh 
awaithh 
_servicehh !
.hh! "8
,ValidateRecoverPasswordConfirmationCodeAsynchh" N
(hhN O&
emailConfirmationCodeModelhhO i
)hhi j
;hhj k
}ii 	
[oo 	
HttpPostoo	 
(oo 
$stroo #
)oo# $
]oo$ %
[pp 	 
ProducesResponseTypepp	 
(pp 
typeofpp $
(pp$ %

OkResponsepp% /
<pp/ 0
objectpp0 6
>pp6 7
)pp7 8
,pp8 9
(pp: ;
intpp; >
)pp> ?
HttpStatusCodepp? M
.ppM N
OKppN P
)ppP Q
]ppQ R
[qq 	 
ProducesResponseTypeqq	 
(qq 
typeofqq $
(qq$ % 
UnauthorizedResponseqq% 9
)qq9 :
,qq: ;
(qq< =
intqq= @
)qq@ A
HttpStatusCodeqqA O
.qqO P
UnauthorizedqqP \
)qq\ ]
]qq] ^
[rr 	 
ProducesResponseTyperr	 
(rr 
typeofrr $
(rr$ %
NoContentResponserr% 6
)rr6 7
,rr7 8
(rr9 :
intrr: =
)rr= >
HttpStatusCoderr> L
.rrL M
	NoContentrrM V
)rrV W
]rrW X
[ss 	 
ProducesResponseTypess	 
(ss 
typeofss $
(ss$ %
BadRequestResponsess% 7
)ss7 8
,ss8 9
(ss: ;
intss; >
)ss> ?
HttpStatusCodess? M
.ssM N

BadRequestssN X
)ssX Y
]ssY Z
[tt 	 
ProducesResponseTypett	 
(tt 
typeoftt $
(tt$ %
objecttt% +
)tt+ ,
,tt, -
(tt. /
inttt/ 2
)tt2 3
HttpStatusCodett3 A
.ttA B
InternalServerErrorttB U
)ttU V
]ttV W
publicuu 
asyncuu 
Taskuu 
<uu 
IResponseBaseuu '
>uu' (
ChangePassworduu) 7
(uu7 8
[uu8 9
FromBodyuu9 A
]uuA B%
SignInChangePasswordModeluuC \%
signInChangePasswordModeluu] v
)uuv w
{vv 	
returnww 
awaitww 
_serviceww !
.ww! "
ChangePasswordAsyncww" 5
(ww5 6
Requestww6 =
.ww= >
Headersww> E
[wwE F
$strwwF U
]wwU V
,wwV W%
signInChangePasswordModelwwX q
)wwq r
;wwr s
}xx 	
[~~ 	
AllowAnonymous~~	 
]~~ 
[ 	
HttpPost	 
( 
$str >
)> ?
]? @
[
ÄÄ 	"
ProducesResponseType
ÄÄ	 
(
ÄÄ 
typeof
ÄÄ $
(
ÄÄ$ %

OkResponse
ÄÄ% /
<
ÄÄ/ 0
object
ÄÄ0 6
>
ÄÄ6 7
)
ÄÄ7 8
,
ÄÄ8 9
(
ÄÄ: ;
int
ÄÄ; >
)
ÄÄ> ?
HttpStatusCode
ÄÄ? M
.
ÄÄM N
OK
ÄÄN P
)
ÄÄP Q
]
ÄÄQ R
[
ÅÅ 	"
ProducesResponseType
ÅÅ	 
(
ÅÅ 
typeof
ÅÅ $
(
ÅÅ$ %"
UnauthorizedResponse
ÅÅ% 9
)
ÅÅ9 :
,
ÅÅ: ;
(
ÅÅ< =
int
ÅÅ= @
)
ÅÅ@ A
HttpStatusCode
ÅÅA O
.
ÅÅO P
Unauthorized
ÅÅP \
)
ÅÅ\ ]
]
ÅÅ] ^
[
ÇÇ 	"
ProducesResponseType
ÇÇ	 
(
ÇÇ 
typeof
ÇÇ $
(
ÇÇ$ %
NoContentResponse
ÇÇ% 6
)
ÇÇ6 7
,
ÇÇ7 8
(
ÇÇ9 :
int
ÇÇ: =
)
ÇÇ= >
HttpStatusCode
ÇÇ> L
.
ÇÇL M
	NoContent
ÇÇM V
)
ÇÇV W
]
ÇÇW X
[
ÉÉ 	"
ProducesResponseType
ÉÉ	 
(
ÉÉ 
typeof
ÉÉ $
(
ÉÉ$ % 
BadRequestResponse
ÉÉ% 7
)
ÉÉ7 8
,
ÉÉ8 9
(
ÉÉ: ;
int
ÉÉ; >
)
ÉÉ> ?
HttpStatusCode
ÉÉ? M
.
ÉÉM N

BadRequest
ÉÉN X
)
ÉÉX Y
]
ÉÉY Z
[
ÑÑ 	"
ProducesResponseType
ÑÑ	 
(
ÑÑ 
typeof
ÑÑ $
(
ÑÑ$ %
object
ÑÑ% +
)
ÑÑ+ ,
,
ÑÑ, -
(
ÑÑ. /
int
ÑÑ/ 2
)
ÑÑ2 3
HttpStatusCode
ÑÑ3 A
.
ÑÑA B!
InternalServerError
ÑÑB U
)
ÑÑU V
]
ÑÑV W
public
ÖÖ 
async
ÖÖ 
Task
ÖÖ 
<
ÖÖ 
IResponseBase
ÖÖ '
>
ÖÖ' ('
ResendConfirmationCodeSms
ÖÖ) B
(
ÖÖB C
[
ÖÖC D
Required
ÖÖD L
]
ÖÖL M
string
ÖÖN T
phoneNumber
ÖÖU `
)
ÖÖ` a
{
ÜÜ 	
return
áá 
await
áá 
_service
áá !
.
áá! ",
ResendConfirmationCodeSmsAsync
áá" @
(
áá@ A
phoneNumber
ááA L
)
ááL M
;
ááM N
}
àà 	
[
éé 	
AllowAnonymous
éé	 
]
éé 
[
èè 	
HttpPost
èè	 
(
èè 
$str
èè :
)
èè: ;
]
èè; <
[
êê 	"
ProducesResponseType
êê	 
(
êê 
typeof
êê $
(
êê$ %

OkResponse
êê% /
<
êê/ 0
object
êê0 6
>
êê6 7
)
êê7 8
,
êê8 9
(
êê: ;
int
êê; >
)
êê> ?
HttpStatusCode
êê? M
.
êêM N
OK
êêN P
)
êêP Q
]
êêQ R
[
ëë 	"
ProducesResponseType
ëë	 
(
ëë 
typeof
ëë $
(
ëë$ %"
UnauthorizedResponse
ëë% 9
)
ëë9 :
,
ëë: ;
(
ëë< =
int
ëë= @
)
ëë@ A
HttpStatusCode
ëëA O
.
ëëO P
Unauthorized
ëëP \
)
ëë\ ]
]
ëë] ^
[
íí 	"
ProducesResponseType
íí	 
(
íí 
typeof
íí $
(
íí$ %
NoContentResponse
íí% 6
)
íí6 7
,
íí7 8
(
íí9 :
int
íí: =
)
íí= >
HttpStatusCode
íí> L
.
ííL M
	NoContent
ííM V
)
ííV W
]
ííW X
[
ìì 	"
ProducesResponseType
ìì	 
(
ìì 
typeof
ìì $
(
ìì$ % 
BadRequestResponse
ìì% 7
)
ìì7 8
,
ìì8 9
(
ìì: ;
int
ìì; >
)
ìì> ?
HttpStatusCode
ìì? M
.
ììM N

BadRequest
ììN X
)
ììX Y
]
ììY Z
[
îî 	"
ProducesResponseType
îî	 
(
îî 
typeof
îî $
(
îî$ %
object
îî% +
)
îî+ ,
,
îî, -
(
îî. /
int
îî/ 2
)
îî2 3
HttpStatusCode
îî3 A
.
îîA B!
InternalServerError
îîB U
)
îîU V
]
îîV W
public
ïï 
async
ïï 
Task
ïï 
<
ïï 
IResponseBase
ïï '
>
ïï' ()
ResendConfirmationCodeEmail
ïï) D
(
ïïD E
[
ïïE F
Required
ïïF N
]
ïïN O
string
ïïP V
email
ïïW \
)
ïï\ ]
{
ññ 	
return
óó 
await
óó 
_service
óó !
.
óó! ".
 ResendConfirmationCodeEmailAsync
óó" B
(
óóB C
email
óóC H
)
óóH I
;
óóI J
}
òò 	
[
öö 	
AllowAnonymous
öö	 
]
öö 
[
õõ 	
HttpPost
õõ	 
(
õõ 
$str
õõ  
)
õõ  !
]
õõ! "
[
úú 	"
ProducesResponseType
úú	 
(
úú 
typeof
úú $
(
úú$ %

OkResponse
úú% /
<
úú/ 0
object
úú0 6
>
úú6 7
)
úú7 8
,
úú8 9
(
úú: ;
int
úú; >
)
úú> ?
HttpStatusCode
úú? M
.
úúM N
OK
úúN P
)
úúP Q
]
úúQ R
[
ùù 	"
ProducesResponseType
ùù	 
(
ùù 
typeof
ùù $
(
ùù$ %"
UnauthorizedResponse
ùù% 9
)
ùù9 :
,
ùù: ;
(
ùù< =
int
ùù= @
)
ùù@ A
HttpStatusCode
ùùA O
.
ùùO P
Unauthorized
ùùP \
)
ùù\ ]
]
ùù] ^
[
ûû 	"
ProducesResponseType
ûû	 
(
ûû 
typeof
ûû $
(
ûû$ %
NoContentResponse
ûû% 6
)
ûû6 7
,
ûû7 8
(
ûû9 :
int
ûû: =
)
ûû= >
HttpStatusCode
ûû> L
.
ûûL M
	NoContent
ûûM V
)
ûûV W
]
ûûW X
[
üü 	"
ProducesResponseType
üü	 
(
üü 
typeof
üü $
(
üü$ % 
BadRequestResponse
üü% 7
)
üü7 8
,
üü8 9
(
üü: ;
int
üü; >
)
üü> ?
HttpStatusCode
üü? M
.
üüM N

BadRequest
üüN X
)
üüX Y
]
üüY Z
[
†† 	"
ProducesResponseType
††	 
(
†† 
typeof
†† $
(
††$ %
object
††% +
)
††+ ,
,
††, -
(
††. /
int
††/ 2
)
††2 3
HttpStatusCode
††3 A
.
††A B!
InternalServerError
††B U
)
††U V
]
††V W
public
°° 
async
°° 
Task
°° 
<
°° 
IResponseBase
°° '
>
°°' ($
SignUpSocialMediaAsync
°°) ?
(
°°? @
[
°°@ A
FromBody
°°A I
]
°°I J$
SignInSocialMediaModel
°°K a$
signUpSocialMediaModel
°°b x
)
°°x y
{
¢¢ 	
return
££ 
await
££ 
_service
££ !
.
££! "*
SignInSignUpSocialMediaAsync
££" >
(
££> ?$
signUpSocialMediaModel
££? U
)
££U V
;
££V W
}
§§ 	
[
´´ 	
HttpGet
´´	 
(
´´ 
$str
´´ 
)
´´ 
]
´´ 
[
¨¨ 	"
ProducesResponseType
¨¨	 
(
¨¨ 
typeof
¨¨ $
(
¨¨$ %

OkResponse
¨¨% /
<
¨¨/ 0<
.GenericUserProfileGetWithoutSensitiveDataModel
¨¨0 ^
>
¨¨^ _
)
¨¨_ `
,
¨¨` a
(
¨¨b c
int
¨¨c f
)
¨¨f g
HttpStatusCode
¨¨g u
.
¨¨u v
OK
¨¨v x
)
¨¨x y
]
¨¨y z
[
≠≠ 	"
ProducesResponseType
≠≠	 
(
≠≠ 
typeof
≠≠ $
(
≠≠$ %"
UnauthorizedResponse
≠≠% 9
)
≠≠9 :
,
≠≠: ;
(
≠≠< =
int
≠≠= @
)
≠≠@ A
HttpStatusCode
≠≠A O
.
≠≠O P
Unauthorized
≠≠P \
)
≠≠\ ]
]
≠≠] ^
[
ÆÆ 	"
ProducesResponseType
ÆÆ	 
(
ÆÆ 
typeof
ÆÆ $
(
ÆÆ$ %
NoContentResponse
ÆÆ% 6
)
ÆÆ6 7
,
ÆÆ7 8
(
ÆÆ9 :
int
ÆÆ: =
)
ÆÆ= >
HttpStatusCode
ÆÆ> L
.
ÆÆL M
	NoContent
ÆÆM V
)
ÆÆV W
]
ÆÆW X
[
ØØ 	"
ProducesResponseType
ØØ	 
(
ØØ 
typeof
ØØ $
(
ØØ$ %
ConflictResponse
ØØ% 5
)
ØØ5 6
,
ØØ6 7
(
ØØ8 9
int
ØØ9 <
)
ØØ< =
HttpStatusCode
ØØ= K
.
ØØK L
Conflict
ØØL T
)
ØØT U
]
ØØU V
[
∞∞ 	"
ProducesResponseType
∞∞	 
(
∞∞ 
typeof
∞∞ $
(
∞∞$ % 
BadRequestResponse
∞∞% 7
)
∞∞7 8
,
∞∞8 9
(
∞∞: ;
int
∞∞; >
)
∞∞> ?
HttpStatusCode
∞∞? M
.
∞∞M N

BadRequest
∞∞N X
)
∞∞X Y
]
∞∞Y Z
[
±± 	"
ProducesResponseType
±±	 
(
±± 
typeof
±± $
(
±±$ %
object
±±% +
)
±±+ ,
,
±±, -
(
±±. /
int
±±/ 2
)
±±2 3
HttpStatusCode
±±3 A
.
±±A B!
InternalServerError
±±B U
)
±±U V
]
±±V W
public
≤≤ 
async
≤≤ 
Task
≤≤ 
<
≤≤ 
IResponseBase
≤≤ '
>
≤≤' (
GetByTokenAsync
≤≤) 8
(
≤≤8 9
CancellationToken
≤≤9 J
cancellationToken
≤≤K \
)
≤≤\ ]
{
≥≥ 	
return
¥¥ 
await
¥¥ 
_service
¥¥ !
.
¥¥! "
GetByTokenAsync
¥¥" 1
(
¥¥1 2
Request
¥¥2 9
.
¥¥9 :
Headers
¥¥: A
[
¥¥A B
$str
¥¥B Q
]
¥¥Q R
,
¥¥R S
cancellationToken
¥¥T e
)
¥¥e f
;
¥¥f g
}
µµ 	
[
ºº 	
HttpGet
ºº	 
(
ºº 
$str
ºº 
)
ºº 
]
ºº  
[
ΩΩ 	"
ProducesResponseType
ΩΩ	 
(
ΩΩ 
typeof
ΩΩ $
(
ΩΩ$ %

OkResponse
ΩΩ% /
<
ΩΩ/ 0
IEnumerable
ΩΩ0 ;
<
ΩΩ; <<
.GenericUserProfileGetWithoutSensitiveDataModel
ΩΩ< j
>
ΩΩj k
>
ΩΩk l
)
ΩΩl m
,
ΩΩm n
(
ΩΩo p
int
ΩΩp s
)
ΩΩs t
HttpStatusCodeΩΩt Ç
.ΩΩÇ É
OKΩΩÉ Ö
)ΩΩÖ Ü
]ΩΩÜ á
[
ææ 	"
ProducesResponseType
ææ	 
(
ææ 
typeof
ææ $
(
ææ$ %"
UnauthorizedResponse
ææ% 9
)
ææ9 :
,
ææ: ;
(
ææ< =
int
ææ= @
)
ææ@ A
HttpStatusCode
ææA O
.
ææO P
Unauthorized
ææP \
)
ææ\ ]
]
ææ] ^
[
øø 	"
ProducesResponseType
øø	 
(
øø 
typeof
øø $
(
øø$ %
NoContentResponse
øø% 6
)
øø6 7
,
øø7 8
(
øø9 :
int
øø: =
)
øø= >
HttpStatusCode
øø> L
.
øøL M
	NoContent
øøM V
)
øøV W
]
øøW X
[
¿¿ 	"
ProducesResponseType
¿¿	 
(
¿¿ 
typeof
¿¿ $
(
¿¿$ %
ConflictResponse
¿¿% 5
)
¿¿5 6
,
¿¿6 7
(
¿¿8 9
int
¿¿9 <
)
¿¿< =
HttpStatusCode
¿¿= K
.
¿¿K L
Conflict
¿¿L T
)
¿¿T U
]
¿¿U V
[
¡¡ 	"
ProducesResponseType
¡¡	 
(
¡¡ 
typeof
¡¡ $
(
¡¡$ % 
BadRequestResponse
¡¡% 7
)
¡¡7 8
,
¡¡8 9
(
¡¡: ;
int
¡¡; >
)
¡¡> ?
HttpStatusCode
¡¡? M
.
¡¡M N

BadRequest
¡¡N X
)
¡¡X Y
]
¡¡Y Z
[
¬¬ 	"
ProducesResponseType
¬¬	 
(
¬¬ 
typeof
¬¬ $
(
¬¬$ %
object
¬¬% +
)
¬¬+ ,
,
¬¬, -
(
¬¬. /
int
¬¬/ 2
)
¬¬2 3
HttpStatusCode
¬¬3 A
.
¬¬A B!
InternalServerError
¬¬B U
)
¬¬U V
]
¬¬V W
public
√√ 
async
√√ 
Task
√√ 
<
√√ 
IResponseBase
√√ '
>
√√' (
GetAnyToListAsync
√√) :
(
√√: ;
CancellationToken
√√; L
cancellationToken
√√M ^
)
√√^ _
{
ƒƒ 	
return
≈≈ 
await
≈≈ 
_service
≈≈ !
.
≈≈! "
GetAnyToListAsync
≈≈" 3
(
≈≈3 4
cancellationToken
≈≈4 E
)
≈≈E F
;
≈≈F G
}
∆∆ 	
}
«« 
}»» ô5
UE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Controllers\v1\RoleController.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Controllers $
.$ %
v1% '
{ 
public 

class 
RoleController 
:  !
EntityController" 2
<2 3
RoleAddModel3 ?
,? @
RoleUpdateModelA P
,P Q
RolePatchModelR `
,` a
RoleGetModelb n
,n o
	RoleModelp y
,y z
Guid{ 
>	 Ä
{ 
private 
readonly 
IRoleService %
_service& .
;. /
public 
RoleController 
( 
IRoleService *
service+ 2
)2 3
: 
base 
( 
service 
) 
{ 	
_service 
= 
service 
; 
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
[ 	 
ProducesResponseType	 
( 
typeof $
($ %

OkResponse% /
</ 0
IEnumerable0 ;
<; <
RoleGetModel< H
>H I
>I J
)J K
,K L
(M N
intN Q
)Q R
HttpStatusCodeR `
.` a
OKa c
)c d
]d e
[   	 
ProducesResponseType  	 
(   
typeof   $
(  $ % 
UnauthorizedResponse  % 9
)  9 :
,  : ;
(  < =
int  = @
)  @ A
HttpStatusCode  A O
.  O P
Unauthorized  P \
)  \ ]
]  ] ^
[!! 	 
ProducesResponseType!!	 
(!! 
typeof!! $
(!!$ %
NoContentResponse!!% 6
)!!6 7
,!!7 8
(!!9 :
int!!: =
)!!= >
HttpStatusCode!!> L
.!!L M
	NoContent!!M V
)!!V W
]!!W X
["" 	 
ProducesResponseType""	 
("" 
typeof"" $
(""$ %
BadRequestResponse""% 7
)""7 8
,""8 9
("": ;
int""; >
)""> ?
HttpStatusCode""? M
.""M N

BadRequest""N X
)""X Y
]""Y Z
[## 	 
ProducesResponseType##	 
(## 
typeof## $
(##$ %
object##% +
)##+ ,
,##, -
(##. /
int##/ 2
)##2 3
HttpStatusCode##3 A
.##A B
InternalServerError##B U
)##U V
]##V W
public$$ 
async$$ 
Task$$ 
<$$ 
IResponseBase$$ '
>$$' (
GetToListAsync$$) 7
($$7 8
CancellationToken$$8 I
cancellation$$J V
=$$W X
default$$Y `
)$$` a
{%% 	
return&& 
await&& 
_service&& !
.&&! "
GetToListAsync&&" 0
(&&0 1
cancellation&&1 =
)&&= >
;&&> ?
}'' 	
public)) 
override)) 
async)) 
Task)) "
<))" #
IResponseBase))# 0
>))0 1
Get))2 5
())5 6
int))6 9
?))9 :
page)); ?
,))? @
int))A D
?))D E
pageSize))F N
)))N O
{** 	
return++ 
await++ 
Task++ 
.++ 
Run++ !
(++! "
(++" #
)++# $
=>++% '
{++( )
return++* 0
new++1 4 
UnauthorizedResponse++5 I
(++I J
)++J K
;++K L
}++M N
)++N O
;++O P
},, 	
public.. 
override.. 
async.. 
Task.. "
<.." #
IResponseBase..# 0
>..0 1
Get..2 5
(..5 6
Guid..6 :
id..; =
)..= >
{// 	
return00 
await00 
Task00 
.00 
Run00 !
(00! "
(00" #
)00# $
=>00% '
{00( )
return00* 0
new001 4 
UnauthorizedResponse005 I
(00I J
)00J K
;00K L
}00M N
)00N O
;00O P
}11 	
public33 
override33 
async33 
Task33 "
<33" #
IResponseBase33# 0
>330 1
Post332 6
(336 7
[337 8
FromBody338 @
]33@ A
RoleAddModel33B N
model33O T
)33T U
{44 	
return55 
await55 
Task55 
.55 
Run55 !
(55! "
(55" #
)55# $
=>55% '
{55( )
return55* 0
new551 4 
UnauthorizedResponse555 I
(55I J
)55J K
;55K L
}55M N
)55N O
;55O P
}66 	
public88 
override88 
async88 
Task88 "
<88" #
IResponseBase88# 0
>880 1
Put882 5
(885 6
Guid886 :
id88; =
,88= >
[88? @
FromBody88@ H
]88H I
RoleUpdateModel88J Y
model88Z _
)88_ `
{99 	
return:: 
await:: 
Task:: 
.:: 
Run:: !
(::! "
(::" #
)::# $
=>::% '
{::( )
return::* 0
new::1 4 
UnauthorizedResponse::5 I
(::I J
)::J K
;::K L
}::M N
)::N O
;::O P
};; 	
public== 
override== 
async== 
Task== "
<==" #
IResponseBase==# 0
>==0 1
Patch==2 7
(==7 8
Guid==8 <
id=== ?
,==? @
[==A B
FromBody==B J
]==J K
RolePatchModel==L Z
model==[ `
)==` a
{>> 	
return?? 
await?? 
Task?? 
.?? 
Run?? !
(??! "
(??" #
)??# $
=>??% '
{??( )
return??* 0
new??1 4 
UnauthorizedResponse??5 I
(??I J
)??J K
;??K L
}??M N
)??N O
;??O P
}@@ 	
publicBB 
overrideBB 
IResponseBaseBB %
DeleteBB& ,
(BB, -
GuidBB- 1
idBB2 4
)BB4 5
{CC 	
returnDD 
newDD  
UnauthorizedResponseDD +
(DD+ ,
)DD, -
;DD- .
}EE 	
}FF 
}GG ë`
WE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Controllers\v1\ReportController.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Controllers $
.$ %
v1% '
{ 
public 

class 
ReportController !
:" #%
ApplicationControllerBase$ =
{ 
private 
readonly 
IReportService '
_service( 0
;0 1
public 
ReportController 
(  
IReportService  .
service/ 6
)6 7
{ 	
_service 
= 
service 
; 
} 	
[ 	
HttpGet	 
( 
$str !
)! "
]" #
[ 	 
ProducesResponseType	 
( 
typeof $
($ %

OkResponse% /
</ 0
IEnumerable0 ;
<; <
StockGetModel< I
>I J
>J K
)K L
,L M
(N O
intO R
)R S
HttpStatusCodeS a
.a b
OKb d
)d e
]e f
[ 	 
ProducesResponseType	 
( 
typeof $
($ % 
UnauthorizedResponse% 9
)9 :
,: ;
(< =
int= @
)@ A
HttpStatusCodeA O
.O P
UnauthorizedP \
)\ ]
]] ^
[ 	 
ProducesResponseType	 
( 
typeof $
($ %
NoContentResponse% 6
)6 7
,7 8
(9 :
int: =
)= >
HttpStatusCode> L
.L M
	NoContentM V
)V W
]W X
[   	 
ProducesResponseType  	 
(   
typeof   $
(  $ %
BadRequestResponse  % 7
)  7 8
,  8 9
(  : ;
int  ; >
)  > ?
HttpStatusCode  ? M
.  M N

BadRequest  N X
)  X Y
]  Y Z
[!! 	 
ProducesResponseType!!	 
(!! 
typeof!! $
(!!$ %
object!!% +
)!!+ ,
,!!, -
(!!. /
int!!/ 2
)!!2 3
HttpStatusCode!!3 A
.!!A B
InternalServerError!!B U
)!!U V
]!!V W
public"" 
async"" 
Task"" 
<"" 
IResponseBase"" '
>""' (!
GetRestockReportAsync"") >
(""> ?
CancellationToken""? P
cancellation""Q ]
)""] ^
{## 	
return$$ 
await$$ 
_service$$ !
.$$! "!
GetRestockReportAsync$$" 7
($$7 8
cancellation$$8 D
)$$D E
;$$E F
}%% 	
[** 	
HttpGet**	 
(** 
$str** =
)**= >
]**> ?
[++ 	 
ProducesResponseType++	 
(++ 
typeof++ $
(++$ %

OkResponse++% /
<++/ 0
IEnumerable++0 ;
<++; <1
%RegisterInStockGetDonationReportModel++< a
>++a b
>++b c
)++c d
,++d e
(++f g
int++g j
)++j k
HttpStatusCode++k y
.++y z
OK++z |
)++| }
]++} ~
[,, 	 
ProducesResponseType,,	 
(,, 
typeof,, $
(,,$ % 
UnauthorizedResponse,,% 9
),,9 :
,,,: ;
(,,< =
int,,= @
),,@ A
HttpStatusCode,,A O
.,,O P
Unauthorized,,P \
),,\ ]
],,] ^
[-- 	 
ProducesResponseType--	 
(-- 
typeof-- $
(--$ %
NoContentResponse--% 6
)--6 7
,--7 8
(--9 :
int--: =
)--= >
HttpStatusCode--> L
.--L M
	NoContent--M V
)--V W
]--W X
[.. 	 
ProducesResponseType..	 
(.. 
typeof.. $
(..$ %
BadRequestResponse..% 7
)..7 8
,..8 9
(..: ;
int..; >
)..> ?
HttpStatusCode..? M
...M N

BadRequest..N X
)..X Y
]..Y Z
[// 	 
ProducesResponseType//	 
(// 
typeof// $
(//$ %
object//% +
)//+ ,
,//, -
(//. /
int/// 2
)//2 3
HttpStatusCode//3 A
.//A B
InternalServerError//B U
)//U V
]//V W
public00 
async00 
Task00 
<00 
IResponseBase00 '
>00' ("
GetDonationReportAsync00) ?
(00? @
[00@ A
	FromRoute00A J
]00J K
DateTime00L T
initialDate00U `
,00` a
[00a b
	FromRoute00b k
]00k l
DateTime00m u
	finalDate00v 
,	00 Ä
CancellationToken
00Å í
cancellation
00ì ü
)
00ü †
{11 	
return22 
await22 
_service22 !
.22! "#
GetDonationsReportAsync22" 9
(229 :
initialDate22: E
,22E F
	finalDate22G P
,22P Q
cancellation22R ^
)22^ _
;22_ `
}33 	
[88 	
HttpGet88	 
(88 
$str88 *
)88* +
]88+ ,
[99 	 
ProducesResponseType99	 
(99 
typeof99 $
(99$ %

OkResponse99% /
<99/ 0
IEnumerable990 ;
<99; <!
SupplierGetDonorModel99< Q
>99Q R
>99R S
)99S T
,99T U
(99V W
int99W Z
)99Z [
HttpStatusCode99[ i
.99i j
OK99j l
)99l m
]99m n
[:: 	 
ProducesResponseType::	 
(:: 
typeof:: $
(::$ % 
UnauthorizedResponse::% 9
)::9 :
,::: ;
(::< =
int::= @
)::@ A
HttpStatusCode::A O
.::O P
Unauthorized::P \
)::\ ]
]::] ^
[;; 	 
ProducesResponseType;;	 
(;; 
typeof;; $
(;;$ %
NoContentResponse;;% 6
);;6 7
,;;7 8
(;;9 :
int;;: =
);;= >
HttpStatusCode;;> L
.;;L M
	NoContent;;M V
);;V W
];;W X
[<< 	 
ProducesResponseType<<	 
(<< 
typeof<< $
(<<$ %
BadRequestResponse<<% 7
)<<7 8
,<<8 9
(<<: ;
int<<; >
)<<> ?
HttpStatusCode<<? M
.<<M N

BadRequest<<N X
)<<X Y
]<<Y Z
[== 	 
ProducesResponseType==	 
(== 
typeof== $
(==$ %
object==% +
)==+ ,
,==, -
(==. /
int==/ 2
)==2 3
HttpStatusCode==3 A
.==A B
InternalServerError==B U
)==U V
]==V W
public>> 
async>> 
Task>> 
<>> 
IResponseBase>> '
>>>' ((
GetMonthTopDonorsReportAsync>>) E
(>>E F
CancellationToken>>F W
cancellation>>X d
)>>d e
{?? 	
return@@ 
await@@ 
_service@@ !
.@@! "(
GetMonthTopDonorsReportAsync@@" >
(@@> ?
cancellation@@? K
)@@K L
;@@L M
}AA 	
[FF 	
HttpGetFF	 
(FF 
$strFF 
)FF  
]FF  !
[GG 	 
ProducesResponseTypeGG	 
(GG 
typeofGG $
(GG$ %

OkResponseGG% /
<GG/ 0
IEnumerableGG0 ;
<GG; <
StockGetModelGG< I
>GGI J
>GGJ K
)GGK L
,GGL M
(GGN O
intGGO R
)GGR S
HttpStatusCodeGGS a
.GGa b
OKGGb d
)GGd e
]GGe f
[HH 	 
ProducesResponseTypeHH	 
(HH 
typeofHH $
(HH$ % 
UnauthorizedResponseHH% 9
)HH9 :
,HH: ;
(HH< =
intHH= @
)HH@ A
HttpStatusCodeHHA O
.HHO P
UnauthorizedHHP \
)HH\ ]
]HH] ^
[II 	 
ProducesResponseTypeII	 
(II 
typeofII $
(II$ %
NoContentResponseII% 6
)II6 7
,II7 8
(II9 :
intII: =
)II= >
HttpStatusCodeII> L
.IIL M
	NoContentIIM V
)IIV W
]IIW X
[JJ 	 
ProducesResponseTypeJJ	 
(JJ 
typeofJJ $
(JJ$ %
BadRequestResponseJJ% 7
)JJ7 8
,JJ8 9
(JJ: ;
intJJ; >
)JJ> ?
HttpStatusCodeJJ? M
.JJM N

BadRequestJJN X
)JJX Y
]JJY Z
[KK 	 
ProducesResponseTypeKK	 
(KK 
typeofKK $
(KK$ %
objectKK% +
)KK+ ,
,KK, -
(KK. /
intKK/ 2
)KK2 3
HttpStatusCodeKK3 A
.KKA B
InternalServerErrorKKB U
)KKU V
]KKV W
publicLL 
asyncLL 
TaskLL 
<LL 
IResponseBaseLL '
>LL' (
GetStockReportAsyncLL) <
(LL< =
CancellationTokenLL= N
cancellationLLO [
)LL[ \
{MM 	
returnNN 
awaitNN 
_serviceNN !
.NN! "
GetStockReportAsyncNN" 5
(NN5 6
cancellationNN6 B
)NNB C
;NNC D
}OO 	
[TT 	
HttpGetTT	 
(TT 
$strTT @
)TT@ A
]TTA B
[UU 	 
ProducesResponseTypeUU	 
(UU 
typeofUU $
(UU$ %

OkResponseUU% /
<UU/ 0
IEnumerableUU0 ;
<UU; <5
)RegisterOutStockGetConsumptionReportModelUU< e
>UUe f
>UUf g
)UUg h
,UUh i
(UUj k
intUUk n
)UUn o
HttpStatusCodeUUo }
.UU} ~
OK	UU~ Ä
)
UUÄ Å
]
UUÅ Ç
[VV 	 
ProducesResponseTypeVV	 
(VV 
typeofVV $
(VV$ % 
UnauthorizedResponseVV% 9
)VV9 :
,VV: ;
(VV< =
intVV= @
)VV@ A
HttpStatusCodeVVA O
.VVO P
UnauthorizedVVP \
)VV\ ]
]VV] ^
[WW 	 
ProducesResponseTypeWW	 
(WW 
typeofWW $
(WW$ %
NoContentResponseWW% 6
)WW6 7
,WW7 8
(WW9 :
intWW: =
)WW= >
HttpStatusCodeWW> L
.WWL M
	NoContentWWM V
)WWV W
]WWW X
[XX 	 
ProducesResponseTypeXX	 
(XX 
typeofXX $
(XX$ %
BadRequestResponseXX% 7
)XX7 8
,XX8 9
(XX: ;
intXX; >
)XX> ?
HttpStatusCodeXX? M
.XXM N

BadRequestXXN X
)XXX Y
]XXY Z
[YY 	 
ProducesResponseTypeYY	 
(YY 
typeofYY $
(YY$ %
objectYY% +
)YY+ ,
,YY, -
(YY. /
intYY/ 2
)YY2 3
HttpStatusCodeYY3 A
.YYA B
InternalServerErrorYYB U
)YYU V
]YYV W
publicZZ 
asyncZZ 
TaskZZ 
<ZZ 
IResponseBaseZZ '
>ZZ' (%
GetConsumptionReportAsyncZZ) B
(ZZB C
[ZZC D
	FromRouteZZD M
]ZZM N
DateTimeZZO W
initialDateZZX c
,ZZc d
[ZZe f
	FromRouteZZf o
]ZZo p
DateTimeZZq y
	finalDate	ZZz É
,
ZZÉ Ñ
CancellationToken
ZZÖ ñ
cancellation
ZZó £
)
ZZ£ §
{[[ 	
return\\ 
await\\ 
_service\\ !
.\\! "%
GetConsumptionReportAsync\\" ;
(\\; <
initialDate\\< G
,\\G H
	finalDate\\I R
,\\R S
cancellation\\T `
)\\` a
;\\a b
}]] 	
}^^ 
}__ ±e
aE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Controllers\v1\RegisterOutStockController.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Controllers $
.$ %
v1% '
{ 
public 

class &
RegisterOutStockController +
:, -
EntityMtMController. A
<A B/
#RegisterOutStockGetRegisterOutModelB e
,e f*
RegisterOutStockGetStockModel	g Ñ
,
Ñ Ö(
RegisterOutStockPatchModel
Ü †
,
† °#
RegisterOutStockModel
¢ ∑
,
∑ ∏
Guid
π Ω
,
Ω æ
Guid
ø √
>
√ ƒ
{ 
private 
readonly $
IRegisterOutStockService 1
_service2 :
;: ;
public &
RegisterOutStockController )
() *$
IRegisterOutStockService* B
serviceC J
)J K
:L M
baseN R
(R S
serviceS Z
)Z [
{ 	
_service 
= 
service 
; 
} 	
[ 	
HttpGet	 
( 
$str >
)> ?
]? @
[ 	 
ProducesResponseType	 
( 
typeof $
($ %

OkResponse% /
</ 0!
RegisterOutStockModel0 E
>E F
)F G
,G H
(I J
intJ M
)M N
HttpStatusCodeN \
.\ ]
OK] _
)_ `
]` a
[ 	 
ProducesResponseType	 
( 
typeof $
($ % 
UnauthorizedResponse% 9
)9 :
,: ;
(< =
int= @
)@ A
HttpStatusCodeA O
.O P
UnauthorizedP \
)\ ]
]] ^
[ 	 
ProducesResponseType	 
( 
typeof $
($ %
NoContentResponse% 6
)6 7
,7 8
(9 :
int: =
)= >
HttpStatusCode> L
.L M
	NoContentM V
)V W
]W X
[ 	 
ProducesResponseType	 
( 
typeof $
($ %
BadRequestResponse% 7
)7 8
,8 9
(: ;
int; >
)> ?
HttpStatusCode? M
.M N

BadRequestN X
)X Y
]Y Z
[ 	 
ProducesResponseType	 
( 
typeof $
($ %
object% +
)+ ,
,, -
(. /
int/ 2
)2 3
HttpStatusCode3 A
.A B
InternalServerErrorB U
)U V
]V W
public 
override 
async 
Task "
<" #
IResponseBase# 0
>0 1
GetByIdsAsync2 ?
(? @
Guid@ D
registerOutIdE R
,R S
GuidT X
stockIdY `
,` a
CancellationTokenb s
cancellationToken	t Ö
)
Ö Ü
{ 	
return   
await   
base   
.   
GetByIdsAsync   +
(  + ,
registerOutId  , 9
,  9 :
stockId  ; B
,  B C
cancellationToken  D U
)  U V
;  V W
}!! 	
[## 	
HttpGet##	 
(## 
$str## .
)##. /
]##/ 0
[$$ 	 
ProducesResponseType$$	 
($$ 
typeof$$ $
($$$ %

OkResponse$$% /
<$$/ 0)
RegisterOutStockGetStockModel$$0 M
>$$M N
)$$N O
,$$O P
($$Q R
int$$R U
)$$U V
HttpStatusCode$$V d
.$$d e
OK$$e g
)$$g h
]$$h i
[%% 	 
ProducesResponseType%%	 
(%% 
typeof%% $
(%%$ % 
UnauthorizedResponse%%% 9
)%%9 :
,%%: ;
(%%< =
int%%= @
)%%@ A
HttpStatusCode%%A O
.%%O P
Unauthorized%%P \
)%%\ ]
]%%] ^
[&& 	 
ProducesResponseType&&	 
(&& 
typeof&& $
(&&$ %
NoContentResponse&&% 6
)&&6 7
,&&7 8
(&&9 :
int&&: =
)&&= >
HttpStatusCode&&> L
.&&L M
	NoContent&&M V
)&&V W
]&&W X
['' 	 
ProducesResponseType''	 
('' 
typeof'' $
(''$ %
BadRequestResponse''% 7
)''7 8
,''8 9
('': ;
int''; >
)''> ?
HttpStatusCode''? M
.''M N

BadRequest''N X
)''X Y
]''Y Z
[(( 	 
ProducesResponseType((	 
((( 
typeof(( $
((($ %
object((% +
)((+ ,
,((, -
(((. /
int((/ 2
)((2 3
HttpStatusCode((3 A
.((A B
InternalServerError((B U
)((U V
]((V W
public)) 
override)) 
async)) 
Task)) "
<))" #
IResponseBase))# 0
>))0 1
	GetStrong))2 ;
()); <
Guid))< @
registerOutId))A N
,))N O
CancellationToken))P a
cancellationToken))b s
)))s t
{** 	
return++ 
await++ 
base++ 
.++ 
	GetStrong++ '
(++' (
registerOutId++( 5
,++5 6
cancellationToken++7 H
)++H I
;++I J
},, 	
[.. 	
HttpGet..	 
(.. 
$str.. "
).." #
]..# $
[// 	 
ProducesResponseType//	 
(// 
typeof// $
(//$ %

OkResponse//% /
</// 0/
#RegisterOutStockGetRegisterOutModel//0 S
>//S T
)//T U
,//U V
(//W X
int//X [
)//[ \
HttpStatusCode//\ j
.//j k
OK//k m
)//m n
]//n o
[00 	 
ProducesResponseType00	 
(00 
typeof00 $
(00$ % 
UnauthorizedResponse00% 9
)009 :
,00: ;
(00< =
int00= @
)00@ A
HttpStatusCode00A O
.00O P
Unauthorized00P \
)00\ ]
]00] ^
[11 	 
ProducesResponseType11	 
(11 
typeof11 $
(11$ %
NoContentResponse11% 6
)116 7
,117 8
(119 :
int11: =
)11= >
HttpStatusCode11> L
.11L M
	NoContent11M V
)11V W
]11W X
[22 	 
ProducesResponseType22	 
(22 
typeof22 $
(22$ %
BadRequestResponse22% 7
)227 8
,228 9
(22: ;
int22; >
)22> ?
HttpStatusCode22? M
.22M N

BadRequest22N X
)22X Y
]22Y Z
[33 	 
ProducesResponseType33	 
(33 
typeof33 $
(33$ %
object33% +
)33+ ,
,33, -
(33. /
int33/ 2
)332 3
HttpStatusCode333 A
.33A B
InternalServerError33B U
)33U V
]33V W
public44 
override44 
async44 
Task44 "
<44" #
IResponseBase44# 0
>440 1
GetWeak442 9
(449 :
Guid44: >
StockId44? F
,44F G
CancellationToken44H Y
cancellationToken44Z k
)44k l
{55 	
return66 
await66 
base66 
.66 
GetWeak66 %
(66% &
StockId66& -
,66- .
cancellationToken66/ @
)66@ A
;66A B
}77 	
[99 	
	HttpPatch99	 
(99 
$str99 0
)990 1
]991 2
[:: 	 
ProducesResponseType::	 
(:: 
typeof:: $
(::$ %

OkResponse::% /
<::/ 0
IEnumerable::0 ;
<::; <!
RegisterOutStockModel::< Q
>::Q R
>::R S
)::S T
,::T U
(::V W
int::W Z
)::Z [
HttpStatusCode::[ i
.::i j
OK::j l
)::l m
]::m n
[;; 	 
ProducesResponseType;;	 
(;; 
typeof;; $
(;;$ % 
UnauthorizedResponse;;% 9
);;9 :
,;;: ;
(;;< =
int;;= @
);;@ A
HttpStatusCode;;A O
.;;O P
Unauthorized;;P \
);;\ ]
];;] ^
[<< 	 
ProducesResponseType<<	 
(<< 
typeof<< $
(<<$ %
NoContentResponse<<% 6
)<<6 7
,<<7 8
(<<9 :
int<<: =
)<<= >
HttpStatusCode<<> L
.<<L M
	NoContent<<M V
)<<V W
]<<W X
[== 	 
ProducesResponseType==	 
(== 
typeof== $
(==$ %
BadRequestResponse==% 7
)==7 8
,==8 9
(==: ;
int==; >
)==> ?
HttpStatusCode==? M
.==M N

BadRequest==N X
)==X Y
]==Y Z
[>> 	 
ProducesResponseType>>	 
(>> 
typeof>> $
(>>$ %
object>>% +
)>>+ ,
,>>, -
(>>. /
int>>/ 2
)>>2 3
HttpStatusCode>>3 A
.>>A B
InternalServerError>>B U
)>>U V
]>>V W
public?? 
override?? 
async?? 
Task?? "
<??" #
IResponseBase??# 0
>??0 1
Patch??2 7
(??7 8
Guid??8 <
RegisterOutId??= J
,??J K
[??L M
FromBody??M U
]??U V
IEnumerable??W b
<??b c&
RegisterOutStockPatchModel??c }
>??} ~
model	?? Ñ
)
??Ñ Ö
{@@ 	
returnAA 
awaitAA 
_serviceAA !
.AA! "
AddOrDeleteAsyncAA" 2
(AA2 3
RegisterOutIdAA3 @
,AA@ A
modelAAB G
)AAG H
;AAH I
}BB 	
[DD 	
HttpPostDD	 
(DD 
$strDD /
)DD/ 0
]DD0 1
[EE 	 
ProducesResponseTypeEE	 
(EE 
typeofEE $
(EE$ %

OkResponseEE% /
<EE/ 0
IEnumerableEE0 ;
<EE; <!
RegisterOutStockModelEE< Q
>EEQ R
>EER S
)EES T
,EET U
(EEV W
intEEW Z
)EEZ [
HttpStatusCodeEE[ i
.EEi j
OKEEj l
)EEl m
]EEm n
[FF 	 
ProducesResponseTypeFF	 
(FF 
typeofFF $
(FF$ % 
UnauthorizedResponseFF% 9
)FF9 :
,FF: ;
(FF< =
intFF= @
)FF@ A
HttpStatusCodeFFA O
.FFO P
UnauthorizedFFP \
)FF\ ]
]FF] ^
[GG 	 
ProducesResponseTypeGG	 
(GG 
typeofGG $
(GG$ %
NoContentResponseGG% 6
)GG6 7
,GG7 8
(GG9 :
intGG: =
)GG= >
HttpStatusCodeGG> L
.GGL M
	NoContentGGM V
)GGV W
]GGW X
[HH 	 
ProducesResponseTypeHH	 
(HH 
typeofHH $
(HH$ %
BadRequestResponseHH% 7
)HH7 8
,HH8 9
(HH: ;
intHH; >
)HH> ?
HttpStatusCodeHH? M
.HHM N

BadRequestHHN X
)HHX Y
]HHY Z
[II 	 
ProducesResponseTypeII	 
(II 
typeofII $
(II$ %
ConflictResponseII% 5
)II5 6
,II6 7
(II8 9
intII9 <
)II< =
HttpStatusCodeII= K
.IIK L
ConflictIIL T
)IIT U
]IIU V
[JJ 	 
ProducesResponseTypeJJ	 
(JJ 
typeofJJ $
(JJ$ %
objectJJ% +
)JJ+ ,
,JJ, -
(JJ. /
intJJ/ 2
)JJ2 3
HttpStatusCodeJJ3 A
.JJA B
InternalServerErrorJJB U
)JJU V
]JJV W
publicKK 
asyncKK 
TaskKK 
<KK 
IResponseBaseKK '
>KK' (
PostKK) -
(KK- .
GuidKK. 2
RegisterOutIdKK3 @
,KK@ A
[KKB C
FromBodyKKC K
]KKK L&
RegisterOutStockPatchModelKKM g
modelKKh m
)KKm n
{LL 	
returnMM 
awaitMM 
_serviceMM !
.MM! "
AddAsyncMM" *
(MM* +
RegisterOutIdMM+ 8
,MM8 9
modelMM: ?
)MM? @
;MM@ A
}NN 	
}OO 
}PP ü<
\E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Controllers\v1\RegisterOutController.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Controllers $
.$ %
v1% '
{ 
public 

class !
RegisterOutController &
:' (
EntityController) 9
<9 :
RegisterOutAddModel: M
,M N"
RegisterOutUpdateModelO e
,e f!
RegisterOutPatchModelg |
,| } 
RegisterOutGetModel	~ ë
,
ë í
RegisterOutModel
ì £
,
£ §
Guid
• ©
>
© ™
{ 
private 
readonly 
IRegisterOutService ,
_service- 5
;5 6
public !
RegisterOutController $
($ %
IRegisterOutService% 8
service9 @
)@ A
: 
base 
( 
service 
) 
{ 	
_service 
= 
service 
; 
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
[ 	 
ProducesResponseType	 
( 
typeof $
($ %

OkResponse% /
</ 0
IEnumerable0 ;
<; <
RegisterOutGetModel< O
>O P
>P Q
)Q R
,R S
(T U
intU X
)X Y
HttpStatusCodeY g
.g h
OKh j
)j k
]k l
[ 	 
ProducesResponseType	 
( 
typeof $
($ % 
UnauthorizedResponse% 9
)9 :
,: ;
(< =
int= @
)@ A
HttpStatusCodeA O
.O P
UnauthorizedP \
)\ ]
]] ^
[ 	 
ProducesResponseType	 
( 
typeof $
($ %
NoContentResponse% 6
)6 7
,7 8
(9 :
int: =
)= >
HttpStatusCode> L
.L M
	NoContentM V
)V W
]W X
[   	 
ProducesResponseType  	 
(   
typeof   $
(  $ %
BadRequestResponse  % 7
)  7 8
,  8 9
(  : ;
int  ; >
)  > ?
HttpStatusCode  ? M
.  M N

BadRequest  N X
)  X Y
]  Y Z
[!! 	 
ProducesResponseType!!	 
(!! 
typeof!! $
(!!$ %
object!!% +
)!!+ ,
,!!, -
(!!. /
int!!/ 2
)!!2 3
HttpStatusCode!!3 A
.!!A B
InternalServerError!!B U
)!!U V
]!!V W
public"" 
async"" 
Task"" 
<"" 
IResponseBase"" '
>""' (
GetToListAsync"") 7
(""7 8
CancellationToken""8 I
cancellation""J V
)""V W
{## 	
return$$ 
await$$ 
_service$$ !
.$$! "
GetToListAsync$$" 0
($$0 1
cancellation$$1 =
)$$= >
;$$> ?
}%% 	
[-- 	
HttpGet--	 
(-- 
$str-- !
)--! "
]--" #
[.. 	 
ProducesResponseType..	 
(.. 
typeof.. $
(..$ %

OkResponse..% /
<../ 0
RegisterOutGetModel..0 C
>..C D
)..D E
,..E F
(..G H
int..H K
)..K L
HttpStatusCode..L Z
...Z [
OK..[ ]
)..] ^
]..^ _
[// 	 
ProducesResponseType//	 
(// 
typeof// $
(//$ % 
UnauthorizedResponse//% 9
)//9 :
,//: ;
(//< =
int//= @
)//@ A
HttpStatusCode//A O
.//O P
Unauthorized//P \
)//\ ]
]//] ^
[00 	 
ProducesResponseType00	 
(00 
typeof00 $
(00$ %
NoContentResponse00% 6
)006 7
,007 8
(009 :
int00: =
)00= >
HttpStatusCode00> L
.00L M
	NoContent00M V
)00V W
]00W X
[11 	 
ProducesResponseType11	 
(11 
typeof11 $
(11$ %
BadRequestResponse11% 7
)117 8
,118 9
(11: ;
int11; >
)11> ?
HttpStatusCode11? M
.11M N

BadRequest11N X
)11X Y
]11Y Z
[22 	 
ProducesResponseType22	 
(22 
typeof22 $
(22$ %
object22% +
)22+ ,
,22, -
(22. /
int22/ 2
)222 3
HttpStatusCode223 A
.22A B
InternalServerError22B U
)22U V
]22V W
public33 
async33 
Task33 
<33 
IResponseBase33 '
>33' ( 
GetByIdToUpdateAsync33) =
(33= >
Guid33> B
id33C E
,33E F
CancellationToken33G X
cancellation33Y e
)33e f
{44 	
return55 
await55 
_service55 !
.55! " 
GetByIdToUpdateAsync55" 6
(556 7
id557 9
,559 :
cancellation55; G
)55G H
;55H I
}66 	
[== 	
HttpGet==	 
(== 
$str== )
)==) *
]==* +
[>> 	 
ProducesResponseType>>	 
(>> 
typeof>> $
(>>$ %

OkResponse>>% /
<>>/ 0

Dictionary>>0 :
<>>: ;
string>>; A
,>>A B
decimal>>C J
>>>J K
>>>K L
)>>L M
,>>M N
(>>O P
int>>P S
)>>S T
HttpStatusCode>>T b
.>>b c
OK>>c e
)>>e f
]>>f g
[?? 	 
ProducesResponseType??	 
(?? 
typeof?? $
(??$ % 
UnauthorizedResponse??% 9
)??9 :
,??: ;
(??< =
int??= @
)??@ A
HttpStatusCode??A O
.??O P
Unauthorized??P \
)??\ ]
]??] ^
[@@ 	 
ProducesResponseType@@	 
(@@ 
typeof@@ $
(@@$ %
NoContentResponse@@% 6
)@@6 7
,@@7 8
(@@9 :
int@@: =
)@@= >
HttpStatusCode@@> L
.@@L M
	NoContent@@M V
)@@V W
]@@W X
[AA 	 
ProducesResponseTypeAA	 
(AA 
typeofAA $
(AA$ %
BadRequestResponseAA% 7
)AA7 8
,AA8 9
(AA: ;
intAA; >
)AA> ?
HttpStatusCodeAA? M
.AAM N

BadRequestAAN X
)AAX Y
]AAY Z
[BB 	 
ProducesResponseTypeBB	 
(BB 
typeofBB $
(BB$ %
objectBB% +
)BB+ ,
,BB, -
(BB. /
intBB/ 2
)BB2 3
HttpStatusCodeBB3 A
.BBA B
InternalServerErrorBBB U
)BBU V
]BBV W
publicCC 
asyncCC 
TaskCC 
<CC 
IResponseBaseCC '
>CC' (#
GetConsumptionsPerMonthCC) @
(CC@ A
CancellationTokenCCA R
cancellationCCS _
)CC_ `
{DD 	
returnEE 
awaitEE 
_serviceEE !
.EE! "#
GetConsumptionsPerMonthEE" 9
(EE9 :
cancellationEE: F
)EEF G
;EEG H
}FF 	
}GG 
}HH óe
`E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Controllers\v1\RegisterInStockController.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Controllers $
.$ %
v1% '
{ 
public 

class %
RegisterInStockController *
:+ ,
EntityMtMController- @
<@ A-
!RegisterInStockGetRegisterInModelA b
,b c)
RegisterInStockGetStockModel	d Ä
,
Ä Å'
RegisterInStockPatchModel
Ç õ
,
õ ú"
RegisterInStockModel
ù ±
,
± ≤
Guid
≥ ∑
,
∑ ∏
Guid
π Ω
>
Ω æ
{ 
private 
readonly #
IRegisterInStockService 0
_service1 9
;9 :
public %
RegisterInStockController (
(( )#
IRegisterInStockService) @
serviceA H
)H I
:J K
baseL P
(P Q
serviceQ X
)X Y
{ 	
_service 
= 
service 
; 
} 	
[ 	
HttpGet	 
( 
$str <
)< =
]= >
[ 	 
ProducesResponseType	 
( 
typeof $
($ %

OkResponse% /
</ 0 
RegisterInStockModel0 D
>D E
)E F
,F G
(H I
intI L
)L M
HttpStatusCodeM [
.[ \
OK\ ^
)^ _
]_ `
[ 	 
ProducesResponseType	 
( 
typeof $
($ % 
UnauthorizedResponse% 9
)9 :
,: ;
(< =
int= @
)@ A
HttpStatusCodeA O
.O P
UnauthorizedP \
)\ ]
]] ^
[ 	 
ProducesResponseType	 
( 
typeof $
($ %
NoContentResponse% 6
)6 7
,7 8
(9 :
int: =
)= >
HttpStatusCode> L
.L M
	NoContentM V
)V W
]W X
[ 	 
ProducesResponseType	 
( 
typeof $
($ %
BadRequestResponse% 7
)7 8
,8 9
(: ;
int; >
)> ?
HttpStatusCode? M
.M N

BadRequestN X
)X Y
]Y Z
[ 	 
ProducesResponseType	 
( 
typeof $
($ %
object% +
)+ ,
,, -
(. /
int/ 2
)2 3
HttpStatusCode3 A
.A B
InternalServerErrorB U
)U V
]V W
public 
override 
async 
Task "
<" #
IResponseBase# 0
>0 1
GetByIdsAsync2 ?
(? @
Guid@ D
registerInIdE Q
,Q R
GuidS W
stockIdX _
,_ `
CancellationTokena r
cancellationToken	s Ñ
)
Ñ Ö
{ 	
return 
await 
base 
. 
GetByIdsAsync +
(+ ,
registerInId, 8
,8 9
stockId: A
,A B
cancellationTokenC T
)T U
;U V
}   	
["" 	
HttpGet""	 
("" 
$str"" ,
)"", -
]""- .
[## 	 
ProducesResponseType##	 
(## 
typeof## $
(##$ %

OkResponse##% /
<##/ 0(
RegisterInStockGetStockModel##0 L
>##L M
)##M N
,##N O
(##P Q
int##Q T
)##T U
HttpStatusCode##U c
.##c d
OK##d f
)##f g
]##g h
[$$ 	 
ProducesResponseType$$	 
($$ 
typeof$$ $
($$$ % 
UnauthorizedResponse$$% 9
)$$9 :
,$$: ;
($$< =
int$$= @
)$$@ A
HttpStatusCode$$A O
.$$O P
Unauthorized$$P \
)$$\ ]
]$$] ^
[%% 	 
ProducesResponseType%%	 
(%% 
typeof%% $
(%%$ %
NoContentResponse%%% 6
)%%6 7
,%%7 8
(%%9 :
int%%: =
)%%= >
HttpStatusCode%%> L
.%%L M
	NoContent%%M V
)%%V W
]%%W X
[&& 	 
ProducesResponseType&&	 
(&& 
typeof&& $
(&&$ %
BadRequestResponse&&% 7
)&&7 8
,&&8 9
(&&: ;
int&&; >
)&&> ?
HttpStatusCode&&? M
.&&M N

BadRequest&&N X
)&&X Y
]&&Y Z
['' 	 
ProducesResponseType''	 
('' 
typeof'' $
(''$ %
object''% +
)''+ ,
,'', -
(''. /
int''/ 2
)''2 3
HttpStatusCode''3 A
.''A B
InternalServerError''B U
)''U V
]''V W
public(( 
override(( 
async(( 
Task(( "
<((" #
IResponseBase((# 0
>((0 1
	GetStrong((2 ;
(((; <
Guid((< @
registerInId((A M
,((M N
CancellationToken((O `
cancellationToken((a r
)((r s
{)) 	
return** 
await** 
base** 
.** 
	GetStrong** '
(**' (
registerInId**( 4
,**4 5
cancellationToken**6 G
)**G H
;**H I
}++ 	
[-- 	
HttpGet--	 
(-- 
$str-- "
)--" #
]--# $
[.. 	 
ProducesResponseType..	 
(.. 
typeof.. $
(..$ %

OkResponse..% /
<../ 0-
!RegisterInStockGetRegisterInModel..0 Q
>..Q R
)..R S
,..S T
(..U V
int..V Y
)..Y Z
HttpStatusCode..Z h
...h i
OK..i k
)..k l
]..l m
[// 	 
ProducesResponseType//	 
(// 
typeof// $
(//$ % 
UnauthorizedResponse//% 9
)//9 :
,//: ;
(//< =
int//= @
)//@ A
HttpStatusCode//A O
.//O P
Unauthorized//P \
)//\ ]
]//] ^
[00 	 
ProducesResponseType00	 
(00 
typeof00 $
(00$ %
NoContentResponse00% 6
)006 7
,007 8
(009 :
int00: =
)00= >
HttpStatusCode00> L
.00L M
	NoContent00M V
)00V W
]00W X
[11 	 
ProducesResponseType11	 
(11 
typeof11 $
(11$ %
BadRequestResponse11% 7
)117 8
,118 9
(11: ;
int11; >
)11> ?
HttpStatusCode11? M
.11M N

BadRequest11N X
)11X Y
]11Y Z
[22 	 
ProducesResponseType22	 
(22 
typeof22 $
(22$ %
object22% +
)22+ ,
,22, -
(22. /
int22/ 2
)222 3
HttpStatusCode223 A
.22A B
InternalServerError22B U
)22U V
]22V W
public33 
override33 
async33 
Task33 "
<33" #
IResponseBase33# 0
>330 1
GetWeak332 9
(339 :
Guid33: >
stockId33? F
,33F G
CancellationToken33H Y
cancellationToken33Z k
)33k l
{44 	
return55 
await55 
base55 
.55 
GetWeak55 %
(55% &
stockId55& -
,55- .
cancellationToken55/ @
)55@ A
;55A B
}66 	
[88 	
	HttpPatch88	 
(88 
$str88 .
)88. /
]88/ 0
[99 	 
ProducesResponseType99	 
(99 
typeof99 $
(99$ %

OkResponse99% /
<99/ 0
IEnumerable990 ;
<99; < 
RegisterInStockModel99< P
>99P Q
>99Q R
)99R S
,99S T
(99U V
int99V Y
)99Y Z
HttpStatusCode99Z h
.99h i
OK99i k
)99k l
]99l m
[:: 	 
ProducesResponseType::	 
(:: 
typeof:: $
(::$ % 
UnauthorizedResponse::% 9
)::9 :
,::: ;
(::< =
int::= @
)::@ A
HttpStatusCode::A O
.::O P
Unauthorized::P \
)::\ ]
]::] ^
[;; 	 
ProducesResponseType;;	 
(;; 
typeof;; $
(;;$ %
NoContentResponse;;% 6
);;6 7
,;;7 8
(;;9 :
int;;: =
);;= >
HttpStatusCode;;> L
.;;L M
	NoContent;;M V
);;V W
];;W X
[<< 	 
ProducesResponseType<<	 
(<< 
typeof<< $
(<<$ %
BadRequestResponse<<% 7
)<<7 8
,<<8 9
(<<: ;
int<<; >
)<<> ?
HttpStatusCode<<? M
.<<M N

BadRequest<<N X
)<<X Y
]<<Y Z
[== 	 
ProducesResponseType==	 
(== 
typeof== $
(==$ %
object==% +
)==+ ,
,==, -
(==. /
int==/ 2
)==2 3
HttpStatusCode==3 A
.==A B
InternalServerError==B U
)==U V
]==V W
public>> 
override>> 
async>> 
Task>> "
<>>" #
IResponseBase>># 0
>>>0 1
Patch>>2 7
(>>7 8
Guid>>8 <
registerInId>>= I
,>>I J
[>>K L
FromBody>>L T
]>>T U
IEnumerable>>V a
<>>a b%
RegisterInStockPatchModel>>b {
>>>{ |
model	>>} Ç
)
>>Ç É
{?? 	
return@@ 
await@@ 
_service@@ !
.@@! "
AddOrDeleteAsync@@" 2
(@@2 3
registerInId@@3 ?
,@@? @
model@@A F
)@@F G
;@@G H
}AA 	
[CC 	
HttpPostCC	 
(CC 
$strCC -
)CC- .
]CC. /
[DD 	 
ProducesResponseTypeDD	 
(DD 
typeofDD $
(DD$ %

OkResponseDD% /
<DD/ 0
IEnumerableDD0 ;
<DD; < 
RegisterInStockModelDD< P
>DDP Q
>DDQ R
)DDR S
,DDS T
(DDU V
intDDV Y
)DDY Z
HttpStatusCodeDDZ h
.DDh i
OKDDi k
)DDk l
]DDl m
[EE 	 
ProducesResponseTypeEE	 
(EE 
typeofEE $
(EE$ % 
UnauthorizedResponseEE% 9
)EE9 :
,EE: ;
(EE< =
intEE= @
)EE@ A
HttpStatusCodeEEA O
.EEO P
UnauthorizedEEP \
)EE\ ]
]EE] ^
[FF 	 
ProducesResponseTypeFF	 
(FF 
typeofFF $
(FF$ %
NoContentResponseFF% 6
)FF6 7
,FF7 8
(FF9 :
intFF: =
)FF= >
HttpStatusCodeFF> L
.FFL M
	NoContentFFM V
)FFV W
]FFW X
[GG 	 
ProducesResponseTypeGG	 
(GG 
typeofGG $
(GG$ %
BadRequestResponseGG% 7
)GG7 8
,GG8 9
(GG: ;
intGG; >
)GG> ?
HttpStatusCodeGG? M
.GGM N

BadRequestGGN X
)GGX Y
]GGY Z
[HH 	 
ProducesResponseTypeHH	 
(HH 
typeofHH $
(HH$ %
ConflictResponseHH% 5
)HH5 6
,HH6 7
(HH8 9
intHH9 <
)HH< =
HttpStatusCodeHH= K
.HHK L
ConflictHHL T
)HHT U
]HHU V
[II 	 
ProducesResponseTypeII	 
(II 
typeofII $
(II$ %
objectII% +
)II+ ,
,II, -
(II. /
intII/ 2
)II2 3
HttpStatusCodeII3 A
.IIA B
InternalServerErrorIIB U
)IIU V
]IIV W
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
IResponseBaseJJ '
>JJ' (
PostJJ) -
(JJ- .
GuidJJ. 2
registerInIdJJ3 ?
,JJ? @
[JJA B
FromBodyJJB J
]JJJ K%
RegisterInStockPatchModelJJL e
modelJJf k
)JJk l
{KK 	
returnLL 
awaitLL 
_serviceLL !
.LL! "
AddAsyncLL" *
(LL* +
registerInIdLL+ 7
,LL7 8
modelLL9 >
)LL> ?
;LL? @
}MM 	
}NN 
}OO úM
[E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Controllers\v1\RegisterInController.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Controllers $
.$ %
v1% '
{ 
public 

class  
RegisterInController %
:& '
EntityController( 8
<8 9
RegisterInAddModel9 K
,K L!
RegisterInUpdateModelM b
,b c 
RegisterInPatchModeld x
,x y
RegisterInGetModel	z å
,
å ç
RegisterInModel
é ù
,
ù û
Guid
ü £
>
£ §
{ 
private 
readonly 
IRegisterInService +
_service, 4
;4 5
public  
RegisterInController #
(# $
IRegisterInService$ 6
service7 >
)> ?
: 
base 
( 
service 
) 
{ 	
_service 
= 
service 
; 
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
[ 	 
ProducesResponseType	 
( 
typeof $
($ %

OkResponse% /
</ 0
IEnumerable0 ;
<; <
RegisterInGetModel< N
>N O
>O P
)P Q
,Q R
(S T
intT W
)W X
HttpStatusCodeX f
.f g
OKg i
)i j
]j k
[ 	 
ProducesResponseType	 
( 
typeof $
($ % 
UnauthorizedResponse% 9
)9 :
,: ;
(< =
int= @
)@ A
HttpStatusCodeA O
.O P
UnauthorizedP \
)\ ]
]] ^
[ 	 
ProducesResponseType	 
( 
typeof $
($ %
NoContentResponse% 6
)6 7
,7 8
(9 :
int: =
)= >
HttpStatusCode> L
.L M
	NoContentM V
)V W
]W X
[   	 
ProducesResponseType  	 
(   
typeof   $
(  $ %
BadRequestResponse  % 7
)  7 8
,  8 9
(  : ;
int  ; >
)  > ?
HttpStatusCode  ? M
.  M N

BadRequest  N X
)  X Y
]  Y Z
[!! 	 
ProducesResponseType!!	 
(!! 
typeof!! $
(!!$ %
object!!% +
)!!+ ,
,!!, -
(!!. /
int!!/ 2
)!!2 3
HttpStatusCode!!3 A
.!!A B
InternalServerError!!B U
)!!U V
]!!V W
public"" 
async"" 
Task"" 
<"" 
IResponseBase"" '
>""' (
GetToListAsync"") 7
(""7 8
CancellationToken""8 I
cancellation""J V
)""V W
{## 	
return$$ 
await$$ 
_service$$ !
.$$! "
GetToListAsync$$" 0
($$0 1
cancellation$$1 =
)$$= >
;$$> ?
}%% 	
[-- 	
HttpGet--	 
(-- 
$str-- !
)--! "
]--" #
[.. 	 
ProducesResponseType..	 
(.. 
typeof.. $
(..$ %

OkResponse..% /
<../ 0
RegisterInGetModel..0 B
>..B C
)..C D
,..D E
(..F G
int..G J
)..J K
HttpStatusCode..K Y
...Y Z
OK..Z \
)..\ ]
]..] ^
[// 	 
ProducesResponseType//	 
(// 
typeof// $
(//$ % 
UnauthorizedResponse//% 9
)//9 :
,//: ;
(//< =
int//= @
)//@ A
HttpStatusCode//A O
.//O P
Unauthorized//P \
)//\ ]
]//] ^
[00 	 
ProducesResponseType00	 
(00 
typeof00 $
(00$ %
NoContentResponse00% 6
)006 7
,007 8
(009 :
int00: =
)00= >
HttpStatusCode00> L
.00L M
	NoContent00M V
)00V W
]00W X
[11 	 
ProducesResponseType11	 
(11 
typeof11 $
(11$ %
BadRequestResponse11% 7
)117 8
,118 9
(11: ;
int11; >
)11> ?
HttpStatusCode11? M
.11M N

BadRequest11N X
)11X Y
]11Y Z
[22 	 
ProducesResponseType22	 
(22 
typeof22 $
(22$ %
object22% +
)22+ ,
,22, -
(22. /
int22/ 2
)222 3
HttpStatusCode223 A
.22A B
InternalServerError22B U
)22U V
]22V W
public33 
async33 
Task33 
<33 
IResponseBase33 '
>33' ( 
GetByIdToUpdateAsync33) =
(33= >
Guid33> B
id33C E
,33E F
CancellationToken33G X
cancellation33Y e
)33e f
{44 	
return55 
await55 
_service55 !
.55! " 
GetByIdToUpdateAsync55" 6
(556 7
id557 9
,559 :
cancellation55; G
)55G H
;55H I
}66 	
[== 	
HttpGet==	 
(== 
$str== &
)==& '
]==' (
[>> 	 
ProducesResponseType>>	 
(>> 
typeof>> $
(>>$ %

OkResponse>>% /
<>>/ 0

Dictionary>>0 :
<>>: ;
string>>; A
,>>A B
decimal>>C J
>>>J K
>>>K L
)>>L M
,>>M N
(>>O P
int>>P S
)>>S T
HttpStatusCode>>T b
.>>b c
OK>>c e
)>>e f
]>>f g
[?? 	 
ProducesResponseType??	 
(?? 
typeof?? $
(??$ % 
UnauthorizedResponse??% 9
)??9 :
,??: ;
(??< =
int??= @
)??@ A
HttpStatusCode??A O
.??O P
Unauthorized??P \
)??\ ]
]??] ^
[@@ 	 
ProducesResponseType@@	 
(@@ 
typeof@@ $
(@@$ %
NoContentResponse@@% 6
)@@6 7
,@@7 8
(@@9 :
int@@: =
)@@= >
HttpStatusCode@@> L
.@@L M
	NoContent@@M V
)@@V W
]@@W X
[AA 	 
ProducesResponseTypeAA	 
(AA 
typeofAA $
(AA$ %
BadRequestResponseAA% 7
)AA7 8
,AA8 9
(AA: ;
intAA; >
)AA> ?
HttpStatusCodeAA? M
.AAM N

BadRequestAAN X
)AAX Y
]AAY Z
[BB 	 
ProducesResponseTypeBB	 
(BB 
typeofBB $
(BB$ %
objectBB% +
)BB+ ,
,BB, -
(BB. /
intBB/ 2
)BB2 3
HttpStatusCodeBB3 A
.BBA B
InternalServerErrorBBB U
)BBU V
]BBV W
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
{DD 	
returnEE 
awaitEE 
_serviceEE !
.EE! " 
GetDonationsPerMonthEE" 6
(EE6 7
cancellationEE7 C
)EEC D
;EED E
}FF 	
[MM 	
HttpGetMM	 
(MM 
$strMM %
)MM% &
]MM& '
[NN 	 
ProducesResponseTypeNN	 
(NN 
typeofNN $
(NN$ %

OkResponseNN% /
<NN/ 0

DictionaryNN0 :
<NN: ;
stringNN; A
,NNA B
decimalNNC J
>NNJ K
>NNK L
)NNL M
,NNM N
(NNO P
intNNP S
)NNS T
HttpStatusCodeNNT b
.NNb c
OKNNc e
)NNe f
]NNf g
[OO 	 
ProducesResponseTypeOO	 
(OO 
typeofOO $
(OO$ % 
UnauthorizedResponseOO% 9
)OO9 :
,OO: ;
(OO< =
intOO= @
)OO@ A
HttpStatusCodeOOA O
.OOO P
UnauthorizedOOP \
)OO\ ]
]OO] ^
[PP 	 
ProducesResponseTypePP	 
(PP 
typeofPP $
(PP$ %
NoContentResponsePP% 6
)PP6 7
,PP7 8
(PP9 :
intPP: =
)PP= >
HttpStatusCodePP> L
.PPL M
	NoContentPPM V
)PPV W
]PPW X
[QQ 	 
ProducesResponseTypeQQ	 
(QQ 
typeofQQ $
(QQ$ %
BadRequestResponseQQ% 7
)QQ7 8
,QQ8 9
(QQ: ;
intQQ; >
)QQ> ?
HttpStatusCodeQQ? M
.QQM N

BadRequestQQN X
)QQX Y
]QQY Z
[RR 	 
ProducesResponseTypeRR	 
(RR 
typeofRR $
(RR$ %
objectRR% +
)RR+ ,
,RR, -
(RR. /
intRR/ 2
)RR2 3
HttpStatusCodeRR3 A
.RRA B
InternalServerErrorRRB U
)RRU V
]RRV W
publicSS 
asyncSS 
TaskSS 
<SS 
IResponseBaseSS '
>SS' (
GetShoppingPerMonthSS) <
(SS< =
CancellationTokenSS= N
cancellationSSO [
)SS[ \
{TT 	
returnUU 
awaitUU 
_serviceUU !
.UU! "
GetShoppingPerMonthUU" 5
(UU5 6
cancellationUU6 B
)UUB C
;UUC D
}VV 	
}WW 
}XX †3
XE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Controllers\v1\ManagerController.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Controllers $
.$ %
v1% '
{ 
public 

class 
ManagerController "
:# $
EntityController% 5
<5 6
ManagerAddModel6 E
,E F
ManagerUpdateModelG Y
,Y Z
ManagerPatchModel[ l
,l m
ManagerGetModeln }
,} ~
ManagerModel	 ã
,
ã å
Guid
ç ë
>
ë í
{ 
private 
readonly 
IManagerService (
_service) 1
;1 2
public 
ManagerController  
(  !
IManagerService! 0
service1 8
)8 9
: 
base 
( 
service 
) 
{ 	
_service 
= 
service 
; 
} 	
[ 	

HttpDelete	 
( 
$str /
)/ 0
]0 1
[ 	 
ProducesResponseType	 
( 
typeof $
($ %

OkResponse% /
</ 0"
DefaultMessageResponse0 F
>F G
)G H
,H I
(J K
intK N
)N O
HttpStatusCodeO ]
.] ^
OK^ `
)` a
]a b
[   	 
ProducesResponseType  	 
(   
typeof   $
(  $ % 
UnauthorizedResponse  % 9
)  9 :
,  : ;
(  < =
int  = @
)  @ A
HttpStatusCode  A O
.  O P
Unauthorized  P \
)  \ ]
]  ] ^
[!! 	 
ProducesResponseType!!	 
(!! 
typeof!! $
(!!$ %
NoContentResponse!!% 6
)!!6 7
,!!7 8
(!!9 :
int!!: =
)!!= >
HttpStatusCode!!> L
.!!L M
	NoContent!!M V
)!!V W
]!!W X
["" 	 
ProducesResponseType""	 
("" 
typeof"" $
(""$ %
ConflictResponse""% 5
)""5 6
,""6 7
(""8 9
int""9 <
)""< =
HttpStatusCode""= K
.""K L
Conflict""L T
)""T U
]""U V
[## 	 
ProducesResponseType##	 
(## 
typeof## $
(##$ %
BadRequestResponse##% 7
)##7 8
,##8 9
(##: ;
int##; >
)##> ?
HttpStatusCode##? M
.##M N

BadRequest##N X
)##X Y
]##Y Z
[$$ 	 
ProducesResponseType$$	 
($$ 
typeof$$ $
($$$ %
object$$% +
)$$+ ,
,$$, -
($$. /
int$$/ 2
)$$2 3
HttpStatusCode$$3 A
.$$A B
InternalServerError$$B U
)$$U V
]$$V W
public%% 
async%% 
Task%% 
<%% 
IResponseBase%% '
>%%' (
SoftDeleteByUserId%%) ;
(%%; <
Guid%%< @
userId%%A G
)%%G H
{&& 	
return'' 
await'' 
_service'' !
.''! "
SoftDeleteByUserId''" 4
(''4 5
userId''5 ;
)''; <
;''< =
}(( 	
[00 	
HttpGet00	 
(00 
$str00 !
)00! "
]00" #
[11 	 
ProducesResponseType11	 
(11 
typeof11 $
(11$ %

OkResponse11% /
<11/ 0:
.GenericUserProfileGetWithoutSensitiveDataModel110 ^
>11^ _
)11_ `
,11` a
(11b c
int11c f
)11f g
HttpStatusCode11g u
.11u v
OK11v x
)11x y
]11y z
[22 	 
ProducesResponseType22	 
(22 
typeof22 $
(22$ % 
UnauthorizedResponse22% 9
)229 :
,22: ;
(22< =
int22= @
)22@ A
HttpStatusCode22A O
.22O P
Unauthorized22P \
)22\ ]
]22] ^
[33 	 
ProducesResponseType33	 
(33 
typeof33 $
(33$ %
NoContentResponse33% 6
)336 7
,337 8
(339 :
int33: =
)33= >
HttpStatusCode33> L
.33L M
	NoContent33M V
)33V W
]33W X
[44 	 
ProducesResponseType44	 
(44 
typeof44 $
(44$ %
ConflictResponse44% 5
)445 6
,446 7
(448 9
int449 <
)44< =
HttpStatusCode44= K
.44K L
Conflict44L T
)44T U
]44U V
[55 	 
ProducesResponseType55	 
(55 
typeof55 $
(55$ %
BadRequestResponse55% 7
)557 8
,558 9
(55: ;
int55; >
)55> ?
HttpStatusCode55? M
.55M N

BadRequest55N X
)55X Y
]55Y Z
[66 	 
ProducesResponseType66	 
(66 
typeof66 $
(66$ %
object66% +
)66+ ,
,66, -
(66. /
int66/ 2
)662 3
HttpStatusCode663 A
.66A B
InternalServerError66B U
)66U V
]66V W
public77 
async77 
Task77 
<77 
IResponseBase77 '
>77' ( 
GetByIdToUpdateAsync77) =
(77= >
[77> ?
	FromRoute77? H
]77H I
Guid77J N
id77O Q
,77Q R
CancellationToken77S d
cancellationToken77e v
)77v w
{88 	
return99 
await99 
_service99 !
.99! " 
GetByIdToUpdateAsync99" 6
(996 7
id997 9
,999 :
cancellationToken99; L
)99L M
;99M N
}:: 	
[<< 	
ApiExplorerSettings<<	 
(<< 
	IgnoreApi<< &
=<<' (
true<<) -
)<<- .
]<<. /
public== 
override== 
IResponseBase== %
Delete==& ,
(==, -
Guid==- 1
id==2 4
)==4 5
{>> 	
return?? 
base?? 
.?? 
Delete?? 
(?? 
id?? !
)??! "
;??" #
}@@ 	
}AA 
}BB ®G
YE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Controllers\v1\EmployeeController.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Controllers $
.$ %
v1% '
{ 
public 

class 
EmployeeController #
:$ %
EntityController& 6
<6 7
EmployeeAddModel7 G
,G H
EmployeeUpdateModelI \
,\ ]
EmployeePatchModel^ p
,p q
EmployeeGetModel	r Ç
,
Ç É
EmployeeModel
Ñ ë
,
ë í
Guid
ì ó
>
ó ò
{ 
private 
readonly 
IEmployeeService )
_service* 2
;2 3
public 
EmployeeController !
(! "
IEmployeeService" 2
service3 :
): ;
: 
base 
( 
service 
) 
{ 	
_service 
= 
service 
; 
} 	
[ 	

HttpDelete	 
( 
$str /
)/ 0
]0 1
[ 	 
ProducesResponseType	 
( 
typeof $
($ %

OkResponse% /
</ 0"
DefaultMessageResponse0 F
>F G
)G H
,H I
(J K
intK N
)N O
HttpStatusCodeO ]
.] ^
OK^ `
)` a
]a b
[   	 
ProducesResponseType  	 
(   
typeof   $
(  $ % 
UnauthorizedResponse  % 9
)  9 :
,  : ;
(  < =
int  = @
)  @ A
HttpStatusCode  A O
.  O P
Unauthorized  P \
)  \ ]
]  ] ^
[!! 	 
ProducesResponseType!!	 
(!! 
typeof!! $
(!!$ %
NoContentResponse!!% 6
)!!6 7
,!!7 8
(!!9 :
int!!: =
)!!= >
HttpStatusCode!!> L
.!!L M
	NoContent!!M V
)!!V W
]!!W X
["" 	 
ProducesResponseType""	 
("" 
typeof"" $
(""$ %
ConflictResponse""% 5
)""5 6
,""6 7
(""8 9
int""9 <
)""< =
HttpStatusCode""= K
.""K L
Conflict""L T
)""T U
]""U V
[## 	 
ProducesResponseType##	 
(## 
typeof## $
(##$ %
BadRequestResponse##% 7
)##7 8
,##8 9
(##: ;
int##; >
)##> ?
HttpStatusCode##? M
.##M N

BadRequest##N X
)##X Y
]##Y Z
[$$ 	 
ProducesResponseType$$	 
($$ 
typeof$$ $
($$$ %
object$$% +
)$$+ ,
,$$, -
($$. /
int$$/ 2
)$$2 3
HttpStatusCode$$3 A
.$$A B
InternalServerError$$B U
)$$U V
]$$V W
public%% 
async%% 
Task%% 
<%% 
IResponseBase%% '
>%%' (
SoftDeleteByUserId%%) ;
(%%; <
Guid%%< @
userId%%A G
)%%G H
{&& 	
return'' 
await'' 
_service'' !
.''! "
SoftDeleteByUserId''" 4
(''4 5
userId''5 ;
)''; <
;''< =
}(( 	
[// 	
HttpGet//	 
(// 
$str// 
)// 
]// 
[00 	 
ProducesResponseType00	 
(00 
typeof00 $
(00$ %

OkResponse00% /
<00/ 00
$EmployeeGetWithoutSensitiveDataModel000 T
>00T U
)00U V
,00V W
(00X Y
int00Y \
)00\ ]
HttpStatusCode00] k
.00k l
OK00l n
)00n o
]00o p
[11 	 
ProducesResponseType11	 
(11 
typeof11 $
(11$ % 
UnauthorizedResponse11% 9
)119 :
,11: ;
(11< =
int11= @
)11@ A
HttpStatusCode11A O
.11O P
Unauthorized11P \
)11\ ]
]11] ^
[22 	 
ProducesResponseType22	 
(22 
typeof22 $
(22$ %
NoContentResponse22% 6
)226 7
,227 8
(229 :
int22: =
)22= >
HttpStatusCode22> L
.22L M
	NoContent22M V
)22V W
]22W X
[33 	 
ProducesResponseType33	 
(33 
typeof33 $
(33$ %
ConflictResponse33% 5
)335 6
,336 7
(338 9
int339 <
)33< =
HttpStatusCode33= K
.33K L
Conflict33L T
)33T U
]33U V
[44 	 
ProducesResponseType44	 
(44 
typeof44 $
(44$ %
BadRequestResponse44% 7
)447 8
,448 9
(44: ;
int44; >
)44> ?
HttpStatusCode44? M
.44M N

BadRequest44N X
)44X Y
]44Y Z
[55 	 
ProducesResponseType55	 
(55 
typeof55 $
(55$ %
object55% +
)55+ ,
,55, -
(55. /
int55/ 2
)552 3
HttpStatusCode553 A
.55A B
InternalServerError55B U
)55U V
]55V W
public66 
async66 
Task66 
<66 
IResponseBase66 '
>66' (
GetByTokenAsync66) 8
(668 9
CancellationToken669 J
cancellationToken66K \
)66\ ]
{77 	
return88 
await88 
_service88 !
.88! "
GetByTokenAsync88" 1
(881 2
Request882 9
.889 :
Headers88: A
[88A B
$str88B Q
]88Q R
,88R S
cancellationToken88T e
)88e f
;88f g
}99 	
[AA 	
HttpGetAA	 
(AA 
$strAA !
)AA! "
]AA" #
[BB 	 
ProducesResponseTypeBB	 
(BB 
typeofBB $
(BB$ %

OkResponseBB% /
<BB/ 0:
.GenericUserProfileGetWithoutSensitiveDataModelBB0 ^
>BB^ _
)BB_ `
,BB` a
(BBb c
intBBc f
)BBf g
HttpStatusCodeBBg u
.BBu v
OKBBv x
)BBx y
]BBy z
[CC 	 
ProducesResponseTypeCC	 
(CC 
typeofCC $
(CC$ % 
UnauthorizedResponseCC% 9
)CC9 :
,CC: ;
(CC< =
intCC= @
)CC@ A
HttpStatusCodeCCA O
.CCO P
UnauthorizedCCP \
)CC\ ]
]CC] ^
[DD 	 
ProducesResponseTypeDD	 
(DD 
typeofDD $
(DD$ %
NoContentResponseDD% 6
)DD6 7
,DD7 8
(DD9 :
intDD: =
)DD= >
HttpStatusCodeDD> L
.DDL M
	NoContentDDM V
)DDV W
]DDW X
[EE 	 
ProducesResponseTypeEE	 
(EE 
typeofEE $
(EE$ %
ConflictResponseEE% 5
)EE5 6
,EE6 7
(EE8 9
intEE9 <
)EE< =
HttpStatusCodeEE= K
.EEK L
ConflictEEL T
)EET U
]EEU V
[FF 	 
ProducesResponseTypeFF	 
(FF 
typeofFF $
(FF$ %
BadRequestResponseFF% 7
)FF7 8
,FF8 9
(FF: ;
intFF; >
)FF> ?
HttpStatusCodeFF? M
.FFM N

BadRequestFFN X
)FFX Y
]FFY Z
[GG 	 
ProducesResponseTypeGG	 
(GG 
typeofGG $
(GG$ %
objectGG% +
)GG+ ,
,GG, -
(GG. /
intGG/ 2
)GG2 3
HttpStatusCodeGG3 A
.GGA B
InternalServerErrorGGB U
)GGU V
]GGV W
publicHH 
asyncHH 
TaskHH 
<HH 
IResponseBaseHH '
>HH' ( 
GetByIdToUpdateAsyncHH) =
(HH= >
[HH> ?
	FromRouteHH? H
]HHH I
GuidHHJ N
idHHO Q
,HHQ R
CancellationTokenHHS d
cancellationTokenHHe v
)HHv w
{II 	
returnJJ 
awaitJJ 
_serviceJJ !
.JJ! " 
GetByIdToUpdateAsyncJJ" 6
(JJ6 7
idJJ7 9
,JJ9 :
cancellationTokenJJ; L
)JJL M
;JJM N
}KK 	
[MM 	
ApiExplorerSettingsMM	 
(MM 
	IgnoreApiMM &
=MM' (
trueMM) -
)MM- .
]MM. /
publicNN 
overrideNN 
IResponseBaseNN %
DeleteNN& ,
(NN, -
GuidNN- 1
idNN2 4
)NN4 5
{OO 	
returnPP 
basePP 
.PP 
DeletePP 
(PP 
idPP !
)PP! "
;PP" #
}QQ 	
}RR 
}SS å
dE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Controllers\Integration\v1\HttpSmsController.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Controllers $
.$ %
Integration% 0
.0 1
v11 3
{		 
[ 
AllowAnonymous 
] 
public 

class 
HttpSmsController "
:# $%
ApplicationControllerBase% >
{ 
private 
readonly 
IHttpSmsService (
_httpSmsService) 8
;8 9
public 
HttpSmsController  
(  !
IHttpSmsService! 0
httpSmsService1 ?
)? @
{ 	
_httpSmsService 
= 
httpSmsService ,
;, -
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
SendMessage) 4
(4 5
[5 6
FromBody6 >
]> ?#
HttpSmsSendMessageModel@ W
sendMessageModelX h
)h i
{ 	
return 
Ok 
( 
await 
_httpSmsService +
.+ ,
SendMessage, 7
(7 8
sendMessageModel8 H
)H I
)I J
;J K
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
	GetPhones) 2
(2 3
[3 4
	FromQuery4 =
]= >!
HttpSmsGetPhonesModel? T
getPhonesModelU c
)c d
{ 	
return 
Ok 
( 
await 
_httpSmsService +
.+ ,
	GetPhones, 5
(5 6
getPhonesModel6 D
)D E
)E F
;F G
}   	
["" 	
HttpPut""	 
]"" 
public## 
async## 
Task## 
<## 
IActionResult## '
>##' (
AddOrUpdatePhones##) :
(##: ;
[##; <
FromBody##< D
]##D E$
HttpSmsUpsertPhonesModel##F ^
addOrUpdatePhones##_ p
)##p q
{$$ 	
return%% 
Ok%% 
(%% 
await%% 
_httpSmsService%% +
.%%+ ,
AddOrUpdatePhones%%, =
(%%= >
addOrUpdatePhones%%> O
)%%O P
)%%P Q
;%%Q R
}&& 	
}'' 
}(( ı	
^E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Controllers\Base\HealthCheckController.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Controllers $
.$ %
Base% )
{ 
[ 
Route 

(
 
$str 
) 
] 
public 

class !
HealthCheckController &
:' (
ControllerBase) 7
{		 
[

 	
AllowAnonymous

	 
,

 
HttpGet

  
]

  !
public 
IActionResult 
Get  
(  !
)! "
{ 	
try 
{ 
return 
Ok 
( 
new 
{ 
Message  '
=( )
$str* D
}E F
)F G
;G H
} 
catch 
( 
	Exception 
ex 
)  
{ 
return 

BadRequest !
(! "
new" %
{& '
ex( *
.* +
Message+ 2
}3 4
)4 5
;5 6
} 
} 	
} 
} ≤-
\E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Controllers\Base\EntityMtMController.cs
	namespace		 	

AslaveCare		
 
.		 
Api		 
.		 
Controllers		 $
.		$ %
Base		% )
{

 
public 

class 
EntityMtMController $
<$ %!
TStrongEntityMtMModel% :
,: ;
TWeakEntityMtMModel< O
,O P 
TEntityMtMPatchModelQ e
,e f
TEntityMtMModelg v
,v w

TStrongKey	x Ç
,
Ç É
TWeakKey
Ñ å
>
å ç
:
é è'
ApplicationControllerBase
ê ©
where !
TStrongEntityMtMModel #
:$ %
MtMEntityModel& 4
,4 5
IMtMEntityModel6 E
,E F
newG J
(J K
)K L
where 
TWeakEntityMtMModel !
:" #
MtMEntityModel$ 2
,2 3
IMtMEntityModel4 C
,C D
newE H
(H I
)I J
where  
TEntityMtMPatchModel "
:# $
MtMEntityModel% 3
,3 4
IMtMEntityModel5 D
,D E
newF I
(I J
)J K
where 
TEntityMtMModel 
: 
MtMEntityModel  .
,. /
IMtMEntityModel0 ?
,? @
newA D
(D E
)E F
{ 
private 
readonly 
IMtMServiceBase (
<( )!
TStrongEntityMtMModel) >
,> ?
TWeakEntityMtMModel@ S
,S T 
TEntityMtMPatchModelU i
,i j
TEntityMtMModelk z
,z {

TStrongKey	| Ü
,
Ü á
TWeakKey
à ê
>
ê ë
_service
í ö
;
ö õ
public 
EntityMtMController "
(" #
IMtMServiceBase# 2
<2 3!
TStrongEntityMtMModel3 H
,H I
TWeakEntityMtMModelJ ]
,] ^ 
TEntityMtMPatchModel_ s
,s t
TEntityMtMModel	u Ñ
,
Ñ Ö

TStrongKey
Ü ê
,
ê ë
TWeakKey
í ö
>
ö õ
service
ú £
)
£ §
{ 	
_service 
= 
service 
; 
} 	
[ 	
	HttpPatch	 
( 
$str 
) 
] 
public 
virtual 
async 
Task !
<! "
IResponseBase" /
>/ 0
Patch1 6
(6 7

TStrongKey7 A
sIdB E
,E F
[G H
FromBodyH P
]P Q
IEnumerableR ]
<] ^ 
TEntityMtMPatchModel^ r
>r s
modelt y
)y z
{ 	
return 
await 
_service !
.! "
AddOrDeleteAsync" 2
(2 3
sId3 6
,6 7
model8 =
)= >
;> ?
} 	
[   	
HttpGet  	 
(   
$str   "
)  " #
]  # $
public!! 
virtual!! 
async!! 
Task!! !
<!!! "
IResponseBase!!" /
>!!/ 0
GetByIdsAsync!!1 >
(!!> ?

TStrongKey!!? I
sId!!J M
,!!M N
TWeakKey!!O W
wId!!X [
,!![ \
CancellationToken!!] n
cancellationToken	!!o Ä
)
!!Ä Å
{"" 	
return## 
await## 
_service## !
.##! "
GetByIdsAsync##" /
(##/ 0
sId##0 3
,##3 4
wId##5 8
,##8 9
cancellationToken##: K
)##K L
;##L M
}$$ 	
['' 	
HttpGet''	 
('' 
$str'' 
)'' 
]'' 
public(( 
virtual(( 
async(( 
Task(( !
<((! "
IResponseBase((" /
>((/ 0
	GetStrong((1 :
(((: ;

TStrongKey((; E
sId((F I
,((I J
CancellationToken((K \
cancellationToken((] n
)((n o
{)) 	
return** 
await** 
_service** !
.**! "
GetByStrongIdAsync**" 4
(**4 5
sId**5 8
,**8 9
cancellationToken**: K
)**K L
;**L M
}++ 	
[.. 	
HttpGet..	 
(.. 
$str.. 
).. 
].. 
public// 
virtual// 
async// 
Task// !
<//! "
IResponseBase//" /
>/// 0
GetWeak//1 8
(//8 9
TWeakKey//9 A
wId//B E
,//E F
CancellationToken//G X
cancellationToken//Y j
)//j k
{00 	
return11 
await11 
_service11 !
.11! "
GetByWeakIdAsync11" 2
(112 3
wId113 6
,116 7
cancellationToken118 I
)11I J
;11J K
}22 	
[55 	
HttpPut55	 
]55 
public66 
virtual66 
async66 
Task66 !
<66! "
IResponseBase66" /
>66/ 0
Put661 4
(664 5
[665 6
FromBody666 >
]66> ?
IEnumerable66@ K
<66K L
TEntityMtMModel66L [
>66[ \
models66] c
)66c d
{77 	
return88 
await88 
_service88 !
.88! "
UpdateAsync88" -
(88- .
models88. 4
)884 5
;885 6
}99 	
}:: 
};; Èy
YE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Controllers\Base\EntityController.cs
	namespace		 	

AslaveCare		
 
.		 
Api		 
.		 
Controllers		 $
.		$ %
Base		% )
{

 
public 

abstract 
class 
EntityController *
<* +
	TAddModel+ 4
,4 5
TUpdateModel6 B
,B C
TPatchModelD O
,O P
	TGetModelQ Z
,Z [
TModel\ b
,b c
TKeyd h
>h i
:j k&
ApplicationControllerBase	l Ö
where 
	TAddModel 
: 
EntityModel %
<% &
TKey& *
>* +
,+ ,
IEntityModel- 9
<9 :
TKey: >
>> ?
,? @
newA D
(D E
)E F
where 
TUpdateModel 
: 
EntityModel (
<( )
TKey) -
>- .
,. /
IEntityModel0 <
<< =
TKey= A
>A B
,B C
newD G
(G H
)H I
where 
TPatchModel 
: 
EntityModel '
<' (
TKey( ,
>, -
,- .
IEntityModel/ ;
<; <
TKey< @
>@ A
,A B
newC F
(F G
)G H
where 
	TGetModel 
: 
EntityModel %
<% &
TKey& *
>* +
,+ ,
IEntityModel- 9
<9 :
TKey: >
>> ?
,? @
newA D
(D E
)E F
where 
TModel 
: 
EntityModel "
<" #
TKey# '
>' (
,( )
IEntityModel* 6
<6 7
TKey7 ;
>; <
,< =
new> A
(A B
)B C
{ 
private 
readonly 
IServiceBase %
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
,] ^
TKey_ c
>c d
_servicee m
;m n
	protected 
EntityController "
(" #
IServiceBase# /
</ 0
	TAddModel0 9
,9 :
TUpdateModel; G
,G H
TPatchModelI T
,T U
	TGetModelV _
,_ `
TModela g
,g h
TKeyi m
>m n
serviceo v
)v w
{ 	
_service 
= 
service 
; 
} 	
[ 	
HttpGet	 
] 
[ 	 
ProducesResponseType	 
( 
typeof $
($ %
NoContentResponse% 6
)6 7
,7 8
(9 :
int: =
)= >
HttpStatusCode> L
.L M
	NoContentM V
)V W
]W X
[   	 
ProducesResponseType  	 
(   
typeof   $
(  $ % 
UnauthorizedResponse  % 9
)  9 :
,  : ;
(  < =
int  = @
)  @ A
HttpStatusCode  A O
.  O P
Unauthorized  P \
)  \ ]
]  ] ^
[!! 	 
ProducesResponseType!!	 
(!! 
typeof!! $
(!!$ %
BadRequestResponse!!% 7
)!!7 8
,!!8 9
(!!: ;
int!!; >
)!!> ?
HttpStatusCode!!? M
.!!M N

BadRequest!!N X
)!!X Y
]!!Y Z
["" 	 
ProducesResponseType""	 
("" 
typeof"" $
(""$ %
object""% +
)""+ ,
,"", -
("". /
int""/ 2
)""2 3
HttpStatusCode""3 A
.""A B
InternalServerError""B U
)""U V
]""V W
public## 
virtual## 
async## 
Task## !
<##! "
IResponseBase##" /
>##/ 0
Get##1 4
(##4 5
int##5 8
?##8 9
page##: >
,##> ?
int##@ C
?##C D
pageSize##E M
)##M N
{$$ 	
var%% 
entities%% 
=%% 
await%%  
_service%%! )
.%%) *
GetAllPagedAsync%%* :
(%%: ;
page%%; ?
,%%? @
pageSize%%A I
)%%I J
;%%J K
return&& 
entities&& 
;&& 
}'' 	
[-- 	
HttpGet--	 
(-- 
$str-- 
)-- 
]-- 
[.. 	 
ProducesResponseType..	 
(.. 
typeof.. $
(..$ %
NoContentResponse..% 6
)..6 7
,..7 8
(..9 :
int..: =
)..= >
HttpStatusCode..> L
...L M
	NoContent..M V
)..V W
]..W X
[// 	 
ProducesResponseType//	 
(// 
typeof// $
(//$ % 
UnauthorizedResponse//% 9
)//9 :
,//: ;
(//< =
int//= @
)//@ A
HttpStatusCode//A O
.//O P
Unauthorized//P \
)//\ ]
]//] ^
[00 	 
ProducesResponseType00	 
(00 
typeof00 $
(00$ %
BadRequestResponse00% 7
)007 8
,008 9
(00: ;
int00; >
)00> ?
HttpStatusCode00? M
.00M N

BadRequest00N X
)00X Y
]00Y Z
[11 	 
ProducesResponseType11	 
(11 
typeof11 $
(11$ %
object11% +
)11+ ,
,11, -
(11. /
int11/ 2
)112 3
HttpStatusCode113 A
.11A B
InternalServerError11B U
)11U V
]11V W
public22 
virtual22 
async22 
Task22 !
<22! "
IResponseBase22" /
>22/ 0
Get221 4
(224 5
TKey225 9
id22: <
)22< =
{33 	
var44 
entity44 
=44 
await44 
_service44 '
.44' (
GetByIdAsync44( 4
(444 5
id445 7
)447 8
;448 9
return55 
entity55 
;55 
}66 	
[<< 	
HttpPost<<	 
]<< 
[== 	 
ProducesResponseType==	 
(== 
typeof== $
(==$ %
CreatedResponse==% 4
)==4 5
,==5 6
(==7 8
int==8 ;
)==; <
HttpStatusCode==< J
.==J K
OK==K M
)==M N
]==N O
[>> 	 
ProducesResponseType>>	 
(>> 
typeof>> $
(>>$ % 
UnauthorizedResponse>>% 9
)>>9 :
,>>: ;
(>>< =
int>>= @
)>>@ A
HttpStatusCode>>A O
.>>O P
Unauthorized>>P \
)>>\ ]
]>>] ^
[?? 	 
ProducesResponseType??	 
(?? 
typeof?? $
(??$ %
ConflictResponse??% 5
)??5 6
,??6 7
(??8 9
int??9 <
)??< =
HttpStatusCode??= K
.??K L
Conflict??L T
)??T U
]??U V
[@@ 	 
ProducesResponseType@@	 
(@@ 
typeof@@ $
(@@$ %
NoContentResponse@@% 6
)@@6 7
,@@7 8
(@@9 :
int@@: =
)@@= >
HttpStatusCode@@> L
.@@L M
	NoContent@@M V
)@@V W
]@@W X
[AA 	 
ProducesResponseTypeAA	 
(AA 
typeofAA $
(AA$ %
BadRequestResponseAA% 7
)AA7 8
,AA8 9
(AA: ;
intAA; >
)AA> ?
HttpStatusCodeAA? M
.AAM N

BadRequestAAN X
)AAX Y
]AAY Z
[BB 	 
ProducesResponseTypeBB	 
(BB 
typeofBB $
(BB$ %
objectBB% +
)BB+ ,
,BB, -
(BB. /
intBB/ 2
)BB2 3
HttpStatusCodeBB3 A
.BBA B
InternalServerErrorBBB U
)BBU V
]BBV W
publicCC 
virtualCC 
asyncCC 
TaskCC !
<CC! "
IResponseBaseCC" /
>CC/ 0
PostCC1 5
(CC5 6
[CC6 7
FromBodyCC7 ?
]CC? @
	TAddModelCCA J
modelCCK P
)CCP Q
{DD 	
varEE 

savedModelEE 
=EE 
awaitEE "
_serviceEE# +
.EE+ ,
AddAsyncEE, 4
(EE4 5
modelEE5 :
)EE: ;
;EE; <
returnFF 

savedModelFF 
;FF 
}GG 	
[NN 	
HttpPutNN	 
(NN 
$strNN 
)NN 
]NN 
[OO 	 
ProducesResponseTypeOO	 
(OO 
typeofOO $
(OO$ % 
UnauthorizedResponseOO% 9
)OO9 :
,OO: ;
(OO< =
intOO= @
)OO@ A
HttpStatusCodeOOA O
.OOO P
UnauthorizedOOP \
)OO\ ]
]OO] ^
[PP 	 
ProducesResponseTypePP	 
(PP 
typeofPP $
(PP$ %
NoContentResponsePP% 6
)PP6 7
,PP7 8
(PP9 :
intPP: =
)PP= >
HttpStatusCodePP> L
.PPL M
	NoContentPPM V
)PPV W
]PPW X
[QQ 	 
ProducesResponseTypeQQ	 
(QQ 
typeofQQ $
(QQ$ %
ConflictResponseQQ% 5
)QQ5 6
,QQ6 7
(QQ8 9
intQQ9 <
)QQ< =
HttpStatusCodeQQ= K
.QQK L
ConflictQQL T
)QQT U
]QQU V
[RR 	 
ProducesResponseTypeRR	 
(RR 
typeofRR $
(RR$ %
BadRequestResponseRR% 7
)RR7 8
,RR8 9
(RR: ;
intRR; >
)RR> ?
HttpStatusCodeRR? M
.RRM N

BadRequestRRN X
)RRX Y
]RRY Z
[SS 	 
ProducesResponseTypeSS	 
(SS 
typeofSS $
(SS$ %
objectSS% +
)SS+ ,
,SS, -
(SS. /
intSS/ 2
)SS2 3
HttpStatusCodeSS3 A
.SSA B
InternalServerErrorSSB U
)SSU V
]SSV W
publicTT 
virtualTT 
asyncTT 
TaskTT !
<TT! "
IResponseBaseTT" /
>TT/ 0
PutTT1 4
(TT4 5
TKeyTT5 9
idTT: <
,TT< =
[TT> ?
FromBodyTT? G
]TTG H
TUpdateModelTTI U
modelTTV [
)TT[ \
{UU 	
modelVV 
.VV 
IdVV 
=VV 
idVV 
;VV 
varWW 

savedModelWW 
=WW 
awaitWW "
_serviceWW# +
.WW+ ,
UpdateAsyncWW, 7
(WW7 8
modelWW8 =
)WW= >
;WW> ?
returnXX 

savedModelXX 
;XX 
}YY 	
[`` 	
	HttpPatch``	 
(`` 
$str`` 
)`` 
]`` 
[aa 	 
ProducesResponseTypeaa	 
(aa 
typeofaa $
(aa$ % 
UnauthorizedResponseaa% 9
)aa9 :
,aa: ;
(aa< =
intaa= @
)aa@ A
HttpStatusCodeaaA O
.aaO P
UnauthorizedaaP \
)aa\ ]
]aa] ^
[bb 	 
ProducesResponseTypebb	 
(bb 
typeofbb $
(bb$ %
NoContentResponsebb% 6
)bb6 7
,bb7 8
(bb9 :
intbb: =
)bb= >
HttpStatusCodebb> L
.bbL M
	NoContentbbM V
)bbV W
]bbW X
[cc 	 
ProducesResponseTypecc	 
(cc 
typeofcc $
(cc$ %
ConflictResponsecc% 5
)cc5 6
,cc6 7
(cc8 9
intcc9 <
)cc< =
HttpStatusCodecc= K
.ccK L
ConflictccL T
)ccT U
]ccU V
[dd 	 
ProducesResponseTypedd	 
(dd 
typeofdd $
(dd$ %
BadRequestResponsedd% 7
)dd7 8
,dd8 9
(dd: ;
intdd; >
)dd> ?
HttpStatusCodedd? M
.ddM N

BadRequestddN X
)ddX Y
]ddY Z
[ee 	 
ProducesResponseTypeee	 
(ee 
typeofee $
(ee$ %
objectee% +
)ee+ ,
,ee, -
(ee. /
intee/ 2
)ee2 3
HttpStatusCodeee3 A
.eeA B
InternalServerErroreeB U
)eeU V
]eeV W
publicff 
virtualff 
asyncff 
Taskff !
<ff! "
IResponseBaseff" /
>ff/ 0
Patchff1 6
(ff6 7
TKeyff7 ;
idff< >
,ff> ?
[ff@ A
FromBodyffA I
]ffI J
TPatchModelffK V
modelffW \
)ff\ ]
{gg 	
varhh 

savedModelhh 
=hh 
awaithh "
_servicehh# +
.hh+ ,
Patchhh, 1
(hh1 2
idhh2 4
,hh4 5
modelhh6 ;
)hh; <
;hh< =
returnii 

savedModelii 
;ii 
}jj 	
[pp 	
ApiExplorerSettingspp	 
(pp 
	IgnoreApipp &
=pp' (
truepp) -
)pp- .
]pp. /
[qq 	

HttpDeleteqq	 
(qq 
$strqq 
)qq 
]qq 
[rr 	 
ProducesResponseTyperr	 
(rr 
typeofrr $
(rr$ % 
UnauthorizedResponserr% 9
)rr9 :
,rr: ;
(rr< =
intrr= @
)rr@ A
HttpStatusCoderrA O
.rrO P
UnauthorizedrrP \
)rr\ ]
]rr] ^
[ss 	 
ProducesResponseTypess	 
(ss 
typeofss $
(ss$ %
NoContentResponsess% 6
)ss6 7
,ss7 8
(ss9 :
intss: =
)ss= >
HttpStatusCodess> L
.ssL M
	NoContentssM V
)ssV W
]ssW X
[tt 	 
ProducesResponseTypett	 
(tt 
typeoftt $
(tt$ %
BadRequestResponsett% 7
)tt7 8
,tt8 9
(tt: ;
inttt; >
)tt> ?
HttpStatusCodett? M
.ttM N

BadRequestttN X
)ttX Y
]ttY Z
[uu 	 
ProducesResponseTypeuu	 
(uu 
typeofuu $
(uu$ %
objectuu% +
)uu+ ,
,uu, -
(uu. /
intuu/ 2
)uu2 3
HttpStatusCodeuu3 A
.uuA B
InternalServerErroruuB U
)uuU V
]uuV W
publicvv 
virtualvv 
IResponseBasevv $
Deletevv% +
(vv+ ,
TKeyvv, 0
idvv1 3
)vv3 4
{ww 	
_servicexx 
.xx 
Deletexx 
(xx 
idxx 
)xx 
;xx  
returnyy 
newyy 

OkResponseyy !
<yy! "
TModelyy" (
>yy( )
(yy) *
nullyy* .
)yy. /
;yy/ 0
}zz 	
}{{ 
}|| ´
bE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Controllers\Base\ApplicationControllerBase.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Controllers $
.$ %
Base% )
{ 
[ 
TokenValidation 
] 
[ 
Route 

(
 
$str  
)  !
]! "
[ 
Produces 
( 
$str  
)  !
]! "
public		 

class		 %
ApplicationControllerBase		 *
:		+ ,
ControllerBase		- ;
{

 
} 
} ⁄
[E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Configurations\SigningConfiguration.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Configurations '
{ 
public 

class  
SigningConfiguration %
{ 
private 
string 

KeyContent !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
SecurityKey		 
Key		 
{		  
get		! $
;		$ %
}		& '
public

 
SigningCredentials

 !
SigningCredentials

" 4
{

5 6
get

7 :
;

: ;
}

< =
public  
SigningConfiguration #
(# $
)$ %
{ 	

KeyContent 
= 
System 
.  
Environment  +
.+ ,"
GetEnvironmentVariable, B
(B C
$strC O
)O P
;P Q
Key 
= 
new  
SymmetricSecurityKey *
(* +
Encoding+ 3
.3 4
ASCII4 9
.9 :
GetBytes: B
(B C

KeyContentC M
)M N
)N O
;O P
SigningCredentials 
=  
new! $
SigningCredentials% 7
(7 8
Key 
, 
SecurityAlgorithms '
.' (
HmacSha256Signature( ;
); <
;< =
} 	
} 
} ◊
[E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Configurations\ApiVersionConvention.cs
	namespace 	

AslaveCare
 
. 
Api 
. 
Configurations '
{ 
public 

class  
ApiVersionConvention %
:& '&
IControllerModelConvention( B
{ 
public 
void 
Apply 
( 
ControllerModel )

controller* 4
)4 5
{		 	
var

 
controllerNamespace

 #
=

$ %

controller

& 0
.

0 1
ControllerType

1 ?
.

? @
	Namespace

@ I
;

I J
var 
nameSpaceArray 
=  
controllerNamespace! 4
?4 5
.5 6
Split6 ;
(; <
$char< ?
)? @
;@ A
if 
( 
nameSpaceArray 
. 
Last #
(# $
)$ %
.% &
ToLower& -
(- .
). /
./ 0
Contains0 8
(8 9
$str9 ?
)? @
)@ A

controller 
. 
ApiExplorer &
.& '
	GroupName' 0
=1 2
nameSpaceArray3 A
[A B
nameSpaceArrayB P
.P Q
LengthQ W
-X Y
$numZ [
][ \
.\ ]
Replace] d
(d e
$stre h
,h i
$strj m
)m n
;n o
else 

controller 
. 
ApiExplorer &
.& '
	GroupName' 0
=1 2
nameSpaceArray3 A
.A B
LastB F
(F G
)G H
.H I
ReplaceI P
(P Q
$strQ T
,T U
$strV Y
)Y Z
;Z [
} 	
} 
} á
[E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Api\Attributes\TokenValidationAttribute.cs
	namespace 	

AslaveCare
 
. 
Api 
. 

Attributes #
{ 
public 

class $
TokenValidationAttribute )
:* +
TypeFilterAttribute, ?
{ 
public $
TokenValidationAttribute '
(' (
)( )
:		 
base		 
(		 
typeof		 
(		 
ActionFilter		 &
)		& '
)		' (
{

 	
} 	
} 
} 