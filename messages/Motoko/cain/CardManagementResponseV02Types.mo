module {
	public type PartyType17Code = {
		#ACQP;
		#ACQR;
		#AGNT;
		#CISP;
		#CISS;
		#OTHN;
		#OTHP;
	};

	public type PartyType18Code = {
		#ACQR;
		#AGNT;
		#CISS;
		#CSCH;
	};

	public type GenericIdentification183 = {
		Id : Text;
		Tp : ?PartyType17Code;
		Ctry : ?Text;
		ShrtNm : ?Text;
		Assgnr : ?PartyType18Code;
		OthrTp : ?Text;
	};

	public type AdditionalData1 = {
		Tp : ?Text;
		Val : ?Text;
	};

	public type Traceability9 = {
		TracDtTmOut : ?Int;
		RlayId : GenericIdentification183;
		TracDtTmIn : ?Int;
	};

	public type byte[] = {
	};

	public type BatchManagementInformation1 = {
		MsgChcksmInptVal : ?[byte[]];

		MsgSeqNb : ?Text;
		BtchId : Text;
		ColltnId : ?Text;
	};

	public type MessageFunction17Code = {
		#ADVC;
		#NOTI;
		#REQU;
	};

	public type Header60 = {
		InitgPty : GenericIdentification183;
		TracData : ?[AdditionalData1];

		Tracblt : ?[Traceability9];

		XchgId : ?Text;
		RcptPty : ?GenericIdentification183;
		ReTrnsmssnCntr : ?Text;
		CreDtTm : Int;
		PrtcolVrsn : Text;
		BtchMgmtInf : ?BatchManagementInformation1;
		MsgFctn : MessageFunction17Code;
	};

	public type Amount15 = {
		Amt : Float;
		Ccy : ?Text;
		FctvXchgRate : ?Float;
		ConvsDt : ?Int;
		ConvsTm : ?Int;
	};

	public type LifeCycleSupport1Code = {
		#AUTH;
		#FINC;
	};

	public type TransactionLifeCycleIdentification1 = {
		Id : Text;
		PresntmntSeqNb : ?Text;
		PresntmntSeqCnt : ?Text;
		AuthntcnTkn : ?Text;
		AuthstnSeqNb : ?Text;
	};

	public type MessageClass1Code = {
		#ADDE;
		#AMDT;
		#AUTH;
		#CBCK;
		#CMGT;
		#FEEC;
		#FINL;
		#INQY;
		#VERI;
	};

	public type MessageFunction16Code = {
		#ADVC;
		#CAAD;
		#CANO;
		#NOTI;
		#REQU;
	};

	public type OriginalDataElements2 = {
		LclDt : ?Int;
		LclTm : ?Int;
		TxTp : ?Text;
		AcqrrRefNb : ?Text;
		AcqrrRefData : ?Text;
		CardIssrRefData : ?Text;
		LifeCyclSpprt : ?LifeCycleSupport1Code;
		RtrvlRefNb : ?Text;
		AcqrrId : ?Text;
		TmZone : ?Text;
		TxRef : ?Text;
		LifeCyclTracIdData : ?TransactionLifeCycleIdentification1;
		SndrId : ?Text;
		TrnsmssnDtTm : ?Int;
		LifeCyclTracIdMssng : ?Text;
		MsgClss : ?MessageClass1Code;
		MsgFctn : ?MessageFunction16Code;
		SysTracAudtNb : ?Text;
	};

	public type TransactionIdentification51 = {
		LclDt : ?Int;
		LclTm : ?Int;
		AcqrrRefNb : ?Text;
		AcqrrRefData : ?Text;
		OrgnlDataElmts : ?OriginalDataElements2;
		CardIssrRefData : ?Text;
		LifeCyclSpprt : ?LifeCycleSupport1Code;
		RtrvlRefNb : Text;
		TmZone : ?Text;
		TxRef : ?Text;
		LifeCyclTracIdData : ?TransactionLifeCycleIdentification1;
		TrnsmssnDtTm : ?Int;
		LifeCyclTracIdMssng : ?Text;
		SysTracAudtNb : Text;
	};

	public type CreditDebit3Code = {
		#CRDT;
		#DBIT;
	};

	public type Amount17 = {
		Amt : Float;
		Ccy : ?Text;
		CdtDbt : ?CreditDebit3Code;
	};

	public type AdditionalAmounts3 = {
		Tp : Text;
		Amt : Amount17;
		Desc : ?Text;
		OthrTp : ?Text;
		AddtlData : ?[AdditionalData1];

	};

	public type TypeOfAmount21Code = {
		#CSIF;
		#FEEA;
		#FEEP;
		#INTC;
		#MNIF;
		#MXIF;
		#OTHN;
		#OTHP;
	};

	public type FeeAmount3 = {
		Amt : Float;
		Ccy : ?Text;
		FctvXchgRate : ?Float;
		CdtDbt : ?CreditDebit3Code;
		ConvsDt : ?Int;
		ConvsTm : ?Int;
	};

	public type AdditionalFee2 = {
		Tp : TypeOfAmount21Code;
		FeePrgm : ?Text;
		Desc : ?Text;
		FeeAmt : FeeAmount3;
		OthrTp : ?Text;
		FeeDscrptr : ?Text;
		AddtlData : ?[AdditionalData1];

		FeeRcncltnAmt : ?FeeAmount3;
	};

	public type AdditionalServiceType2Code = {
		#BALC;
		#CACT;
		#CSHB;
		#DCCV;
		#INTP;
		#INTT;
		#LOYT;
		#OTHN;
		#OTHP;
		#PRST;
	};

	public type AdditionalServiceResult1Code = {
		#NOPF;
		#NOSP;
		#OTHN;
		#OTHP;
		#PERF;
	};

	public type AdditionalService2 = {
		Tp : AdditionalServiceType2Code;
		Rslt : ?AdditionalServiceResult1Code;
		SvcDtl : ?[AdditionalData1];

		OthrTp : ?Text;
		OthrRslt : ?Text;
	};

	public type Transaction153 = {
		RcncltnAmt : ?Amount15;
		TxId : TransactionIdentification51;
		TxTp : Text;
		TxSubTp : ?Text;
		AddtlAmt : ?[AdditionalAmounts3];

		AddtlFee : ?[AdditionalFee2];

		AddtlSvc : ?[AdditionalService2];

		AddtlData : ?[AdditionalData1];

	};

	public type ContentType3Code = {
		#EVLP;
		#IFSE;
	};

	public type KEKIdentifier6 = {
		SeqNb : ?Float;
		DerivtnId : ?[byte[]];

		KeyId : Text;
		KeyVrsn : ?Text;
	};

	public type Algorithm13Code = {
		#DKP9;
		#E3DC;
		#EA2C;
		#EA5C;
		#EA9C;
		#UKA1;
		#UKPT;
	};

	public type BytePadding1Code = {
		#LNGT;
		#NUL8;
		#NULG;
		#NULL;
		#RAND;
	};

	public type EncryptionFormat3Code = {
		#CBCE;
		#CTCE;
		#TR31;
		#TR34;
	};

	public type Parameter14 = {
		BPddg : ?BytePadding1Code;
		InitlstnVctr : ?[byte[]];

		NcrptnFrmt : ?EncryptionFormat3Code;
	};

	public type AlgorithmIdentification28 = {
		Algo : Algorithm13Code;
		Param : ?Parameter14;
	};

	public type KEK6 = {
		Vrsn : ?Float;
		KEKId : KEKIdentifier6;
		NcrptdKey : ?[byte[]];

		KeyNcrptnAlgo : AlgorithmIdentification28;
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

	public type IssuerAndSerialNumber1 = {
		SrlNb : [byte[]];
		Issr : CertificateIssuer1;
	};

	public type KEKIdentifier2 = {
		SeqNb : ?Float;
		DerivtnId : ?[byte[]];

		KeyId : Text;
		KeyVrsn : Text;
	};

	public type Recipient5Choice = {
		IssrAndSrlNb : ?IssuerAndSerialNumber1;
		KeyIdr : ?KEKIdentifier2;
	};

	public type Algorithm7Code = {
		#ERSA;
		#RSAO;
	};

	public type Algorithm8Code = {
		#MGF1;
	};

	public type Algorithm5Code = {
		#HS25;
		#HS38;
		#HS51;
	};

	public type AlgorithmIdentification26 = {
		Algo : Algorithm8Code;
		Param : ?Algorithm5Code;
	};

	public type Algorithm20Code = {
		#HS25;
		#HS38;
		#HS51;
	};

	public type Parameter13 = {
		MskGnrtrAlgo : ?AlgorithmIdentification26;
		DgstAlgo : ?Algorithm20Code;
	};

	public type AlgorithmIdentification27 = {
		Algo : Algorithm7Code;
		Param : ?Parameter13;
	};

	public type KeyTransport6 = {
		RcptId : Recipient5Choice;
		Vrsn : ?Float;
		NcrptdKey : [byte[]];
		KeyNcrptnAlgo : AlgorithmIdentification27;
	};

	public type Recipient7Choice = {
		KEK : ?KEK6;
		KeyTrnsprt : ?KeyTransport6;
		KeyIdr : ?KEKIdentifier6;
	};

	public type ContentType2Code = {
		#AUTH;
		#DATA;
		#DGST;
		#EVLP;
		#SIGN;
	};

	public type Algorithm23Code = {
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
		#SD5C;
	};

	public type Parameter7 = {
		BPddg : ?BytePadding1Code;
		InitlstnVctr : ?[byte[]];

	};

	public type AlgorithmIdentification25 = {
		Algo : Algorithm23Code;
		Param : ?Parameter7;
	};

	public type EncryptedDataFormat1Code = {
		#ASCI;
		#BINF;
		#EBCD;
		#HEXF;
		#OTHN;
		#OTHP;
	};

	public type EncryptedData1Choice = {
		BinryData : ?[byte[]];

		HexBinryVal : ?Text;
	};

	public type EncryptedDataElement1 = {
		Id : ?Text;
		OthrClearTxtDataFrmt : ?Text;
		OthrId : ?Text;
		ClearTxtDataFrmt : ?EncryptedDataFormat1Code;
		NcrptdData : EncryptedData1Choice;
	};

	public type EncryptedContent5 = {
		CnttTp : ContentType2Code;
		CnttNcrptnAlgo : AlgorithmIdentification25;
		NcrptdDataElmt : [EncryptedDataElement1];
	};

	public type EnvelopedData6 = {
		Rcpt : [Recipient7Choice];
		Vrsn : ?Float;
		NcrptdCntt : ?EncryptedContent5;
	};

	public type EncryptedData1 = {
		Algo : ?Text;
		Ctrl : ?Text;
		KeyIndx : ?Text;
		KeyLngth : ?Text;
		KeySetIdr : ?Text;
		PddgMtd : ?Text;
		DrvdInf : ?Text;
		NcrptdDataElmt : [EncryptedDataElement1];
		NcrptdDataFrmt : ?Text;
		KeyPrtcn : ?Text;
	};

	public type ProtectedData1 = {
		CnttTp : ContentType3Code;
		EnvlpdData : ?EnvelopedData6;
		NcrptdData : ?EncryptedData1;
	};

	public type ProtectionMethod1Code = {
		#OTHN;
		#OTHP;
		#SELM;
		#SNCL;
		#SOFT;
		#TEEN;
	};

	public type StorageLocation1Code = {
		#CAWL;
		#DVCE;
		#ISWL;
		#ONFL;
		#OTHN;
		#OTHP;
		#TPWL;
	};

	public type Token2 = {
		PmtTkn : ?Text;
		PrtcnMtd : ?ProtectionMethod1Code;
		TknAssrncMtd : ?Text;
		TknInittdInd : ?Bool;
		StorgLctn : ?StorageLocation1Code;
		TknAssrncData : ?Text;
		OthrStorgLctn : ?Text;
		OthrPrtcnMtd : ?Text;
		TknRqstrId : ?Text;
		AddtlData : ?[AdditionalData1];

		TknXpryDt : ?Int;
	};

	public type TerminalIdentification3 = {
		Id : Text;
		Ctry : ?Text;
		ShrtNm : ?Text;
		Assgnr : ?Text;
	};

	public type Terminal6 = {
		TermnlId : TerminalIdentification3;
	};

	public type CustomerDeviceType2Code = {
		#EMBD;
		#GAMB;
		#JEWL;
		#KFOB;
		#MOBL;
		#NSCR;
		#OTHN;
		#OTHP;
		#PECR;
		#SECR;
		#STIC;
		#TBLT;
		#UNKW;
		#VHCL;
		#WATC;
		#WRBL;
	};

	public type Device2 = {
		Tp : ?CustomerDeviceType2Code;
		Email : ?Text;
		PhneNb : ?Text;
		Lang : ?Text;
		IPAdr : ?Text;
		LctnCtryCd : ?Text;
		ManfctrMdlId : ?Text;
		DvcNm : ?Text;
		GeogcLctn : ?Text;
		OthrTp : ?Text;
		DvcNmNrmlzd : ?Text;
		Manfctr : ?Text;
	};

	public type DeviceIdentificationType1Code = {
		#IMEI;
		#OTHN;
		#OTHP;
		#SEID;
		#SENU;
	};

	public type DeviceIdentification1 = {
		Id : ?Text;
		Tp : ?DeviceIdentificationType1Code;
		Assgnr : ?Text;
		OthrTp : ?Text;
	};

	public type DeviceOperatingSystemType1Code = {
		#BLCK;
		#DROI;
		#IOSS;
		#OTHN;
		#OTHP;
		#TIZN;
		#WIND;
	};

	public type DeviceOperatingSystem1 = {
		Id : ?Text;
		Tp : ?DeviceOperatingSystemType1Code;
		Bld : ?Text;
		Vrsn : ?Text;
		OthrTp : ?Text;
	};

	public type CustomerDevice4 = {
		Dvc : ?Device2;
		Prvdr : ?Text;
		DvcId : ?DeviceIdentification1;
		OprgSys : ?DeviceOperatingSystem1;
		AddtlData : ?[AdditionalData1];

	};

	public type CardData9 = {
		PAN : ?Text;
		CardCcyCd : ?Text;
		PmtAcctRef : ?Text;
		FctvDt : ?Int;
		PANAcctRg : ?Text;
		PrtctdPANInd : ?Bool;
		CardSeqNb : ?Text;
		CardPdctSubTp : ?Text;
		PANFourLastDgts : ?Text;
		Trck3 : ?Text;
		CardPdctTp : ?Text;
		CardCtryCd : ?Text;
		CardPrtflIdr : ?Text;
		AddtlCardData : ?[AdditionalData1];

		XpryDt : ?Int;
	};

	public type LocalData1 = {
		LglCorpNm : ?Text;
		Lang : Text;
		ShrtNm : ?Text;
		AddtlData : ?[AdditionalData1];

	};

	public type PartyIdentification263 = {
		Id : Text;
		Ctry : ?Text;
		LglCorpNm : ?Text;
		LclData : ?LocalData1;
		ShrtNm : ?Text;
		AddtlId : ?AdditionalData1;
		Assgnr : ?Text;
	};

	public type Frequency12Code = {
		#DAIL;
		#FRTN;
		#MIAN;
		#MNTH;
		#QURT;
		#TEND;
		#WEEK;
		#YEAR;
	};

	public type RiskAssessment1Code = {
		#APPC;
		#APPH;
		#APPU;
		#DONT;
	};

	public type PartyIdentification258 = {
		Id : Text;
		Ctry : ?Text;
		LglCorpNm : ?Text;
		LclData : ?LocalData1;
		ShrtNm : ?Text;
		AddtlId : ?AdditionalData1;
		Assgnr : ?Text;
	};

	public type CardDataReading9Code = {
		#CAMR;
		#CDFL;
		#ICCY;
		#ICPY;
		#KEEN;
		#MBNK;
		#OPTC;
		#OTHN;
		#OTHP;
		#TOKN;
		#UNKW;
	};

	public type Wallet2 = {
		WlltPrvdrDvcScore : ?Float;
		OthrCardDataNtryMd : ?Text;
		WlltAcctAge : ?Float;
		WlltPrvdrRskAssmntMdlVrsn : ?Text;
		ActvtyIntrvl : ?Frequency12Code;
		Actvty : ?Float;
		WlltPrvdrRskAssmnt : ?RiskAssessment1Code;
		Prvdr : ?PartyIdentification258;
		WlltPrvdrAcctScore : ?Float;
		WlltAcctEmailAge : ?Float;
		LastWlltChng : ?Float;
		UsrAcctAge : ?Float;
		WlltAcctCtry : ?Text;
		PANAge : ?Float;
		WlltPrvdrPhneScore : ?Float;
		DaysSncLastActvty : ?Float;
		SspdCrds : ?Float;
		AddtlData : ?[AdditionalData1];

		CardDataNtryMd : ?CardDataReading9Code;
	};

	public type PartyIdentification256 = {
		Id : Text;
		Ctry : ?Text;
		LglCorpNm : ?Text;
		ShrtNm : ?Text;
		AddtlId : ?AdditionalData1;
		Assgnr : ?Text;
		NmAndLctn : Text;
	};

	public type Authority1 = {
		Nm : ?Text;
		CtrySubDvsnMjr : ?Text;
		CtrySubDvsnMnr : ?Text;
		Ctry : ?Text;
		CtrySubDvsnMjrNm : ?Text;
		CtrySubDvsnMnrNm : ?Text;
	};

	public type Identification3Code = {
		#ARNB;
		#CUID;
		#DRID;
		#EMAL;
		#NTID;
		#OTHN;
		#OTHP;
		#PASS;
		#PHNB;
		#PRXY;
		#SSYN;
		#TXID;
	};

	public type Credentials2 = {
		AssgnrAuthrty : ?Authority1;
		IdCd : Identification3Code;
		IdVal : Text;
		IdXpryDt : ?Int;
		OthrIdCd : ?Text;
	};

	public type Address2 = {
		CtrySubDvsnMjr : ?Text;
		CtrySubDvsnMnr : ?Text;
		Ctry : ?Text;
		StrtNm : ?Text;
		AdrLine1 : ?Text;
		AdrLine2 : ?Text;
		PstlCd : ?Text;
		TwnNm : ?Text;
		CtrySubDvsnMjrNm : ?Text;
		CtrySubDvsnMnrNm : ?Text;
		BldgNb : ?Text;
	};

	public type Address3 = {
		Ctry : ?Text;
		StrtNm : ?Text;
		AdrLine1 : ?Text;
		AdrLine2 : ?Text;
		PstlCd : ?Text;
		TwnNm : ?Text;
		CtrySubDvsnMjrNm : ?Text;
		CtrySubDvsnMnrNm : ?Text;
		BldgNb : ?Text;
	};

	public type CardholderName2 = {
		Nm : ?Text;
		GvnNm : ?Text;
		LastNm : ?Text;
		MddlNm : ?Text;
	};

	public type LocalData7 = {
		Adr : ?Address3;
		Lang : Text;
		AddtlData : ?[AdditionalData1];

		CrdhldrNm : ?CardholderName2;
	};

	public type Contact1 = {
		Nm : ?Text;
		Lang : ?Text;
		PrsnlEmailAdr : ?Text;
		BizEmailAdr : ?Text;
		MobPhneNb : ?Text;
		OthrEmailAdr : ?Text;
		HomePhneNb : ?Text;
		BizPhneNb : ?Text;
		OthrPhneNb : ?Text;
	};

	public type CardholderName3 = {
		Nm : ?Text;
		GvnNm : ?Text;
		LastNm : ?Text;
		MddlNm : ?Text;
	};

	public type Cardholder19 = {
		Id : ?[Credentials2];

		Adr : ?Address2;
		LclData : ?LocalData7;
		CtctInf : ?Contact1;
		HghValCstmrInd : ?Bool;
		DtOfBirth : ?Int;
		AddtlData : ?[AdditionalData1];

		CrdhldrNm : ?CardholderName3;
	};

	public type Environment25 = {
		Tkn : ?Token2;
		Termnl : ?Terminal6;
		CstmrDvc : ?CustomerDevice4;
		Card : CardData9;
		Dstn : ?PartyIdentification263;
		Issr : ?PartyIdentification263;
		Rcvr : ?PartyIdentification263;
		Sndr : ?PartyIdentification263;
		Wllt : ?Wallet2;
		Accptr : ?PartyIdentification256;
		Crdhldr : ?Cardholder19;
		Acqrr : PartyIdentification263;
		Orgtr : ?PartyIdentification263;
	};

	public type PartyType26Code = {
		#ACCP;
		#ACQR;
		#AGNT;
		#CISS;
		#DLIS;
		#ICCA;
		#OTHN;
		#OTHP;
	};

	public type PartyType9Code = {
		#ACQP;
		#ACQR;
		#CISP;
		#CISS;
		#CSCH;
		#SCHP;
	};

	public type ApprovalEntity2 = {
		Id : ?Text;
		Tp : PartyType26Code;
		Ctry : ?Text;
		ShrtNm : ?Text;
		Assgnr : ?PartyType9Code;
		OthrTp : ?Text;
	};

	public type Response8Code = {
		#OTHN;
		#OTHP;
		#PRCS;
		#REJT;
		#TECH;
		#UNPR;
		#UNRV;
	};

	public type ResultData7 = {
		RsltDtls : Text;
		Rslt : ?Response8Code;
		TempScrCardDataReusePrtd : ?Bool;
		AddtlRsltInf : ?[AdditionalData1];

		OthrRsltDtls : ?Text;
		OthrRslt : ?Text;
	};

	public type Contact6 = {
		BizFaxNb : ?Text;
		Lang : ?Text;
		PrsnlEmailAdr : ?Text;
		BizEmailAdr : ?Text;
		MobPhneNb : ?Text;
		OthrEmailAdr : ?Text;
		URLAdr : ?Text;
		HomePhneNb : ?Text;
		HomeFaxNb : ?Text;
		BizPhneNb : ?Text;
		OthrPhneNb : ?Text;
	};

	public type PartyType20Code = {
		#ACCP;
		#ACQR;
		#AGNT;
		#CISS;
		#CRDH;
	};

	public type ActionType11Code = {
		#CHDV;
		#CNAS;
		#CNIS;
		#CNTA;
		#CNTI;
		#CPTR;
		#OTHN;
		#OTHP;
		#SIGN;
		#TRCK;
		#TRXR;
		#VIPM;
	};

	public type Action13 = {
		Ctct : ?Contact6;
		Dstn : ?PartyType20Code;
		ActnTp : ?ActionType11Code;
		AddtlData : ?[AdditionalData1];

		OthrActnTp : ?Text;
	};

	public type MessageError1Code = {
		#DUME;
		#IBAT;
		#ICOL;
		#IDEF;
		#IDEL;
		#IDEV;
		#IDRM;
		#IDWM;
		#INME;
		#INMF;
		#ITDE;
		#MEPE;
		#OTHN;
		#OTHP;
		#PRVE;
		#RDEM;
		#SECU;
		#UDFD;
	};

	public type ErrorDetails2 = {
		ErrCd : ?Text;
		DataElmtInErr : ?[Text];

		MsgErrTp : MessageError1Code;
		ErrDesc : ?Text;
		OthrMsgErrTp : ?Text;
	};

	public type OutputFormat4Code = {
		#FLNM;
		#HTML;
		#MREF;
		#OTHN;
		#OTHP;
		#SMSI;
		#TEXT;
		#URLI;
	};

	public type PartyType22Code = {
		#AGNT;
		#CRDH;
		#MERC;
		#OTHN;
		#OTHP;
	};

	public type UserInterface6Code = {
		#CDSP;
		#CHAP;
		#CRCP;
		#CRDO;
		#FILE;
		#MDSP;
		#MRAP;
		#MRCP;
		#MRIN;
	};

	public type AdditionalInformation29 = {
		Tp : ?Text;
		Val : Text;
		Frmt : ?OutputFormat4Code;
		Lang : Text;
		Rcpt : ?PartyType22Code;
		Trgt : ?[UserInterface6Code];

		OthrFrmt : ?Text;
		OthrRcpt : ?Text;
		OthrTrgt : ?Text;
	};

	public type ActionType10Code = {
		#ACTV;
		#DEAC;
		#DISP;
		#FUPD;
		#PRNT;
		#SNDM;
	};

	public type Content1 = {
		Val : Text;
		Sgntr : ?[byte[]];

		CertId : ?Text;
	};

	public type PartyType21Code = {
		#ACCP;
		#CRDH;
		#OTHN;
		#OTHP;
	};

	public type ActionDestination1Code = {
		#FILE;
		#MOBL;
		#OTHN;
		#OTHP;
		#PECR;
		#POFS;
	};

	public type AdditionalAction1 = {
		Tp : ?ActionType10Code;
		DstnAdr : ?Text;
		Cntt : ?Content1;
		Dstn : ?PartyType21Code;
		Frmt : ?OutputFormat4Code;
		OthrDstnTp : ?Text;
		DstnTp : ?ActionDestination1Code;
		OthrDstn : ?Text;
		OthrFrmt : ?Text;
	};

	public type ProcessingResult9 = {
		RspnSrc : ?ApprovalEntity2;
		RsltData : ResultData7;
		Actn : ?[Action13];

		OrgnlRsltData : ?ResultData7;
		ApprvlCd : ?Text;
		ErrDtl : ?[ErrorDetails2];

		AddtlInf : ?[AdditionalInformation29];

		AddtlActn : ?[AdditionalAction1];

		ActnReqrd : ?Bool;
	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
	};

	public type VerificationEntity2Code = {
		#ACQR;
		#AGNT;
		#CDAD;
		#ICCA;
		#ISSR;
		#MERC;
		#OTHN;
		#OTHP;
	};

	public type Verification3Code = {
		#ERRR;
		#FAIL;
		#FUTA;
		#MISS;
		#NOSP;
		#NOVF;
		#OTHN;
		#OTHP;
		#PART;
		#SUCC;
	};

	public type VerificationResult2 = {
		Tp : ?Text;
		RsltDtls : ?[AdditionalData1];

		Ntty : ?VerificationEntity2Code;
		Rslt : ?Verification3Code;
		OthrNtty : ?Text;
		OthrRslt : ?Text;
	};

	public type Verification4 = {
		Tp : ?Text;
		SubTp : ?Text;
		VrfctnRslt : ?[VerificationResult2];

		OthrTp : ?Text;
		AddtlInf : ?Text;
	};

	public type ECommerceData1 = {
		Tp : Text;
		Val : Text;
	};

	public type SecurityCharacteristics1Code = {
		#AETE;
		#APTE;
		#CENC;
		#CETE;
		#CMAC;
		#CPTE;
		#ETEE;
		#METE;
		#MPTE;
		#OPNN;
		#OTHN;
		#OTHP;
		#PKIE;
		#PMAC;
		#PRAE;
		#PRAM;
		#PRVN;
		#STAM;
	};

	public type MOTO1Code = {
		#MAOR;
		#MOTO;
		#TPOR;
	};

	public type SpecialConditions1 = {
		Id : ?Text;
		Val : ?Text;
	};

	public type QRCodePresentmentMode1Code = {
		#CPMD;
		#MPMD;
		#OTHN;
		#OTHP;
	};

	public type CardDataReading10Code = {
		#DFLE;
		#ICCY;
		#ICPY;
		#KEEN;
		#MGST;
		#MICR;
		#MLEY;
		#MSIP;
		#OCRR;
		#OPTC;
		#OTHN;
		#OTHP;
		#RFID;
		#UNSP;
	};

	public type PointOfServiceContext4 = {
		TempScrCardDataReusd : ?Bool;
		CardPres : ?Bool;
		CrdhldrActvtd : ?Bool;
		AttnddInd : ?Bool;
		OthrCardDataNtryMd : ?Text;
		OthrSctyChrtcs : ?Text;
		PrtlApprvlSpprtd : ?Bool;
		EComrcData : ?[ECommerceData1];

		DelydAuthstnInd : ?Bool;
		EComrcInd : ?Bool;
		OthrQRCdPresntmntMd : ?Text;
		CrdhldrPres : ?Bool;
		StorgLctn : ?Text;
		SctyChrtcs : ?[SecurityCharacteristics1Code];

		MOTOCd : ?MOTO1Code;
		TrnspndrInittd : ?Bool;
		UattnddLvlCtgy : ?Text;
		SpclConds : ?[SpecialConditions1];

		QRCdPresntmntMd : ?QRCodePresentmentMode1Code;
		TrnstInd : ?Bool;
		CardDataNtryMd : ?CardDataReading10Code;
	};

	public type FeeCollectionInitiator1Code = {
		#ACQR;
		#AGNT;
		#CISS;
		#OTHN;
		#OTHP;
	};

	public type CardProgrammeMode3 = {
		Id : Text;
		Tp : ?Text;
		AddtlId : ?[AdditionalData1];

	};

	public type Priority3Code = {
		#HIGH;
		#NORM;
		#URGT;
	};

	public type SettlementServiceMode1 = {
		Id : ?Text;
		Tp : ?Text;
		SttlmPrty : ?Priority3Code;
		ShrtNm : ?Text;
	};

	public type SettlementReportingEntity1 = {
		Id : ?Text;
		Tp : ?Text;
	};

	public type SettlementServiceDate2 = {
		SttlmPrd : ?Text;
		DfrrdSttlmInd : ?Bool;
		ReqdSttlmDt : ?Int;
		SttlmCutOffTm : ?Int;
		SttlmDt : ?Int;
		SttlmTm : ?Int;
	};

	public type SettlementService4 = {
		SttlmSvcApld : ?SettlementServiceMode1;
		AddtlSttlmInf : ?[AdditionalData1];

		SttlmRptgNtty : ?SettlementReportingEntity1;
		SttlmSvcDts : ?SettlementServiceDate2;
	};

	public type Reconciliation3 = {
		Dt : ?Int;
		Id : ?Text;
		ChckptRef : ?Text;
	};

	public type Jurisdiction2 = {
		DmstInd : ?Bool;
		DmstQlfctn : ?Text;
	};

	public type TransactionInitiator1Code = {
		#CUST;
		#MERC;
	};

	public type TransactionContext8 = {
		ReauthstnInd : ?Bool;
		FeeColltnInitr : ?FeeCollectionInitiator1Code;
		CardPrgrmmApld : ?CardProgrammeMode3;
		DelydChrgsInd : ?Bool;
		SttlmSvc : ?SettlementService4;
		NoShowInd : ?Bool;
		MrchntCtgyCd : ?Text;
		Rcncltn : ?Reconciliation3;
		ReSubmissnInd : ?Bool;
		Jursdctn : ?Jurisdiction2;
		MrchntCtgySpcfcData : ?Text;
		AddtlData : ?[AdditionalData1];

		TxInitr : ?TransactionInitiator1Code;
		PrtlShipmntInd : ?Bool;
	};

	public type ActionType8Code = {
		#APPV;
		#BLCK;
		#CPTR;
		#DCLN;
		#NDCL;
		#OTHN;
		#OTHP;
		#RFRL;
		#RQID;
		#STUA;
	};

	public type PartyType28Code = {
		#ACCP;
		#ACQR;
		#AGNT;
		#ISUR;
		#OTHN;
		#OTHP;
		#WLPR;
	};

	public type PartyIdentification200 = {
		Id : ?Text;
		Tp : ?PartyType28Code;
		Ctry : ?Text;
		ShrtNm : ?Text;
		Assgnr : ?PartyType18Code;
		OthrTp : ?Text;
	};

	public type AdditionalRiskData1 = {
		Tp : Text;
		Val : Text;
	};

	public type RiskAssessment2 = {
		Rsn : ?[Text];

		RskAssmntTp : ?Text;
		RskCond : ?[AdditionalData1];

		RcmmnddActnDtls : ?Text;
		OthrRcmmnddActn : ?Text;
		Rslt : ?Text;
		RcmmnddActn : ?[ActionType8Code];

		RskAssmntNtty : ?PartyIdentification200;
		HghRskTx : ?Bool;
		AddtlRskData : ?[AdditionalRiskData1];

	};

	public type RiskAssessmentDataEntityProvider1 = {
		Tp : ?PartyType28Code;
		OthrTp : ?Text;
	};

	public type RiskInputData1 = {
		Tp : Text;
		Val : Text;
		Ntty : ?RiskAssessmentDataEntityProvider1;
	};

	public type RiskContext2 = {
		RskAssmnt : ?[RiskAssessment2];

		RskInptData : ?[RiskInputData1];

	};

	public type Context13 = {
		Vrfctn : ?[Verification4];

		PtOfSvcCntxt : ?PointOfServiceContext4;
		TxCntxt : ?TransactionContext8;
		RskCntxt : ?RiskContext2;
	};

	public type CardManagementResponse2 = {
		Tx : Transaction153;
		PrtctdData : ?[ProtectedData1];

		Envt : Environment25;
		ICCRltdData : ?Text;
		PrcgRslt : ProcessingResult9;
		SplmtryData : ?[SupplementaryData1];

		Cntxt : Context13;
	};

	public type MACData1 = {
		Algo : Text;
		Ctrl : Text;
		InitlstnVctr : ?Text;
		KeyIndx : ?Text;
		KeyLngth : ?Text;
		KeySetIdr : Text;
		PddgMtd : ?Text;
		DrvdInf : ?Text;
		KeyPrtcn : ?Text;
	};

	public type ContentInformationType20 = {
		MAC : Text;
		MACData : MACData1;
	};

	public type CardManagementResponseV02 = {
		Hdr : Header60;
		Body : CardManagementResponse2;
		SctyTrlr : ?ContentInformationType20;
	};

}