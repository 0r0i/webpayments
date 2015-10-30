@startuml
Autonumber

Participant "Payee (Merchant) PSP" as MPSP
Participant "Payee (Merchant) Site" as Payee
Actor "Payer (Shopper) Browser" as Payer
Participant "Browser Payment Agent/Wallet" as UA
Participant "Payer (Shopper) PSP Wallet [aka Issuer Wallet]" as CPSP

note over Payee, Payer: HTTPS

title Legacy Merchant Hosted Card Payment (CG Proposal)

Payee->Payer: Basket Page with Pay Button


Payer->UA: Select Payment Instrument

UA-\MPSP: Auth
Note right 
	Auth goes direct from Browser to Payee's nominated PSP (see
	https://web-payments.org/specs/source/web-payments-api/#payment-flow-overview
	6.1)
End note

MPSP-/UA: Auth Response

UA->Payee: Auth Response
Payee->Payer: Result Page

@enduml
