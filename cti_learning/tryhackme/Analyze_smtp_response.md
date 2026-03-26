Display Filter Reference: Simple Mail Transfer Protocol
Protocol field name: smtp

Versions: 1.0.0 to 4.6.4

Back to Display Filter Reference


Field name | 	Description	| Type | 	Versions
|----------|----------------|------|-----------
smtp.auth.password |	Password | Character string |	1.10.0 to 4.6.4
smtp.auth.username |	Username |	Character string |	1.10.0 to 4.6.4
smtp.auth.username_password |	Username/Password |	Character string	| 2.0.1 to 4.6.4
smtp.base64_decode |	base64 decode failed or is not enabled (check SMTP preferences) |	Label |	2.0.1 to 4.6.4
smtp.command_line |	Command Line |	Character string |	1.8.0 to 4.6.4
smtp.data.fragment |	DATA fragment |	Frame number |	1.0.0 to 4.6.4
smtp.data.fragment.count |	DATA fragment count	| Unsigned integer (32 bits) |	1.6.0 to 4.6.4
smtp.data.fragment.error |	DATA defragmentation error |	Frame number	| 1.0.0 to 4.6.4
smtp.data.fragment.multiple_tails |	DATA has multiple tail fragments |	Boolean	| 1.0.0 to 4.6.4
smtp.data.fragment.overlap |	DATA fragment overlap |	Boolean	|1.0.0 to 4.6.4
smtp.data.fragment.overlap.conflicts |	DATA fragment overlapping with conflicting data |	Boolean	| 1.0.0 to 4.6.4
smtp.data.fragment.too_long_fragment|	DATA fragment too long|	Boolean	| 1.0.0 to 4.6.4
smtp.data.fragments	| DATA fragments |	Label |	1.0.0 to 4.6.4
smtp.data.reassembled.in |	Reassembled DATA in frame |	Frame number |	1.0.0 to 4.6.4
smtp.data.reassembled.length|	Reassembled DATA length |	Unsigned integer (32 bits)	| 1.4.0 to 4.6.4
smtp.eom |	EOM |	Label |	2.0.0 to 4.6.4
smtp.message |	Message |	Character string |	1.8.0 to 4.6.4
smtp.req	| Request	| Boolean |	1.0.0 to 4.6.4
smtp.req.command |	Command |	Character string |	1.0.0 to 4.6.4
smtp.req.parameter |	Request parameter |	Character string |	1.0.0 to 4.6.4
smtp.response |	Response |	Character string |	1.8.0 to 4.6.4
smtp.response.code |	Response code |	Unsigned integer (32 bits)	| 1.0.0 to 4.6.4
smtp.response.code.unexpected |	Unexpected response code in multiline response |	Label |	3.2.0 to 4.6.4
smtp.rsp |	Response |	Boolean |	1.0.0 to 4.6.4
smtp.rsp.parameter |	Response parameter |	Character string |	1.0.0 to 4.6.4
