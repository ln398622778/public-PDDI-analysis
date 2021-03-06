USE [master]
GO


CREATE DATABASE [PDDI_Databases]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PDDI_Databases', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11\MSSQL\DATA\PDDI_Databases.mdf' , SIZE = 2048000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PDDI_Databases_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11\MSSQL\DATA\PDDI_Databases_log.ldf' , SIZE = 814720KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [PDDI_Databases] SET COMPATIBILITY_LEVEL = 110
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PDDI_Databases].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [PDDI_Databases] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [PDDI_Databases] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [PDDI_Databases] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [PDDI_Databases] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [PDDI_Databases] SET ARITHABORT OFF 
GO

ALTER DATABASE [PDDI_Databases] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [PDDI_Databases] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [PDDI_Databases] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [PDDI_Databases] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [PDDI_Databases] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [PDDI_Databases] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [PDDI_Databases] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [PDDI_Databases] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [PDDI_Databases] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [PDDI_Databases] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [PDDI_Databases] SET  DISABLE_BROKER 
GO

ALTER DATABASE [PDDI_Databases] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [PDDI_Databases] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [PDDI_Databases] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [PDDI_Databases] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [PDDI_Databases] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [PDDI_Databases] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [PDDI_Databases] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [PDDI_Databases] SET RECOVERY FULL 
GO

ALTER DATABASE [PDDI_Databases] SET  MULTI_USER 
GO

ALTER DATABASE [PDDI_Databases] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [PDDI_Databases] SET DB_CHAINING OFF 
GO

ALTER DATABASE [PDDI_Databases] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [PDDI_Databases] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [PDDI_Databases] SET  READ_WRITE 
GO




USE [PDDI_Databases]
GO
/****** Object:  Table [dbo].[DDICorpus2011_DDIs]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DDICorpus2011_DDIs](
	[Document_ID] [varchar](50) NULL,
	[Drugname] [varchar](250) NULL,
	[Sentence_ID] [varchar](50) NULL,
	[Sentence_Text] [varchar](1000) NULL,
	[DDI_ID] [varchar](50) NULL,
	[e1] [varchar](50) NULL,
	[e2] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DDICorpus2011_Entities]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DDICorpus2011_Entities](
	[ent_id] [varchar](1000) NULL,
	[ent_type] [varchar](1000) NULL,
	[ent_text] [varchar](1000) NULL,
	[Document_ID] [varchar](50) NULL,
	[Drugname] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DDICorpus2011RawXml]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DDICorpus2011RawXml](
	[XmlContent] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DDICorpus2013_DDIs]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DDICorpus2013_DDIs](
	[DDI_ID] [varchar](50) NULL,
	[e1] [varchar](50) NULL,
	[e2] [varchar](50) NULL,
	[Is_DDI] [varchar](50) NULL,
	[DDI_Type] [varchar](50) NULL,
	[Sentence_ID] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DDICorpus2013_Entities]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DDICorpus2013_Entities](
	[ent_id] [varchar](1000) NULL,
	[charOffset] [varchar](1000) NULL,
	[ent_type] [varchar](1000) NULL,
	[ent_text] [varchar](1000) NULL,
	[Document_ID] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DDICorpus2013_Sentences]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DDICorpus2013_Sentences](
	[Sentence_ID] [varchar](50) NULL,
	[Sentence_Text] [varchar](1000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DDICorpus2013RawXml]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DDICorpus2013RawXml](
	[XmlContent] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Drugbank_Kegg_Mapping]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drugbank_Kegg_Mapping](
	[Drugbank_ID] [nvarchar](50) NULL,
	[Kegg_ID] [nvarchar](50) NULL,
	[DrugbankName] [nvarchar](250) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DrugbankATCMapping]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DrugbankATCMapping](
	[drugbankid] [nvarchar](10) NULL,
	[name] [varchar](255) NULL,
	[Atc] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DrugbankBrands]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DrugbankBrands](
	[drugbankid] [varchar](50) NULL,
	[DrugName] [varchar](255) NULL,
	[Brand] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DrugbankDrugs]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DrugbankDrugs](
	[drugbankid] [nvarchar](10) NULL,
	[name] [varchar](255) NULL,
	[type] [varchar](50) NULL,
	[description ] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DrugbankInteractions]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DrugbankInteractions](
	[Subj_Drug_ID] [nvarchar](10) NULL,
	[Subj_Name] [varchar](255) NULL,
	[Obj_Drug_ID] [varchar](10) NULL,
	[Obj_Name] [varchar](255) NULL,
	[Interact_Desc] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DrugbankRawXml]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DrugbankRawXml](
	[XmlContent] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DrugbankSynonyms]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DrugbankSynonyms](
	[drugbankid] [varchar](50) NULL,
	[DrugName] [varchar](255) NULL,
	[Synonym] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FDA_DRUGBANK_INCHI_AND_SYN]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FDA_DRUGBANK_INCHI_AND_SYN](
	[FDA_Preferred_Term] [varchar](150) NULL,
	[UNII] [varchar](50) NULL,
	[Drugbank_drug] [varchar](150) NULL,
	[drugbank_id] [varchar](50) NULL,
	[mapping_type] [varchar](50) NULL,
	[synonymns_used] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FDA_RXNORM_DRUGBANK]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FDA_RXNORM_DRUGBANK](
	[FDA_PreferredTerm] [varchar](50) NULL,
	[FDA_UNII] [varchar](50) NULL,
	[RxNorm_CUI] [varchar](50) NULL,
	[DrugBank_Name] [varchar](50) NULL,
	[DrugBank_CUI] [varchar](50) NULL,
	[ChEBI_CUI] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FDA_SUBSTANCE_TO_DRUGBANK]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FDA_SUBSTANCE_TO_DRUGBANK](
	[Fda_Substance_Name] [varchar](50) NULL,
	[Drugbank_CA] [varchar](50) NULL,
	[Bio2Rdf] [varchar](50) NULL,
	[DrugbankID] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INCHI_AND_Syns_OR_Name]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INCHI_AND_Syns_OR_Name](
	[FDA_preferred_term] [varchar](150) NULL,
	[UNII] [varchar](50) NULL,
	[DrugBank_name] [varchar](150) NULL,
	[DrugBank_Id] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INCHI_OR_Syns_OR_Name]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INCHI_OR_Syns_OR_Name](
	[FDA_preferred_term] [varchar](150) NULL,
	[UNII] [varchar](50) NULL,
	[DrugBank_name] [varchar](150) NULL,
	[DrugBank_Id] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MultipleBrandNames]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MultipleBrandNames](
	[Drug1_ID] [varchar](50) NULL,
	[Drug1_Name] [varchar](255) NULL,
	[Common_BrandName] [varchar](100) NULL,
	[Drug2_ID] [varchar](50) NULL,
	[Drug2_Name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MultipleSynonyms]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MultipleSynonyms](
	[Drug1_ID] [varchar](50) NULL,
	[Drug1_Name] [varchar](255) NULL,
	[Common_Synonym] [varchar](100) NULL,
	[Drug2_ID] [varchar](50) NULL,
	[Drug2_Name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NDFRT_RxNorm_mappings]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NDFRT_RxNorm_mappings](
	[rxcui] [varchar](50) NULL,
	[nui] [varchar](50) NULL,
	[drugname] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NLMCorpus_DDIs]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NLMCorpus_DDIs](
	[e1] [varchar](100) NULL,
	[e2] [varchar](100) NULL,
	[Is_DDI] [varchar](50) NULL,
	[DDI_Type] [varchar](50) NULL,
	[DDI_Trigger] [varchar](100) NULL,
	[Sentence_ID] [varchar](100) NULL,
	[Drug1_DrugbankID] [varchar](50) NULL,
	[Drug2_DrugbankID] [varchar](50) NULL,
	[Drug1_DrugbankID_Ext] [varchar](50) NULL,
	[Drug2_DrugbankID_Ext] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NLMCorpus_Entities]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NLMCorpus_Entities](
	[ent_id] [varchar](1000) NULL,
	[charOffset] [varchar](1000) NULL,
	[ent_type] [varchar](1000) NULL,
	[ent_text] [varchar](1000) NULL,
	[Document_ID] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NLMCorpus_Entities_mmtx]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NLMCorpus_Entities_mmtx](
	[cui] [varchar](50) NULL,
	[phraseText] [varchar](100) NULL,
	[preferredWord] [varchar](50) NULL,
	[semType] [varchar](100) NULL,
	[entityID] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NLMCorpus_Entities_RxNorm]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NLMCorpus_Entities_RxNorm](
	[RxCui] [varchar](50) NULL,
	[entityID] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NLMCorpus_Interaction_Trigger]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NLMCorpus_Interaction_Trigger](
	[ent_id] [varchar](100) NULL,
	[relation_type] [varchar](100) NULL,
	[DDI_trigger] [varchar](100) NULL,
	[interactionID] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NLMCorpus_Sentences]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NLMCorpus_Sentences](
	[Sentence_ID] [varchar](50) NULL,
	[biomedicalEntities] [varchar](1000) NULL,
	[lineNumber] [varchar](10) NULL,
	[Sentence_Type] [varchar](50) NULL,
	[Sentence_Text] [varchar](1000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NLMCorpusRawXml]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NLMCorpusRawXml](
	[XmlContent] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ONC_High_Priority]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ONC_High_Priority](
	[ID] [float] NULL,
	[Object_Class] [nvarchar](255) NULL,
	[Object_Drug] [nvarchar](255) NULL,
	[Obj_DrugbankID] [nvarchar](255) NULL,
	[Preciptiant_Class] [nvarchar](255) NULL,
	[Precipitant_Drug] [nvarchar](255) NULL,
	[Pre_DrugbankID] [nvarchar](255) NULL,
	[Obj_Drugbank_CA] [nvarchar](255) NULL,
	[Obj_Drugbank_Bio2rdf] [nvarchar](255) NULL,
	[Pre_Drugbank_CA] [nvarchar](255) NULL,
	[Pre_Drugbank_Bio2rdf] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ONC_Non_Interuptive]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ONC_Non_Interuptive](
	[ID] [float] NULL,
	[Object_Class] [varchar](255) NULL,
	[Object_Drug] [varchar](255) NULL,
	[Obj_DrugbankID] [varchar](255) NULL,
	[Preciptiant_Class] [varchar](255) NULL,
	[Precipitant_Drug] [varchar](255) NULL,
	[Pre_DrugbankID] [varchar](255) NULL,
	[IsVisible] [bit] NOT NULL,
	[obj_Drugbank_CA] [nvarchar](255) NULL,
	[obj_Drugbank_Bio2rdf] [nvarchar](255) NULL,
	[Pre_Drugbank_CA] [nvarchar](255) NULL,
	[Pre_Drugbank_Bio2rdf] [nvarchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ONC_Non_Interuptive_Raw]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ONC_Non_Interuptive_Raw](
	[ID] [float] NULL,
	[Object_Class] [varchar](255) NULL,
	[Object_Drug] [varchar](255) NULL,
	[Obj_DrugbankID] [varchar](255) NULL,
	[Preciptiant_Class] [varchar](255) NULL,
	[Precipitant_Drug] [varchar](255) NULL,
	[Pre_DrugbankID] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OSCAR_Drugbank_Mappings]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OSCAR_Drugbank_Mappings](
	[ATC_CODE] [varchar](255) NULL,
	[OSCAR_Name] [varchar](255) NULL,
	[DrugName] [varchar](255) NULL,
	[PreferredSubstance] [varchar](255) NULL,
	[Rx_CUI] [int] NULL,
	[DrugbankID] [varchar](255) NULL,
	[RXNorm] [nvarchar](255) NULL,
	[Drugbank_CA] [nvarchar](255) NULL,
	[Drugbank_Bio2rdf] [nvarchar](255) NULL,
	[Alternate_DrugName] [varchar](255) NULL,
	[Alternate_ATC_CODE] [varchar](255) NULL,
	[IsFromQian] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OSCAR_Drugs]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OSCAR_Drugs](
	[DrugName] [varchar](30) NULL,
	[ATC] [varchar](7) NULL,
	[DrugbankName] [varchar](255) NULL,
	[drugbankid] [nvarchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OSCAR_Interactions]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OSCAR_Interactions](
	[id] [bigint] NOT NULL,
	[affectingatc] [varchar](7) NULL,
	[affectedatc] [varchar](7) NULL,
	[effect] [char](1) NULL,
	[significance] [char](1) NULL,
	[evidence] [char](1) NULL,
	[comment] [text] NULL,
	[affectingdrug] [text] NULL,
	[affecteddrug] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PKCorpus_DDIs]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PKCorpus_DDIs](
	[section#] [varchar](50) NULL,
	[Drug_1_type] [varchar](50) NULL,
	[Drug_1_mention] [varchar](50) NULL,
	[Drug_1_annotation_agent] [varchar](50) NULL,
	[Drug_1_starting_offset] [varchar](50) NULL,
	[Drug_1_ending_offset] [varchar](50) NULL,
	[Drug_2_type] [varchar](50) NULL,
	[Drug_2_mention] [varchar](50) NULL,
	[Drug_2_annotation_agent] [varchar](50) NULL,
	[abbreviation_translation] [varchar](50) NULL,
	[Drug_2_start_offset] [varchar](50) NULL,
	[Drug_2_end_offset] [varchar](50) NULL,
	[DDI_modality] [varchar](50) NULL,
	[DDI_statement_type] [varchar](50) NULL,
	[snippit_of_DDI] [varchar](500) NULL,
	[snippit_of_DDI2] [varchar](500) NULL,
	[Unknown1_CuI] [varchar](50) NULL,
	[Unknown2_CuI] [varchar](50) NULL,
	[Drug1_RX_CuI] [varchar](50) NULL,
	[Drug2_RX_CuI] [varchar](50) NULL,
	[Drug1_Drugbank_ID] [varchar](50) NULL,
	[Drug2_Drugbank_ID] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QTDrugs_CredibleMed]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QTDrugs_CredibleMed](
	[Generic Name] [varchar](255) NULL,
	[Is_OffMarket] [varchar](255) NULL,
	[Brand Names] [varchar](255) NULL,
	[Drug Class] [varchar](255) NULL,
	[Therapeutic Use] [varchar](255) NULL,
	[TdP Risk Category] [varchar](255) NULL,
	[Risk Category] [varchar](255) NULL,
	[Route] [varchar](255) NULL,
	[DrugbankID] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SemMedDB]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SemMedDB](
	[PMID] [int] NULL,
	[Drug1_CUI] [varchar](1000) NULL,
	[Drug1_name] [varchar](1000) NULL,
	[Drug2_CUI] [varchar](1000) NULL,
	[Drug2_Name] [varchar](1000) NULL,
	[Drug1_Prim_CUI] [varchar](500) NULL,
	[Drug1_Prim_Name] [varchar](500) NULL,
	[Drug2_Prim_CUI] [varchar](500) NULL,
	[Drug2_Prim_Name] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SemMedDB_Mapped]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SemMedDB_Mapped](
	[PMID] [int] NULL,
	[Drug1_Prim_CUI] [varchar](500) NULL,
	[Drug1_Prim_Name] [varchar](500) NULL,
	[Drug1_Rx_CUI] [int] NULL,
	[Drug2_Prim_CUI] [varchar](500) NULL,
	[Drug2_Prim_Name] [varchar](500) NULL,
	[Drug2_Rx_CUI] [int] NULL,
	[Drug1_Drugbank_ID] [varchar](20) NULL,
	[Drug2_Drugbank_ID] [varchar](20) NULL,
	[Drug1_DrugbankName] [varchar](500) NULL,
	[Drug2_DrugbankName] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UMLS_RxNorm_Mapping]    Script Date: 10/3/2014 10:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UMLS_RxNorm_Mapping](
	[Rx_CUI] [int] NULL,
	[UMLS_CUI] [nvarchar](255) NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ONC_Non_Interuptive] ADD  CONSTRAINT [DF_ONC_Non_Interuptive_Mapped_IsVisible]  DEFAULT ((1)) FOR [IsVisible]
GO
ALTER TABLE [dbo].[OSCAR_Interactions] ADD  DEFAULT (NULL) FOR [affectingatc]
GO
ALTER TABLE [dbo].[OSCAR_Interactions] ADD  DEFAULT (NULL) FOR [affectedatc]
GO
ALTER TABLE [dbo].[OSCAR_Interactions] ADD  DEFAULT (NULL) FOR [effect]
GO
ALTER TABLE [dbo].[OSCAR_Interactions] ADD  DEFAULT (NULL) FOR [significance]
GO
ALTER TABLE [dbo].[OSCAR_Interactions] ADD  DEFAULT (NULL) FOR [evidence]
GO
