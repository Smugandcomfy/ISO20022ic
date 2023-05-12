module {
	public type PartyType33Code = {
		#ACCP;
		#ACQR;
		#CISS;
		#DLIS;
		#ITAG;
		#MERC;
		#MTMG;
		#OPOI;
		#TAXH;
		#TMGT;
	};

	public type GenericIdentification176 = {
		Id : Text;
		Tp : ?PartyType33Code;
		Ctry : ?Text;
		Issr : ?PartyType33Code;
		ShrtNm : ?Text;
	};

	public type GeolocationGeographicCoordinates1 = {
		Lat : Text;
		Long : Text;
	};

	public type GeolocationUTMCoordinates1 = {
		UTMEstwrd : Text;
		UTMNrthwrd : Text;
		UTMZone : Text;
	};

	public type Geolocation1 = {
		GeogcCordints : ?GeolocationGeographicCoordinates1;
		UTMCordints : ?GeolocationUTMCoordinates1;
	};

	public type NetworkType1Code = {
		#IPNW;
		#PSTN;
	};

	public type NetworkParameters9 = {
		NtwkTp : NetworkType1Code;
		AdrVal : Text;
	};

	public type byte[] = {
	};

	public type NetworkParameters7 = {
		Adr : [NetworkParameters9];
		UsrNm : ?Text;
		AccsCd : ?[byte[]];

		SvrCertIdr : ?[byte[]];

		ClntCert : ?[byte[]];

		SvrCert : ?[byte[]];

		SctyPrfl : ?Text;
	};

	public type GenericIdentification177 = {
		Id : Text;
		Tp : ?PartyType33Code;
		Glctn : ?Geolocation1;
		Ctry : ?Text;
		Issr : ?PartyType33Code;
		ShrtNm : ?Text;
		RmotAccs : ?NetworkParameters7;
	};

	public type Traceability8 = {
		TracDtTmOut : Int;
		PrtcolNm : ?Text;
		RlayId : GenericIdentification177;
		PrtcolVrsn : ?Text;
		TracDtTmIn : Int;
	};

	public type MessageFunction42Code = {
		#AUTP;
		#AUTQ;
		#CCAK;
		#CCAP;
		#CCAQ;
		#CCAV;
		#CDDK;
		#CDDP;
		#CDDQ;
		#CDDR;
		#CMPK;
		#CMPV;
		#DCAV;
		#DCCP;
		#DCCQ;
		#DCRR;
		#DGNP;
		#DGNQ;
		#FAUP;
		#FAUQ;
		#FCMK;
		#FCMV;
		#FRVA;
		#FRVR;
		#NFRP;
		#NFRQ;
		#RCLP;
		#RCLQ;
		#RVRA;
		#RVRR;
		#TRNA;
		#TRNR;
		#TRPP;
		#TRPQ;
	};

	public type Header59 = {
		InitgPty : GenericIdentification176;
		Tracblt : ?[Traceability8];

		XchgId : Float;
		RcptPty : ?GenericIdentification177;
		ReTrnsmssnCntr : ?Text;
		CreDtTm : Int;
		PrtcolVrsn : Text;
		MsgFctn : MessageFunction42Code;
	};

	public type TransactionIdentifier1 = {
		TxRef : Text;
		TxDtTm : Int;
	};

	public type CardPaymentServiceType12Code = {
		#BALC;
		#CACT;
		#CAFH;
		#CAFL;
		#CAFT;
		#CAVR;
		#CIDD;
		#CRDP;
		#CSHD;
		#CSHW;
		#DEFR;
		#LOAD;
		#ORCR;
		#PINC;
		#QUCH;
		#RESA;
		#RFND;
		#UNLD;
		#VALC;
	};

	public type PartyType3Code = {
		#ACCP;
		#ACQR;
		#CISS;
		#DLIS;
		#ITAG;
		#MERC;
		#OPOI;
	};

	public type PartyType4Code = {
		#ACCP;
		#ACQR;
		#CISS;
		#ITAG;
		#MERC;
		#TAXH;
	};

	public type GenericIdentification32 = {
		Id : Text;
		Tp : ?PartyType3Code;
		Issr : ?PartyType4Code;
		ShrtNm : ?Text;
	};

	public type CardPaymentServiceType9Code = {
		#AGGR;
		#CSHB;
		#DCCV;
		#GRTT;
		#INSA;
		#INSI;
		#INST;
		#LOYT;
		#NRES;
		#NRFD;
		#PUCO;
		#RECP;
		#SOAF;
		#VCAU;
	};

	public type CardPaymentServiceType3Code = {
		#ARES;
		#FREC;
		#IRES;
		#PRES;
		#RREC;
		#URES;
	};

	public type PartyType14Code = {
		#ACCP;
		#ACQR;
		#CISS;
		#DLIS;
		#ICCA;
		#ITAG;
		#MERC;
		#OPOI;
	};

	public type GenericIdentification90 = {
		Id : ?Text;
		Tp : PartyType14Code;
		Ctry : ?Text;
		Issr : ?PartyType4Code;
		ShrtNm : ?Text;
	};

	public type Response9Code = {
		#APPR;
		#DECL;
		#PART;
		#SUSP;
		#TECH;
	};

	public type ResponseType10 = {
		RspnRsn : ?Text;
		Rspn : Response9Code;
		AddtlRspnInf : ?Text;
	};

	public type CardPaymentTransactionResult4 = {
		AuthstnNtty : ?GenericIdentification90;
		RspnToAuthstn : ResponseType10;
		AuthstnCd : ?Text;
	};

	public type CardDataReading8Code = {
		#BRCD;
		#CDFL;
		#CICC;
		#CTLS;
		#DFLE;
		#ECTL;
		#MGST;
		#OPTC;
		#PHYS;
		#QRCD;
		#SICC;
		#TAGC;
		#UNKW;
	};

	public type CardPaymentTransaction106 = {
		InitrTxId : ?Text;
		RcptTxId : ?Text;
		TxId : TransactionIdentifier1;
		TxTp : CardPaymentServiceType12Code;
		POIId : ?GenericIdentification32;
		SaleRefId : ?Text;
		AddtlSvc : ?[CardPaymentServiceType9Code];

		SvcAttr : ?CardPaymentServiceType3Code;
		TxRslt : ?CardPaymentTransactionResult4;
		CardDataNtryMd : ?CardDataReading8Code;
	};

	public type CardPaymentTransactionDetails34 = {
		Ccy : ?Text;
		VldtyDt : ?Int;
		ICCRltdData : ?[byte[]];

		TtlAmt : Float;
	};

	public type CardPaymentTransaction108 = {
		OrgnlTx : CardPaymentTransaction106;
		InitrTxId : ?Text;
		CardPrgrmmApld : ?Text;
		CstmrCnsnt : ?[Bool];

		RcptTxId : ?Text;
		TxId : TransactionIdentifier1;
		TxCaptr : ?Bool;
		SaleRefId : ?Text;
		MrchntCtgyCd : Text;
		AddtlTxData : ?[Text];

		RcncltnId : ?Text;
		CardPrgrmmPropsd : ?[Text];

		TxDtls : CardPaymentTransactionDetails34;
	};

	public type LocationCategory3Code = {
		#INDR;
		#IPMP;
		#MPMP;
		#MPOI;
		#MSLE;
		#SSLE;
		#VNDG;
	};

	public type OnLineCapability1Code = {
		#OFLN;
		#ONLN;
		#SMON;
	};

	public type CardholderVerificationCapability4Code = {
		#APKI;
		#CHDT;
		#FBIG;
		#FBIO;
		#FCPN;
		#FDSG;
		#FEPN;
		#MNSG;
		#MNVR;
		#NBIO;
		#NOVF;
		#NPIN;
		#OTHR;
		#PKIS;
		#SCEC;
	};

	public type OutputFormat1Code = {
		#HTML;
		#MREF;
		#TEXT;
	};

	public type UserInterface4Code = {
		#CDSP;
		#CRCP;
		#CRDO;
		#MDSP;
		#MRCP;
	};

	public type DisplayCapabilities4 = {
		AvlblFrmt : ?[OutputFormat1Code];

		AvlblLang : ?[Text];

		Dstn : [UserInterface4Code];
		LineWidth : ?Float;
		NbOfLines : ?Float;
	};

	public type PointOfInteractionCapabilities9 = {
		OnLineCpblties : ?OnLineCapability1Code;
		MxScrptLngth : ?Float;
		CardRdngCpblties : ?[CardDataReading8Code];

		PINLngthCpblties : ?Float;
		CrdhldrVrfctnCpblties : ?[CardholderVerificationCapability4Code];

		ApprvlCdLngth : ?Float;
		MsgCpblties : ?[DisplayCapabilities4];

		CardCaptrCpbl : ?Bool;
	};

	public type PointOfInteractionComponentIdentification2 = {
		Id : ?Text;
		SrlNb : ?Text;
		ItmNb : ?Text;
		PrvdrId : ?Text;
	};

	public type POIComponentType6Code = {
		#APLI;
		#APPR;
		#AQPP;
		#CONF;
		#CRTF;
		#DRVR;
		#DVCE;
		#EMVK;
		#EMVO;
		#LOGF;
		#MDFL;
		#MDWR;
		#MRPR;
		#OPST;
		#RPFL;
		#SACP;
		#SAPR;
		#SCPR;
		#SECM;
		#SERV;
		#SOFT;
		#TERM;
		#TLPR;
		#TMSP;
	};

	public type POIComponentStatus1Code = {
		#DACT;
		#OPER;
		#OUTD;
		#WAIT;
	};

	public type PointOfInteractionComponentStatus3 = {
		Sts : ?POIComponentStatus1Code;
		VrsnNb : ?Text;
		XpryDt : ?Int;
	};

	public type GenericIdentification48 = {
		Id : Text;
		Issr : Text;
		Vrsn : Text;
	};

	public type GenericInformation1 = {
		Nm : Text;
		Val : ?Text;
	};

	public type Algorithm25Code = {
		#ED22;
		#ED23;
		#ED25;
		#ED32;
		#ED33;
		#ED35;
		#ERS1;
		#ERS2;
		#ERS3;
		#ES22;
		#ES23;
		#ES25;
		#ES32;
		#ES33;
		#ES35;
		#RPSS;
	};

	public type Algorithm8Code = {
		#MGF1;
	};

	public type Algorithm11Code = {
		#HS01;
		#HS25;
		#HS38;
		#HS51;
	};

	public type Parameter5 = {
		DgstAlgo : ?Algorithm11Code;
	};

	public type AlgorithmIdentification12 = {
		Algo : Algorithm8Code;
		Param : ?Parameter5;
	};

	public type Algorithm16Code = {
		#HS01;
		#HS25;
		#HS38;
		#HS51;
		#SH31;
		#SH32;
		#SH33;
		#SH35;
		#SHK1;
		#SHK2;
	};

	public type Parameter15 = {
		SaltLngth : ?Float;
		OIDCrvNm : ?Text;
		TrlrFld : ?Float;
		MskGnrtrAlgo : ?AlgorithmIdentification12;
		DgstAlgo : ?Algorithm16Code;
	};

	public type AlgorithmIdentification30 = {
		Algo : Algorithm25Code;
		Param : ?Parameter15;
	};

	public type AttributeType1Code = {
		#CATT;
		#CNAT;
		#LATT;
		#OATT;
		#OUAT;
	};

	public type RelativeDistinguishedName1 = {
		AttrVal : Text;
		AttrTp : AttributeType1Code;
	};

	public type CertificateIssuer1 = {
		RltvDstngshdNm : [RelativeDistinguishedName1];
	};

	public type IssuerAndSerialNumber2 = {
		SrlNb : [byte[]];
		Issr : CertificateIssuer1;
	};

	public type KEKIdentifier2 = {
		SeqNb : ?Float;
		DerivtnId : ?[byte[]];

		KeyId : Text;
		KeyVrsn : Text;
	};

	public type Recipient9Choice = {
		IssrAndSrlNb : ?IssuerAndSerialNumber2;
		KeyIdr : ?KEKIdentifier2;
	};

	public type AlgorithmIdentification21 = {
		Algo : Algorithm16Code;
	};

	public type Signer5 = {
		Sgntr : [byte[]];
		SgndAttrbts : ?[GenericInformation1];

		Vrsn : ?Float;
		SgntrAlgo : AlgorithmIdentification30;
		SgnrId : ?Recipient9Choice;
		DgstAlgo : AlgorithmIdentification21;
	};

	public type ContentType2Code = {
		#AUTH;
		#DATA;
		#DGST;
		#EVLP;
		#SIGN;
	};

	public type EncapsulatedContent3 = {
		Cntt : ?[byte[]];

		CnttTp : ContentType2Code;
	};

	public type SignedData6 = {
		Cert : ?[byte[]];

		Sgnr : ?[Signer5];

		Vrsn : ?Float;
		NcpsltdCntt : ?EncapsulatedContent3;
		DgstAlgo : ?[AlgorithmIdentification21];

	};

	public type Algorithm24Code = {
		#DA12;
		#DA19;
		#DA25;
		#DKP9;
		#E36C;
		#E36R;
		#E3DC;
		#E3DR;
		#EA2C;
		#EA2R;
		#EA5C;
		#EA5R;
		#EA9C;
		#EA9R;
		#N108;
		#SD5C;
		#UKA1;
		#UKA2;
		#UKA3;
		#UKPT;
	};

	public type BytePadding1Code = {
		#LNGT;
		#NUL8;
		#NULG;
		#NULL;
		#RAND;
	};

	public type EncryptionFormat2Code = {
		#I238;
		#TR31;
		#TR34;
	};

	public type Parameter12 = {
		BPddg : ?BytePadding1Code;
		InitlstnVctr : ?[byte[]];

		NcrptnFrmt : ?EncryptionFormat2Code;
	};

	public type AlgorithmIdentification29 = {
		Algo : Algorithm24Code;
		Param : ?Parameter12;
	};

	public type KEK7 = {
		Vrsn : ?Float;
		KEKId : KEKIdentifier2;
		NcrptdKey : [byte[]];
		KeyNcrptnAlgo : AlgorithmIdentification29;
	};

	public type Algorithm7Code = {
		#ERSA;
		#RSAO;
	};

	public type Parameter9 = {
		DgstAlgo : ?Algorithm16Code;
	};

	public type AlgorithmIdentification18 = {
		Algo : Algorithm8Code;
		Param : ?Parameter9;
	};

	public type Parameter10 = {
		NcrptnFrmt : ?EncryptionFormat2Code;
		MskGnrtrAlgo : ?AlgorithmIdentification18;
		DgstAlgo : ?Algorithm16Code;
	};

	public type AlgorithmIdentification19 = {
		Algo : Algorithm7Code;
		Param : ?Parameter10;
	};

	public type KeyTransport7 = {
		RcptId : Recipient9Choice;
		Vrsn : ?Float;
		NcrptdKey : [byte[]];
		KeyNcrptnAlgo : AlgorithmIdentification19;
	};

	public type Recipient10Choice = {
		KEK : ?KEK7;
		KeyTrnsprt : ?KeyTransport7;
		KeyIdr : ?KEKIdentifier2;
	};

	public type Algorithm17Code = {
		#CCA1;
		#CCA2;
		#CCA3;
		#CM31;
		#CM32;
		#CM33;
		#CMA1;
		#CMA2;
		#CMA5;
		#CMA9;
		#MACC;
		#MCC1;
		#MCCS;
		#MCS3;
	};

	public type Parameter7 = {
		BPddg : ?BytePadding1Code;
		InitlstnVctr : ?[byte[]];

	};

	public type AlgorithmIdentification22 = {
		Algo : Algorithm17Code;
		Param : ?Parameter7;
	};

	public type AuthenticatedData7 = {
		MAC : [byte[]];
		Rcpt : [Recipient10Choice];
		Vrsn : ?Float;
		MACAlgo : AlgorithmIdentification22;
		NcpsltdCntt : EncapsulatedContent3;
	};

	public type DigestedData5 = {
		Dgst : [byte[]];
		Vrsn : ?Float;
		NcpsltdCntt : EncapsulatedContent3;
		DgstAlgo : AlgorithmIdentification21;
	};

	public type OriginatorInformation1 = {
		Cert : ?[byte[]];

	};

	public type EncryptedContent6 = {
		CnttTp : ContentType2Code;
		CnttNcrptnAlgo : ?AlgorithmIdentification29;
		NcrptdData : [byte[]];
	};

	public type EnvelopedData8 = {
		Rcpt : [Recipient10Choice];
		Vrsn : ?Float;
		OrgtrInf : ?OriginatorInformation1;
		NcrptdCntt : ?EncryptedContent6;
	};

	public type ContentInformationType26 = {
		SgndData : ?SignedData6;
		AuthntcdData : ?AuthenticatedData7;
		CnttTp : ContentType2Code;
		DgstdData : ?DigestedData5;
		EnvlpdData : ?EnvelopedData8;
	};

	public type ExternallyDefinedData2 = {
		Id : Text;
		Tp : ?Text;
		Val : ?[byte[]];

		PrtctdVal : ?ContentInformationType26;
	};

	public type PackageType2 = {
		OffsetStart : ?Float;
		PackgId : ?GenericIdentification176;
		PackgLngth : ?Float;
		OffsetEnd : ?Float;
		PackgBlck : ?[ExternallyDefinedData2];

	};

	public type POIComponentAssessment1Code = {
		#APPL;
		#CERT;
		#EVAL;
	};

	public type PointOfInteractionComponentAssessment1 = {
		Nb : Text;
		Tp : POIComponentAssessment1Code;
		XprtnDt : ?Int;
		DlvryDt : ?Int;
		Assgnr : [Text];
	};

	public type PartyType7Code = {
		#ACQR;
		#ITAG;
		#PCPT;
		#SALE;
		#TMGT;
	};

	public type POICommunicationType2Code = {
		#BLTH;
		#ETHR;
		#GPRS;
		#GSMF;
		#PSTN;
		#RS23;
		#USBD;
		#USBH;
		#WIFI;
		#WT2G;
		#WT3G;
		#WT4G;
		#WT5G;
	};

	public type PhysicalInterfaceParameter1 = {
		UsrNm : ?Text;
		AccsCd : ?[byte[]];

		IntrfcNm : Text;
		IntrfcTp : ?POICommunicationType2Code;
		AddtlParams : ?[byte[]];

		SctyPrfl : ?Text;
	};

	public type CommunicationCharacteristics5 = {
		RmotPty : [PartyType7Code];
		Params : ?NetworkParameters7;
		Actv : ?Bool;
		PhysIntrfc : ?PhysicalInterfaceParameter1;
		ComTp : POICommunicationType2Code;
	};

	public type MemoryUnit1Code = {
		#BYTE;
		#EXAB;
		#GIGA;
		#KILO;
		#MEGA;
		#PETA;
		#TERA;
	};

	public type MemoryCharacteristics1 = {
		Id : Text;
		Unit : MemoryUnit1Code;
		TtlSz : Float;
		FreeSz : Float;
	};

	public type CryptographicKeyType3Code = {
		#AES2;
		#AES5;
		#AES9;
		#DKP9;
		#EDE3;
		#EDE4;
	};

	public type KeyUsage1Code = {
		#DCPT;
		#DDEC;
		#DENC;
		#ENCR;
		#KEYD;
		#KEYG;
		#KEYI;
		#KEYX;
		#MACG;
		#MACV;
		#PIND;
		#PINE;
		#PINV;
		#SIGG;
		#SUGV;
		#TRNI;
		#TRNX;
	};

	public type CryptographicKey15 = {
		Id : Text;
		Nm : ?Text;
		Tp : ?CryptographicKeyType3Code;
		Fctn : ?[KeyUsage1Code];

		Vrsn : Text;
		ActvtnDt : ?Int;
		ItmNb : ?Text;
		KeyChckVal : ?[byte[]];

		AddtlId : ?[byte[]];

		KeyVal : ?ContentInformationType26;
		AddtlMgmtInf : ?[GenericInformation1];

		DeactvtnDt : ?Int;
		SctyPrfl : ?Text;
	};

	public type PointOfInteractionComponentCharacteristics7 = {
		Com : ?[CommunicationCharacteristics5];

		Mmry : ?[MemoryCharacteristics1];

		SctyAccsMdls : ?Float;
		SbcbrIdntyMdls : ?Float;
		SctyElmt : ?[CryptographicKey15];

	};

	public type PointOfInteractionComponent11 = {
		Id : PointOfInteractionComponentIdentification2;
		Tp : POIComponentType6Code;
		Sts : ?PointOfInteractionComponentStatus3;
		StdCmplc : ?[GenericIdentification48];

		Packg : ?[PackageType2];

		SubTpInf : ?Text;
		Assmnt : ?[PointOfInteractionComponentAssessment1];

		Chrtcs : ?PointOfInteractionComponentCharacteristics7;
	};

	public type PointOfInteraction11 = {
		Id : GenericIdentification177;
		SysNm : ?Text;
		GrpId : ?Text;
		TmZone : ?Text;
		TermnlIntgtn : ?LocationCategory3Code;
		Cpblties : ?PointOfInteractionCapabilities9;
		Cmpnt : ?[PointOfInteractionComponent11];

	};

	public type ContentInformationType28 = {
		CnttTp : ContentType2Code;
		EnvlpdData : EnvelopedData8;
	};

	public type Token1 = {
		PmtTkn : ?Text;
		TknAssrncMtd : ?Text;
		TknInittdInd : ?Bool;
		TknAssrncData : ?Text;
		TknRqstrId : ?Text;
		TknXpryDt : ?Text;
	};

	public type CustomerDevice3 = {
		Id : ?Text;
		Tp : ?Text;
		Prvdr : ?Text;
	};

	public type CardProductType1Code = {
		#COMM;
		#CONS;
	};

	public type PlainCardData15 = {
		PAN : Text;
		SvcCd : ?Text;
		FctvDt : ?Text;
		CardSeqNb : ?Text;
		Trck1 : ?Text;
		Trck2 : ?Text;
		Trck3 : ?Text;
		CrdhldrNm : ?Text;
		XpryDt : Text;
	};

	public type PaymentCard31 = {
		CardBrnd : ?Text;
		PrtctdCardData : ?ContentInformationType28;
		PrvtCardData : ?[byte[]];

		CardCcyCd : ?Text;
		IntrnlCard : ?Bool;
		PmtAcctRef : ?Text;
		IssrBIN : ?Text;
		MskdPAN : ?Text;
		CardPdctSubTp : ?Text;
		AllwdPdct : ?[Text];

		CardPdctPrfl : ?Text;
		CardPdctTp : ?CardProductType1Code;
		CardCtryCd : ?Text;
		SvcOptn : ?Text;
		AddtlCardData : ?Text;
		PlainCardData : ?PlainCardData15;
	};

	public type TrackFormat1Code = {
		#AAMV;
		#CMC7;
		#E13B;
		#ISOF;
		#JIS1;
		#JIS2;
	};

	public type TrackData2 = {
		TrckNb : ?Float;
		TrckVal : Text;
		TrckFrmt : ?TrackFormat1Code;
	};

	public type CheckType1Code = {
		#BANK;
		#BUSI;
		#GOVC;
		#PAYR;
		#PERS;
	};

	public type Check1 = {
		ChckTrckData2 : ?TrackData2;
		BkId : ?Text;
		Ctry : ?Text;
		AcctNb : ?Text;
		ChckCardNb : ?Text;
		ChckNb : ?Text;
		ChckTp : ?CheckType1Code;
	};

	public type PaymentTokenIdentifiers1 = {
		RqstrId : Text;
		PrvdrId : Text;
	};

	public type MerchantToken1 = {
		Tkn : ?Text;
		TknAssrncLvl : ?Float;
		TknAssrncMtd : ?Text;
		TknInittdInd : ?Bool;
		TknRqstr : ?PaymentTokenIdentifiers1;
		TknAssrncData : ?[byte[]];

		TknXpryDt : ?Text;
		TknChrtc : ?[Text];

	};

	public type DateAndPlaceOfBirth1 = {
		CityOfBirth : Text;
		PrvcOfBirth : ?Text;
		BirthDt : Int;
		CtryOfBirth : Text;
	};

	public type GenericIdentification4 = {
		Id : Text;
		IdTp : Text;
	};

	public type PersonIdentification15 = {
		IdntyCardNb : ?Text;
		DrvrLicLctn : ?Text;
		DrvrId : ?Text;
		Dept : ?Text;
		DtAndPlcOfBirth : ?DateAndPlaceOfBirth1;
		Othr : ?[GenericIdentification4];

		MplyrIdNb : ?Text;
		DrvrLicNb : ?Text;
		DrvrLicNm : ?Text;
		PsptNb : ?Text;
		SclSctyNb : ?Text;
		MplyeeIdNb : ?Text;
		EmailAdr : ?Text;
		TaxIdNb : ?Text;
		AlnRegnNb : ?Text;
		JobNb : ?Text;
		CstmrNb : ?Text;
	};

	public type PINFormat3Code = {
		#ISO0;
		#ISO1;
		#ISO2;
		#ISO3;
		#ISO4;
		#ISO5;
	};

	public type OnLinePIN8 = {
		PINFrmt : PINFormat3Code;
		NcrptdPINBlck : ContentInformationType28;
		AddtlInpt : ?Text;
	};

	public type AddressVerification1 = {
		AdrDgts : ?Text;
		PstlCdDgts : ?Text;
	};

	public type Exemption1Code = {
		#LOWA;
		#MINT;
		#PKGE;
		#RECP;
		#SCAD;
		#SCPE;
		#TMBE;
		#TRAE;
	};

	public type AuthenticationMethod8Code = {
		#ADDB;
		#ADDS;
		#BIOM;
		#BYPS;
		#CDHI;
		#CPSG;
		#CRYP;
		#CSCV;
		#CSEC;
		#FPIN;
		#MANU;
		#MERC;
		#MOBL;
		#NPIN;
		#OTHR;
		#PPSG;
		#PSVE;
		#PSWD;
		#SCNL;
		#SCRT;
		#SNCT;
		#TOKA;
		#TOKN;
		#TOKP;
		#UKNW;
	};

	public type AuthenticationResult1Code = {
		#AUTH;
		#CARD;
		#CRPT;
		#DENY;
		#MRCH;
		#UCRP;
	};

	public type CardholderAuthentication14 = {
		AuthntcnTp : ?Text;
		CrdhldrOnLinePIN : ?OnLinePIN8;
		PrtctdAuthntcnVal : ?ContentInformationType28;
		AuthntcnAddtlInf : ?ExternallyDefinedData2;
		AdrVrfctn : ?AddressVerification1;
		AuthntcnXmptn : ?Exemption1Code;
		CrdhldrId : ?PersonIdentification15;
		AuthntcnLvl : ?Text;
		AuthntcnMtd : ?AuthenticationMethod8Code;
		AuthntcnVal : ?[byte[]];

		AuthntcnRslt : ?AuthenticationResult1Code;
	};

	public type CardDataReading5Code = {
		#BRCD;
		#CDFL;
		#CICC;
		#CTLS;
		#DFLE;
		#ECTL;
		#MGST;
		#PHYS;
		#TAGC;
	};

	public type PlainCardData17 = {
		PAN : ?Text;
		NtryMd : ?CardDataReading5Code;
		Trck1 : ?Text;
		Trck2 : ?Text;
		Trck3 : ?Text;
		AddtlCardData : ?[Text];

	};

	public type Vehicle2 = {
		Tp : ?Text;
		Data : Text;
		NtryMd : ?CardDataReading5Code;
	};

	public type Vehicle1 = {
		RplcmntCar : ?Bool;
		TrlrNb : ?Text;
		VhclNb : ?Text;
		MntncId : ?Text;
		UnitNb : ?Text;
		TrlrHrs : ?Text;
		Hbmtr : ?Float;
		RefrHrs : ?Text;
		Odmtr : ?Float;
		DrvrOrVhclCard : ?PlainCardData17;
		VhclTag : ?Text;
		AddtlVhclData : ?[Vehicle2];

		VhclTagNtryMd : ?CardDataReading5Code;
	};

	public type AuthenticationMethod6Code = {
		#ADDB;
		#ADDS;
		#BIOM;
		#CDHI;
		#CPSG;
		#CRYP;
		#CSCV;
		#CSEC;
		#FPIN;
		#MANU;
		#NPIN;
		#PPSG;
		#PSVE;
		#PSWD;
		#SCNL;
		#SCRT;
		#SNCT;
		#TOKP;
	};

	public type Verification1Code = {
		#ERRR;
		#FAIL;
		#MISS;
		#NOVF;
		#PART;
		#SUCC;
	};

	public type AuthenticationEntity2Code = {
		#ACQR;
		#AGNT;
		#ICCD;
		#ISSR;
		#MERC;
		#TRML;
	};

	public type TransactionVerificationResult4 = {
		Mtd : AuthenticationMethod6Code;
		Rslt : ?Verification1Code;
		VrfctnNtty : ?AuthenticationEntity2Code;
		AddtlRslt : ?Text;
	};

	public type AddressType2Code = {
		#ADDR;
		#BIZZ;
		#DLVY;
		#HOME;
		#MLTO;
		#PBOX;
	};

	public type PostalAddress22 = {
		Dept : ?Text;
		StrtNm : ?Text;
		PstCd : ?Text;
		AdrLine : ?[Text];

		TwnNm : ?Text;
		AdrTp : ?AddressType2Code;
		CtrySubDvsn : ?[Text];

		BldgNb : ?Text;
		SubDept : ?Text;
		CtryCd : ?Text;
	};

	public type SensitiveMobileData1 = {
		IMEI : ?Text;
		IMSI : ?Text;
		MSISDN : Text;
	};

	public type MobileData3 = {
		MobCtryCd : ?Text;
		Glctn : ?Geolocation1;
		PrtctdMobData : ?ContentInformationType28;
		MobMskdMSISDN : ?Text;
		MobNtwkCd : ?Text;
		SnstvMobData : ?SensitiveMobileData1;
	};

	public type Cardholder17 = {
		Id : ?PersonIdentification15;
		Nm : ?Text;
		Authntcn : ?[CardholderAuthentication14];

		Lang : ?Text;
		Vhcl : ?Vehicle1;
		TxVrfctnRslt : ?[TransactionVerificationResult4];

		BllgAdr : ?PostalAddress22;
		PrsnlData : ?Text;
		MobData : ?[MobileData3];

		TripNb : ?Text;
		ShppgAdr : ?PostalAddress22;
	};

	public type CardIdentificationType1Code = {
		#ACCT;
		#BARC;
		#CPAN;
		#ISO2;
		#PHON;
		#PRIV;
		#UUID;
	};

	public type StoredValueAccountType1Code = {
		#BNKA;
		#CARD;
		#CPYA;
		#CWVC;
		#ELMY;
		#GCER;
		#GIFT;
		#MERC;
		#MLVC;
		#OLVC;
		#OTHR;
		#PHON;
		#TRVL;
	};

	public type StoredValueAccount2 = {
		Id : ?Text;
		Bal : ?Float;
		Ccy : ?Text;
		Brnd : ?Text;
		IdTp : ?CardIdentificationType1Code;
		AcctTp : ?StoredValueAccountType1Code;
		NtryMd : ?CardDataReading8Code;
		Prvdr : ?Text;
		OwnrNm : ?Text;
		XpryDt : ?Text;
	};

	public type Acquirer10 = {
		Id : ?GenericIdentification177;
		ParamsVrsn : ?Text;
	};

	public type CommunicationAddress9 = {
		Email : ?Text;
		PstlAdr : ?PostalAddress22;
		CstmrSvc : ?Text;
		Phne : ?Text;
		URLAdr : ?Text;
		AddtlCtctInf : ?Text;
	};

	public type LocationCategory4Code = {
		#ABRD;
		#FIXD;
		#NMDC;
		#VIRT;
	};

	public type Organisation41 = {
		Id : ?GenericIdentification32;
		LctnAndCtct : ?CommunicationAddress9;
		SchmeData : ?Text;
		CmonNm : ?Text;
		LctnCtgy : ?LocationCategory4Code;
	};

	public type AmountUnit1Code = {
		#MONE;
		#POIN;
	};

	public type LoyaltyAccount2 = {
		Bal : ?Float;
		Ccy : ?Text;
		Brnd : ?Text;
		IdTp : ?CardIdentificationType1Code;
		Unit : ?AmountUnit1Code;
		NtryMd : ?CardDataReading8Code;
		Prvdr : ?Text;
		OwnrNm : ?Text;
		LltyId : ?Text;
	};

	public type SaleCapabilities1Code = {
		#CHDI;
		#CHER;
		#CHIN;
		#CHST;
		#CUAS;
		#CUDI;
		#CUER;
		#CUIN;
		#POIR;
		#PRDC;
		#PRRP;
		#PRVC;
	};

	public type LoyaltyHandling1Code = {
		#ALLO;
		#DENY;
		#PRCS;
		#PROP;
		#REQU;
	};

	public type RetailerSaleEnvironment2 = {
		Ccy : ?Text;
		MaxCshBckAmt : ?Float;
		SaleCpblties : ?[SaleCapabilities1Code];

		DbtPrefrdFlg : ?Bool;
		MinSpltAmt : ?Float;
		MinAmtToDlvr : ?Float;
		LltyHdlg : ?LoyaltyHandling1Code;
	};

	public type CardPaymentEnvironment77 = {
		POI : ?PointOfInteraction11;
		PrtctdCrdhldrData : ?ContentInformationType28;
		PmtTkn : ?Token1;
		CstmrDvc : ?CustomerDevice3;
		Card : ?PaymentCard31;
		Chck : ?Check1;
		MrchntTkn : ?MerchantToken1;
		Wllt : ?CustomerDevice3;
		Crdhldr : ?Cardholder17;
		StordValAcct : ?[StoredValueAccount2];

		Acqrr : ?Acquirer10;
		Mrchnt : ?Organisation41;
		LltyAcct : ?[LoyaltyAccount2];

		SaleEnvt : ?RetailerSaleEnvironment2;
	};

	public type MandateRelatedInformation13 = {
		MndtImg : ?[byte[]];

		MndtId : Text;
		DtOfSgntr : ?Int;
	};

	public type GenericIdentification36 = {
		Id : Text;
		Issr : Text;
		SchmeNm : ?Text;
	};

	public type PostalAddress2 = {
		Ctry : Text;
		StrtNm : ?Text;
		TwnNm : Text;
		CtrySubDvsn : ?Text;
		PstCdId : Text;
	};

	public type NameAndAddress6 = {
		Nm : Text;
		Adr : PostalAddress2;
	};

	public type PartyIdentification178Choice = {
		AnyBIC : ?Text;
		PrtryId : ?GenericIdentification36;
		NmAndAdr : ?NameAndAddress6;
	};

	public type Creditor4 = {
		Cdtr : PartyIdentification178Choice;
		RegnId : ?Text;
	};

	public type SimpleIdentificationInformation4 = {
		Id : Text;
	};

	public type CashAccountIdentification7Choice = {
		BBAN : ?Text;
		IBAN : ?Text;
		UPIC : ?Text;
		DmstAcct : ?SimpleIdentificationInformation4;
	};

	public type Debtor4 = {
		Dbtr : ?PartyIdentification178Choice;
		AcctId : ?CashAccountIdentification7Choice;
	};

	public type CardDirectDebit2 = {
		MndtRltdInf : MandateRelatedInformation13;
		CdtrId : Creditor4;
		DbtrId : ?Debtor4;
	};

	public type SupportedPaymentOption1Code = {
		#MSRV;
		#PART;
	};

	public type TransactionChannel5Code = {
		#ECOM;
		#MAIL;
		#MOBL;
		#MPOS;
		#SECM;
		#TLPH;
		#TVPY;
	};

	public type AttendanceContext1Code = {
		#ATTD;
		#SATT;
		#UATT;
	};

	public type CardFallback1Code = {
		#FFLB;
		#NFLB;
		#SFLB;
	};

	public type TransactionEnvironment1Code = {
		#MERC;
		#PRIV;
		#PUBL;
	};

	public type PaymentContext27 = {
		CardPres : ?Bool;
		AttndntLang : ?Text;
		SpprtdOptn : ?[SupportedPaymentOption1Code];

		CrdhldrPres : ?Bool;
		TxChanl : ?TransactionChannel5Code;
		AttndncCntxt : ?AttendanceContext1Code;
		OnLineCntxt : ?Bool;
		FllbckInd : ?CardFallback1Code;
		AttndntMsgCpbl : ?Bool;
		TxEnvt : ?TransactionEnvironment1Code;
		CardDataNtryMd : ?CardDataReading8Code;
	};

	public type SaleTokenScope1Code = {
		#MULT;
		#SNGL;
	};

	public type Organisation26 = {
		Adr : ?Text;
		RegdIdr : Text;
		MrchntCtgyCd : Text;
		CmonNm : Text;
		CtryCd : Text;
	};

	public type SaleContext4 = {
		PurchsOrdrNb : ?Text;
		CshrLang : ?[Text];

		DlvryNoteNb : ?Text;
		CshrId : ?Text;
		SaleTknScp : ?SaleTokenScope1Code;
		SaleId : ?Text;
		ShftNb : ?Text;
		SaleRcncltnId : ?Text;
		SaleRefNb : ?Text;
		SpnsrdMrchnt : ?[Organisation26];

		RmngAmt : ?Float;
		ReuseCardDataFlg : ?Bool;
		AddtlSaleData : ?Text;
		SpltPmt : ?Bool;
		CstmrOrdrReqFlg : ?Bool;
		InvcNb : ?Text;
		ForceOnlnFlg : ?Bool;
		AllwdNtryMd : ?[CardDataReading8Code];

	};

	public type CardPaymentContext28 = {
		DrctDbtCntxt : ?CardDirectDebit2;
		PmtCntxt : ?PaymentContext27;
		SaleCntxt : ?SaleContext4;
	};

	public type AcceptorCancellationRequest10 = {
		Tx : CardPaymentTransaction108;
		Envt : CardPaymentEnvironment77;
		Cntxt : CardPaymentContext28;
	};

	public type ContentInformationType27 = {
		AuthntcdData : AuthenticatedData7;
		CnttTp : ContentType2Code;
	};

	public type AcceptorCancellationRequestV10 = {
		Hdr : Header59;
		CxlReq : AcceptorCancellationRequest10;
		SctyTrlr : ?ContentInformationType27;
	};

}