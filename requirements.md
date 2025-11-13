User
Field	Description	Type	Default	Other
user_id		UUID		PK
first_name		string		
last_name		string		
email		string		UNIQUE
password_hash		string		
phone_number		string		NULLABLE
role		enum		
created_at		timestamp		
Property
Field	Description	Type	Default	Other
property_id		UUID		PK
host_id		UUID		FK
name		string		
description		text		
location		string		
pricepernight		decimal		
created_at		timestamp		
updated_at		timestamp		
Booking
Field	Description	Type	Default	Other
booking_id		UUID		PK
property_id		UUID		FK
user_id		UUID		FK
start_date		date		
end_date		date		
total_price		decimal		
status		enum(pending)		
created_at		timestamp		
Payment
Field	Description	Type	Default	Other
payment_id		UUID		PK
booking_id		UUID		FK
amount		decimal		
payment_date		timestamp		
payment_method		enum(credit_card)		
Review
Field	Description	Type	Default	Other
review_id		UUID		PK
property_id		UUID		FK
user_id		UUID		FK
rating		int		
comment		text		
created_at		timestamp		
Message
Field	Description	Type	Default	Other
message_id		UUID		PK
sender_id		UUID		FK
recipient_id		UUID		FK
message_body		text		
sent_at		timestamp		
