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

	public type MessageFunction29Code = {
		#ADVC;
		#NOTI;
	};

	public type Header66 = {
		InitgPty : GenericIdentification183;
		TracData : ?[AdditionalData1];

		Tracblt : ?[Traceability9];

		XchgId : ?Text;
		RcptPty : ?GenericIdentification183;
		ReTrnsmssnCntr : ?Text;
		CreDtTm : Int;
		PrtcolVrsn : Text;
		BtchMgmtInf : ?BatchManagementInformation1;
		MsgFctn : MessageFunction29Code;
	};

	public type TransactionLifeCycleIdentification1 = {
		Id : Text;
		PresntmntSeqNb : ?Text;
		PresntmntSeqCnt : ?Text;
		AuthntcnTkn : ?Text;
		AuthstnSeqNb : ?Text;
	};

	public type TransactionIdentification18 = {
		LclDt : ?Int;
		LclTm : ?Int;
		AcqrrRefNb : ?Text;
		LifeCyclSpprtInd : ?Text;
		AcqrrRefData : ?Text;
		CardIssrRefData : ?Text;
		RtrvlRefNb : Text;
		TmZone : ?Text;
		TxRef : ?Text;
		LifeCyclTracIdData : ?TransactionLifeCycleIdentification1;
		TrnsmssnDtTm : ?Int;
		LifeCyclTracIdMssng : ?Text;
		SysTracAudtNb : Text;
	};

	public type RetrievalDeliveryMethod1Choice = {
		ReqdMtd : ?[Text];

		ActlDlvryMtd : ?Text;
		EstblishdMtd : ?[Text];

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

	public type PartyType19Code = {
		#ACCP;
		#ACQP;
		#ACQR;
		#AGNT;
		#CISP;
		#CISS;
		#OTHN;
		#OTHP;
	};

	public type UserInterface8Code = {
		#DSPU;
		#FILE;
		#LOGF;
		#OTHN;
		#OTHP;
	};

	public type AdditionalInformation22 = {
		Tp : ?Text;
		Val : Text;
		Frmt : ?OutputFormat4Code;
		Rcpt : ?PartyType19Code;
		Trgt : ?[UserInterface8Code];

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

	public type Contact7 = {
		Nm : ?Text;
		Email : ?Text;
		URLAdr : ?Text;
		FaxNb : ?Text;
		TelNb : ?Text;
	};

	public type DeliveryInformation5 = {
		PstlAdr : ?Address2;
		Ctct : ?Contact7;
	};

	public type RetrievalFulfilmentInstructions2 = {
		Mtd : ?RetrievalDeliveryMethod1Choice;
		AddtlInf : ?AdditionalInformation22;
		DlvryInf : ?DeliveryInformation5;
	};

	public type SpecialProgrammeDetails1 = {
		Nm : ?Text;
		Val : ?Text;
	};

	public type SpecialProgrammeQualification1 = {
		Dtl : ?[SpecialProgrammeDetails1];

		Prgrmm : ?Text;
	};

	public type DisputeIdentification1 = {
		Id : Text;
		Tp : ?Text;
	};

	public type PartyType32Code = {
		#ACQR;
		#AGNT;
		#ISUR;
		#OTHN;
		#OTHP;
	};

	public type DisputeReference1 = {
		OthrAssgnrNtty : ?Text;
		DsptId : [DisputeIdentification1];
		AssgnrNtty : ?PartyType32Code;
	};

	public type DisputeData3 = {
		PrtlDspt : ?Bool;
		DcmnttnSts : ?Text;
		ChrgbckElgblty : ?Text;
		AddtlDsptData : ?AdditionalData1;
		PresntmntCycl : ?Text;
		DsptCond : ?Text;
		DsptRef : ?[DisputeReference1];

		DsptSts : ?Text;
		DsptRjctRsn : ?[Text];

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

	public type CreditDebit3Code = {
		#CRDT;
		#DBIT;
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

	public type Transaction136 = {
		AltrnMsgRsn : ?[Text];

		TxId : TransactionIdentification18;
		MsgRsn : ?[Text];

		RtrvlFlfmtInstrs : ?[RetrievalFulfilmentInstructions2];

		SpclPrgrmmQlfctn : ?[SpecialProgrammeQualification1];

		DsptData : ?[DisputeData3];

		AddtlFee : ?[AdditionalFee2];

		TxDesc : ?Text;
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

	public type CardData10 = {
		PAN : ?Text;
		PmtAcctRef : ?Text;
		PANAcctRg : ?Text;
		PrtctdPANInd : ?Bool;
		CardSeqNb : ?Text;
		CardPrtflIdr : ?Text;
		AddtlCardData : ?[AdditionalData1];

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

	public type LocalData2 = {
		Nm : ?Text;
		Adr : ?Address3;
		Lang : Text;
		AddtlCtctInf : ?Text;
		AddtlData : ?[AdditionalData1];

	};

	public type FinancialInstitution7 = {
		Id : ?Text;
		Nm : ?Text;
		Adr : ?Address2;
		Email : ?Text;
		CstmrSvc : ?Text;
		PhneNb : ?Text;
		LclData : ?LocalData2;
		URLAdr : ?Text;
		AddtlCtctInf : ?Text;
	};

	public type CardholderName3 = {
		Nm : ?Text;
		GvnNm : ?Text;
		LastNm : ?Text;
		MddlNm : ?Text;
	};

	public type CardholderName2 = {
		Nm : ?Text;
		GvnNm : ?Text;
		LastNm : ?Text;
		MddlNm : ?Text;
	};

	public type LocalData3 = {
		Nm : ?CardholderName2;
		Adr : ?Address3;
		Lang : Text;
		AddtlData : ?[AdditionalData1];

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

	public type Customer7 = {
		Nm : ?CardholderName3;
		Adr : ?Address2;
		Ntlty : ?Text;
		LclData : ?LocalData3;
		Crdntls : ?[Credentials2];

		CtctInf : ?Contact6;
		CtryOfBirth : ?Text;
		CstmrDsgnt : ?Text;
		DtOfBirth : ?Int;
		AddtlData : ?[AdditionalData1];

		CstmrId : ?Text;
	};

	public type PartyIdentification257 = {
		FI : ?FinancialInstitution7;
		Cstmr : ?Customer7;
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

	public type LocalData4 = {
		Adr : ?Address3;
		LglCorpNm : ?Text;
		Lang : Text;
		ShrtNm : ?Text;
		AddtlCtctInf : ?Text;
		AddtlAdrInf : ?Text;
		AddtlData : ?[AdditionalData1];

		NmAndLctn : ?Text;
	};

	public type PartyIdentification262 = {
		Id : Text;
		FrgnMrchnt : ?Bool;
		Ctry : ?Text;
		LclData : ?LocalData1;
		ShrtNm : ?Text;
		AddtlId : ?Text;
		Assgnr : ?Text;
	};

	public type LocalData5 = {
		Adr : ?Address3;
		LglCorpNm : ?Text;
		Lang : Text;
		AddtlAdrInf : ?Text;
		CmonNm : ?Text;
		AddtlData : ?[AdditionalData1];

	};

	public type SponsoredMerchant2 = {
		Id : PartyIdentification262;
		Adr : ?Address2;
		LglCorpNm : ?Text;
		LclData : ?LocalData5;
		GeogcLctn : ?Text;
		AddtlAdrInf : ?Text;
		CmonNm : ?Text;
		AddtlData : ?[AdditionalData1];

	};

	public type PartyIdentification255 = {
		Id : Text;
		Adr : ?Address2;
		Email : ?Text;
		CstmrSvc : ?Text;
		PhneNb : ?Text;
		Ctry : ?Text;
		LglCorpNm : ?Text;
		LclData : ?LocalData4;
		ShrtNm : ?Text;
		URLAdr : ?Text;
		AddtlId : ?AdditionalData1;
		AddtlCtctInf : ?Text;
		SpnsrdMrchnt : ?[SponsoredMerchant2];

		GeogcLctn : ?Text;
		Assgnr : ?Text;
		AddtlAdrInf : ?Text;
		TaxRegnId : ?Text;
		AddtlData : ?[AdditionalData1];

		NmAndLctn : Text;
	};

	public type Environment21 = {
		Tkn : ?Token2;
		Termnl : ?Terminal6;
		Card : CardData10;
		Dstn : ?PartyIdentification263;
		Issr : ?PartyIdentification263;
		Pyee : ?PartyIdentification257;
		Pyer : ?PartyIdentification257;
		Rcvr : ?PartyIdentification263;
		Sndr : ?PartyIdentification263;
		Wllt : ?Wallet2;
		Accptr : ?PartyIdentification255;
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

	public type ResultData10 = {
		RsltDtls : Text;
		Rslt : ?Response8Code;
		AddtlRsltInf : ?[AdditionalData1];

		OthrRsltDtls : ?Text;
		OthrRslt : ?Text;
	};

	public type ResultData7 = {
		RsltDtls : Text;
		Rslt : ?Response8Code;
		TempScrCardDataReusePrtd : ?Bool;
		AddtlRsltInf : ?[AdditionalData1];

		OthrRsltDtls : ?Text;
		OthrRslt : ?Text;
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

	public type AdditionalInformation30 = {
		Tp : ?Text;
		Val : Text;
		Frmt : ?OutputFormat4Code;
		Lang : Text;
		Rcpt : ?PartyType19Code;
		Trgt : ?[UserInterface8Code];

	};

	public type ProcessingResult19 = {
		RspnSrc : ?ApprovalEntity2;
		RsltData : ResultData10;
		OrgnlRsltData : ?ResultData7;
		ErrDtl : ?[ErrorDetails2];

		AddtlInf : ?[AdditionalInformation30];

	};

	public type SupplementaryDataEnvelope1 = {
		any : Any;
	};

	public type SupplementaryData1 = {
		Envlp : SupplementaryDataEnvelope1;
		PlcAndNm : ?Text;
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

	public type PointOfServiceContext5 = {
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
		AddtlData : ?[AdditionalData1];

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

	public type GoodsAndServices1Code = {
		#ELEC;
		#ELPH;
		#PHYS;
	};

	public type GoodAndServiceDeliveryChannel1Code = {
		#EDEL;
		#NDEL;
		#OTHN;
		#OTHP;
		#PULC;
		#SCBA;
		#SCSA;
	};

	public type ReceiptType1Code = {
		#EMAL;
		#OTHR;
		#PAPR;
		#SMSM;
		#URID;
	};

	public type GoodAndServiceDeliverySchedule1Code = {
		#ONDL;
		#OTHN;
		#OTHP;
		#SDDL;
		#TDDL;
	};

	public type GoodsAndServicesSubType1Code = {
		#CRCU;
		#FORX;
		#OTHN;
		#OTHP;
		#SECS;
	};

	public type SaleContext8 = {
		GoodAndSvcsOthrSubTp : ?Text;
		GoodsAndSvcsTp : ?GoodsAndServices1Code;
		GoodAndSvcDlvryChanl : ?GoodAndServiceDeliveryChannel1Code;
		SaleId : ?Text;
		OthrGoodAndSvcDlvryChanl : ?Text;
		SaleRefId : ?Text;
		SaleRefNb : ?Text;
		RctTp : ?[ReceiptType1Code];

		GoodAndSvcDlvrySchdl : ?GoodAndServiceDeliverySchedule1Code;
		GoodAndSvcsSubTp : ?GoodsAndServicesSubType1Code;
		OthrGoodAndSvcDlvrySchdl : ?Text;
		SpltPmtInd : ?Bool;
		RctReqInd : ?Bool;
		RctDstn : ?Text;
		AddtlData : ?[AdditionalData1];

	};

	public type Context15 = {
		PtOfSvcCntxt : ?PointOfServiceContext5;
		TxCntxt : TransactionContext8;
		SaleCntxt : ?SaleContext8;
	};

	public type RetrievalFulfilmentResponse2 = {
		Tx : ?Transaction136;
		PrtctdData : ?[ProtectedData1];

		Envt : Environment21;
		PrcgRslt : ProcessingResult19;
		SplmtryData : ?[SupplementaryData1];

		Cntxt : Context15;
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

	public type RetrievalFulfilmentResponseV02 = {
		Hdr : Header66;
		Body : RetrievalFulfilmentResponse2;
		SctyTrlr : ?ContentInformationType20;
	};

}