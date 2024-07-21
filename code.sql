IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Repertuar]') AND type in (N'U'))
    DROP TABLE [dbo].[Repertuar]
GO
CREATE TABLE [dbo].[Repertuar] (
[data rozpoczęcia] date  NOT NULL  
, [data zakończenia] datetime  NOT NULL  
, [ID Repertuaru] int IDENTITY NOT NULL  
)
GO

ALTER TABLE [dbo].[Repertuar] ADD CONSTRAINT [Repertuar_PK] PRIMARY KEY CLUSTERED (
[ID Repertuaru]
)
GO
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sala]') AND type in (N'U'))
    DROP TABLE [dbo].[Sala]
GO
CREATE TABLE [dbo].[Sala] (
[ID Sali] int IDENTITY NOT NULL  
, [liczba miejsc] int  NOT NULL  
, [typ ekranu] char(10)  NOT NULL  
, [numer sali] char(10)  NOT NULL  
)
GO

ALTER TABLE [dbo].[Sala] ADD CONSTRAINT [Sala_PK] PRIMARY KEY CLUSTERED (
[ID Sali]
)
GO
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pracownik na zmienie]') AND type in (N'U'))
    DROP TABLE [dbo].[Pracownik na zmienie]
GO
CREATE TABLE [dbo].[Pracownik na zmienie] (
[ID Pracownika zmiany] int  NOT NULL  
, [ID Pracownika] int  NOT NULL  
, [ID Zmiany] int  NOT NULL  
)
GO

ALTER TABLE [dbo].[Pracownik na zmienie] ADD CONSTRAINT [Pracownik na zmienie_PK] PRIMARY KEY CLUSTERED (
[ID Pracownika zmiany]
)
GO
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Film zawarty w repertuarze]') AND type in (N'U'))
    DROP TABLE [dbo].[Film zawarty w repertuarze]
GO
CREATE TABLE [dbo].[Film zawarty w repertuarze] (
[ID Zawartości] int IDENTITY NOT NULL  
, [ID Filmu] int NOT NULL  
, [ID Repertuaru] int NOT NULL  
)
GO

ALTER TABLE [dbo].[Film zawarty w repertuarze] ADD CONSTRAINT [Film zawarty w repertuarze_PK] PRIMARY KEY CLUSTERED (
[ID Zawartości]
)
GO
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pracownik na maratonie]') AND type in (N'U'))
    DROP TABLE [dbo].[Pracownik na maratonie]
GO
CREATE TABLE [dbo].[Pracownik na maratonie] (
[ID Zespolu] int NOT NULL  
, [ID Maratonu] int NOT NULL  
, [ID Pracownika] int NOT NULL  
)
GO

ALTER TABLE [dbo].[Pracownik na maratonie] ADD CONSTRAINT [Pracownik na maratonie_PK] PRIMARY KEY CLUSTERED (
[ID Zespolu]
)
GO
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pracownik]') AND type in (N'U'))
    DROP TABLE [dbo].[Pracownik]
GO
CREATE TABLE [dbo].[Pracownik] (
[ID Pracownika] int IDENTITY NOT NULL  
, [imie] varchar(10)  NOT NULL  
, [nazwisko] varchar(20)  NOT NULL  
, [data urodzenia] datetime  NOT NULL  
, [adress] varchar(20)  NOT NULL  
, [telefon] varchar(10)  NOT NULL  
)
GO

ALTER TABLE [dbo].[Pracownik] ADD CONSTRAINT [Pracownik_PK] PRIMARY KEY CLUSTERED (
[ID Pracownika]
)
GO
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Film]') AND type in (N'U'))
    DROP TABLE [dbo].[Film]
GO
CREATE TABLE [dbo].[Film] (
[ID Filmu] int IDENTITY NOT NULL  
, [tytul] varchar(20)  NOT NULL  
, [rezyser] varchar(20)  NOT NULL  
, [data premiery] datetime  NOT NULL  
, [czas trwania] datetime  NOT NULL  
)
GO

ALTER TABLE [dbo].[Film] ADD CONSTRAINT [Film_PK] PRIMARY KEY CLUSTERED (
[ID Filmu]
)
GO
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Zmiana]') AND type in (N'U'))
    DROP TABLE [dbo].[Zmiana]
GO
CREATE TABLE [dbo].[Zmiana] (
[ID Zmiany] int IDENTITY NOT NULL  
, [data] datetime  NOT NULL  
, [godzina] datetime  NOT NULL  
, [czas trwania] datetime  NOT NULL  
, [stanowisko] varchar(10)  NOT NULL  
)
GO

ALTER TABLE [dbo].[Zmiana] ADD CONSTRAINT [Zmiana_PK] PRIMARY KEY CLUSTERED (
[ID Zmiany]
)
GO
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Zakup]') AND type in (N'U'))
    DROP TABLE [dbo].[Zakup]
GO
CREATE TABLE [dbo].[Zakup] (
[ID zakupu] int IDENTITY NOT NULL  
, [rodzaj znizki] float  NOT NULL  
, [data zakupu] datetime  NOT NULL  
, [ID Klienta] int NOT NULL  
)
GO

ALTER TABLE [dbo].[Zakup] ADD CONSTRAINT [Zakup_PK] PRIMARY KEY CLUSTERED (
[ID zakupu]
)
GO
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Zamówienie]') AND type in (N'U'))
    DROP TABLE [dbo].[Zamówienie]
GO
CREATE TABLE [dbo].[Zamówienie] (
[ID Zamowienia] int IDENTITY NOT NULL  
, [rodzaj znizki] float  NOT NULL  
, [data realizacji] datetime  NOT NULL  
, [ID Klienta] int NOT NULL  
, [ID Maratonu] int NOT NULL  
, [ID Pracownika] int NOT NULL  
)
GO

ALTER TABLE [dbo].[Zamówienie] ADD CONSTRAINT [Zamówienie_PK] PRIMARY KEY CLUSTERED (
[ID Zamowienia]
)
GO
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Klient]') AND type in (N'U'))
    DROP TABLE [dbo].[Klient]
GO
CREATE TABLE [dbo].[Klient] (
[ID Klienta] int IDENTITY NOT NULL  
, [imie] varchar(10)  NOT NULL  
, [nazwisko] varchar(20)  NOT NULL  
, [telefon] varchar(10)  NOT NULL  
, [email] varchar(20)  NOT NULL  
)
GO

ALTER TABLE [dbo].[Klient] ADD CONSTRAINT [Klient_PK] PRIMARY KEY CLUSTERED (
[ID Klienta]
)
GO
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Film na maratonie]') AND type in (N'U'))
    DROP TABLE [dbo].[Film na maratonie]
GO
CREATE TABLE [dbo].[Film na maratonie] (
[ID Wyswietlenia] int identity NOT NULL  
, [ID Filmu] int  NOT NULL  
, [ID Maratonu] int NOT NULL  
)
GO

ALTER TABLE [dbo].[Film na maratonie] ADD CONSTRAINT [Film na maratonie_PK] PRIMARY KEY CLUSTERED (
[ID Wyswietlenia]
)
GO
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Zakupiony seans]') AND type in (N'U'))
    DROP TABLE [dbo].[Zakupiony seans]
GO
CREATE TABLE [dbo].[Zakupiony seans] (
[ID Zakupionego seansu] int  NOT NULL  
, [liczba biletow] int  NOT NULL  
, [ID Seansu] int NOT NULL  
, [ID zakupu] int NOT NULL  
)
GO

ALTER TABLE [dbo].[Zakupiony seans] ADD CONSTRAINT [Zakupiony seans_PK] PRIMARY KEY CLUSTERED (
[ID Zakupionego seansu]
)
GO
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Maraton]') AND type in (N'U'))
    DROP TABLE [dbo].[Maraton]
GO
CREATE TABLE [dbo].[Maraton] (
[ID Maratonu] int IDENTITY NOT NULL  
, [godzina rozpoczecia] datetime  NOT NULL  
, [data rozpoczecia] datetime  NOT NULL  
, [ID Sali] int  NOT NULL  
)
GO

ALTER TABLE [dbo].[Maraton] ADD CONSTRAINT [Maraton_PK] PRIMARY KEY CLUSTERED (
[ID Maratonu]
)
GO
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Seans]') AND type in (N'U'))
    DROP TABLE [dbo].[Seans]
GO
CREATE TABLE [dbo].[Seans] (
[ID Seansu] int IDENTITY NOT NULL  
, [data rozpoczecia] datetime  NOT NULL  
, [godzina rozpoczecia] datetime  NOT NULL  
, [ID Pracownika] int NOT NULL  
, [ID Sali] int NOT NULL  
, [ID Filmu] int NOT NULL  
)
GO

ALTER TABLE [dbo].[Seans] ADD CONSTRAINT [Seans_PK] PRIMARY KEY CLUSTERED (
[ID Seansu]
)
GO
GO

GO

GO

ALTER TABLE [dbo].[Pracownik na zmienie] WITH CHECK ADD CONSTRAINT [Pracownik_Pracownik na zmienie_FK1] FOREIGN KEY (
[ID Pracownika]
)
REFERENCES [dbo].[Pracownik] (
[ID Pracownika]
)
ALTER TABLE [dbo].[Pracownik na zmienie] WITH CHECK ADD CONSTRAINT [Zmiana_Pracownik na zmienie_FK1] FOREIGN KEY (
[ID Zmiany]
)
REFERENCES [dbo].[Zmiana] (
[ID Zmiany]
)
GO

ALTER TABLE [dbo].[Film zawarty w repertuarze] WITH CHECK ADD CONSTRAINT [Repertuar_Film zawarty w repertuarze_FK1] FOREIGN KEY (
[ID Repertuaru]
)
REFERENCES [dbo].[Repertuar] (
[ID Repertuaru]
)
ALTER TABLE [dbo].[Film zawarty w repertuarze] WITH CHECK ADD CONSTRAINT [Film_Film zawarty w repertuarze_FK1] FOREIGN KEY (
[ID Filmu]
)
REFERENCES [dbo].[Film] (
[ID Filmu]
)
GO

ALTER TABLE [dbo].[Pracownik na maratonie] WITH CHECK ADD CONSTRAINT [Pracownik_Pracownik na maratonie_FK1] FOREIGN KEY (
[ID Pracownika]
)
REFERENCES [dbo].[Pracownik] (
[ID Pracownika]
)
ALTER TABLE [dbo].[Pracownik na maratonie] WITH CHECK ADD CONSTRAINT [Maraton_Pracownik na maratonie_FK1] FOREIGN KEY (
[ID Maratonu]
)
REFERENCES [dbo].[Maraton] (
[ID Maratonu]
)
GO

GO

GO

GO

ALTER TABLE [dbo].[Zakup] WITH CHECK ADD CONSTRAINT [Klient_Zakup_FK1] FOREIGN KEY (
[ID Klienta]
)
REFERENCES [dbo].[Klient] (
[ID Klienta]
)
GO

ALTER TABLE [dbo].[Zamówienie] WITH CHECK ADD CONSTRAINT [Maraton_Zamówienie_FK1] FOREIGN KEY (
[ID Maratonu]
)
REFERENCES [dbo].[Maraton] (
[ID Maratonu]
)
ALTER TABLE [dbo].[Zamówienie] WITH CHECK ADD CONSTRAINT [Klient_Zamówienie_FK1] FOREIGN KEY (
[ID Klienta]
)
REFERENCES [dbo].[Klient] (
[ID Klienta]
)
ALTER TABLE [dbo].[Zamówienie] WITH CHECK ADD CONSTRAINT [Pracownik_Zamówienie_FK1] FOREIGN KEY (
[ID Pracownika]
)
REFERENCES [dbo].[Pracownik] (
[ID Pracownika]
)
GO

GO

ALTER TABLE [dbo].[Film na maratonie] WITH CHECK ADD CONSTRAINT [Maraton_Film na maratonie_FK1] FOREIGN KEY (
[ID Maratonu]
)
REFERENCES [dbo].[Maraton] (
[ID Maratonu]
)
ALTER TABLE [dbo].[Film na maratonie] WITH CHECK ADD CONSTRAINT [Film_Film na maratonie_FK1] FOREIGN KEY (
[ID Filmu]
)
REFERENCES [dbo].[Film] (
[ID Filmu]
)
GO

ALTER TABLE [dbo].[Zakupiony seans] WITH CHECK ADD CONSTRAINT [Zakup_Zakupiony seans_FK1] FOREIGN KEY (
[ID zakupu]
)
REFERENCES [dbo].[Zakup] (
[ID zakupu]
)
ALTER TABLE [dbo].[Zakupiony seans] WITH CHECK ADD CONSTRAINT [Seans_Zakupiony seans_FK1] FOREIGN KEY (
[ID Seansu]
)
REFERENCES [dbo].[Seans] (
[ID Seansu]
)
GO

ALTER TABLE [dbo].[Maraton] WITH CHECK ADD CONSTRAINT [Sala_Maraton_FK1] FOREIGN KEY (
[ID Sali]
)
REFERENCES [dbo].[Sala] (
[ID Sali]
)
GO

ALTER TABLE [dbo].[Seans] WITH CHECK ADD CONSTRAINT [Sala_Seans_FK1] FOREIGN KEY (
[ID Sali]
)
REFERENCES [dbo].[Sala] (
[ID Sali]
)
ALTER TABLE [dbo].[Seans] WITH CHECK ADD CONSTRAINT [Pracownik_Seans_FK1] FOREIGN KEY (
[ID Pracownika]
)
REFERENCES [dbo].[Pracownik] (
[ID Pracownika]
)
ALTER TABLE [dbo].[Seans] WITH CHECK ADD CONSTRAINT [Film_Seans_FK1] FOREIGN KEY (
[ID Filmu]
)
REFERENCES [dbo].[Film] (
[ID Filmu]
)
GO

