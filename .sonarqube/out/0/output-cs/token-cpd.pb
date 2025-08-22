œ

ZE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Responses\UnprocessableResponse.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
	Responses %
{ 
public 

class !
UnprocessableResponse &
:' (
ResponseBase) 5
{ 
public !
UnprocessableResponse $
($ %
string% +
message, 3
,3 4
object5 ;
data< @
,@ A
stringB H
	requestIdI R
=S T
$strU W
)W X
{ 	
Message		 
=		 
message		 
;		 
Data

 
=

 
data

 
;

 
	RequestId 
= 
	requestId !
;! "
} 	
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
public 
object 
Data 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ˚
YE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Responses\UnauthorizedResponse.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
	Responses %
{ 
public 

class  
UnauthorizedResponse %
:& '
ResponseBase( 4
{ 
} 
} á
OE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Responses\OkResponse.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
	Responses %
{ 
public 

class 

OkResponse 
< 
TModel "
>" #
:$ %
ResponseBase& 2
{ 
public 

OkResponse 
( 
TModel  
value! &
)& '
{ 	
Data		 
=		 
value		 
;		 
}

 	
public 
TModel 
Data 
{ 
get  
;  !
set" %
;% &
}' (
public 
override 
bool 
	IsSuccess &
=>' )
true* .
;. /
} 
} ±
UE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Responses\NotFoundResponse.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
	Responses %
{ 
public 

class 
NotFoundResponse !
:" #
ResponseBase$ 0
{ 
public 
NotFoundResponse 
(  
string  &
message' .
,. /
string0 6
	requestId7 @
=A B
$strC E
)E F
{ 	
Message		 
=		 
message		 
;		 
	RequestId

 
=

 
	requestId

 !
;

! "
} 	
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ı
VE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Responses\NoContentResponse.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
	Responses %
{ 
public 

class 
NoContentResponse "
:# $
ResponseBase% 1
{ 
} 
} ƒ
dE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Responses\Messages\DefaultMessageResponse.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
	Responses %
.% &
Messages& .
{ 
public 

class "
DefaultMessageResponse '
{ 
public "
DefaultMessageResponse %
(% &
string& ,
message- 4
,4 5
object6 <
response= E
=F G
nullH L
)L M
{ 	
Message 
= 
message 
; 
Response 
= 
response 
;  
}		 	
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
public 
object 
Response 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ı
]E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Responses\Interfaces\IResponseBase.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
	Responses %
.% &

Interfaces& 0
{ 
public 

	interface 
IResponseBase "
{ 
public 
bool 
	IsSuccess 
{ 
get  #
;# $
}% &
} 
} ı
VE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Responses\ForbiddenResponse.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
	Responses %
{ 
public 

class 
ForbiddenResponse "
:# $
ResponseBase% 1
{ 
} 
} «	
TE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Responses\CreatedResponse.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
	Responses %
{ 
public 

class 
CreatedResponse  
:! "
ResponseBase# /
{ 
public 
CreatedResponse 
( 
object %
data& *
=+ ,
null- 1
,1 2
string3 9
	requestId: C
=D E
$strF H
)H I
{ 	
Data		 
=		 
data		 
;		 
	RequestId

 
=

 
	requestId

 !
;

! "
} 	
public 
override 
bool 
	IsSuccess &
=>' )
true* .
;. /
public 
object 
Data 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ±
UE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Responses\ConflictResponse.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
	Responses %
{ 
public 

class 
ConflictResponse !
:" #
ResponseBase$ 0
{ 
public 
ConflictResponse 
(  
string  &
message' .
,. /
string0 6
	requestId7 @
=A B
$strC E
)E F
{ 	
	RequestId		 
=		 
	requestId		 !
;		! "
Message

 
=

 
message

 
;

 
} 	
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ¨
VE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Responses\Base\ResponseBase.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
	Responses %
.% &
Base& *
{ 
public 

abstract 
class 
ResponseBase &
:' (
IResponseBase) 6
{ 
public 
virtual 
bool 
	IsSuccess %
=>& (
false) .
;. /
} 
}		 ∆

WE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Responses\BadRequestResponse.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
	Responses %
{ 
public 

class 
BadRequestResponse #
:$ %
ResponseBase& 2
{ 
public 
BadRequestResponse !
(! "
string" (
message) 0
,0 1
object2 8
data9 =
,= >
string? E
	requestIdF O
=P Q
$strR T
)T U
{ 	
Message		 
=		 
message		 
;		 
Data

 
=

 
data

 
;

 
	RequestId 
= 
	requestId !
;! "
} 	
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
public 
object 
Data 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ƒ
UE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Responses\AcceptedResponse.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
	Responses %
{ 
public 

class 
AcceptedResponse !
:" #
ResponseBase$ 0
{ 
public 
AcceptedResponse 
(  
string  &
message' .
,. /
object0 6
data7 ;
,; <
string= C
	requestIdD M
=N O
$strP R
)R S
{ 	
Message		 
=		 
message		 
;		 
Data

 
=

 
data

 
;

 
	RequestId 
= 
	requestId !
;! "
} 	
public 
override 
bool 
	IsSuccess &
=>' )
true* .
;. /
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
public 
object 
Data 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ı
YE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\User\UserUpdateModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
User& *
{ 
public 

class 
UserUpdateModel  
:! "
EntityModel# .
<. /
Guid/ 3
>3 4
{ 
[		 	

JsonIgnore			 
]		 
public

 
override

 
Guid

 
Id

 
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
, -
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
Disable 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	CountryId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string %
FireBaseCloudMessageToken /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
} 
} ß
aE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\User\UserUpdateByMasterModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
User& *
{ 
public 

class #
UserUpdateByMasterModel (
:) *
EntityModel+ 6
<6 7
Guid7 ;
>; <
{ 
public 
bool 
Disable 
{ 
get !
;! "
set# &
;& '
}( )
public		 
string		 
Password		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
}

 
} ¢
YE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\User\UserSignInModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
User& *
{ 
public 

class 
UserSignInModel  
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 
PhoneNumber		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
string

 
Email

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
bool 
Disable 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 
? 
	LastLogin "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DateTime 
? "
LastPasswordChangeDate /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 6
*UserValidationGetWithoutSensitiveDataModel 9
UserValidation: H
{I J
getK N
;N O
setP S
;S T
}U V
} 
} ÷
XE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\User\UserPatchModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
User& *
{ 
public 

class 
UserPatchModel 
:  !
EntityModel" -
<- .
Guid. 2
>2 3
{ 
[		 	

JsonIgnore			 
]		 
public

 
override

 
Guid

 
Id

 
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
, -
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
Disable 
{ 
get !
;! "
set# &
;& '
}( )
public 
string %
FireBaseCloudMessageToken /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
} 
} é
SE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\User\UserModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
User& *
{ 
public		 

class		 
	UserModel		 
:		 
EntityModel		 (
<		( )
Guid		) -
>		- .
{

 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
Disable 
{ 
get !
;! "
set# &
;& '
}( )
public 
byte 
[ 
] 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
byte 
[ 
] 
SocialMediaToken &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string %
FireBaseCloudMessageToken /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
DateTime 
LastChangeDate &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
	LastLogin "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DateTime "
LastPasswordChangeDate .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
ICollection 
< 
UserRoleModel (
>( )
	UserRoles* 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 
Guid 
UserValidationId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
UserValidationModel "
UserValidation# 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
} 
} ï
VE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\User\UserGetModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
User& *
{ 
public		 

class		 
UserGetModel		 
:		 
EntityModel		  +
<		+ ,
Guid		, 0
>		0 1
{

 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
Disable 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 
? 
	LastLogin "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DateTime 
? "
LastPasswordChangeDate /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
string 
	CountryId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
Guid 
UserValidationId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
ICollection 
<  
UserRoleGetRoleModel /
>/ 0
	UserRoles1 :
{; <
get= @
;@ A
setB E
;E F
}G H
public 6
*UserValidationGetWithoutSensitiveDataModel 9
UserValidation: H
{I J
getK N
;N O
setP S
;S T
}U V
} 
} ˚
bE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\User\UserGetByParametersModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
User& *
{ 
public 

class $
UserGetByParametersModel )
:* +
EntityModel, 7
<7 8
Guid8 <
?< =
>= >
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 
PhoneNumber		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
string

 
Email

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
bool 
? 
Disable 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ø
VE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\User\UserAddModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
User& *
{ 
public 

class 
UserAddModel 
: 
EntityModel  +
<+ ,
Guid, 0
>0 1
{		 
[

 	

JsonIgnore

	 
]

 
public 
override 
Guid 
Id 
{  !
get" %
=>& (
base) -
.- .
Id. 0
;0 1
set2 5
=>6 8
base9 =
.= >
Id> @
=A B
valueC H
;H I
}J K
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
AppleUserId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Guid 
UserValidationId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public "
UserValidationAddModel %
UserValidation& 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
} 
} ®	
mE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\UserValidation\UserValidationUpdateModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
UserValidation& 4
{ 
public 

class %
UserValidationUpdateModel *
:+ ,
EntityModel- 8
<8 9
Guid9 =
>= >
{ 
public 
string !
EmailConfirmationCode +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public		 
string		 '
PhoneNumberConfirmationCode		 1
{		2 3
get		4 7
;		7 8
set		9 <
;		< =
}		> ?
public

 
bool

 
EmailValidated

 "
{

# $
get

% (
;

( )
set

* -
;

- .
}

/ 0
public 
bool  
PhoneNumberValidated (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} ƒ	
lE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\UserValidation\UserValidationPatchModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
UserValidation& 4
{ 
public 

class $
UserValidationPatchModel )
:* +
EntityModel, 7
<7 8
Guid8 <
>< =
{ 
public 
string !
EmailConfirmationCode +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public		 
string		 '
PhoneNumberConfirmationCode		 1
{		2 3
get		4 7
;		7 8
set		9 <
;		< =
}		> ?
public

 
bool

 
?

 
EmailValidated

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
public 
bool 
?  
PhoneNumberValidated )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} ú	
gE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\UserValidation\UserValidationModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
UserValidation& 4
{ 
public 

class 
UserValidationModel $
:% &
EntityModel' 2
<2 3
Guid3 7
>7 8
{ 
public 
string !
EmailConfirmationCode +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public		 
string		 '
PhoneNumberConfirmationCode		 1
{		2 3
get		4 7
;		7 8
set		9 <
;		< =
}		> ?
public

 
bool

 
EmailValidated

 "
{

# $
get

% (
;

( )
set

* -
;

- .
}

/ 0
public 
bool  
PhoneNumberValidated (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} Ú
~E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\UserValidation\UserValidationGetWithoutSensitiveDataModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
UserValidation& 4
{ 
public 

class 6
*UserValidationGetWithoutSensitiveDataModel ;
:< =
EntityModel> I
<I J
GuidJ N
>N O
{ 
public 
bool 
EmailValidated "
{# $
get% (
;( )
set* -
;- .
}/ 0
public		 
bool		  
PhoneNumberValidated		 (
{		) *
get		+ .
;		. /
set		0 3
;		3 4
}		5 6
}

 
} ¢	
jE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\UserValidation\UserValidationGetModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
UserValidation& 4
{ 
public 

class "
UserValidationGetModel '
:( )
EntityModel* 5
<5 6
Guid6 :
>: ;
{ 
public 
string !
EmailConfirmationCode +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public		 
string		 '
PhoneNumberConfirmationCode		 1
{		2 3
get		4 7
;		7 8
set		9 <
;		< =
}		> ?
public

 
bool

 
EmailValidated

 "
{

# $
get

% (
;

( )
set

* -
;

- .
}

/ 0
public 
bool  
PhoneNumberValidated (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} ƒ

jE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\UserValidation\UserValidationAddModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
UserValidation& 4
{ 
public 

class "
UserValidationAddModel '
:( )
EntityModel* 5
<5 6
Guid6 :
>: ;
{ 
public 
string !
EmailConfirmationCode +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public		 
string		 '
PhoneNumberConfirmationCode		 1
{		2 3
get		4 7
;		7 8
set		9 <
;		< =
}		> ?
public

 
bool

 
EmailValidated

 "
{

# $
get

% (
;

( )
set

* -
;

- .
}

/ 0
public 
bool  
PhoneNumberValidated (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
DateTime 
CreationDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} Ù
[E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\UserRole\UserRoleModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
UserRole& .
{ 
public 

class 
UserRoleModel 
{ 
public		 
	UserModel		 
User		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public 
Guid 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public 
	RoleModel 
Role 
{ 
get  #
;# $
set% (
;( )
}* +
public 
Guid 
RoleId 
{ 
get  
;  !
set" %
;% &
}' (
} 
} Í
bE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\UserRole\UserRoleGetRoleModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
UserRole& .
{ 
public 

class  
UserRoleGetRoleModel %
{ 
public 
Guid 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public

 
RoleGetModel

 
Role

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 
Guid 
RoleId 
{ 
get  
;  !
set" %
;% &
}' (
} 
} º

aE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\TaskNote\TaskNoteUpdateModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
TaskNote& .
{ 
public 

class 
TaskNoteUpdateModel $
:% &
EntityModel' 2
<2 3
Guid3 7
>7 8
{ 
[		 	

JsonIgnore			 
]		 
public

 
override

 
Guid

 
Id

 
{

  !
get

" %
=>

& (
base

) -
.

- .
Id

. 0
;

0 1
set

2 5
=>

6 8
base

9 =
.

= >
Id

> @
=

A B
value

C H
;

H I
}

J K
public 
string 
Text 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
Done 
{ 
get 
; 
set  #
;# $
}% &
public 
Guid 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ∫

`E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\TaskNote\TaskNotePatchModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
TaskNote& .
{ 
public 

class 
TaskNotePatchModel #
:$ %
EntityModel& 1
<1 2
Guid2 6
>6 7
{ 
[		 	

JsonIgnore			 
]		 
public

 
override

 
Guid

 
Id

 
{

  !
get

" %
=>

& (
base

) -
.

- .
Id

. 0
;

0 1
set

2 5
=>

6 8
base

9 =
.

= >
Id

> @
=

A B
value

C H
;

H I
}

J K
public 
string 
Text 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
Done 
{ 
get 
; 
set  #
;# $
}% &
public 
Guid 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
} 
} «
[E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\TaskNote\TaskNoteModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
TaskNote& .
{ 
public 

class 
TaskNoteModel 
:  
EntityModel! ,
<, -
Guid- 1
>1 2
{ 
public		 
string		 
Text		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
bool

 
Done

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
public 
Guid 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public 
	UserModel 
User 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ≤
^E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\TaskNote\TaskNoteGetModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
TaskNote& .
{ 
public 

class 
TaskNoteGetModel !
:" #
EntityModel$ /
</ 0
Guid0 4
>4 5
{ 
public 
string 
Text 
{ 
get  
;  !
set" %
;% &
}' (
public		 
bool		 
Done		 
{		 
get		 
;		 
set		  #
;		# $
}		% &
public

 
Guid

 
UserId

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
} 
} ∂

^E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\TaskNote\TaskNoteAddModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
TaskNote& .
{ 
public 

class 
TaskNoteAddModel !
:" #
EntityModel$ /
</ 0
Guid0 4
>4 5
{ 
[		 	

JsonIgnore			 
]		 
public

 
override

 
Guid

 
Id

 
{

  !
get

" %
=>

& (
base

) -
.

- .
Id

. 0
;

0 1
set

2 5
=>

6 8
base

9 =
.

= >
Id

> @
=

A B
value

C H
;

H I
}

J K
public 
string 
Text 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
Done 
{ 
get 
; 
set  #
;# $
}% &
public 
Guid 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
} 
} €
aE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Supplier\SupplierUpdateModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Supplier& .
{ 
public 

class 
SupplierUpdateModel $
:% &
EntityModel' 2
<2 3
Guid3 7
>7 8
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public

 
string

 
PhoneNumber

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
Disable 
{ 
get !
;! "
set# &
;& '
}( )
} 
} Ÿ
`E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Supplier\SupplierPatchModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Supplier& .
{ 
public 

class 
SupplierPatchModel #
:$ %
EntityModel& 1
<1 2
Guid2 6
>6 7
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public

 
string

 
PhoneNumber

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
Disable 
{ 
get !
;! "
set# &
;& '
}( )
} 
} œ
[E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Supplier\SupplierModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Supplier& .
{ 
public 

class 
SupplierModel 
:  
EntityModel! ,
<, -
Guid- 1
>1 2
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public

 
string

 
PhoneNumber

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
Disable 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ’
^E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Supplier\SupplierGetModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Supplier& .
{ 
public 

class 
SupplierGetModel !
:" #
EntityModel$ /
</ 0
Guid0 4
>4 5
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public

 
string

 
PhoneNumber

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
Disable 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ”
cE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Supplier\SupplierGetDonorModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Supplier& .
{ 
public 

class !
SupplierGetDonorModel &
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
decimal 
Quantity 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ã	
jE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Supplier\SupplierGetByParametersModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Supplier& .
{ 
public 

class (
SupplierGetByParametersModel -
:. /
EntityModel0 ;
<; <
Guid< @
?@ A
>A B
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public

 
string

 
PhoneNumber

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
? 
Disable 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} Ÿ
^E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Supplier\SupplierAddModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Supplier& .
{ 
public 

class 
SupplierAddModel !
:" #
EntityModel$ /
</ 0
Guid0 4
>4 5
{ 
[		 	

JsonIgnore			 
]		 
public

 
override

 
Guid

 
Id

 
{

  !
get

" %
=>

& (
base

) -
.

- .
Id

. 0
;

0 1
set

2 5
=>

6 8
base

9 =
.

= >
Id

> @
=

A B
value

C H
;

H I
}

J K
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
Disable 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ô
[E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Stock\StockUpdateModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Stock& +
{ 
public 

class 
StockUpdateModel !
:" #
EntityModel$ /
</ 0
Guid0 4
>4 5
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 
Description		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
decimal

 
Quantity

 
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
, -
public 
bool 
Disable 
{ 
get !
;! "
set# &
;& '
}( )
public 
decimal 
QuantityLowWarning )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
StockTypeId !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ò
eE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Stock\StocksQuantityWarningModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Stock& +
{ 
public 

class &
StocksQuantityWarningModel +
{ 
public 
int 
Total 
{ 
get 
; 
set  #
;# $
}% &
public &
StocksQuantityWarningModel )
() *
int* -
total. 3
)3 4
{ 	
Total		 
=		 
total		 
;		 
}

 	
} 
} ó
ZE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Stock\StockPatchModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Stock& +
{ 
public 

class 
StockPatchModel  
:! "
EntityModel# .
<. /
Guid/ 3
>3 4
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 
Description		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
decimal

 
Quantity

 
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
, -
public 
bool 
Disable 
{ 
get !
;! "
set# &
;& '
}( )
public 
decimal 
QuantityLowWarning )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
StockTypeId !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ”
UE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Stock\StockModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Stock& +
{ 
public		 

class		 

StockModel		 
:		 
EntityModel		 )
<		) *
Guid		* .
>		. /
{

 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
decimal 
Quantity 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
Disable 
{ 
get !
;! "
set# &
;& '
}( )
public 
decimal 
QuantityLowWarning )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
StockTypeId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
List 
<  
RegisterInStockModel (
>( )
RegisterInStocks* :
{; <
get= @
;@ A
setB E
;E F
}G H
public 
List 
< !
RegisterOutStockModel )
>) *
RegisterOutStocks+ <
{= >
get? B
;B C
setD G
;G H
}I J
} 
} ©
eE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Stock\StockGetRestockReportModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Stock& +
{ 
public 

class &
StockGetRestockReportModel +
:, -
EntityModel. 9
<9 :
Guid: >
>> ?
{		 
public

 
string

 
Name

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
decimal 
Quantity 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
Disable 
{ 
get !
;! "
set# &
;& '
}( )
public 
decimal 
QuantityLowWarning )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
StockTypeId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
List 
< :
.RegisterInStockGetRegisterInRestockReportModel B
>B C
RegisterInStocksD T
{U V
getW Z
;Z [
set\ _
;_ `
}a b
} 
} Ù
XE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Stock\StockGetModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Stock& +
{ 
public		 

class		 
StockGetModel		 
:		  
EntityModel		! ,
<		, -
Guid		- 1
>		1 2
{

 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
decimal 
Quantity 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
Disable 
{ 
get !
;! "
set# &
;& '
}( )
public 
decimal 
QuantityLowWarning )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
StockTypeId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
List 
< -
!RegisterInStockGetRegisterInModel 5
>5 6
RegisterInStocks7 G
{H I
getJ M
;M N
setO R
;R S
}T U
public 
List 
< /
#RegisterOutStockGetRegisterOutModel 7
>7 8
RegisterOutStocks9 J
{K L
getM P
;P Q
setR U
;U V
}W X
} 
} ÿ
dE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Stock\StockGetByParametersModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Stock& +
{ 
public 

class %
StockGetByParametersModel *
:+ ,
EntityModel- 8
<8 9
Guid9 =
?= >
>> ?
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 
Description		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
decimal

 
?

 
Quantity

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 
bool 
? 
Disable 
{ 
get "
;" #
set$ '
;' (
}) *
public 
decimal 
QuantityLowWarning )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
StockTypeId !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ì
XE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Stock\StockAddModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Stock& +
{ 
public 

class 
StockAddModel 
:  
EntityModel! ,
<, -
Guid- 1
>1 2
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 
Description		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
decimal

 
Quantity

 
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
, -
public 
bool 
Disable 
{ 
get !
;! "
set# &
;& '
}( )
public 
decimal 
QuantityLowWarning )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
StockTypeId !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ¯
cE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\StockType\StockTypeUpdateModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
	StockType& /
{ 
public 

class  
StockTypeUpdateModel %
:& '
EntityModel( 3
<3 4
string4 :
>: ;
{ 
} 
} ˆ
bE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\StockType\StockTypePatchModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
	StockType& /
{ 
public 

class 
StockTypePatchModel $
:% &
EntityModel' 2
<2 3
string3 9
>9 :
{ 
} 
} Ï
]E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\StockType\StockTypeModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
	StockType& /
{ 
public 

class 
StockTypeModel 
:  !
EntityModel" -
<- .
string. 4
>4 5
{ 
} 
} Ú
`E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\StockType\StockTypeGetModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
	StockType& /
{ 
public 

class 
StockTypeGetModel "
:# $
EntityModel% 0
<0 1
string1 7
>7 8
{ 
} 
} Ú
`E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\StockType\StockTypeAddModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
	StockType& /
{ 
public 

class 
StockTypeAddModel "
:# $
EntityModel% 0
<0 1
string1 7
>7 8
{ 
} 
} „
\E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\SignUp\SignUpPhoneModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
SignUp& ,
{ 
public 

class 
SignUpPhoneModel !
{ 
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
}

 
} Ä
^E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\SignUp\SignUpGenericModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
SignUp& ,
{ 
public 

class 
SignUpGenericModel #
{ 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
}		 
}

 ›
\E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\SignUp\SignUpEmailModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
SignUp& ,
{ 
public 

class 
SignUpEmailModel !
{ 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
}		 ©
eE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\SignUp\SignUpAuthenticationModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
SignUp& ,
{ 
public 

class %
SignUpAuthenticationModel *
{ 
[ 	
JsonProperty	 
( 
$str $
)$ %
]% &
public 
string 
AccessToken !
{" #
get$ '
;' (
set) ,
;, -
}. /
}		 
}

 ¢
bE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\SignIn\SignInSocialMediaModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
SignIn& ,
{ 
public 

class "
SignInSocialMediaModel '
{ 
public 
SocialMediaType 
SocialMediaType .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public		 
string		 
SocialMediaToken		 &
{		' (
get		) ,
;		, -
set		. 1
;		1 2
}		3 4
public

 
string

 
Name

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
UserType 
UserType  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} —
nE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\SignIn\SignInSignUpAppleAutheicationModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
SignIn& ,
{ 
public 

class .
"SignInSignUpAppleAutheicationModel 3
{ 
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
	UrlOrigem 
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
 
)

 
]

 
public 
string 
	AppOrigem 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
int 
? 

Expiration 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
int 
? 
	StartTime 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
AppleUserId !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
JsonProperty	 
( 
$str 
) 
]  
public 
string 
CHash 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
JsonProperty	 
( 
$str &
)& '
]' (
public 
bool 
? 
EmailVerified "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
JsonProperty	 
( 
$str (
)( )
]) *
public   
string   
IsPrivateEmail   $
{  % &
get  ' *
;  * +
set  , /
;  / 0
}  1 2
["" 	
JsonProperty""	 
("" 
$str"" !
)""! "
]""" #
public## 
int## 
?## 
AuthenticationTime## &
{##' (
get##) ,
;##, -
set##. 1
;##1 2
}##3 4
[%% 	
JsonProperty%%	 
(%% 
$str%% '
)%%' (
]%%( )
public&& 
bool&& 
?&& 
NonceSupported&& #
{&&$ %
get&&& )
;&&) *
set&&+ .
;&&. /
}&&0 1
[(( 	
JsonProperty((	 
((( 
$str(( (
)((( )
](() *
public)) 
int)) 
?)) 
RealUserStatus)) "
{))# $
get))% (
;))( )
set))* -
;))- .
}))/ 0
}** 
}++ À
mE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\SignIn\SignInRecoverPasswordRequestModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
SignIn& ,
{ 
public 

class -
!SignInRecoverPasswordRequestModel 2
{ 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
} 
} «
tE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\SignIn\SignInRecoverPasswordAuthenticationModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
SignIn& ,
{ 
public 

class 4
(SignInRecoverPasswordAuthenticationModel 9
{ 
[ 	
JsonProperty	 
( 
$str $
)$ %
]% &
public 
string 
AccessToken !
{" #
get$ '
;' (
set) ,
;, -
}. /
}		 
}

 Ÿ
cE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\SignIn\SignInPhoneRequestModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
SignIn& ,
{ 
public 

class #
SignInPhoneRequestModel (
{ 
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ˇ
rE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\SignIn\SignInPhoneNumberConfirmationCodeModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
SignIn& ,
{ 
public 

class 2
&SignInPhoneNumberConfirmationCodeModel 7
{ 
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ConfirmationCode &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} ”
cE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\SignIn\SignInEmailRequestModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
SignIn& ,
{ 
public 

class #
SignInEmailRequestModel (
{ 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} Ì
lE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\SignIn\SignInEmailConfirmationCodeModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
SignIn& ,
{ 
public 

class ,
 SignInEmailConfirmationCodeModel 1
{ 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
ConfirmationCode &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} ‡
eE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\SignIn\SignInChangePasswordModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
SignIn& ,
{ 
public 

class %
SignInChangePasswordModel *
{ 
public 
string 
OldPassword !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
NewPassword !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ©
eE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\SignIn\SignInAuthenticationModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
SignIn& ,
{ 
public 

class %
SignInAuthenticationModel *
{ 
public		 
UserSignInModel		 
User		 #
{		$ %
get		& )
;		) *
set		+ .
;		. /
}		0 1
[ 	
JsonProperty	 
( 
$str $
)$ %
]% &
public 
string 
AccessToken !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime !
AccessTokenExpiration -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
[ 	
JsonProperty	 
( 
$str %
)% &
]& '
public 
string 
RefreshToken "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DateTime "
RefreshTokenExpiration .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
} 
} ˜
zE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\SignIn\GenericUserProfileGetWithoutSensitiveDataModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
SignIn& ,
{ 
public 

class :
.GenericUserProfileGetWithoutSensitiveDataModel ?
:@ A
EntityModelB M
<M N
GuidN R
>R S
{ 
public		 
string		 
	PhotoPath		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public 
Guid 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public 
UserGetModel 
User  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} Û
YE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Role\RoleUpdateModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Role& *
{ 
public		 

class		 
RoleUpdateModel		  
:		! "
EntityModel		# .
<		. /
Guid		/ 3
>		3 4
{

 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
UserType 
UserType  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
ICollection 
< 
UserRoleModel (
>( )
	UserRoles* 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
} 
} è
XE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Role\RolePatchModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Role& *
{ 
public		 

class		 
RolePatchModel		 
:		  !
EntityModel		" -
<		- .
Guid		. 2
>		2 3
{

 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
UserType 
? 
UserType !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
ICollection 
< 
UserRoleModel (
>( )
?) *
	UserRoles+ 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
} 
} Á
SE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Role\RoleModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Role& *
{ 
public		 

class		 
	RoleModel		 
:		 
EntityModel		 (
<		( )
Guid		) -
>		- .
{

 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
UserType 
UserType  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
ICollection 
< 
UserRoleModel (
>( )
	UserRoles* 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
} 
} í
VE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Role\RoleGetModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Role& *
{ 
public 

class 
RoleGetModel 
: 
EntityModel  +
<+ ,
Guid, 0
>0 1
{ 
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
UserType

 
UserType

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
} 
} Ì
VE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Role\RoleAddModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Role& *
{ 
public		 

class		 
RoleAddModel		 
:		 
EntityModel		  +
<		+ ,
Guid		, 0
>		0 1
{

 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
UserType 
UserType  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
ICollection 
< 
UserRoleModel (
>( )
	UserRoles* 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
} 
} À	
gE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterOut\RegisterOutUpdateModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
RegisterOut& 1
{ 
public 

class "
RegisterOutUpdateModel '
:( )
EntityModel* 5
<5 6
Guid6 :
>: ;
{		 
public

 
string

 
Description

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
bool 
Apply 
{ 
get 
;  
set! $
;$ %
}& '
public 
DateTime 
? 
	ApplyDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
List 
< &
RegisterOutStockPatchModel .
>. /
RegisterOutStocks0 A
{B C
getD G
;G H
setI L
;L M
}N O
} 
} û
fE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterOut\RegisterOutPatchModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
RegisterOut& 1
{ 
public 

class !
RegisterOutPatchModel &
:' (
EntityModel) 4
<4 5
Guid5 9
>9 :
{		 
public

 
string

 
Description

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
bool 
Apply 
{ 
get 
;  
set! $
;$ %
}& '
public 
List 
< )
RegisterOutStockGetStockModel 1
>1 2
RegisterOutStocks3 D
{E F
getG J
;J K
setL O
;O P
}Q R
} 
} Ÿ

aE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterOut\RegisterOutModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
RegisterOut& 1
{ 
public 

class 
RegisterOutModel !
:" #
EntityModel$ /
</ 0
Guid0 4
>4 5
{		 
public

 
int

 
Number

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
DateTime 
? 
	ApplyDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Apply 
{ 
get 
;  
set! $
;$ %
}& '
public 
List 
< )
RegisterOutStockGetStockModel 1
>1 2
RegisterOutStocks3 D
{E F
getG J
;J K
setL O
;O P
}Q R
} 
} ﬂ

dE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterOut\RegisterOutGetModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
RegisterOut& 1
{ 
public 

class 
RegisterOutGetModel $
:% &
EntityModel' 2
<2 3
Guid3 7
>7 8
{		 
public

 
int

 
Number

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
DateTime 
? 
	ApplyDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Apply 
{ 
get 
;  
set! $
;$ %
}& '
public 
List 
< )
RegisterOutStockGetStockModel 1
>1 2
RegisterOutStocks3 D
{E F
getG J
;J K
setL O
;O P
}Q R
} 
} ˜

pE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterOut\RegisterOutGetByParametersModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
RegisterOut& 1
{ 
public 

class +
RegisterOutGetByParametersModel 0
:1 2
EntityModel3 >
<> ?
Guid? C
>C D
{		 
public

 
int

 
Number

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
DateTime 
? 
	ApplyDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Apply 
{ 
get 
;  
set! $
;$ %
}& '
public 
List 
< )
RegisterOutStockGetStockModel 1
>1 2
RegisterOutStocks3 D
{E F
getG J
;J K
setL O
;O P
}Q R
} 
} ≈	
dE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterOut\RegisterOutAddModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
RegisterOut& 1
{ 
public 

class 
RegisterOutAddModel $
:% &
EntityModel' 2
<2 3
Guid3 7
>7 8
{		 
public

 
string

 
Description

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
bool 
Apply 
{ 
get 
;  
set! $
;$ %
}& '
public 
DateTime 
? 
	ApplyDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
List 
< &
RegisterOutStockPatchModel .
>. /
RegisterOutStocks0 A
{B C
getD G
;G H
setI L
;L M
}N O
} 
} ∏
pE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterOutStock\RegisterOutStockPatchModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
RegisterOutStock& 6
{ 
public 

class &
RegisterOutStockPatchModel +
:, -
MtMEntityModel. <
{ 
public 
Guid 
RegisterOutId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
Guid		 
StockId		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
decimal

 
Quantity

 
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
} Æ
kE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterOutStock\RegisterOutStockModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
RegisterOutStock& 6
{ 
public 

class !
RegisterOutStockModel &
:' (
MtMEntityModel) 7
{ 
public 
Guid 
RegisterOutId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
Guid		 
StockId		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
decimal

 
Quantity

 
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
} ﬁ
sE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterOutStock\RegisterOutStockGetStockModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
RegisterOutStock& 6
{ 
public 

class )
RegisterOutStockGetStockModel .
:/ 0
MtMEntityModel1 ?
{ 
public		 
Guid		 
RegisterOutId		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
Guid

 
StockId

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
StockGetModel 
Stock "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
decimal 
Quantity 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ˆ
yE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterOutStock\RegisterOutStockGetRegisterOutModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
RegisterOutStock& 6
{ 
public 

class /
#RegisterOutStockGetRegisterOutModel 4
:5 6
MtMEntityModel7 E
{ 
public		 
Guid		 
RegisterOutId		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
RegisterOutGetModel

 "
RegisterOut

# .
{

/ 0
get

1 4
;

4 5
set

6 9
;

9 :
}

; <
public 
Guid 
StockId 
{ 
get !
;! "
set# &
;& '
}( )
public 
decimal 
Quantity 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ˚
eE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterIn\RegisterInUpdateModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &

RegisterIn& 0
{ 
public 

class !
RegisterInUpdateModel &
:' (
EntityModel) 4
<4 5
Guid5 9
>9 :
{		 
public

 
Guid

 

SupplierId

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
bool 
Donation 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Apply 
{ 
get 
;  
set! $
;$ %
}& '
public 
DateTime 
? 
	ApplyDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
List 
< %
RegisterInStockPatchModel -
>- .
RegisterInStocks/ ?
{@ A
getB E
;E F
setG J
;J K
}L M
} 
} –

dE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterIn\RegisterInPatchModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &

RegisterIn& 0
{ 
public 

class  
RegisterInPatchModel %
:& '
EntityModel( 3
<3 4
Guid4 8
>8 9
{		 
public

 
Guid

 

SupplierId

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
bool 
Donation 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Applied 
{ 
get !
;! "
set# &
;& '
}( )
public 
List 
< (
RegisterInStockGetStockModel 0
>0 1
RegisterInStocks2 B
{C D
getE H
;H I
setJ M
;M N
}O P
} 
} ï
_E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterIn\RegisterInModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &

RegisterIn& 0
{ 
public		 

class		 
RegisterInModel		  
:		! "
EntityModel		# .
<		. /
Guid		/ 3
>		3 4
{

 
public 
Guid 

SupplierId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
SupplierModel 
Supplier %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 
Donation 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
? 
	ApplyDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Apply 
{ 
get 
;  
set! $
;$ %
}& '
public 
List 
< (
RegisterInStockGetStockModel 0
>0 1
RegisterInStocks2 B
{C D
getE H
;H I
setJ M
;M N
}O P
} 
} Â
oE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterIn\RegisterInGetRestockReportModel.cs
	namespace

 	

AslaveCare


 
.

 
Domain

 
.

 
Models

 "
.

" #
v1

# %
.

% &

RegisterIn

& 0
{ 
public 

class +
RegisterInGetRestockReportModel 0
:1 2
EntityModel3 >
<> ?
Guid? C
>C D
{ 
public 
int 
Number 
{ 
get 
;  
set! $
;$ %
}& '
public 
Guid 

SupplierId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
SupplierGetModel 
Supplier  (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
bool 
Donation 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
? 
	ApplyDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Apply 
{ 
get 
;  
set! $
;$ %
}& '
} 
} µ
bE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterIn\RegisterInGetModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &

RegisterIn& 0
{ 
public		 

class		 
RegisterInGetModel		 #
:		$ %
EntityModel		& 1
<		1 2
Guid		2 6
>		6 7
{

 
public 
int 
Number 
{ 
get 
;  
set! $
;$ %
}& '
public 
Guid 

SupplierId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
SupplierGetModel 
Supplier  (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
bool 
Donation 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
? 
	ApplyDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Apply 
{ 
get 
;  
set! $
;$ %
}& '
public 
List 
< (
RegisterInStockGetStockModel 0
>0 1
RegisterInStocks2 B
{C D
getE H
;H I
setJ M
;M N
}O P
} 
} ß
nE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterIn\RegisterInGetByParametersModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &

RegisterIn& 0
{ 
public 

class *
RegisterInGetByParametersModel /
:0 1
EntityModel2 =
<= >
Guid> B
>B C
{		 
public

 
int

 
Number

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
Guid 

SupplierId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
Donation 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
? 
	ApplyDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Apply 
{ 
get 
;  
set! $
;$ %
}& '
public 
List 
< (
RegisterInStockGetStockModel 0
>0 1
RegisterInStocks2 B
{C D
getE H
;H I
setJ M
;M N
}O P
} 
} ı
bE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterIn\RegisterInAddModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &

RegisterIn& 0
{ 
public 

class 
RegisterInAddModel #
:$ %
EntityModel& 1
<1 2
Guid2 6
>6 7
{		 
public

 
Guid

 

SupplierId

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
bool 
Donation 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Apply 
{ 
get 
;  
set! $
;$ %
}& '
public 
DateTime 
? 
	ApplyDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
List 
< %
RegisterInStockPatchModel -
>- .
RegisterInStocks/ ?
{@ A
getB E
;E F
setG J
;J K
}L M
} 
} ≠
~E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterInStock\RegisterOutStockGetConsumptionReportModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
RegisterInStock& 5
{ 
public 

class 5
)RegisterOutStockGetConsumptionReportModel :
{ 
public 
string 
	StockName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
StockTypeId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
decimal 
Quantity 
{  !
get" %
;% &
set' *
;* +
}, -
} 
}		 Õ
nE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterInStock\RegisterInStockPatchModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
RegisterInStock& 5
{ 
public 

class %
RegisterInStockPatchModel *
:+ ,
MtMEntityModel- ;
{ 
public 
Guid 
RegisterInId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
Guid		 
StockId		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
decimal

 
Quantity

 
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
, -
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} √
iE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterInStock\RegisterInStockModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
RegisterInStock& 5
{ 
public 

class  
RegisterInStockModel %
:& '
MtMEntityModel( 6
{ 
public 
Guid 
RegisterInId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
Guid		 
StockId		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
decimal

 
Quantity

 
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
, -
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} Û	
qE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterInStock\RegisterInStockGetStockModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
RegisterInStock& 5
{ 
public 

class (
RegisterInStockGetStockModel -
:. /
MtMEntityModel0 >
{ 
public		 
Guid		 
StockId		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
StockGetModel

 
Stock

 "
{

# $
get

% (
;

( )
set

* -
;

- .
}

/ 0
public 
Guid 
RegisterInId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
decimal 
Quantity 
{  !
get" %
;% &
set' *
;* +
}, -
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} Ø

ÉE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterInStock\RegisterInStockGetRegisterInRestockReportModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
RegisterInStock& 5
{ 
public 

class :
.RegisterInStockGetRegisterInRestockReportModel ?
:@ A
MtMEntityModelB P
{ 
public		 
Guid		 
RegisterInId		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 +
RegisterInGetRestockReportModel

 .

RegisterIn

/ 9
{

: ;
get

< ?
;

? @
set

A D
;

D E
}

F G
public 
Guid 
StockId 
{ 
get !
;! "
set# &
;& '
}( )
public 
decimal 
Quantity 
{  !
get" %
;% &
set' *
;* +
}, -
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} á

vE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterInStock\RegisterInStockGetRegisterInModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
RegisterInStock& 5
{ 
public 

class -
!RegisterInStockGetRegisterInModel 2
:3 4
MtMEntityModel5 C
{ 
public		 
Guid		 
RegisterInId		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
RegisterInGetModel

 !

RegisterIn

" ,
{

- .
get

/ 2
;

2 3
set

4 7
;

7 8
}

9 :
public 
Guid 
StockId 
{ 
get !
;! "
set# &
;& '
}( )
public 
decimal 
Quantity 
{  !
get" %
;% &
set' *
;* +
}, -
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ø
zE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\RegisterInStock\RegisterInStockGetDonationReportModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
RegisterInStock& 5
{ 
public 

class 1
%RegisterInStockGetDonationReportModel 6
{ 
public 
string 
	StockName 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
string		 
StockTypeId		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
decimal

 
Quantity

 
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
, -
public 
decimal 
Total 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} §
rE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\PushNotification\EmailSendGrid\SendEmailModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
PushNotification& 6
.6 7
EmailSendGrid7 D
{ 
public 

class 
SendEmailModel 
{ 
public 
string 
	FromEmail 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
FromName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
ToEmail 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
ToName 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 
Subject		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
string

 
PlainTextContent

 &
{

' (
get

) ,
;

, -
set

. 1
;

1 2
}

3 4
public 
string 
HtmlContent !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} Ã
_E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Manager\ManagerUpdateModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Manager& -
{ 
public 

class 
ManagerUpdateModel #
:$ %
EntityModel& 1
<1 2
Guid2 6
>6 7
{ 
public		 
string		 
PhotoBase64String		 '
{		( )
get		* -
;		- .
set		/ 2
;		2 3
}		4 5
public

 
Guid

 
UserId

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
UserUpdateModel 
User #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} ‡
^E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Manager\ManagerPatchModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Manager& -
{ 
public 

class 
ManagerPatchModel "
:# $
EntityModel% 0
<0 1
Guid1 5
>5 6
{ 
public 
string 
PhotoBase64String '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public

 
Guid

 
?

 
StoreId

 
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
public 
Guid 
? 
UserId 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ≤
YE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Manager\ManagerModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Manager& -
{ 
public 

class 
ManagerModel 
: 
EntityModel  +
<+ ,
Guid, 0
>0 1
{ 
public		 
string		 
	PhotoPath		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public 
Guid 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public 
	UserModel 
User 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} „
pE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Manager\ManagerGetWithoutSensitiveDataModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Manager& -
{ 
public 

class /
#ManagerGetWithoutSensitiveDataModel 4
:5 6
EntityModel7 B
<B C
GuidC G
>G H
{ 
public		 
string		 
	PhotoPath		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public 
Guid 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public 
UserGetModel 
User  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ª
\E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Manager\ManagerGetModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Manager& -
{ 
public 

class 
ManagerGetModel  
:! "
EntityModel# .
<. /
Guid/ 3
>3 4
{ 
public		 
string		 
	PhotoPath		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public 
Guid 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public 
UserGetModel 
User  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} Ö
\E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Manager\ManagerAddModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Manager& -
{ 
public 

class 
ManagerAddModel  
:! "
EntityModel# .
<. /
Guid/ 3
>3 4
{		 
[

 	

JsonIgnore

	 
]

 
public 
override 
Guid 
Id 
{  !
get" %
=>& (
base) -
.- .
Id. 0
;0 1
set2 5
=>6 8
base9 =
.= >
Id> @
=A B
valueC H
;H I
}J K
public 
string 
PhotoBase64String '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
[ 	

JsonIgnore	 
] 
public 
Guid 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public 
SignUpGenericModel !
SignUp" (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} –
aE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Employee\EmployeeUpdateModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Employee& .
{ 
public 

class 
EmployeeUpdateModel $
:% &
EntityModel' 2
<2 3
Guid3 7
>7 8
{ 
public		 
string		 
PhotoBase64String		 '
{		( )
get		* -
;		- .
set		/ 2
;		2 3
}		4 5
public

 
Guid

 
UserId

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
UserUpdateModel 
User #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} ó
`E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Employee\EmployeePatchModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Employee& .
{ 
public 

class 
EmployeePatchModel #
:$ %
EntityModel& 1
<1 2
Guid2 6
>6 7
{ 
public 
Guid 
? 
UserId 
{ 
get !
;! "
set# &
;& '
}( )
}		 
}

 Œ
[E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Employee\EmployeeModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Employee& .
{ 
public 

class 
EmployeeModel 
:  
EntityModel! ,
<, -
Guid- 1
>1 2
{ 
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
string

 
	PhotoPath

 
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
, -
public 
Guid 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public 
	UserModel 
User 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ˇ
rE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Employee\EmployeeGetWithoutSensitiveDataModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Employee& .
{ 
public 

class 0
$EmployeeGetWithoutSensitiveDataModel 5
:6 7
EntityModel8 C
<C D
GuidD H
>H I
{ 
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
string

 
	PhotoPath

 
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
, -
public 
Guid 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public 
UserGetModel 
User  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ø
^E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Employee\EmployeeGetModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Employee& .
{ 
public 

class 
EmployeeGetModel !
:" #
EntityModel$ /
</ 0
Guid0 4
>4 5
{ 
public		 
string		 
	PhotoPath		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
Guid

 
UserId

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
UserGetModel 
User  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ¢
^E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\v1\Employee\EmployeeAddModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
v1# %
.% &
Employee& .
{ 
public 

class 
EmployeeAddModel !
:" #
EntityModel$ /
</ 0
Guid0 4
>4 5
{		 
[

 	

JsonIgnore

	 
]

 
public 
override 
Guid 
Id 
{  !
get" %
=>& (
base) -
.- .
Id. 0
;0 1
set2 5
=>6 8
base9 =
.= >
Id> @
=A B
valueC H
;H I
}J K
public 
string 
PhotoBase64String '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
[ 	

JsonIgnore	 
] 
public 
Guid 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public 
Guid 
StoreId 
{ 
get !
;! "
set# &
;& '
}( )
public 
SignUpGenericModel !
SignUp" (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} å
SE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\Core\RequestModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
Core# '
{ 
public 

class 
RequestModel 
: 
IRequestModel  -
{ 
} 
} í
UE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\Core\MtMEntityModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
Core# '
{ 
public 

class 
MtMEntityModel 
:  !
IMtMEntityModel" 1
{ 
} 
} Ë
TE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\Core\IRequestModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
Core# '
{ 
public 

	interface 
IRequestModel "
{ 
} 
} Ï
VE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\Core\IMtMEntityModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
Core# '
{ 
public 

	interface 
IMtMEntityModel $
{ 
} 
} ñ
SE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\Core\IEntityModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
Core# '
{ 
public 

	interface 
IEntityModel !
<! "
TKey" &
>& '
{ 
TKey 
Id 
{ 
get 
; 
set 
; 
} 
} 
} í
RE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\Core\EntityModel.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
." #
Core# '
{ 
public 

class 
EntityModel 
< 
TKey !
>! "
:# $
IEntityModel% 1
<1 2
TKey2 6
>6 7
{ 
public 
virtual 
TKey 
Id 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ‘
ME:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Models\AppSettings.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Models "
{ 
public 

class 
AppSettings 
{ 
public 
string 
Secret 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} °
sE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Services\v1\Notification\INotificationService.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Services' /
./ 0
v10 2
.2 3
Notification3 ?
{ 
public 

	interface  
INotificationService )
{ 
Task		 
<		 
IResponseBase		 
>		 
SendSmsMessage		 *
(		* +
string		+ 1
toPhoneNumber		2 ?
,		? @
string		A G
message		H O
,		O P
string		Q W
	countryId		X a
)		a b
;		b c
Task 
< 
bool 
> 
SendEmailAsync !
(! "
SendEmailModel" 0
	pushEmail1 :
): ;
;; <
Task 
< 
bool 
> 4
(SendValidationCodeNotificationEmailAsync ;
(; <
string< B
ToNameC I
,I J
stringK Q
ToEmailR Y
,Y Z
string[ a
validationCodeb p
)p q
;q r
Task 
< 
bool 
> 4
(SendForgotPasswordNotificationEmailAsync ;
(; <
string< B
ToNameC I
,I J
stringK Q
ToEmailR Y
,Y Z
string[ a
validationCodeb p
)p q
;q r
Task 
< 
bool 
> 8
,SendConfirmationCodeSuccessNotificationEmail ?
(? @
string@ F
ToNameG M
,M N
stringO U
ToEmailV ]
,] ^
string_ e
validationCodef t
)t u
;u v
} 
} À
hE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Services\v1\IUserValidationService.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Services' /
./ 0
v10 2
{ 
public		 

	interface		 "
IUserValidationService		 +
:		, -
IServiceBase		. :
<		: ;"
UserValidationAddModel		; Q
,		Q R%
UserValidationUpdateModel		S l
,		l m%
UserValidationPatchModel			n Ü
,
		Ü á$
UserValidationGetModel
		à û
,
		û ü!
UserValidationModel
		† ≥
,
		≥ ¥
Guid
		µ π
>
		π ∫
{

 
Task 
< 
IResponseBase 
> 
SoftDeleteById *
(* +
Guid+ /
id0 2
)2 3
;3 4
} 
} î
^E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Services\v1\IUserService.cs
	namespace		 	

AslaveCare		
 
.		 
Domain		 
.		 

Interfaces		 &
.		& '
Services		' /
.		/ 0
v1		0 2
{

 
public 

	interface 
IUserService !
:" #
IServiceBase$ 0
<0 1
UserAddModel1 =
,= >
UserUpdateModel? N
,N O
UserPatchModelP ^
,^ _
UserGetModel` l
,l m
	UserModeln w
,w x
Guidy }
>} ~
{ 
Task 
< 
IResponseBase 
>  
AddUserWithRoleAsync 0
(0 1
UserAddModel1 =
	userModel> G
,G H
UserTypeI Q
userTypeR Z
)Z [
;[ \
Task 
< 
IResponseBase 
> 
GetByEmailAsync +
(+ ,
string, 2
email3 8
)8 9
;9 :
Task 
< 
IResponseBase 
> !
GetByPhoneNumberAsync 1
(1 2
string2 8
phoneNumber9 D
)D E
;E F
Task 
< 
IResponseBase 
> 
SoftDeleteById *
(* +
Guid+ /
id0 2
)2 3
;3 4
Task 
< 
IResponseBase 
> 
SoftDeleteByEmail -
(- .
string. 4
email5 :
): ;
;; <
Task 
< 
IResponseBase 
> #
SoftDeleteByPhoneNumber 3
(3 4
string4 :
phoneNumber; F
)F G
;G H
Task  
UpdateLastLoginAsync !
(! "
Guid" &
id' )
)) *
;* +
Task 
< 
IResponseBase 
> 
UpdateByTokenAsync .
(. /
string/ 5
jwtToken6 >
,> ?
UserUpdateModel@ O
modelP U
)U V
;V W
Task 
< 
IResponseBase 
> !
GetByAppleUserIdAsync 1
(1 2
string2 8
appleUserId9 D
,D E
CancellationTokenF W
cancellationTokenX i
=j k
defaultl s
)s t
;t u
Task 
< 
IResponseBase 
> #
CheckPhoneNumberByToken 3
(3 4
string4 :
jwtToken; C
,C D
stringE K
phoneNumberL W
)W X
;X Y
Task!! 
<!! 
IResponseBase!! 
>!! /
#ValidateAndUpdatePhoneNumberByToken!! ?
(!!? @
string!!@ F
jwtToken!!G O
,!!O P
string!!Q W
phoneNumber!!X c
,!!c d
string!!e k
confirmationCode!!l |
)!!| }
;!!} ~
Task"" 
<"" 
IResponseBase"" 
>"" 
GetByParameters"" +
(""+ ,$
UserGetByParametersModel"", D

parameters""E O
,""O P
CancellationToken""Q b
cancellation""c o
=""p q
default""r y
)""y z
;""z {
Task## 
<## 
IResponseBase## 
>## 
UpdateByMasterAsync## /
(##/ 0
Guid##0 4
id##5 7
,##7 8#
UserUpdateByMasterModel##9 P
model##Q V
)##V W
;##W X
Task$$ 
<$$ 
IResponseBase$$ 
>$$ 
UpdateAsync$$ '
($$' (
	UserModel$$( 1
model$$2 7
)$$7 8
;$$8 9
}%% 
}&& é
bE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Services\v1\ITaskNoteService.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Services' /
./ 0
v10 2
{		 
public

 

	interface

 
ITaskNoteService

 %
:

& '
IServiceBase

( 4
<

4 5
TaskNoteAddModel

5 E
,

E F
TaskNoteUpdateModel

G Z
,

Z [
TaskNotePatchModel

\ n
,

n o
TaskNoteGetModel	

p Ä
,


Ä Å
TaskNoteModel


Ç è
,


è ê
Guid


ë ï
>


ï ñ
{ 
Task 
< 
IResponseBase 
> 
GetToListAsync *
(* +
string+ 1
token2 7
,7 8
CancellationToken9 J
cancellationK W
=X Y
defaultZ a
)a b
;b c
} 
} Ã
bE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Services\v1\ISupplierService.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Services' /
./ 0
v10 2
{		 
public

 

	interface

 
ISupplierService

 %
:

& '
IServiceBase

( 4
<

4 5
SupplierAddModel

5 E
,

E F
SupplierUpdateModel

G Z
,

Z [
SupplierPatchModel

\ n
,

n o
SupplierGetModel	

p Ä
,


Ä Å
SupplierModel


Ç è
,


è ê
Guid


ë ï
>


ï ñ
{ 
Task 
< 
IResponseBase 
> 
GetByEmailAsync +
(+ ,
string, 2
email3 8
,8 9
CancellationToken: K
cancellationL X
=Y Z
default[ b
)b c
;c d
Task 
< 
IResponseBase 
> 
GetByParameters +
(+ ,(
SupplierGetByParametersModel, H

parametersI S
,S T
CancellationTokenU f
cancellationTokeng x
=y z
default	{ Ç
)
Ç É
;
É Ñ
Task 
< 
IResponseBase 
> 
GetToListAsync *
(* +
CancellationToken+ <
cancellation= I
=J K
defaultL S
)S T
;T U
Task 
< 
IResponseBase 
> (
GetMonthTopDonorsReportAsync 8
(8 9
CancellationToken9 J
cancellationK W
=X Y
defaultZ a
)a b
;b c
} 
} ·
cE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Services\v1\IStockTypeService.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Services' /
./ 0
v10 2
{ 
public		 

	interface		 
IStockTypeService		 &
:		' (
IServiceBase		) 5
<		5 6
StockTypeAddModel		6 G
,		G H 
StockTypeUpdateModel		I ]
,		] ^
StockTypePatchModel		_ r
,		r s
StockTypeGetModel			t Ö
,
		Ö Ü
StockTypeModel
		á ï
,
		ï ñ
string
		ó ù
>
		ù û
{

 
Task 
< 
IResponseBase 
> 
GetToListAsync *
(* +
CancellationToken+ <
cancellation= I
=J K
defaultL S
)S T
;T U
} 
} ¨
_E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Services\v1\IStockService.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Services' /
./ 0
v10 2
{ 
public 

	interface 
IStockService "
:# $
IServiceBase% 1
<1 2
StockAddModel2 ?
,? @
StockUpdateModelA Q
,Q R
StockPatchModelS b
,b c
StockGetModeld q
,q r

StockModels }
,} ~
Guid	 É
>
É Ñ
{ 
Task 
< 
IResponseBase 
> 
GetByParameters +
(+ ,%
StockGetByParametersModel, E

parametersF P
,P Q
CancellationTokenR c
cancellationd p
=q r
defaults z
)z {
;{ |
Task 
< 
IResponseBase 
> 
GetLowerStocks *
(* +
int+ .
number/ 5
,5 6
CancellationToken7 H
cancellationI U
=V W
defaultX _
)_ `
;` a
Task 
< 
IResponseBase 
> !
GetRestockReportAsync 1
(1 2
CancellationToken2 C
cancellationD P
)P Q
;Q R
Task 
< 
IResponseBase 
> 
GetStockReportAsync /
(/ 0
CancellationToken0 A
cancellationB N
)N O
;O P
Task 
< 
IResponseBase 
> 
GetToListAsync *
(* +
CancellationToken+ <
cancellation= I
=J K
defaultL S
)S T
;T U
Task 
< 
IResponseBase 
> )
GetTotalStocksQuantityWarning 9
(9 :
CancellationToken: K
cancellationTokenL ]
)] ^
;^ _
Task 
< 
IResponseBase 
> 
UpdateStockQuantity /
(/ 0
List0 4
<4 5%
RegisterInStockPatchModel5 N
>N O
registerInStocksP `
,` a
boolb f
applyg l
)l m
;m n
Task 
< 
IResponseBase 
> 
UpdateStockQuantity /
(/ 0
List0 4
<4 5&
RegisterOutStockPatchModel5 O
>O P
registerInStocksQ a
,a b
boolc g
applyh m
)m n
;n o
} 
} ±
^E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Services\v1\IRoleService.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Services' /
./ 0
v10 2
{		 
public

 

	interface

 
IRoleService

 !
:

" #
IServiceBase

$ 0
<

0 1
RoleAddModel

1 =
,

= >
RoleUpdateModel

? N
,

N O
RolePatchModel

P ^
,

^ _
RoleGetModel

` l
,

l m
	RoleModel

n w
,

w x
Guid

y }
>

} ~
{ 
Task 
< 
IResponseBase 
> 
GetToListAsync *
(* +
CancellationToken+ <
cancellation= I
=J K
defaultL S
)S T
;T U
} 
} ¿
`E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Services\v1\IReportService.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Services' /
./ 0
v10 2
{ 
public 

	interface 
IReportService #
{		 
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
 %
GetConsumptionReportAsync

 5
(

5 6
DateTime

6 >
initialDate

? J
,

J K
DateTime

L T
	finalDate

U ^
,

^ _
CancellationToken

` q
cancellation

r ~
)

~ 
;	

 Ä
Task 
< 
IResponseBase 
> #
GetDonationsReportAsync 3
(3 4
DateTime4 <
initialDate= H
,H I
DateTimeJ R
	finalDateS \
,\ ]
CancellationToken^ o
cancellationp |
)| }
;} ~
Task 
< 
IResponseBase 
> (
GetMonthTopDonorsReportAsync 8
(8 9
CancellationToken9 J
cancellationK W
)W X
;X Y
Task 
< 
IResponseBase 
> !
GetRestockReportAsync 1
(1 2
CancellationToken2 C
cancellationD P
)P Q
;Q R
Task 
< 
IResponseBase 
> 
GetStockReportAsync /
(/ 0
CancellationToken0 A
cancellationB N
)N O
;O P
} 
} ˚

jE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Services\v1\IRegisterOutStockService.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Services' /
./ 0
v10 2
{		 
public

 

	interface

 $
IRegisterOutStockService

 -
:

. /
IMtMServiceBase

0 ?
<

? @/
#RegisterOutStockGetRegisterOutModel

@ c
,

c d*
RegisterOutStockGetStockModel	

e Ç
,


Ç É(
RegisterOutStockPatchModel


Ñ û
,


û ü#
RegisterOutStockModel


† µ
,


µ ∂
Guid


∑ ª
,


ª º
Guid


Ω ¡
>


¡ ¬
{ 
Task 
< 
IResponseBase 
> 
AddAsync $
($ %
Guid% )
registerOutId* 7
,7 8&
RegisterOutStockPatchModel9 S
modelT Y
)Y Z
;Z [
Task 
< 
IResponseBase 
> %
GetConsumptionReportAsync 5
(5 6
DateTime6 >
initialDate? J
,J K
DateTimeL T
	finalDateU ^
,^ _
CancellationToken` q
cancellationr ~
)~ 
;	 Ä
} 
} «
eE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Services\v1\IRegisterOutService.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Services' /
./ 0
v10 2
{		 
public

 

	interface

 
IRegisterOutService

 (
:

) *
IServiceBase

+ 7
<

7 8
RegisterOutAddModel

8 K
,

K L"
RegisterOutUpdateModel

M c
,

c d!
RegisterOutPatchModel

e z
,

z { 
RegisterOutGetModel	

| è
,


è ê
RegisterOutModel


ë °
,


° ¢
Guid


£ ß
>


ß ®
{ 
Task 
< 
IResponseBase 
>  
GetByIdToUpdateAsync 0
(0 1
Guid1 5
id6 8
,8 9
CancellationToken: K
cancellationL X
)X Y
;Y Z
Task 
< 
IResponseBase 
> #
GetConsumptionsPerMonth 3
(3 4
CancellationToken4 E
cancellationF R
)R S
;S T
Task 
< 
IResponseBase 
> 
GetToListAsync *
(* +
CancellationToken+ <
cancellation= I
=J K
defaultL S
)S T
;T U
} 
} ê	
iE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Services\v1\IRegisterInStockService.cs
public 
	interface #
IRegisterInStockService (
:) *
IMtMServiceBase+ :
<: ;-
!RegisterInStockGetRegisterInModel; \
,\ ](
RegisterInStockGetStockModel^ z
,z {&
RegisterInStockPatchModel	| ï
,
ï ñ"
RegisterInStockModel
ó ´
,
´ ¨
Guid
≠ ±
,
± ≤
Guid
≥ ∑
>
∑ ∏
{		 
Task

 
<

 	
IResponseBase

	 
>

 
AddAsync

  
(

  !
Guid

! %
registerInId

& 2
,

2 3%
RegisterInStockPatchModel

4 M
model

N S
)

S T
;

T U
Task 
< 	
IResponseBase	 
> #
GetDonationsReportAsync /
(/ 0
DateTime0 8
initialDate9 D
,D E
DateTimeF N
	finalDateO X
,X Y
CancellationTokenZ k
cancellationl x
)x y
;y z
} è
dE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Services\v1\IRegisterInService.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Services' /
./ 0
v10 2
{		 
public

 

	interface

 
IRegisterInService

 '
:

( )
IServiceBase

* 6
<

6 7
RegisterInAddModel

7 I
,

I J!
RegisterInUpdateModel

K `
,

` a 
RegisterInPatchModel

b v
,

v w
RegisterInGetModel	

x ä
,


ä ã
RegisterInModel


å õ
,


õ ú
Guid


ù °
>


° ¢
{ 
Task 
< 
IResponseBase 
>  
GetByIdToUpdateAsync 0
(0 1
Guid1 5
id6 8
,8 9
CancellationToken: K
cancellationL X
)X Y
;Y Z
Task 
< 
IResponseBase 
>  
GetDonationsPerMonth 0
(0 1
CancellationToken1 B
cancellationC O
)O P
;P Q
Task 
< 
IResponseBase 
> 
GetShoppingPerMonth /
(/ 0
CancellationToken0 A
cancellationB N
)N O
;O P
Task 
< 
IResponseBase 
> 
GetToListAsync *
(* +
CancellationToken+ <
cancellation= I
=J K
defaultL S
)S T
;T U
} 
} ∑
aE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Services\v1\IManagerService.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Services' /
./ 0
v10 2
{		 
public

 

	interface

 
IManagerService

 $
:

% &
IServiceBase

' 3
<

3 4
ManagerAddModel

4 C
,

C D
ManagerUpdateModel

E W
,

W X
ManagerPatchModel

Y j
,

j k
ManagerGetModel

l {
,

{ |
ManagerModel	

} â
,


â ä
Guid


ã è
>


è ê
{ 
Task 
< 
IResponseBase 
> 
GetAnyToListAsync -
(- .
CancellationToken. ?
cancellationToken@ Q
)Q R
;R S
Task 
< 
IResponseBase 
>  
GetByIdToUpdateAsync 0
(0 1
Guid1 5
id6 8
,8 9
CancellationToken: K
cancellationTokenL ]
)] ^
;^ _
Task 
< 
IResponseBase 
> 
GetByUserIdAsync ,
(, -
Guid- 1
userId2 8
,8 9
CancellationToken: K
cancellationTokenL ]
)] ^
;^ _
Task 
< 
IResponseBase 
> 
SoftDeleteById *
(* +
Guid+ /
id0 2
)2 3
;3 4
Task 
< 
IResponseBase 
> 
SoftDeleteByUserId .
(. /
Guid/ 3
userId4 :
): ;
;; <
} 
} Œ
bE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Services\v1\IEmployeeService.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Services' /
./ 0
v10 2
{		 
public

 

	interface

 
IEmployeeService

 %
:

& '
IServiceBase

( 4
<

4 5
EmployeeAddModel

5 E
,

E F
EmployeeUpdateModel

G Z
,

Z [
EmployeePatchModel

\ n
,

n o
EmployeeGetModel	

p Ä
,


Ä Å
EmployeeModel


Ç è
,


è ê
Guid


ë ï
>


ï ñ
{ 
Task 
< 
IResponseBase 
> 
SoftDeleteById *
(* +
Guid+ /
id0 2
)2 3
;3 4
Task 
< 
IResponseBase 
> 
SoftDeleteByUserId .
(. /
Guid/ 3
userId4 :
): ;
;; <
Task 
< 
IResponseBase 
> 
GetByTokenAsync +
(+ ,
string, 2
jwtToken3 ;
,; <
CancellationToken= N
cancellationTokenO `
)` a
;a b
Task 
< 
IResponseBase 
> 
GetByUserIdAsync ,
(, -
Guid- 1
userId2 8
,8 9
CancellationToken: K
cancellationTokenL ]
)] ^
;^ _
Task 
< 
IResponseBase 
> 
GetAnyToListAsync -
(- .
CancellationToken. ?
cancellationToken@ Q
)Q R
;R S
Task 
< 
IResponseBase 
>  
GetByIdToUpdateAsync 0
(0 1
Guid1 5
id6 8
,8 9
CancellationToken: K
cancellationTokenL ]
)] ^
;^ _
} 
} Ô
oE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Services\v1\Authentication\ISignUpService.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Services' /
./ 0
v10 2
.2 3
Authentication3 A
{ 
public 

	interface 
ISignUpService #
{		 
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
 
SignUpEmailAsync

 ,
(

, -
SignUpEmailModel

- =
signUpEmailModel

> N
,

N O
UserType

P X
userType

Y a
)

a b
;

b c
Task 
< 
IResponseBase 
> 
SignUpGenericAsync .
(. /
SignUpGenericModel/ A
signUpModelB M
,M N
UserTypeO W
userTypeX `
)` a
;a b
} 
} à
nE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Services\v1\Authentication\IOAuthService.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Services' /
./ 0
v10 2
.2 3
Authentication3 A
{ 
public		 

	interface		 
IOAuthService		 "
{

 
Task 
< %
SignUpAuthenticationModel &
>& '0
$CreateSignUpAuthenticationEmailAsync( L
(L M
	UserModelM V
	userModelW `
,` a
doubleb h!
expirationTimeSecondsi ~
=	 Ä
$num
Å Ç
,
Ç É
RefreshTokenData
Ñ î
refreshTokenData
ï •
=
¶ ß
null
® ¨
)
¨ ≠
;
≠ Æ
Task 
< %
SignUpAuthenticationModel &
>& '6
*CreateSignUpAuthenticationPhoneNumberAsync( R
(R S
	UserModelS \
	userModel] f
,f g
doubleh n"
expirationTimeSeconds	o Ñ
=
Ö Ü
$num
á à
,
à â
RefreshTokenData
ä ö
refreshTokenData
õ ´
=
¨ ≠
null
Æ ≤
)
≤ ≥
;
≥ ¥
Task 
< %
SignUpAuthenticationModel &
>& '6
*CreateSignUpAuthenticationSocialMediaAsync( R
(R S
	UserModelS \
	userModel] f
,f g
doubleh n"
expirationTimeSeconds	o Ñ
=
Ö Ü
$num
á à
,
à â
RefreshTokenData
ä ö
refreshTokenData
õ ´
=
¨ ≠
null
Æ ≤
)
≤ ≥
;
≥ ¥
Task 
< %
SignInAuthenticationModel &
>& '0
$CreateSignInAuthenticationEmailAsync( L
(L M
	UserModelM V
	userModelW `
,` a
doubleb h!
expirationTimeSecondsi ~
=	 Ä
$num
Å Ç
,
Ç É
RefreshTokenData
Ñ î
refreshTokenData
ï •
=
¶ ß
null
® ¨
)
¨ ≠
;
≠ Æ
Task 
< %
SignInAuthenticationModel &
>& '6
*CreateSignInAuthenticationPhoneNumberAsync( R
(R S
	UserModelS \
	userModel] f
,f g
doubleh n"
expirationTimeSeconds	o Ñ
=
Ö Ü
$num
á à
,
à â
RefreshTokenData
ä ö
refreshTokenData
õ ´
=
¨ ≠
null
Æ ≤
)
≤ ≥
;
≥ ¥
Task 
< %
SignInAuthenticationModel &
>& '6
*CreateSignInAuthenticationSocialMediaAsync( R
(R S
	UserModelS \
	userModel] f
,f g
doubleh n"
expirationTimeSeconds	o Ñ
=
Ö Ü
$num
á à
,
à â
RefreshTokenData
ä ö
refreshTokenData
õ ´
=
¨ ≠
null
Æ ≤
)
≤ ≥
;
≥ ¥
Task 
< 4
(SignInRecoverPasswordAuthenticationModel 5
>5 69
-CreateRecoverPasswordAuthenticationEmailAsync7 d
(d e
	UserModele n
	userModelo x
,x y
double	z Ä#
expirationTimeSeconds
Å ñ
=
ó ò
$num
ô ö
,
ö õ
RefreshTokenData
ú ¨
refreshTokenData
≠ Ω
=
æ ø
null
¿ ƒ
)
ƒ ≈
;
≈ ∆
} 
} ≠
oE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Services\v1\Authentication\ISignInService.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Services' /
./ 0
v10 2
.2 3
Authentication3 A
{ 
public 

	interface 
ISignInService #
{		 
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
 
SignInAsync

 '
(

' (#
SignInEmailRequestModel

( ?#
signInEmailRequestModel

@ W
)

W X
;

X Y
Task 
< 
IResponseBase 
> .
"RequestRecoverPasswordByEmailAsync >
(> ?
string? E
emailF K
)K L
;L M
Task 
< 
IResponseBase 
> .
"ValidateEmailConfirmationCodeAsync >
(> ?,
 SignInEmailConfirmationCodeModel? _-
 signInEmailConfirmationCodeModel	` Ä
)
Ä Å
;
Å Ç
Task 
< 
IResponseBase 
> 8
,ValidateRecoverPasswordConfirmationCodeAsync H
(H I,
 SignInEmailConfirmationCodeModelI i-
 signInEmailConfirmationCodeModel	j ä
)
ä ã
;
ã å
Task 
< 
IResponseBase 
> 
ChangePasswordAsync /
(/ 0
string0 6
jwtToken7 ?
,? @%
SignInChangePasswordModelA Z%
signInChangePasswordModel[ t
,t u
boolv z
checkOldPassword	{ ã
=
å ç
true
é í
)
í ì
;
ì î
Task 
< 
IResponseBase 
> 4
(ValidatePhoneNumberConfirmationCodeAsync D
(D E2
&SignInPhoneNumberConfirmationCodeModelE k3
&signInPhoneNumberConfirmationCodeModel	l í
)
í ì
;
ì î
Task 
< 
IResponseBase 
> *
ResendConfirmationCodeSmsAsync :
(: ;
string; A
phoneNumberB M
)M N
;N O
Task 
< 
IResponseBase 
> ,
 ResendConfirmationCodeEmailAsync <
(< =
string= C
emailD I
)I J
;J K
Task 
< 
IResponseBase 
> (
SignInSignUpSocialMediaAsync 8
(8 9"
SignInSocialMediaModel9 O"
signInSocialMediaModelP f
)f g
;g h
Task 
< 
IResponseBase 
> 
GetByTokenAsync +
(+ ,
string, 2
stringValues3 ?
,? @
CancellationTokenA R
cancellationTokenS d
)d e
;e f
Task 
< 
IResponseBase 
> 
GetAnyToListAsync -
(- .
CancellationToken. ?
cancellationToken@ Q
)Q R
;R S
} 
} ¯"
lE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Services\v1\Authentication\IJwtService.cs
	namespace

 	

AslaveCare


 
.

 
Domain

 
.

 

Interfaces

 &
.

& '
Services

' /
.

/ 0
v1

0 2
.

2 3
Authentication

3 A
{ 
public 

	interface 
IJwtService  
{ 
Task 
< %
SignInAuthenticationModel &
>& '0
$CreateSignInAuthenticationEmailAsync( L
(L M
	UserModelM V
	userModelW `
,` a
doubleb h!
expirationTimeSecondsi ~
=	 Ä
$num
Å Ç
,
Ç É
RefreshTokenData
Ñ î
refreshTokenData
ï •
=
¶ ß
null
® ¨
)
¨ ≠
;
≠ Æ
Task 
< %
SignInAuthenticationModel &
>& '6
*CreateSignInAuthenticationPhoneNumberAsync( R
(R S
	UserModelS \
	userModel] f
,f g
doubleh n"
expirationTimeSeconds	o Ñ
=
Ö Ü
$num
á à
,
à â
RefreshTokenData
ä ö
refreshTokenData
õ ´
=
¨ ≠
null
Æ ≤
)
≤ ≥
;
≥ ¥
Task 
< %
SignInAuthenticationModel &
>& '6
*CreateSignInAuthenticationSocialMediaAsync( R
(R S
	UserModelS \
	userModel] f
,f g
doubleh n"
expirationTimeSeconds	o Ñ
=
Ö Ü
$num
á à
,
à â
RefreshTokenData
ä ö
refreshTokenData
õ ´
=
¨ ≠
null
Æ ≤
)
≤ ≥
;
≥ ¥
Task 
< 
RefreshTokenData 
> %
ValidateRefreshTokenAsync 8
(8 9
string9 ?
refreshToken@ L
,L M
GuidN R
userIdS Y
)Y Z
;Z [
bool 
ValidateAccessToken  
(  !
string! '
token( -
,- .
Guid/ 3
userId4 :
): ;
;; <
Task 
< %
SignUpAuthenticationModel &
>& '0
$CreateSignUpAuthenticationEmailAsync( L
(L M
	UserModelM V
	userModelW `
,` a
doubleb h!
expirationTimeSecondsi ~
,~ 
RefreshTokenData
Ä ê
refreshTokenData
ë °
)
° ¢
;
¢ £
Task 
< %
SignUpAuthenticationModel &
>& '6
*CreateSignUpAuthenticationPhoneNumberAsync( R
(R S
	UserModelS \
	userModel] f
,f g
doubleh n"
expirationTimeSeconds	o Ñ
,
Ñ Ö
RefreshTokenData
Ü ñ
refreshTokenData
ó ß
)
ß ®
;
® ©
Task 
< %
SignUpAuthenticationModel &
>& '6
*CreateSignUpAuthenticationSocialMediaAsync( R
(R S
	UserModelS \
	userModel] f
,f g
doubleh n"
expirationTimeSeconds	o Ñ
,
Ñ Ö
RefreshTokenData
Ü ñ
refreshTokenData
ó ß
)
ß ®
;
® ©
UserType 
? 
GetRoleFromToken "
(" #
string# )
jwtToken* 2
)2 3
;3 4
Task!! 
<!! 4
(SignInRecoverPasswordAuthenticationModel!! 5
>!!5 69
-CreateRecoverPasswordAuthenticationEmailAsync!!7 d
(!!d e
	UserModel!!e n
	userModel!!o x
,!!x y
double	!!z Ä#
expirationTimeSeconds
!!Å ñ
,
!!ñ ó
RefreshTokenData
!!ò ®
refreshTokenData
!!© π
)
!!π ∫
;
!!∫ ª
JwtSecurityToken## 
ReadJwt##  
(##  !
string##! '
jwtToken##( 0
)##0 1
;##1 2.
"SignInSignUpAppleAutheicationModel%% *&
ReadAppleAuthenticationJwt%%+ E
(%%E F
string%%F L
jwtToken%%M U
)%%U V
;%%V W
Guid&& 
GetUserIdFromToken&& 
(&&  
string&&  &
jwtToken&&' /
)&&/ 0
;&&0 1
}'' 
}(( ¨&
`E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Services\Core\IServiceBase.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Services' /
./ 0
Core0 4
{ 
public		 

	interface		 
IServiceBase		 !
<		! "
	TAddModel		" +
,		+ ,
TUpdateModel		- 9
,		9 :
TPatchModel		; F
,		F G
	TGetModel		H Q
,		Q R
TModel		S Y
,		Y Z
TKey		[ _
>		_ `
where

 
	TAddModel

 
:

 
EntityModel

 %
<

% &
TKey

& *
>

* +
,

+ ,
IEntityModel

- 9
<

9 :
TKey

: >
>

> ?
,

? @
new

A D
(

D E
)

E F
where 
TUpdateModel 
: 
EntityModel (
<( )
TKey) -
>- .
,. /
IEntityModel0 <
<< =
TKey= A
>A B
,B C
newD G
(G H
)H I
where 
TPatchModel 
: 
EntityModel '
<' (
TKey( ,
>, -
,- .
IEntityModel/ ;
<; <
TKey< @
>@ A
,A B
newC F
(F G
)G H
where 
	TGetModel 
: 
EntityModel %
<% &
TKey& *
>* +
,+ ,
IEntityModel- 9
<9 :
TKey: >
>> ?
,? @
newA D
(D E
)E F
where 
TModel 
: 
EntityModel "
<" #
TKey# '
>' (
,( )
IEntityModel* 6
<6 7
TKey7 ;
>; <
,< =
new> A
(A B
)B C
{ 
Task 
< 
IResponseBase 
> 
AddOrUpdateAsync ,
(, -
TModel- 3
model4 9
)9 :
;: ;
Task 
< 
IResponseBase 
> 
AddAsync $
($ %
	TAddModel% .
model/ 4
)4 5
;5 6
Task 
< 
IResponseBase 
> 
UpdateAsync '
(' (
TUpdateModel( 4
model5 :
): ;
;; <
Task 
< 
IResponseBase 
> 
AddOrUpdateAsync ,
(, -
IEnumerable- 8
<8 9
TModel9 ?
>? @
modelsA G
)G H
;H I
Task 
< 
IResponseBase 
> 
GetByIdAsync (
(( )
TKey) -
id. 0
,0 1
CancellationToken2 C
cancellationTokenD U
=V W
defaultX _
)_ `
;` a
Task 
< 
IResponseBase 
>  
GetCompleteByIdAsync 0
(0 1
TKey1 5
id6 8
,8 9
CancellationToken: K
cancellationTokenL ]
=^ _
default` g
)g h
;h i
Task 
< 
IResponseBase 
> 
GetAllAsync '
(' (
CancellationToken( 9
cancellationToken: K
=L M
defaultN U
)U V
;V W
Task 
< 
IResponseBase 
> 
GetAllPagedAsync ,
(, -
int- 0
?0 1
page2 6
,6 7
int8 ;
?; <
pageSize= E
,E F
CancellationTokenG X
cancellationTokenY j
=k l
defaultm t
)t u
;u v
void   
Delete   
(   
TModel   
model    
)    !
;  ! "
void"" 
Delete"" 
("" 
IEnumerable"" 
<""  
TModel""  &
>""& '
models""( .
)"". /
;""/ 0
void$$ 
Delete$$ 
($$ 
TKey$$ 
id$$ 
)$$ 
;$$ 
void&& 
Delete&& 
(&& 
IEnumerable&& 
<&&  
TKey&&  $
>&&$ %
ids&&& )
)&&) *
;&&* +
Task(( 
<(( 
IResponseBase(( 
>(( 
Patch(( !
(((! "
TKey((" &
id((' )
,(() *
TPatchModel((+ 6
model((7 <
)((< =
;((= >
})) 
}** »
cE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Services\Core\IMtMServiceBase.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Services' /
./ 0
Core0 4
{ 
public		 

	interface		 
IMtMServiceBase		 $
<		$ %!
TStrongEntityMtMModel		% :
,		: ;
TWeakEntityMtMModel		< O
,		O P 
TEntityMtMPatchModel		Q e
,		e f
TEntityMtMModel		g v
,		v w

TStrongKey			x Ç
,
		Ç É
TWeakKey
		Ñ å
>
		å ç
where

 !
TStrongEntityMtMModel

 #
:

$ %
MtMEntityModel

& 4
,

4 5
IMtMEntityModel

6 E
,

E F
new

G J
(

J K
)

K L
where 
TWeakEntityMtMModel !
:" #
MtMEntityModel$ 2
,2 3
IMtMEntityModel4 C
,C D
newE H
(H I
)I J
where  
TEntityMtMPatchModel "
:# $
MtMEntityModel% 3
,3 4
IMtMEntityModel5 D
,D E
newF I
(I J
)J K
where 
TEntityMtMModel 
: 
MtMEntityModel  .
,. /
IMtMEntityModel0 ?
,? @
newA D
(D E
)E F
{ 
public 
Task 
< 
IResponseBase !
>! "
AddOrDeleteAsync# 3
(3 4

TStrongKey4 >
id? A
,A B
IEnumerableC N
<N O 
TEntityMtMPatchModelO c
>c d
newEntitiese p
)p q
;q r
public 
Task 
< 
IResponseBase !
>! "
UpdateAsync# .
(. /
IEnumerable/ :
<: ;
TEntityMtMModel; J
>J K
entitiesMtML W
)W X
;X Y
public 
Task 
< 
IResponseBase !
>! "
GetByIdsAsync# 0
(0 1

TStrongKey1 ;
sid< ?
,? @
TWeakKeyA I
widJ M
,M N
CancellationTokenO `
cancellationTokena r
=s t
defaultu |
)| }
;} ~
public 
Task 
< 
IResponseBase !
>! "
GetByStrongIdAsync# 5
(5 6

TStrongKey6 @
idA C
,C D
CancellationTokenE V
cancellationTokenW h
=i j
defaultk r
)r s
;s t
public 
Task 
< 
IResponseBase !
>! "
GetByWeakIdAsync# 3
(3 4
TWeakKey4 <
id= ?
,? @
CancellationTokenA R
cancellationTokenS d
=e f
defaultg n
)n o
;o p
} 
} ¡
oE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Repositories\v1\IUserValidationRepository.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Repositories' 3
.3 4
v14 6
{ 
public 

	interface %
IUserValidationRepository .
:/ 0
IRepositoryBase1 @
<@ A
UserValidationA O
,O P
GuidQ U
>U V
{ 
}		 
}

 ˜
eE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Repositories\v1\IUserRepository.cs
	namespace

 	

AslaveCare


 
.

 
Domain

 
.

 

Interfaces

 &
.

& '
Repositories

' 3
.

3 4
v1

4 6
{ 
public 

	interface 
IUserRepository $
:% &
IRepositoryBase' 6
<6 7
User7 ;
,; <
Guid= A
>A B
{ 
Task 
< 
User 
> 
GetByEmailAsync "
(" #
string# )
email* /
)/ 0
;0 1
Task 
< 
User 
> !
GetByPhoneNumberAsync (
(( )
string) /
phoneNumber0 ;
); <
;< =
Task 
< 
User 
>  
AddUserWithRoleAsync '
(' (
User( ,
user- 1
,1 2
UserType3 ;
userType< D
)D E
;E F
Task 
< 
User 
> !
GetByAppleUserIdAsync (
(( )
string) /
appleUserId0 ;
,; <
CancellationToken= N
cancellationTokenO `
)` a
;a b
Task 
< 
List 
< 
User 
> 
> 
GetByParameters (
(( )$
UserGetByParametersModel) A

parametersB L
,L M
CancellationTokenN _
cancellation` l
=m n
defaulto v
)v w
;w x
} 
} ‹
iE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Repositories\v1\ITaskNoteRepository.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Repositories' 3
.3 4
v14 6
{		 
public

 

	interface

 
ITaskNoteRepository

 (
:

) *
IRepositoryBase

+ :
<

: ;
TaskNote

; C
,

C D
Guid

E I
>

I J
{ 
Task 
< 
List 
< 
TaskNote 
> 
> 
GetToListAsync +
(+ ,
Guid, 0
userId1 7
,7 8
CancellationToken9 J
cancellationK W
)W X
;X Y
} 
} á
iE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Repositories\v1\ISupplierRepository.cs
	namespace		 	

AslaveCare		
 
.		 
Domain		 
.		 

Interfaces		 &
.		& '
Repositories		' 3
.		3 4
v1		4 6
{

 
public 

	interface 
ISupplierRepository (
:) *
IRepositoryBase+ :
<: ;
Supplier; C
,C D
GuidE I
>I J
{ 
Task 
< 
Supplier 
> 
GetByEmailAsync &
(& '
string' -
email. 3
,3 4
CancellationToken5 F
cancellationG S
=T U
defaultV ]
)] ^
;^ _
Task 
< 
List 
< 
Supplier 
> 
> 
GetByParameters ,
(, -(
SupplierGetByParametersModel- I

parametersJ T
,T U
CancellationTokenV g
cancellationh t
=u v
defaultw ~
)~ 
;	 Ä
Task 
< 
List 
< 
Supplier 
> 
> (
GetMonthTopDonorsReportAsync 9
(9 :
CancellationToken: K
cancellationL X
=Y Z
default[ b
)b c
;c d
Task 
< 
List 
< 
Supplier 
> 
> 
GetToListAsync +
(+ ,
CancellationToken, =
cancellation> J
=K L
defaultM T
)T U
;U V
} 
} —
jE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Repositories\v1\IStockTypeRepository.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Repositories' 3
.3 4
v14 6
{ 
public		 

	interface		  
IStockTypeRepository		 )
:		* +
IRepositoryBase		, ;
<		; <
	StockType		< E
,		E F
string		G M
>		M N
{

 
Task 
< 
List 
< 
	StockType 
> 
> 
GetToListAsync ,
(, -
CancellationToken- >
cancellation? K
=L M
defaultN U
)U V
;V W
} 
} ù
fE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Repositories\v1\IStockRepository.cs
	namespace		 	

AslaveCare		
 
.		 
Domain		 
.		 

Interfaces		 &
.		& '
Repositories		' 3
.		3 4
v1		4 6
{

 
public 

	interface 
IStockRepository %
:& '
IRepositoryBase( 7
<7 8
Stock8 =
,= >
Guid? C
>C D
{ 
Task 
< 
List 
< 
Stock 
> 
> 
GetByParameters )
() *%
StockGetByParametersModel* C

parametersD N
,N O
CancellationTokenP a
cancellationb n
=o p
defaultq x
)x y
;y z
Task 
< 
List 
< 
Stock 
> 
> 
GetLowerStocks (
(( )
int) ,
number- 3
,3 4
CancellationToken5 F
cancellationG S
)S T
;T U
Task 
< 
List 
< 
Stock 
> 
> !
GetRestockReportAsync /
(/ 0
CancellationToken0 A
cancellationB N
)N O
;O P
Task 
< 
List 
< 
Stock 
> 
> 
GetStockReportAsync -
(- .
CancellationToken. ?
cancellation@ L
)L M
;M N
Task 
< 
List 
< 
Stock 
> 
> 
GetToListAsync (
(( )
CancellationToken) :
cancellation; G
=H I
defaultJ Q
)Q R
;R S
Task 
< 
int 
> )
GetTotalStocksQuantityWarning /
(/ 0
CancellationToken0 A
cancellationTokenB S
)S T
;T U
} 
} ó
eE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Repositories\v1\IRoleRepository.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Repositories' 3
.3 4
v14 6
{		 
public

 

	interface

 
IRoleRepository

 $
:

% &
IRepositoryBase

' 6
<

6 7
Role

7 ;
,

; <
Guid

= A
>

A B
{ 
Task 
< 
List 
< 
Role 
> 
> 
GetToListAsync '
(' (
CancellationToken( 9
cancellation: F
)F G
;G H
} 
} ˛
qE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Repositories\v1\IRegisterOutStockRepository.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Repositories' 3
.3 4
v14 6
{		 
public

 

	interface

 '
IRegisterOutStockRepository

 0
:

1 2
IMtMRepositoryBase

3 E
<

E F
RegisterOutStock

F V
,

V W
Guid

X \
,

\ ]
Guid

^ b
>

b c
{ 
Task 
< 
IEnumerable 
< 
RegisterOutStock )
>) *
>* +%
GetConsumptionReportAsync, E
(E F
DateTimeF N
initialDateO Z
,Z [
DateTime\ d
	finalDatee n
,n o
CancellationToken	p Å
cancellation
Ç é
)
é è
;
è ê
} 
} ‡

lE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Repositories\v1\IRegisterOutRepository.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Repositories' 3
.3 4
v14 6
{		 
public

 

	interface

 "
IRegisterOutRepository

 +
:

, -
IRepositoryBase

. =
<

= >
RegisterOut

> I
,

I J
Guid

K O
>

O P
{ 
Task 
< 
RegisterOut 
>  
GetByIdToUpdateAsync .
(. /
Guid/ 3
id4 6
,6 7
CancellationToken8 I
cancellationJ V
)V W
;W X
Task 
< 

Dictionary 
< 
DateTime  
,  !
decimal" )
>) *
>* +#
GetConsumptionsPerMonth, C
(C D
CancellationTokenD U
cancellationV b
)b c
;c d
Task 
< 
List 
< 
RegisterOut 
> 
> 
GetToListAsync  .
(. /
CancellationToken/ @
cancellationA M
)M N
;N O
} 
} Ô
pE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Repositories\v1\IRegisterInStockRepository.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Repositories' 3
.3 4
v14 6
{		 
public

 

	interface

 &
IRegisterInStockRepository

 /
:

0 1
IMtMRepositoryBase

2 D
<

D E
RegisterInStock

E T
,

T U
Guid

V Z
,

Z [
Guid

\ `
>

` a
{ 
Task 
< 
List 
< 
RegisterInStock !
>! "
>" ##
GetDonationsReportAsync$ ;
(; <
DateTime< D
initialDateE P
,P Q
DateTimeR Z
	finalDate[ d
,d e
CancellationTokenf w
cancellation	x Ñ
)
Ñ Ö
;
Ö Ü
} 
} ˇ
kE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Repositories\v1\IRegisterInRepository.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Repositories' 3
.3 4
v14 6
{		 
public

 

	interface

 !
IRegisterInRepository

 *
:

+ ,
IRepositoryBase

- <
<

< =

RegisterIn

= G
,

G H
Guid

I M
>

M N
{ 
Task 
< 
List 
< 

RegisterIn 
> 
> 
GetToListAsync -
(- .
CancellationToken. ?
cancellation@ L
)L M
;M N
Task 
< 

RegisterIn 
>  
GetByIdToUpdateAsync -
(- .
Guid. 2
id3 5
,5 6
CancellationToken7 H
cancellationI U
)U V
;V W
Task 
< 

Dictionary 
< 
DateTime  
,  !
decimal" )
>) *
>* + 
GetDonationsPerMonth, @
(@ A
CancellationTokenA R
cancellationS _
)_ `
;` a
Task 
< 

Dictionary 
< 
DateTime  
,  !
decimal" )
>) *
>* +
GetShoppingPerMonth, ?
(? @
CancellationToken@ Q
cancellationR ^
)^ _
;_ `
} 
} ‹

hE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Repositories\v1\IManagerRepository.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Repositories' 3
.3 4
v14 6
{		 
public

 

	interface

 
IManagerRepository

 '
:

( )
IRepositoryBase

* 9
<

9 :
Manager

: A
,

A B
Guid

C G
>

G H
{ 
Task 
< 
IEnumerable 
< 
Manager  
>  !
>! "
GetAnyToListAsync# 4
(4 5
CancellationToken5 F
cancellationTokenG X
)X Y
;Y Z
Task 
< 
Manager 
>  
GetByIdToUpdateAsync *
(* +
Guid+ /
id0 2
,2 3
CancellationToken4 E
cancellationTokenF W
)W X
;X Y
Task 
< 
Manager 
> 
GetByUserIdAsync &
(& '
Guid' +
userId, 2
,2 3
CancellationToken4 E
cancellationTokenF W
=X Y
defaultZ a
)a b
;b c
} 
} È$
gE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Repositories\Core\IRepositoryBase.cs
	namespace		 	

AslaveCare		
 
.		 
Domain		 
.		 

Interfaces		 &
.		& '
Repositories		' 3
.		3 4
Core		4 8
{

 
public 

	interface 
IRepositoryBase $
<$ %
TEntity% ,
,, -
TKey. 2
>2 3
where 
TEntity 
: 
Entity 
< 
TKey #
># $
,$ %
IEntity& -
<- .
TKey. 2
>2 3
,3 4
new5 8
(8 9
)9 :
{ 
Task 
< 
TEntity 
> 
AddOrUpdateAsync &
(& '
TEntity' .
entity/ 5
)5 6
;6 7
Task 
< 
IEnumerable 
< 
TEntity  
>  !
>! "
AddOrUpdateAsync# 3
(3 4
IEnumerable4 ?
<? @
TEntity@ G
>G H
entitiesI Q
)Q R
;R S
Task 
< 
TEntity 
> 
AddAsync 
( 
TEntity &
entity' -
)- .
;. /
Task 
< 
IEnumerable 
< 
TEntity  
>  !
>! "
AddAsync# +
(+ ,
IEnumerable, 7
<7 8
TEntity8 ?
>? @
entitiesA I
)I J
;J K
Task 
< 
TEntity 
> 
UpdateAsync !
(! "
TEntity" )
entity* 0
)0 1
;1 2
Task 
UpdateAsync 
( 
IEnumerable $
<$ %
TEntity% ,
>, -
entities. 6
)6 7
;7 8
void 
Delete 
( 
TEntity 
entity "
)" #
;# $
void 
Delete 
( 
IEnumerable 
<  
TEntity  '
>' (
entities) 1
)1 2
;2 3
void 
Delete 
( 
TKey 
id 
) 
; 
void   
Delete   
(   
IEnumerable   
<    
TKey    $
>  $ %
ids  & )
)  ) *
;  * +
Task"" 
<"" 
bool"" 
>"" 
HasAny"" 
("" 
TKey"" 
id"" !
)""! "
;""" #

IQueryable$$ 
<$$ 
TEntity$$ 
>$$ 
InsertAllIncludes$$ -
($$- .

IQueryable$$. 8
<$$8 9
TEntity$$9 @
>$$@ A
query$$B G
)$$G H
;$$H I
Task&& 
<&& 
IEnumerable&& 
<&& 
TEntity&&  
>&&  !
>&&! "
GetAllAsync&&# .
(&&. /

Expression&&/ 9
<&&9 :
Func&&: >
<&&> ?
TEntity&&? F
,&&F G
bool&&H L
>&&L M
>&&M N
	predicate&&O X
=&&Y Z
null&&[ _
,&&_ `
CancellationToken&&a r
cancellationToken	&&s Ñ
=
&&Ö Ü
default
&&á é
)
&&é è
;
&&è ê
Task(( 
<(( 
IEnumerable(( 
<(( 
TEntity((  
>((  !
>((! "
GetAllPagedAsync((# 3
(((3 4
int((4 7
?((7 8
page((9 =
=((> ?
null((@ D
,((D E
int((F I
?((I J
pageSize((K S
=((T U
null((V Z
,((Z [
CancellationToken((\ m
cancellationToken((n 
=
((Ä Å
default
((Ç â
)
((â ä
;
((ä ã
Task** 
<** 
TEntity** 
>** 
GetByIdAsync** "
(**" #
TKey**# '
id**( *
,*** +
CancellationToken**, =
cancellationToken**> O
=**P Q
default**R Y
)**Y Z
;**Z [
Task,, 
<,, 
TEntity,, 
>,,  
GetCompleteByIdAsync,, *
(,,* +
TKey,,+ /
id,,0 2
,,,2 3
CancellationToken,,4 E
cancellationToken,,F W
=,,X Y
default,,Z a
),,a b
;,,b c
}-- 
}.. ‚

iE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Repositories\v1\IEmployeeRepository.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Repositories' 3
.3 4
v14 6
{		 
public

 

	interface

 
IEmployeeRepository

 (
:

) *
IRepositoryBase

+ :
<

: ;
Employee

; C
,

C D
Guid

E I
>

I J
{ 
Task 
< 
IEnumerable 
< 
Employee !
>! "
>" #
GetAnyToListAsync$ 5
(5 6
CancellationToken6 G
cancellationTokenH Y
)Y Z
;Z [
Task 
< 
Employee 
>  
GetByIdToUpdateAsync +
(+ ,
Guid, 0
id1 3
,3 4
CancellationToken5 F
cancellationTokenG X
)X Y
;Y Z
Task 
< 
Employee 
> 
GetByUserIdAsync '
(' (
Guid( ,
userId- 3
,3 4
CancellationToken5 F
cancellationTokenG X
=Y Z
default[ b
)b c
;c d
} 
} È
jE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Repositories\Core\IMtMRepositoryBase.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Repositories' 3
.3 4
Core4 8
{ 
public 

	interface 
IMtMRepositoryBase '
<' (

TEntityMtM( 2
,2 3

TStrongKey4 >
,> ?
TWeakKey@ H
>H I
where		 

TEntityMtM		 
:		 
	EntityMtM		 $
,		$ %

IMtMEntity		& 0
,		0 1
new		2 5
(		5 6
)		6 7
{

 
Task 
< 
IEnumerable 
< 

TEntityMtM #
># $
>$ %
AddOrDeleteAsync& 6
(6 7
IEnumerable7 B
<B C

TEntityMtMC M
>M N
entitiesO W
,W X
IEnumerableY d
<d e

TEntityMtMe o
>o p
oldEntitiesq |
)| }
;} ~
Task 
< 
IEnumerable 
< 

TEntityMtM #
># $
>$ %
UpdateAsync& 1
(1 2
IEnumerable2 =
<= >

TEntityMtM> H
>H I
entitiesMtMJ U
)U V
;V W
Task 
< 

TEntityMtM 
> 
GetByIdsAsync &
(& '

TStrongKey' 1
strongId2 :
,: ;
TWeakKey< D
weakIdE K
,K L
CancellationTokenM ^
cancellationToken_ p
=q r
defaults z
)z {
;{ |
Task 
< 
IEnumerable 
< 

TEntityMtM #
># $
>$ %
GetByStrongIdAsync& 8
(8 9

TStrongKey9 C
idD F
,F G
CancellationTokenH Y
cancellationTokenZ k
=l m
defaultn u
)u v
;v w
Task 
< 
IEnumerable 
< 

TEntityMtM #
># $
>$ %
GetByWeakIdAsync& 6
(6 7
TWeakKey7 ?
id@ B
,B C
CancellationTokenD U
cancellationTokenV g
=h i
defaultj q
)q r
;r s
} 
} Ü
cE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Interfaces\Behavior\IPhysicallyDeletable.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Interfaces &
.& '
Behavior' /
{ 
public 

	interface  
IPhysicallyDeletable )
{ 
} 
} §
QE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Helpers\TimeZoneHelper.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Helpers #
{ 
public 

static 
class 
TimeZoneHelper &
{ 
public 
static 
DateTime 
	NowCustom (
(( )
)) *
{		 	
TimeZoneInfo

 
timeZone

 !
;

! "
var 
	isWindows 
= 
RuntimeInformation .
.. /
IsOSPlatform/ ;
(; <

OSPlatform< F
.F G
WindowsG N
)N O
;O P
if 
( 
	isWindows 
) 
timeZone 
= 
TimeZoneInfo '
.' ("
FindSystemTimeZoneById( >
(> ?
$str? _
)_ `
;` a
else 
timeZone 
= 
TimeZoneInfo '
.' ("
FindSystemTimeZoneById( >
(> ?
$str? D
)D E
;E F
return 
TimeZoneInfo 
.  
ConvertTime  +
(+ ,
DateTime, 4
.4 5
UtcNow5 ;
,; <
timeZone= E
)E F
;F G
} 	
public 
static 
DateTime )
ConvertFromTimeUnixToDateTime <
(< =
double= C
unixTimeStampD Q
)Q R
{ 	
System 
. 
DateTime 

dtDateTime &
=' (
new) ,
DateTime- 5
(5 6
$num6 :
,: ;
$num< =
,= >
$num? @
,@ A
$numB C
,C D
$numE F
,F G
$numH I
,I J
$numK L
,L M
SystemN T
.T U
DateTimeKindU a
.a b
Utcb e
)e f
;f g

dtDateTime 
= 

dtDateTime #
.# $

AddSeconds$ .
(. /
unixTimeStamp/ <
)< =
.= >
ToLocalTime> I
(I J
)J K
;K L
return 

dtDateTime 
; 
} 	
} 
} ®9
RE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Helpers\RSACipherHelper.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Helpers #
{ 
public 

static 
class 
RSACipherHelper '
{ 
private 
static 
string 
PRIVATE_PEM_CONTENT 1
=2 3
System4 :
.: ;
Environment; F
.F G"
GetEnvironmentVariableG ]
(] ^
$str^ s
)s t
;t u
private 
static 
RSAParameters $

privateKey% /
;/ 0
private 
static 
RSAParameters $
	publicKey% .
;. /
static 
RSACipherHelper 
( 
)  
{ 	

ImportKeys 
( 
) 
; 
} 	
public 
static 
string 
EncryptString *
(* +
string+ 1
data2 6
)6 7
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
data% )
)) *
)* +
throw 
new 
DefaultException *
(* +
$str+ C
)C D
;D E
var 
	encrypted 
= 
Encrypt #
(# $
data$ (
)( )
;) *
return   
Convert   
.   
ToBase64String   )
(  ) *
	encrypted  * 3
)  3 4
;  4 5
}!! 	
public## 
static## 
bool## !
ValidateEncryptedData## 0
(##0 1
string##1 7
	plainData##8 A
,##A B
string##C I
encryptedData##J W
)##W X
{$$ 	
var%% 
	decripted%% 
=%% 
Decrypt%% #
(%%# $
Convert%%$ +
.%%+ ,
FromBase64String%%, <
(%%< =
encryptedData%%= J
)%%J K
)%%K L
;%%L M
return'' 
	decripted'' 
.'' 
Equals'' #
(''# $
	plainData''$ -
)''- .
;''. /
}(( 	
private** 
static** 
string** 
DecryptString** +
(**+ ,
string**, 2
data**3 7
)**7 8
{++ 	
if,, 
(,, 
string,, 
.,, 
IsNullOrEmpty,, $
(,,$ %
data,,% )
),,) *
),,* +
throw-- 
new-- 
DefaultException-- *
(--* +
$str--+ C
)--C D
;--D E
var// 
	decripted// 
=// 
Decrypt// #
(//# $
Convert//$ +
.//+ ,
FromBase64String//, <
(//< =
data//= A
)//A B
)//B C
;//C D
return11 
	decripted11 
;11 
}22 	
private44 
static44 
void44 

ImportKeys44 &
(44& '
)44' (
{55 	
try66 
{77 
if88 
(88 
string88 
.88 
IsNullOrEmpty88 (
(88( )
PRIVATE_PEM_CONTENT88) <
)88< =
)88= >
throw99 
new99 
DefaultException99 .
(99. /
$str99/ N
)99N O
;99O P
using;; 
(;; 
var;; 

textReader;; %
=;;& '
new;;( +
StringReader;;, 8
(;;8 9
PRIVATE_PEM_CONTENT;;9 L
);;L M
);;M N
{<< 
var== 
	pemReader== !
===" #
new==$ '
	PemReader==( 1
(==1 2

textReader==2 <
)==< =
;=== >
var>> 
	pemObject>> !
=>>" #
(>>$ %#
AsymmetricCipherKeyPair>>% <
)>>< =
	pemReader>>= F
.>>F G

ReadObject>>G Q
(>>Q R
)>>R S
;>>S T

privateKey@@ 
=@@  
DotNetUtilities@@! 0
.@@0 1
ToRSAParameters@@1 @
(@@@ A
(@@A B&
RsaPrivateCrtKeyParameters@@B \
)@@\ ]
	pemObject@@] f
.@@f g
Private@@g n
)@@n o
;@@o p
	publicKeyAA 
=AA 
DotNetUtilitiesAA  /
.AA/ 0
ToRSAParametersAA0 ?
(AA? @
(AA@ A
RsaKeyParametersAAA Q
)AAQ R
	pemObjectAAR [
.AA[ \
PublicAA\ b
)AAb c
;AAc d
}BB 
}CC 
catchDD 
(DD 
	ExceptionDD 
exDD 
)DD  
{EE 
throwFF 
newFF 
DefaultExceptionFF *
(FF* +
$strFF+ 7
,FF7 8
exFF9 ;
)FF; <
;FF< =
}GG 
}HH 	
privateJJ 
staticJJ 
byteJJ 
[JJ 
]JJ 
EncryptJJ %
(JJ% &
stringJJ& ,
dataJJ- 1
)JJ1 2
{KK 	
byteLL 
[LL 
]LL 
encodedDataLL 
=LL  
nullLL! %
;LL% &
varMM 
	dataBytesMM 
=MM 
EncodingMM $
.MM$ %
UTF8MM% )
.MM) *
GetBytesMM* 2
(MM2 3
dataMM3 7
)MM7 8
;MM8 9
usingOO 
(OO 
varOO 
rsaOO 
=OO 
newOO  $
RSACryptoServiceProviderOO! 9
(OO9 :
)OO: ;
)OO; <
{PP 
rsaQQ 
.QQ 
ImportParametersQQ $
(QQ$ %
	publicKeyQQ% .
)QQ. /
;QQ/ 0
encodedDataSS 
=SS 
rsaSS !
.SS! "
EncryptSS" )
(SS) *
	dataBytesSS* 3
,SS3 4
falseSS5 :
)SS: ;
;SS; <
}TT 
returnVV 
encodedDataVV 
;VV 
}WW 	
privateYY 
staticYY 
stringYY 
DecryptYY %
(YY% &
byteYY& *
[YY* +
]YY+ ,
dataYY- 1
)YY1 2
{ZZ 	
byte[[ 
[[[ 
][[ 
decodedData[[ 
=[[  
null[[! %
;[[% &
using]] 
(]] 
var]] 
rsa]] 
=]] 
new]]  $
RSACryptoServiceProvider]]! 9
(]]9 :
)]]: ;
)]]; <
{^^ 
rsa__ 
.__ 
ImportParameters__ $
(__$ %

privateKey__% /
)__/ 0
;__0 1
decodedDataaa 
=aa 
rsaaa !
.aa! "
Decryptaa" )
(aa) *
dataaa* .
,aa. /
falseaa0 5
)aa5 6
;aa6 7
}bb 
returndd 
Encodingdd 
.dd 
UTF8dd  
.dd  !
	GetStringdd! *
(dd* +
decodedDatadd+ 6
)dd6 7
;dd7 8
}ee 	
}ff 
}gg ¢
SE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Helpers\RefreshTokenData.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Helpers #
{ 
public 

class 
RefreshTokenData !
{ 
public 
string 
RefreshToken "
{# $
get% (
;( )
set* -
;- .
}/ 0
public		 
string		 
key		 
{		 
get		 
;		  
set		! $
;		$ %
}		& '
public 
DateTime 
FinalExpiration '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ß
LE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Helpers\JwtHelper.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Helpers #
{ 
public 

static 
class 
	JWTHelper !
{ 
public		 
static		 
string		 !
GetUniqueKeyFromToken		 2
(		2 3
StringValues		3 ?
token		@ E
)		E F
{

 	
string 
	uniqueKey 
= 
default &
;& '
if 
( 
String 
. 
IsNullOrEmpty $
($ %
token% *
)* +
)+ ,
throw 
new  
ApplicationException .
(. /
$str/ J
)J K
;K L
var 
stream 
= 
token 
. 
ToString '
(' (
)( )
.) *
Replace* 1
(1 2
$str2 ;
,; <
$str= ?
)? @
;@ A
var 
handler 
= 
new #
JwtSecurityTokenHandler 5
(5 6
)6 7
;7 8
var 
tokenObject 
= 
handler %
.% &
	ReadToken& /
(/ 0
stream0 6
)6 7
as8 :
JwtSecurityToken; K
;K L
if 
( 
tokenObject 
. 
Payload #
.# $
ContainsKey$ /
(/ 0
$str0 I
)I J
)J K
{ 
tokenObject 
. 
Payload #
.# $
TryGetValue$ /
(/ 0
$str0 I
,I J
outK N
varO R
keyS V
)V W
;W X
	uniqueKey 
= 
key 
.  
ToString  (
(( )
)) *
;* +
} 
return 
	uniqueKey 
; 
} 	
} 
} à

TE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Helpers\EnvironmentHelper.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Helpers #
{ 
public 

static 
class 
EnvironmentHelper )
{ 
public 
static 
EnvironmentType %
Environment& 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
static 
string #
GetShortEnvironmentName 4
(4 5
)5 6
=>7 9
Environment 
switch 
{		 
EnvironmentType

 
.

  
	Localhost

  )
=>

* ,
$str

- 2
,

2 3
EnvironmentType 
.  
Development  +
=>, .
$str/ 4
,4 5
EnvironmentType 
.  
Homologation  ,
=>- /
$str0 7
,7 8
EnvironmentType 
.  

Production  *
=>+ -
$str. 4
,4 5
_ 
=> 
$str 
} 
; 
} 
} åz
VE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Extensions\StringExtensions.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Extensions &
{		 
public

 

static

 
class

 
StringExtensions

 (
{ 
public 
static 
bool 
ContainsAny &
(& '
this' +
string, 2
input3 8
,8 9
IEnumerable: E
<E F
stringF L
>L M
searchInputN Y
)Y Z
=>[ ]
input 
switch 
{ 
null 
=> 
false 
, 
$str 
=> 
false 
, 
_ 
=> 
searchInput  
.  !
Any! $
($ %
input% *
.* +
Contains+ 3
)3 4
} 
; 
public 
static 
string 
ToHashSha256 )
() *
this* .
string/ 5
input6 ;
); <
=>= ?
input 
switch 
{ 
null 
=> 
string 
. 
Empty $
,$ %
$str 
=> 
string 
. 
Empty "
," #
_ 
=> 
BitConverter !
.! "
ToString" *
(* +
(+ ,
SHA256, 2
.2 3
Create3 9
(9 :
): ;
); <
.< =
ComputeHash= H
(H I
EncodingI Q
.Q R
UTF8R V
.V W
GetBytesW _
(_ `
input` e
)e f
)f g
)g h
.h i
Replacei p
(p q
$strq t
,t u
$strv x
)x y
} 
; 
public 
static 
string 
FirstCharToUpper -
(- .
this. 2
string3 9
input: ?
)? @
=>A C
input 
switch 
{ 
null 
=> 
string 
. 
Empty $
,$ %
$str   
=>   
string   
.   
Empty   "
,  " #
_!! 
=>!! 
input!! 
.!! 
First!!  
(!!  !
)!!! "
.!!" #
ToString!!# +
(!!+ ,
)!!, -
.!!- .
ToUpper!!. 5
(!!5 6
)!!6 7
+!!8 9
input!!: ?
.!!? @
	Substring!!@ I
(!!I J
$num!!J K
)!!K L
}"" 
;"" 
public$$ 
static$$ 
bool$$ !
AllCharacterAreEquals$$ 0
($$0 1
this$$1 5
string$$6 <
input$$= B
)$$B C
{%% 	
if&& 
(&& 
string&& 
.&& 
IsNullOrEmpty&& $
(&&$ %
input&&% *
)&&* +
)&&+ ,
return&&- 3
false&&4 9
;&&9 :
bool(( 
isEquals(( 
=(( 
true((  
;((  !
string** 
lastCharacter**  
=**! "
input**# (
[**( )
$num**) *
]*** +
.**+ ,
ToString**, 4
(**4 5
)**5 6
;**6 7
for,, 
(,, 
int,, 
i,, 
=,, 
$num,, 
;,, 
i,, 
<,, 
input,,  %
.,,% &
Length,,& ,
;,,, -
i,,. /
++,,/ 1
),,1 2
{-- 
if.. 
(.. 
!.. 
input.. 
[.. 
i.. 
].. 
... 
ToString.. &
(..& '
)..' (
...( )
Equals..) /
(../ 0
lastCharacter..0 =
)..= >
)..> ?
{// 
isEquals00 
=00 
false00 $
;00$ %
}11 
}22 
return33 
isEquals33 
;33 
}44 	
public66 
static66 
string66 

GetNumbers66 '
(66' (
this66( ,
string66- 3
input664 9
)669 :
{77 	
return88 
Regex88 
.88 
Replace88  
(88  !
input88! &
,88& '
$str88( 0
,880 1
$str882 4
,884 5
RegexOptions886 B
.88B C
None88C G
)88G H
;88H I
}99 	
public;; 
static;; 
string;; 
EncodeBase64;; )
(;;) *
this;;* .
string;;/ 5
input;;6 ;
);;; <
{<< 	
var== 

valueBytes== 
=== 
Encoding== %
.==% &
UTF8==& *
.==* +
GetBytes==+ 3
(==3 4
input==4 9
)==9 :
;==: ;
return>> 
Convert>> 
.>> 
ToBase64String>> )
(>>) *

valueBytes>>* 4
)>>4 5
;>>5 6
}?? 	
publicAA 
staticAA 
stringAA 
DecodeBase64AA )
(AA) *
thisAA* .
stringAA/ 5
inputAA6 ;
)AA; <
{BB 	
varCC 
	decryptedCC 
=CC 
ToBase64CC $
(CC$ %
inputCC% *
)CC* +
;CC+ ,
varDD 

valueBytesDD 
=DD 
ConvertDD $
.DD$ %
FromBase64StringDD% 5
(DD5 6
	decryptedDD6 ?
)DD? @
;DD@ A
returnEE 
EncodingEE 
.EE 
UTF8EE  
.EE  !
	GetStringEE! *
(EE* +

valueBytesEE+ 5
)EE5 6
;EE6 7
}FF 	
privateHH 
staticHH 
stringHH 
ToBase64HH &
(HH& '
thisHH' +
stringHH, 2
inputHH3 8
)HH8 9
{II 	
ifJJ 
(JJ 
inputJJ 
==JJ 
nullJJ 
)JJ 
throwJJ $
newJJ% ( 
ApplicationExceptionJJ) =
(JJ= >
$strJJ> d
)JJd e
;JJe f
varLL 
valueLL 
=LL 
inputLL 
.MM 
PadRightMM 
(MM 
inputMM 
.MM  
LengthMM  &
+MM' (
(MM) *
$numMM* +
-MM, -
inputMM. 3
.MM3 4
LengthMM4 :
%MM; <
$numMM= >
)MM> ?
%MM@ A
$numMMB C
,MMC D
$charMME H
)MMH I
.NN 
ReplaceNN 
(NN 
$strNN 
,NN 
$strNN !
)NN! "
.OO 
ReplaceOO 
(OO 
$strOO 
,OO 
$strOO !
)OO! "
;OO" #
returnQQ 
valueQQ 
;QQ 
}RR 	
publicTT 
staticTT 
stringTT $
ReplaceSpecialCharactersTT 5
(TT5 6
thisTT6 :
stringTT; A
inputTTB G
)TTG H
{UU 	
stringVV 
[VV 
]VV 
specialVV 
=VV 
newVV "
stringVV# )
[VV) *
]VV* +
{VV, -
$strVV. 1
,VV1 2
$strVV3 6
,VV6 7
$strVV8 ;
,VV; <
$strVV= @
,VV@ A
$strVVB E
,VVE F
$strVVG J
,VVJ K
$strVVL O
,VVO P
$strVVQ T
,VVT U
$strVVV Y
,VVY Z
$strVV[ ^
,VV^ _
$strVV` c
,VVc d
$strVVe h
,VVh i
$strVVj m
,VVm n
$strVVo r
,VVr s
$strVVt w
,VVw x
$strVVy |
,VV| }
$str	VV~ Å
,
VVÅ Ç
$str
VVÉ Ü
,
VVÜ á
$str
VVà ã
,
VVã å
$str
VVç ê
,
VVê ë
$str
VVí ï
,
VVï ñ
$str
VVó ö
,
VVö õ
$str
VVú ü
,
VVü †
$str
VV° §
,
VV§ •
$str
VV¶ ©
,
VV© ™
$str
VV´ Æ
,
VVÆ Ø
$str
VV∞ ≥
,
VV≥ ¥
$str
VVµ ∏
,
VV∏ π
$str
VV∫ Ω
,
VVΩ æ
$str
VVø ¬
,
VV¬ √
$str
VVƒ «
,
VV« »
$str
VV… Ã
,
VVÃ Õ
$str
VVŒ —
,
VV— “
$str
VV” ÷
,
VV÷ ◊
$str
VVÿ €
,
VV€ ‹
$str
VV› ‡
,
VV‡ ·
$str
VV‚ Â
,
VVÂ Ê
$str
VVÁ Í
,
VVÍ Î
$str
VVÏ Ô
,
VVÔ 
$str
VVÒ Ù
,
VVÙ ı
$str
VVˆ ˘
,
VV˘ ˙
$str
VV˚ ˛
,
VV˛ ˇ
$str
VVÄ É
,
VVÉ Ñ
$str
VVÖ à
,
VVà â
$str
VVä ç
,
VVç é
$str
VVè í
,
VVí ì
$str
VVî ó
,
VVó ò
$str
VVô ú
,
VVú ù
$str
VVû °
,
VV° ¢
$str
VV£ ¶
,
VV¶ ß
$str
VV® ´
}
VV¨ ≠
;
VV≠ Æ
stringWW 
[WW 
]WW 
regularWW 
=WW 
newWW "
stringWW# )
[WW) *
]WW* +
{WW, -
$strWW. 1
,WW1 2
$strWW3 6
,WW6 7
$strWW8 ;
,WW; <
$strWW= @
,WW@ A
$strWWB E
,WWE F
$strWWG J
,WWJ K
$strWWL O
,WWO P
$strWWQ T
,WWT U
$strWWV Y
,WWY Z
$strWW[ ^
,WW^ _
$strWW` c
,WWc d
$strWWe h
,WWh i
$strWWj m
,WWm n
$strWWo r
,WWr s
$strWWt w
,WWw x
$strWWy |
,WW| }
$str	WW~ Å
,
WWÅ Ç
$str
WWÉ Ü
,
WWÜ á
$str
WWà ã
,
WWã å
$str
WWç ê
,
WWê ë
$str
WWí ï
,
WWï ñ
$str
WWó ö
,
WWö õ
$str
WWú ü
,
WWü †
$str
WW° §
,
WW§ •
$str
WW¶ ©
,
WW© ™
$str
WW´ Æ
,
WWÆ Ø
$str
WW∞ ≥
,
WW≥ ¥
$str
WWµ ∏
,
WW∏ π
$str
WW∫ Ω
,
WWΩ æ
$str
WWø ¬
,
WW¬ √
$str
WWƒ «
,
WW« »
$str
WW… Ã
,
WWÃ Õ
$str
WWŒ —
,
WW— “
$str
WW” ÷
,
WW÷ ◊
$str
WWÿ €
,
WW€ ‹
$str
WW› ‡
,
WW‡ ·
$str
WW‚ Â
,
WWÂ Ê
$str
WWÁ Í
,
WWÍ Î
$str
WWÏ Ô
,
WWÔ 
$str
WWÒ Ù
,
WWÙ ı
$str
WWˆ ˘
,
WW˘ ˙
$str
WW˚ ˛
,
WW˛ ˇ
$str
WWÄ É
,
WWÉ Ñ
$str
WWÖ à
,
WWà â
$str
WWä ç
,
WWç é
$str
WWè í
,
WWí ì
$str
WWî ó
,
WWó ò
$str
WWô ú
,
WWú ù
$str
WWû °
,
WW° ¢
$str
WW£ ¶
,
WW¶ ß
$str
WW® ´
}
WW¨ ≠
;
WW≠ Æ
forYY 
(YY 
intYY 
iYY 
=YY 
$numYY 
;YY 
iYY 
<YY 
specialYY  '
.YY' (
LengthYY( .
;YY. /
iYY0 1
++YY1 3
)YY3 4
{ZZ 
input[[ 
=[[ 
input[[ 
.[[ 
Replace[[ %
([[% &
special[[& -
[[[- .
i[[. /
][[/ 0
,[[0 1
regular[[2 9
[[[9 :
i[[: ;
][[; <
)[[< =
;[[= >
}\\ 
string]] 
[]] 
]]] 
simbols]] 
=]] 
{]]  
$str]]! $
,]]$ %
$str]]& )
,]]) *
$str]]+ .
,]]. /
$str]]0 3
,]]3 4
$str]]5 8
,]]8 9
$str]]: =
,]]= >
$str]]? B
,]]B C
$str]]D G
,]]G H
$str]]I M
,]]M N
$str]]O R
,]]R S
$str]]T W
,]]W X
$str]]Y \
,]]\ ]
$str]]^ a
,]]a b
$str]]c f
,]]f g
$str]]h k
,]]k l
$str]]m p
,]]p q
$str]]r u
,]]u v
$str]]w z
,]]z {
$str	]]| Ç
,
]]Ç É
$str
]]Ñ á
,
]]á à
$str
]]â å
,
]]å ç
$str
]]é ë
,
]]ë í
$str
]]ì ñ
,
]]ñ ó
$str
]]ò õ
,
]]õ ú
$str
]]ù †
,
]]† °
$str
]]¢ •
,
]]• ¶
$str
]]ß ™
,
]]™ ´
$str
]]¨ Ø
,
]]Ø ∞
$str
]]± ¥
,
]]¥ µ
$str
]]∂ π
,
]]π ∫
$str
]]ª æ
,
]]æ ø
$str
]]¿ √
,
]]√ ƒ
$str
]]≈ »
,
]]» …
$str
]]  Õ
,
]]Õ Œ
$str
]]œ “
,
]]“ ”
$str
]]‘ ◊
,
]]◊ ÿ
$str
]]Ÿ ‹
,
]]‹ ›
$str
]]ﬁ ·
,
]]· ‚
$str
]]„ Ê
,
]]Ê Á
$str
]]Ë Î
,
]]Î Ï
$str
]]Ì 
,
]] Ò
$str
]]Ú ı
,
]]ı ˆ
$str
]]˜ ˙
,
]]˙ ˚
$str
]]¸ ˇ
}
]]Ä Å
;
]]Å Ç
for__ 
(__ 
int__ 
i__ 
=__ 
$num__ 
;__ 
i__ 
<__ 
simbols__  '
.__' (
Length__( .
;__. /
i__0 1
++__1 3
)__3 4
{`` 
inputaa 
=aa 
inputaa 
.aa 
Replaceaa %
(aa% &
simbolsaa& -
[aa- .
iaa. /
]aa/ 0
,aa0 1
$straa2 4
)aa4 5
;aa5 6
}bb 
returncc 
inputcc 
.cc 
Trimcc 
(cc 
)cc 
;cc  
}dd 	
publicff 
staticff 
stringff 
Fillff !
(ff! "
thisff" &
stringff' -
inputff. 3
,ff3 4
charff5 9
fillff: >
,ff> ?
intff@ C
lenghtffD J
,ffJ K
boolffL P
rightffQ V
=ffW X
falseffY ^
)ff^ _
{gg 	
ifhh 
(hh 
inputhh 
.hh 
Lengthhh 
>=hh 
lenghthh  &
)hh& '
returnhh( .
inputhh/ 4
;hh4 5
whileii 
(ii 
inputii 
.ii 
Lengthii 
<ii  !
lenghtii" (
)ii( )
ifjj 
(jj 
rightjj 
)jj 
inputkk 
=kk 
$"kk 
{kk 
fillkk #
}kk# $
{kk$ %
inputkk% *
}kk* +
"kk+ ,
;kk, -
elsell 
inputmm 
=mm 
$"mm 
{mm 
inputmm $
}mm$ %
{mm% &
fillmm& *
}mm* +
"mm+ ,
;mm, -
returnnn 
inputnn 
;nn 
}oo 	
}pp 
}qq Ç3
gE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Extensions\FluentValidationMessageExtensions.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Extensions &
{ 
public 

static 
class -
!FluentValidationMessageExtensions 9
{ 
public 
static 
string "
MessageForNullProperty 3
(3 4
this4 8
string9 ?
propertyName@ L
)L M
{		 	
return

 
$"

 
$str

 "
{

" #
propertyName

# /
}

/ 0
$str

0 D
"

D E
;

E F
} 	
public 
static 
string #
MessageForEmptyProperty 4
(4 5
this5 9
string: @
propertyNameA M
)M N
{ 	
return 
$" 
$str "
{" #
propertyName# /
}/ 0
$str0 E
"E F
;F G
} 	
public 
static 
string '
MessageForShouldGreaterThan 8
(8 9
this9 =
string> D
propertyNameE Q
,Q R
intS V
valueToCompareW e
)e f
{ 	
return 
$" 
$str "
{" #
propertyName# /
}/ 0
$str0 E
{E F
valueToCompareF T
}T U
"U V
;V W
} 	
public 
static 
string 
MessageForEqual ,
(, -
this- 1
string2 8
propertyName9 E
,E F
objectG M
valueToCompareN \
)\ ]
{ 	
return 
$" 
$str "
{" #
propertyName# /
}/ 0
$str0 D
{D E
valueToCompareE S
}S T
$strT U
"U V
;V W
} 	
public 
static 
string %
MessageForShouldLowerThan 6
(6 7
this7 ;
string< B
propertyNameC O
,O P
objectQ W
valueToCompareX f
)f g
{ 	
return 
$" 
$str "
{" #
propertyName# /
}/ 0
$str0 E
{E F
valueToCompareF T
}T U
"U V
;V W
} 	
public!! 
static!! 
string!! !
MessageForNumericOnly!! 2
(!!2 3
this!!3 7
string!!8 >
propertyName!!? K
)!!K L
{"" 	
return## 
$"## 
$str## "
{##" #
propertyName### /
}##/ 0
$str##0 L
"##L M
;##M N
}$$ 	
public&& 
static&& 
string&& 
MessageForFixedSize&& 0
(&&0 1
this&&1 5
string&&6 <
propertyName&&= I
,&&I J
string&&K Q
ruleMessage&&R ]
,&&] ^
bool&&_ c

onlyNumber&&d n
=&&o p
false&&q v
)&&v w
{'' 	
return(( 
$"(( 
$str(( "
{((" #
propertyName((# /
}((/ 0
$str((0 >
{((> ?
ruleMessage((? J
}((J K
$str((K L
{((L M
(((M N

onlyNumber((N X
?((Y Z
$str(([ d
:((e f
$str((g s
)((s t
}((t u
"((u v
;((v w
})) 	
public++ 
static++ 
string++ "
MessageForInvalidValue++ 3
(++3 4
this++4 8
string++9 ?
propertyName++@ L
)++L M
{,, 	
return-- 
$"-- 
$str-- "
{--" #
propertyName--# /
}--/ 0
$str--0 J
"--J K
;--K L
}.. 	
public00 
static00 
string00 )
MessageForMustBePresentInEnum00 :
<00: ;
T00; <
>00< =
(00= >
this00> B
string00C I
propertyName00J V
)00V W
where11 
T11 
:11 
Enum11 
{22 	
var33 
enumDictionary33 
=33  
Enum33! %
.33% &
	GetValues33& /
(33/ 0
typeof330 6
(336 7
T337 8
)338 9
)339 :
.44 
Cast44 
<44 
T44 
>44 
(44 
)44 
.55 
ToDictionary55 
(55 
t55 
=>55  "
(55# $
int55$ '
)55' (
(55( )
object55) /
)55/ 0
t550 1
,551 2
t553 4
=>555 7
t558 9
.559 :
ToString55: B
(55B C
)55C D
)55D E
;55E F
var77 

enumString77 
=77 
string77 #
.77# $
Empty77$ )
;77) *
enumDictionary99 
.99 
ToList99 !
(99! "
)99" #
.99# $
ForEach99$ +
(99+ ,
x99, -
=>99. 0

enumString991 ;
+=99< >
$"99? A
{99A B
x99B C
.99C D
Key99D G
}99G H
$str99H I
{99I J
x99J K
.99K L
Value99L Q
}99Q R
$str99R S
"99S T
)99T U
;99U V
return;; 
$";; 
$str;; "
{;;" #
propertyName;;# /
};;/ 0
$str;;0 U
{;;U V

enumString;;V `
};;` a
$str;;a b
";;b c
;;;c d
}<< 	
public>> 
static>> 
string>> &
MessageForOneMustHaveValue>> 7
(>>7 8
this>>8 <
string>>= C
[>>C D
]>>D E
propertiesName>>F T
)>>T U
{?? 	
return@@ 
$"@@ 
$str@@ (
{@@( )
string@@) /
.@@/ 0
Join@@0 4
(@@4 5
$str@@5 9
,@@9 :
propertiesName@@; I
)@@I J
}@@J K
$str@@K h
"@@h i
;@@i j
}AA 	
}BB 
}CC „*
TE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Extensions\EnumExtensions.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Extensions &
{ 
public		 

static		 
class		 
EnumExtensions		 &
{

 
public 
static 
string 
GetDescription +
<+ ,
T, -
>- .
(. /
this/ 3
T4 5
source6 <
)< =
{ 	
	FieldInfo 
fi 
= 
source !
.! "
GetType" )
() *
)* +
.+ ,
GetField, 4
(4 5
source5 ;
.; <
ToString< D
(D E
)E F
)F G
;G H 
DescriptionAttribute  
[  !
]! "

attributes# -
=. /
(0 1 
DescriptionAttribute1 E
[E F
]F G
)G H
fiH J
.J K
GetCustomAttributesK ^
(^ _
typeof 
(  
DescriptionAttribute +
)+ ,
,, -
false. 3
)3 4
;4 5
if 
( 

attributes 
!= 
null "
&&# %

attributes& 0
.0 1
Length1 7
>8 9
$num: ;
); <
return= C

attributesD N
[N O
$numO P
]P Q
.Q R
DescriptionR ]
;] ^
else 
return 
source 
. 
ToString '
(' (
)( )
;) *
} 	
public 
static 

Dictionary  
<  !
int! $
,$ %
string& ,
>, -
EnumToDictionary. >
<> ?
T? @
>@ A
(A B
)B C
{ 	
if 
( 
! 
typeof 
( 
T 
) 
. 
IsEnum !
)! "
throw 
new 
ArgumentException +
(+ ,
$str, B
)B C
;C D
return 
Enum 
. 
	GetValues !
(! "
typeof" (
(( )
T) *
)* +
)+ ,
. 
Cast 
< 
T 
> 
( 
) 
. 
ToDictionary 
( 
t 
=>  "
(# $
int$ '
)' (
(( )
object) /
)/ 0
t0 1
,1 2
t3 4
=>5 7
t8 9
.9 :
ToString: B
(B C
)C D
)D E
;E F
} 	
public 
static 
string 
EnumToString )
<) *
T* +
>+ ,
(, -
)- .
{   	
var!! 
enumDictionary!! 
=!!  
EnumToDictionary!!! 1
<!!1 2
T!!2 3
>!!3 4
(!!4 5
)!!5 6
;!!6 7
var## 

enumString## 
=## 
string## #
.### $
Empty##$ )
;##) *
if%% 
(%% 
enumDictionary%% 
.%% 
Count%% $
>%%% &
$num%%' (
)%%( )
enumDictionary&& 
.&& 
ToList&& %
(&&% &
)&&& '
.&&' (
ForEach&&( /
(&&/ 0
x&&0 1
=>&&2 4

enumString&&5 ?
+=&&@ B
$"&&C E
{&&E F
x&&F G
.&&G H
Key&&H K
}&&K L
$str&&L O
{&&O P
x&&P Q
.&&Q R
Value&&R W
}&&W X
"&&X Y
)&&Y Z
;&&Z [
return(( 

enumString(( 
;(( 
})) 	
public++ 
static++ 
List++ 
<++ 

EnumObject++ %
>++% &
EnumToObject++' 3
<++3 4
T++4 5
>++5 6
(++6 7
)++7 8
{,, 	
var-- 
list-- 
=-- 
EnumToDictionary-- '
<--' (
T--( )
>--) *
(--* +
)--+ ,
;--, -
return// 
list// 
.// 
Select// 
(// 
x//  
=>//! #
new//$ '

EnumObject//( 2
(//2 3
)//3 4
{//5 6
Id//7 9
=//: ;
x//< =
.//= >
Key//> A
,//A B
Name//C G
=//H I
x//J K
.//K L
Value//L Q
}//R S
)//S T
.//T U
ToList//U [
(//[ \
)//\ ]
;//] ^
}00 	
public22 
class22 

EnumObject22 
{33 	
public44 
int44 
Id44 
{44 
get44 
;44  
set44! $
;44$ %
}44& '
public55 
string55 
Name55 
{55  
get55! $
;55$ %
set55& )
;55) *
}55+ ,
}66 	
}77 
}88 ˛
VE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Exceptions\DefaultException.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 

Exceptions &
{ 
public 

class 
DefaultException !
:" #
	Exception$ -
{ 
public 
DefaultException 
(  
string  &
message' .
,. /
	Exception0 9
	exception: C
=D E
nullF J
)J K
: 
base 
( 
message 
, 
	exception %
)% &
{' (
}) *
public

 
string

 
	RequestId

 
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
} ı
PE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Enums\SocialMediaType.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Enums !
{ 
public 

enum 
SocialMediaType 
{ 
Google 
, 
Apple 
} 
} ì
NE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Enums\ImageFileType.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Enums !
{ 
public 

enum 
ImageFileType 
{ 
Logo 
, 
Gallery 
, 
Photo 
} 
}		 ¡
IE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Enums\FileType.cs
public 
enum 
FileType 
{ 
Image 	
,	 

} ‡
PE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Enums\EnvironmentType.cs
public 
enum 
EnvironmentType 
{ 
[ 
Description 
( 
$str 
) 
] 
Test 
, 	
[ 
Description 
( 
$str 
) 
] 

Production		 
,		 
[ 
Description 
( 
$str 
) 
] 
	Localhost 
, 
[ 
Description 
( 
$str 
) 
] 
Development 
, 
[ 
Description 
( 
$str 
) 
] 
Homologation 
} Õ
LE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Enums\CountryType.cs
public 
enum 
CountryType 
{ 
[ 
Description 
( 
$str 
) 
] 
BRL 
= 	
$num
 
, 
} Ì

RE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\UserValidation.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
{ 
public 

class 
UserValidation 
:  !
Entity" (
<( )
Guid) -
>- .
{		 
[

 	
	MaxLength

	 
(

 
PropertyLength

 !
.

! "
ConfirmationCode

" 2
)

2 3
]

3 4
public 
string !
EmailConfirmationCode +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
[ 	
	MaxLength	 
( 
PropertyLength !
.! "
ConfirmationCode" 2
)2 3
]3 4
public 
string '
PhoneNumberConfirmationCode 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
bool 
EmailValidated "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool  
PhoneNumberValidated (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} î
LE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\UserRole.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
{ 
public 

class 
UserRole 
{ 
public 
User 
User 
{ 
get 
; 
set  #
;# $
}% &
public		 
Guid		 
UserId		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public 
Role 
Role 
{ 
get 
; 
set  #
;# $
}% &
public 
Guid 
RoleId 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ã
HE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\User.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
{		 
public

 

class

 
User

 
:

 
Entity

 
<

 
Guid

 #
>

# $
{ 
[ 	
	MaxLength	 
( 
PropertyLength !
.! "
FullName" *
)* +
]+ ,
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
	MaxLength	 
( 
PropertyLength !
.! "
PhoneNumber" -
)- .
]. /
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
	MaxLength	 
( 
PropertyLength !
.! "
Email" '
)' (
]( )
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
	AllowNull	 
] 
public 
byte 
[ 
] 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
	AllowNull	 
] 
public 
DateTime 
? 
	LastLogin "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
	AllowNull	 
] 
public 
string 
AppleUserId !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
	AllowNull	 
] 
public 
DateTime 
? "
LastPasswordChangeDate /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public!! 
ICollection!! 
<!! 
UserRole!! #
>!!# $
	UserRoles!!% .
{!!/ 0
get!!1 4
;!!4 5
set!!6 9
;!!9 :
}!!; <
public## 
Guid## 
UserValidationId## $
{##% &
get##' *
;##* +
set##, /
;##/ 0
}##1 2
public%% 
UserValidation%% 
UserValidation%% ,
{%%- .
get%%/ 2
;%%2 3
set%%4 7
;%%7 8
}%%9 :
public'' 
string'' %
FireBaseCloudMessageToken'' /
{''0 1
get''2 5
;''5 6
set''7 :
;'': ;
}''< =
public)) 
bool)) 
Disable)) 
{)) 
get)) !
;))! "
set))# &
;))& '
}))( )
}** 
}++ Á
LE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\TaskNote.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
{ 
public 

class 
TaskNote 
: 
Entity "
<" #
Guid# '
>' (
{ 
public 
string 
Text 
{ 
get  
;  !
set" %
;% &
}' (
public		 
bool		 
Done		 
{		 
get		 
;		 
set		  #
;		# $
}		% &
public

 
Guid

 
UserId

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
User 
User 
{ 
get 
; 
set  #
;# $
}% &
} 
} É
LE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\Supplier.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
{ 
public		 

class		 
Supplier		 
:		 
Entity		 "
<		" #
Guid		# '
>		' (
{

 
[ 	
	MaxLength	 
( 
PropertyLength !
.! "
FullName" *
)* +
]+ ,
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
	MaxLength	 
( 
PropertyLength !
.! "
PhoneNumber" -
)- .
]. /
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
	MaxLength	 
( 
PropertyLength !
.! "
Email" '
)' (
]( )
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
Disable 
{ 
get !
;! "
set# &
;& '
}( )
public 
List 
< 

RegisterIn 
> 
RegistersIn  +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
} ƒ
ME:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\StockType.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
{ 
public 

class 
	StockType 
: 
Entity #
<# $
string$ *
>* +
{		 
[

 	
	MaxLength

	 
(

 
PropertyLength

 !
.

! "
GenericShortName

" 2
)

2 3
]

3 4
public 
override 
string 
Id !
{" #
get$ '
=>( *
base+ /
./ 0
Id0 2
;2 3
set4 7
=>8 :
base; ?
.? @
Id@ B
=C D
valueE J
;J K
}L M
public 
List 
< 
Stock 
> 
Stocks !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ©
IE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\Stock.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
{		 
public

 

class

 
Stock

 
:

 
Entity

 
<

  
Guid

  $
>

$ %
{ 
[ 	
	MaxLength	 
( 
PropertyLength !
.! "
FullName" *
)* +
]+ ,
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
	MaxLength	 
( 
PropertyLength !
.! "
Description" -
)- .
]. /
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Column	 
( 
TypeName 
= 
PropertyType '
.' (
Decimal_8_3( 3
)3 4
]4 5
public 
decimal 
Quantity 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
Disable 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Column	 
( 
TypeName 
= 
PropertyType '
.' (
Decimal_8_3( 3
)3 4
]4 5
public 
decimal 
QuantityLowWarning )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
[ 	
	MaxLength	 
( 
PropertyLength !
.! "
GenericShortName" 2
)2 3
]3 4
public 
string 
StockTypeId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
List 
< 
RegisterInStock #
># $
RegisterInStocks% 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public 
List 
< 
RegisterOutStock $
>$ %
RegisterOutStocks& 7
{8 9
get: =
;= >
set? B
;B C
}D E
}   
}!! »
HE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\Role.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
{ 
public		 

class		 
Role		 
:		 
Entity		 
<		 
Guid		 #
>		# $
{

 
[ 	
	MaxLength	 
( 
PropertyLength !
.! "
GenericName" -
)- .
]. /
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
Enums 
. 
UserType 
UserType &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
ICollection 
< 
UserRole #
># $
	UserRoles% .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
} 
} Î	
OE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\RegisterOut.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
{ 
public 

class 
RegisterOut 
: 
Entity %
<% &
Guid& *
>* +
{ 
public		 
int		 
Number		 
{		 
get		 
;		  
set		! $
;		$ %
}		& '
public

 
DateTime

 
?

 
	ApplyDate

 "
{

# $
get

% (
;

( )
set

* -
;

- .
}

/ 0
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Apply 
{ 
get 
;  
set! $
;$ %
}& '
public 
List 
< 
RegisterOutStock $
>$ %
RegisterOutStocks& 7
{8 9
get: =
;= >
set? B
;B C
}D E
} 
} ú
TE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\RegisterOutStock.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
{ 
public 

class 
RegisterOutStock !
:" #
	EntityMtM$ -
{		 
public

 
Guid

 
RegisterOutId

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
RegisterOut 
RegisterOut &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
Guid 
StockId 
{ 
get !
;! "
set# &
;& '
}( )
public 
Stock 
Stock 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Column	 
( 
TypeName 
= 
PropertyType '
.' (
Decimal_8_3( 3
)3 4
]4 5
public 
decimal 
Quantity 
{  !
get" %
;% &
set' *
;* +
}, -
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{ 	
if 
( 
obj 
== 
null 
) 
return #
false$ )
;) *
if 
( 
! 
( 
obj 
is 
RegisterOutStock )
)) *
)* +
return, 2
false3 8
;8 9
var 
ps 
= 
obj 
as 
RegisterOutStock ,
;, -
return 
( 
this 
. 
RegisterOutId &
==' )
ps* ,
., -
StockId- 4
)4 5
&&6 8
(9 :
this: >
.> ?
RegisterOutId? L
==M O
psP R
.R S
StockIdS Z
)Z [
;[ \
} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{ 	
return 
this 
. 
RegisterOutId %
.% &
GetHashCode& 1
(1 2
)2 3
+4 5
this6 :
.: ;
StockId; B
.B C
GetHashCodeC N
(N O
)O P
+Q R
$numS V
;V W
} 	
} 
} „
SE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\RegisterInStock.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
{ 
public 

class 
RegisterInStock  
:! "
	EntityMtM# ,
{		 
public

 
Guid

 
RegisterInId

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 

RegisterIn 

RegisterIn $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
Guid 
StockId 
{ 
get !
;! "
set# &
;& '
}( )
public 
Stock 
Stock 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Column	 
( 
TypeName 
= 
PropertyType '
.' (
Decimal_8_3( 3
)3 4
]4 5
public 
decimal 
Quantity 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Column	 
( 
TypeName 
= 
PropertyType '
.' (
Decimal_8_2( 3
)3 4
]4 5
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{ 	
if 
( 
obj 
== 
null 
) 
return #
false$ )
;) *
if 
( 
! 
( 
obj 
is 
RegisterInStock (
)( )
)) *
return+ 1
false2 7
;7 8
var 
ps 
= 
obj 
as 
RegisterInStock +
;+ ,
return 
( 
this 
. 
RegisterInId %
==& (
ps) +
.+ ,
StockId, 3
)3 4
&&5 7
(8 9
this9 =
.= >
RegisterInId> J
==K M
psN P
.P Q
StockIdQ X
)X Y
;Y Z
} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{ 	
return 
this 
. 
RegisterInId $
.$ %
GetHashCode% 0
(0 1
)1 2
+3 4
this5 9
.9 :
StockId: A
.A B
GetHashCodeB M
(M N
)N O
+P Q
$numR U
;U V
}   	
}!! 
}"" ª
NE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\RegisterIn.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
{ 
public 

class 

RegisterIn 
: 
Entity $
<$ %
Guid% )
>) *
{ 
public		 
int		 
Number		 
{		 
get		 
;		  
set		! $
;		$ %
}		& '
public

 
Guid

 

SupplierId

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
Supplier 
Supplier  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
Donation 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
? 
	ApplyDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Apply 
{ 
get 
;  
set! $
;$ %
}& '
public 
List 
< 
RegisterInStock #
># $
RegisterInStocks% 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
} 
} È
KE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\Manager.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
{ 
public 

class 
Manager 
: 
Entity !
<! "
Guid" &
>& '
{		 
[

 	
	MaxLength

	 
(

 
PropertyLength

 !
.

! "
	ImagePath

" +
)

+ ,
]

, -
public 
string 
	PhotoPath 
{  !
get" %
;% &
set' *
;* +
}, -
public 
Guid 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public 
User 
User 
{ 
get 
; 
set  #
;# $
}% &
} 
} ö
RE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\Enums\UserType.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
.$ %
Enums% *
{ 
public 

enum 
UserType 
{ 
[ 	
Description	 
( 

AslaveCare 
.  
Domain  &
.& '
Entities' /
./ 0
	Constants0 9
.9 :
UserType: B
.B C
MasterC I
)I J
]J K
Master 
= 
$num 
, 
[

 	
Description

	 
(

 

AslaveCare

 
.

  
Domain

  &
.

& '
Entities

' /
.

/ 0
	Constants

0 9
.

9 :
UserType

: B
.

B C
Manager

C J
)

J K
]

K L
Manager 
= 
$num 
, 
[ 	
Description	 
( 

AslaveCare 
.  
Domain  &
.& '
Entities' /
./ 0
	Constants0 9
.9 :
UserType: B
.B C
EmployeeC K
)K L
]L M
Employee 
= 
$num 
, 
} 
} ˝
SE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\Enums\StockType.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
.$ %
Enums% *
{ 
public 

enum 
	StockType 
{ 
[ 	
Description	 
( 
$str 
)  
]  !
Food 
, 
[

 	
Description

	 
(

 
$str

 
)

 
]

  
Hygiene 
, 
[ 	
Description	 
( 
$str 
) 
]  
Cleaning 
, 
[ 	
Description	 
( 
$str "
)" #
]# $
Medicine 
} 
} ∫
TE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\Enums\GenderType.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
.$ %
Enums% *
{ 
public 

enum 

GenderType 
{ 
Other 
, 
Female 
, 
Male 
} 
}		 Î
LE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\Employee.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
{ 
public 

class 
Employee 
: 
Entity "
<" #
Guid# '
>' (
{		 
[

 	
	MaxLength

	 
(

 
PropertyLength

 !
.

! "
	ImagePath

" +
)

+ ,
]

, -
public 
string 
	PhotoPath 
{  !
get" %
;% &
set' *
;* +
}, -
public 
Guid 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public 
User 
User 
{ 
get 
; 
set  #
;# $
}% &
} 
} µ
SE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\Core\IMtMEntity.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
.$ %
Core% )
{ 
public 

	interface 

IMtMEntity 
{ 
bool 
Equals 
( 
object 
obj 
) 
;  
int 
GetHashCode 
( 
) 
; 
} 
}		 ê
PE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\Core\IEntity.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
.$ %
Core% )
{ 
public 

	interface 
IEntity 
< 
TKey !
>! "
{ 
TKey 
Id 
{ 
get 
; 
set 
; 
} 
} 
} Ï
RE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\Core\EntityMtM.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
.$ %
Core% )
{ 
public 

abstract 
class 
	EntityMtM #
:$ %

IMtMEntity& 0
{ 
public 
abstract 
override  
bool! %
Equals& ,
(, -
object- 3
obj4 7
)7 8
;8 9
public 
abstract 
override  
int! $
GetHashCode% 0
(0 1
)1 2
;2 3
} 
}		 “

OE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\Core\Entity.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
.$ %
Core% )
{ 
public 

class 
Entity 
< 
TKey 
> 
: 
IEntity  '
<' (
TKey( ,
>, -
{ 
[		 	
Key			 
,		 
DatabaseGenerated		 
(		  #
DatabaseGeneratedOption		  7
.		7 8
Identity		8 @
)		@ A
]		A B
public

 
virtual

 
TKey

 
Id

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
DateTime 
CreationDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DateTime 
? 
DeletionDate %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DateTime 
? 
LastChangeDate '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} Ç	
VE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\Constants\UserType.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
.$ %
	Constants% .
{ 
public 

static 
class 
UserType  
{ 
public 
const 
string 
Master "
=# $
$str% -
;- .
public 
const 
string 
Manager #
=$ %
$str& /
;/ 0
public 
const 
string 
Employee $
=% &
$str' 1
;1 2
public 
const 
string 
All 
=  !
Master" (
+) *
$str+ .
+/ 0
Manager1 8
+9 :
$str; >
+? @
EmployeeA I
;I J
public		 
const		 
string		 
None		  
=		! "
$str		# )
;		) *
}

 
} é
ZE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\Constants\PropertyType.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
.$ %
	Constants% .
{ 
internal 
static 
class 
PropertyType &
{ 
public 
const 
string 
Decimal_8_2 '
=( )
$str* 9
;9 :
public 
const 
string 
Decimal_8_3 '
=( )
$str* 9
;9 :
} 
} ¨
\E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Entities\Constants\PropertyLength.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Entities $
.$ %
	Constants% .
{ 
internal 
static 
class 
PropertyLength (
{ 
internal 
const 
int 
CityId !
=" #
$num$ &
;& '
internal 
const 
int 
StateId "
=# $
$num% '
;' (
internal 
const 
int 
	CountryId $
=% &
$num' )
;) *
internal 
const 
int 
FullName #
=$ %
$num& (
;( )
internal		 
const		 
int		 
ConfirmationCode		 +
=		, -
$num		. /
;		/ 0
internal

 
const

 
int

 
GenericName

 &
=

' (
$num

) +
;

+ ,
internal 
const 
int 
GenericShortName +
=, -
$num. 0
;0 1
internal 
const 
int 
Description &
=' (
$num) ,
;, -
internal 
const 
int 
	ImagePath $
=% &
$num' *
;* +
internal 
const 
int 
PhoneNumber &
=' (
$num) +
;+ ,
internal 
const 
int 
Email  
=! "
$num# %
;% &
internal 
const 
int 
About  
=! "
$num# &
;& '
internal 
const 
int 
DocumentNumber )
=* +
$num, .
;. /
internal 
const 
int 
Address "
=# $
$num% (
;( )
internal 
const 
int 
Url 
=  
$num! $
;$ %
internal 
const 
int 
Observation &
=' (
$num) ,
;, -
internal 
const 
int !
WortTimeSerialization 0
=1 2
$num3 6
;6 7
} 
} ˘
UE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Constants\ConstantsGeneral.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
	Constants %
{ 
public 

class 
ConstantsGeneral !
{ 
public 
const 
int !
DEFAULT_INTERVAL_TIME .
=/ 0
$num1 3
;3 4
public 
const 
int 
DEFAULT_FILL_LENGHT ,
=- .
$num/ 1
;1 2
public		 
const		 
int		 $
CONFIRMATION_CODE_LENGTH		 1
=		2 3
$num		4 5
;		5 6
public 
const 
int #
PASSWORD_MINIMUN_LENGTH 0
=1 2
$num3 4
;4 5
} 
} “!
UE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Constants\ConstantMessages.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
	Constants %
{ 
public 

static 
class 
ConstantMessages (
{ 
public 
const 
string 
Date  
=! "
$str# /
;/ 0
public 
const 
string 
	ShortTime %
=& '
$str( 1
;1 2
public 
static 
string 
APPLICATION_NAME -
=>. 0
System1 7
.7 8
Environment8 C
.C D"
GetEnvironmentVariableD Z
(Z [
$str[ m
)m n
;n o
public 
static 
readonly 
string %+
INVALID_S3_BUCKET_CONFIGURATION& E
=F G
$str	H È
;
È Í
public 
static 
readonly 
string %
CRUD_DELETED& 2
=3 4
$str5 I
;I J
public 
static 
readonly 
string %
CRUD_CONFLICT& 3
=4 5
$str6 P
;P Q
public 
static 
readonly 
string %
CRUD_CREATE_FAIL& 6
=7 8
$str9 U
;U V
public 
static 
readonly 
string %
CRUD_UPDATE_FAIL& 6
=7 8
$str9 W
;W X
public 
static 
readonly 
string %
CRUD_EMAIL_CONFLICT& 9
=: ;
$str< c
;c d
public 
static 
readonly 
string %
CRUD_PHONE_CONFLICT& 9
=: ;
$str< p
;p q
public 
static 
readonly 
string %"
CRUD_INVALID_PARAMETER& <
== >
$str? m
;m n
public 
static 
readonly 
string %'
CRUD_USER_HAS_NO_VALIDATION& A
=B C
$strD W
;W X
public## 
static## 
string## !
SMS_CONFIRMATION_CODE## 2
=>##3 5
$"##6 8
$str##8 C
{##C D
APPLICATION_NAME##D T
}##T U
$str##U j
"##j k
;##k l
public$$ 
static$$ 
string$$ #
EMAIL_CONFIRMATION_CODE$$ 4
=>$$5 7
$"$$8 :
$str$$: E
{$$E F
APPLICATION_NAME$$F V
}$$V W
$str$$W l
"$$l m
;$$m n
public%% 
static%% 
string%% &
CONFIRMATION_CODE_IS_VALID%% 7
=>%%8 :
$"%%; =
$str%%= H
{%%H I
APPLICATION_NAME%%I Y
}%%Y Z
$str%%Z w
"%%w x
;%%x y
public'' 
static'' 
string'' )
MESSAGE_SMS_CONFIRMATION_CODE'' :
=>''; =
$str''> _
+''` a
$str((. v
+((w x
$")). 0
$str))0 <
{))< =
APPLICATION_NAME))= M
}))M N
$str))N O
"))O P
;))P Q
public// 
static// 
string// 6
*EMAIL_SUBJECT_VALIDATION_CODE_NOTIFICATION// G
=>//H J
$"//K M
$str//M h
{//h i
APPLICATION_NAME//i y
}//y z
$str//z {
"//{ |
;//| }
public00 
static00 
string00 >
2EMAIL_SUBJECT_CONFIRM_VALIDATION_CODE_NOTIFICATION00 O
=>00P R
$"00S U
$str00U e
{00e f
APPLICATION_NAME00f v
}00v w
$str00w x
"00x y
;00y z
public11 
static11 
string11 E
9EMAIL_SUBJECT_RESET_PASSWORD_VALIDATION_CODE_NOTIFICATION11 V
=>11W Y
$"11Z \
$str11\ p
{11p q
APPLICATION_NAME	11q Å
}
11Å Ç
$str
11Ç É
"
11É Ñ
;
11Ñ Ö
}44 
}55 Ñ
_E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Configurations\SigningConfigurations.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Configurations *
{		 
public

 

class

 !
SigningConfigurations

 &
{ 
private 
string 

KeyContent !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
SecurityKey 
Key 
{  
get! $
;$ %
}& '
public 
SigningCredentials !
SigningCredentials" 4
{5 6
get7 :
;: ;
}< =
public !
SigningConfigurations $
($ %
ILogger% ,
_logger- 4
)4 5
{ 	
try 
{ 

KeyContent 
= 
System #
.# $
Environment$ /
./ 0"
GetEnvironmentVariable0 F
(F G
$strG S
)S T
;T U
Key 
= 
new  
SymmetricSecurityKey .
(. /
Encoding/ 7
.7 8
ASCII8 =
.= >
GetBytes> F
(F G

KeyContentG Q
)Q R
)R S
;S T
SigningCredentials "
=# $
new% (
SigningCredentials) ;
(; <
Key 
, 
SecurityAlgorithms +
.+ ,
HmacSha256Signature, ?
)? @
;@ A
_logger 
. 
LogInformation &
(& '
string' -
.- .
Concat. 4
(4 5
$str5 I
.I J
FillJ N
(N O
$charO R
,R S
ConstantsGeneralT d
.d e
DEFAULT_FILL_LENGHTe x
)x y
,y z
$str	{ Ö
)
Ö Ü
)
Ü á
;
á à
} 
catch 
( 
	Exception 
ex 
)  
{ 
throw 
new  
ApplicationException .
(. /
ex/ 1
.1 2
Message2 9
)9 :
;: ;
} 
}   	
}!! 
}"" Ÿ
]E:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Configurations\TokenConfigurations.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Configurations *
{ 
public 

class 
TokenConfigurations $
{ 
public 
string 
Audience 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Issuer 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
int		  
RefreshTokenValidity		 '
{		( )
get		* -
;		- .
set		/ 2
;		2 3
}		4 5
public 
int 
AccessTokenValidity &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} ≠
dE:\src\pds\aslavecare\aslave-care-api\AslaveCare.Domain\Configurations\IntegrationsConfigurations.cs
	namespace 	

AslaveCare
 
. 
Domain 
. 
Configurations *
{ 
public 

static 
class $
IntegrationConfiguration 0
{ 
public 
static 
string 
SmsProvider (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} 