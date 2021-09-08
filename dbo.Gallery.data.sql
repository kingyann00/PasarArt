CREATE TABLE [dbo].[Gallery]
(
	[ImageId]         VARCHAR(5)            NOT NULL,
    [Artwork]         IMAGE          NULL,
    [Artworkquantity] INT            NULL,
    [Artworkprice]    DECIMAL (7, 2) NULL,
    [uploadDate]      DATETIME2 (7)  NULL,
    [description]     NVARCHAR (MAX) NULL,
    [Artworkname]     NVARCHAR (50)  NULL,
    [artistName]      NVARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([ImageId] ASC)
)
