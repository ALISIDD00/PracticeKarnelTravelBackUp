USE [master]
GO
/****** Object:  Database [DB_KarnelTravelGuide]    Script Date: 3/16/2024 5:38:52 PM ******/
CREATE DATABASE [DB_KarnelTravelGuide]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_KarnelTravelGuide', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_KarnelTravelGuide.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_KarnelTravelGuide_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_KarnelTravelGuide_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_KarnelTravelGuide].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET  MULTI_USER 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_KarnelTravelGuide', N'ON'
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET QUERY_STORE = OFF
GO
USE [DB_KarnelTravelGuide]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 3/16/2024 5:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[Booking_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Date] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Destination] [nvarchar](100) NOT NULL,
	[Request] [nvarchar](100) NULL,
	[Deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Booking_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/16/2024 5:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[InActive] [bit] NULL,
	[Deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerInfo]    Script Date: 3/16/2024 5:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerInfo](
	[CustomerInfo_Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_Id] [int] NULL,
	[CustomerCountry] [nvarchar](100) NOT NULL,
	[CustomerCity] [nvarchar](100) NOT NULL,
	[CustomerAddress] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerInfo_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelInfo]    Script Date: 3/16/2024 5:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelInfo](
	[HotelInfo_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[City] [nvarchar](100) NULL,
	[Deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[HotelInfo_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 3/16/2024 5:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[Login_Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](15) NOT NULL,
	[Role_Id] [int] NULL,
	[Deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Login_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Packages]    Script Date: 3/16/2024 5:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Packages](
	[Packages_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Destination] [nvarchar](100) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[Description] [nvarchar](500) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Days] [nvarchar](100) NULL,
	[Persons] [nvarchar](100) NOT NULL,
	[Deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Packages_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PopularSpots]    Script Date: 3/16/2024 5:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PopularSpots](
	[PopularSpots_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Discount] [nvarchar](100) NULL,
	[Deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[PopularSpots_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResortInfo]    Script Date: 3/16/2024 5:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResortInfo](
	[ResortInfo_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[City] [nvarchar](100) NULL,
	[Deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResortInfo_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestaurantInfo]    Script Date: 3/16/2024 5:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantInfo](
	[RestaurantInfo_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[City] [nvarchar](100) NULL,
	[Deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[RestaurantInfo_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 3/16/2024 5:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Role_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[InActive] [bit] NULL,
	[Deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SearchInfo]    Script Date: 3/16/2024 5:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SearchInfo](
	[SearchInfo_Id] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](100) NULL,
	[ServiceType] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[SearchInfo_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TouristSpots]    Script Date: 3/16/2024 5:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TouristSpots](
	[TouristSpots_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[City] [nvarchar](100) NULL,
	[Deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[TouristSpots_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TravelInfo]    Script Date: 3/16/2024 5:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TravelInfo](
	[TravelInfo_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[City] [nvarchar](100) NULL,
	[Deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[TravelInfo_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HotelInfo] ON 

INSERT [dbo].[HotelInfo] ([HotelInfo_Id], [Name], [Description], [ImagePath], [City], [Deleted]) VALUES (13, N'Hunza Bliss Hotel', N'Escape to the serenity of Hunza Bliss, where majestic mountains meet modern comforts. Immerse yourself in breathtaking views. Clean & Sanitized Rooms, 24/7 Security, AC Rooms, Free WiFi & TV, Complimentary Breakfast, Dedicated Service Captain. Check In: After 12 PM, Check Out: Before 12 PM, Total Room: 40, Location: Aliabad, Hunza. Classic Room: A wide single bedroom with classic-style furnishings in soft colors. Price: Rs14000/-. Deluxeroom Room: A wide double bedroom with classic-style furnishings in soft colors and a bigger size than Classic Rooms. Price: Rs28000/-', N'/Hotelimg/Hotel3.jpg', N'Hunza', 0)
INSERT [dbo].[HotelInfo] ([HotelInfo_Id], [Name], [Description], [ImagePath], [City], [Deleted]) VALUES (14, N'Pearl Continental Hotel', N'Situated in the heart of the scenic Hunza valley, PC Legacy Nasirabad, Hunza is Hashoo Group’s first Property under this new brand. Clean & Sanitized Rooms, 24/7 Security, AC Rooms, Free WiFi & TV, Complimentary Breakfast, Dedicated Service Captain. Check In: After 12 PM, Check Out: Before 12 PM, Total Room: 40, Location: NASIRABAD, HUNZA. Classic Room: A wide single bedroom with classic-style furnishings in soft colors. Price: Rs30000/-. Deluxeroom Room: A wide double bedroom with classic-style furnishings in soft colors and a bigger size than Classic Rooms. Price: Rs60000/-', N'/Hotelimg/Hotel2.jpg', N'Hunza', 0)
INSERT [dbo].[HotelInfo] ([HotelInfo_Id], [Name], [Description], [ImagePath], [City], [Deleted]) VALUES (15, N'Roomy Daastaan Hotel', N'Roomy Daastaan Hotel, built in 1987, is a blend of local architecture and modern amenities. Clean & Sanitized Rooms, 24/7 Security, AC Rooms, Free WiFi & TV, Complimentary Breakfast, Dedicated Service Captain. Check In: After 12 PM, Check Out: Before 12 PM, Total Room: 40, Location: Karimabad, Hunza. Classic Room: A wide single bedroom with classic-style furnishings in soft colors. Price: Rs14000/-. Deluxeroom Room: A wide double bedroom with classic-style furnishings in soft colors and a bigger size than Classic Rooms. Price: Rs28000/-', N'/Hotelimg/Hotel3.jpg', N'Hunza', 0)
INSERT [dbo].[HotelInfo] ([HotelInfo_Id], [Name], [Description], [ImagePath], [City], [Deleted]) VALUES (16, N'Serena Altit Fort Hotel', N'Serena Altit Fort Hotel is tucked inside the sprawling Khabasi or Royal garden, the former picnic spot of the royal Mirs of Hunza, with its breathtaking views of the snow-capped peaks. Clean & Sanitized Rooms, 24/7 Security, AC Rooms, Free WiFi & TV, Complimentary Breakfast, Dedicated Service Captain. Check In: After 12 PM, Check Out: Before 12 PM, Total Room: 20, Location: Hunza Valley. Classic Room: A wide single bedroom with classic-style furnishings in soft colors. Price: Rs14000/-. Deluxeroom Room: A wide double bedroom with classic-style furnishings in soft colors and a bigger size than Classic Rooms. Price: Rs28000/-', N'/Hotelimg/Hotel11.jpg', N'Hunza', 0)
SET IDENTITY_INSERT [dbo].[HotelInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[ResortInfo] ON 

INSERT [dbo].[ResortInfo] ([ResortInfo_Id], [Name], [Description], [ImagePath], [City], [Deleted]) VALUES (1, N'Lokal Hunza Resort', N'~ LOKAL Rooms Hunza Resort

~Detail

Hunza is considered in the most exuberant and exotic places in Pakistan. A true paradise on Earth,
 enjoy the panoramic view of the highlands of Duiker Hunza, and explore the rich heritage and culture
 of the Hunzan people. Several high peaks rise above 7,000 m in the surroundings of Hunza Valley. 
You will also find mesmerizing Forts of Baltit and Altit, and exhilarating bridges and passes like 
Khunjerab Pass, which is a 4,693-meter-high mountain pass in the Karakoram Mountains.

By staying at LOKAL Rooms x Hunza (5 Peaks), you get to be a part of the Hunza experience by being 
located right in the heart of the highlands and you also get central access to amazing local places 
to shop from and eat at. 



~Key Facilities

*Clean & Sanitized Rooms
*24/7 Security
*AC Rooms      
*Free WiFi & TV               
*Complimentary Breakfast
*Dedicated Service Captain



~ Additional Info

*Check In :After 12 PM
*Check Out :Before 12 PM
*Total Room :20
*Location :Duiker Valley, Hunza



~ Rooms

1. Classic Room

~ Details

A wide single bedrooms are comfortable and welcoming with classic-style 
furnishings in soft colors.Its classic as compared to other room.

~ Price
Rs14000/-

2. Deluxeroom Room

~ Details

A wide double bedrooms are comfortable and welcoming with classic-style 
furnishings in soft colors and the room size is bigger than Classic Rooms

~ Price
Rs28000/-

', N'/Resortimg/Lokal Resort4.jpeg', N'Hunza', 0)
INSERT [dbo].[ResortInfo] ([ResortInfo_Id], [Name], [Description], [ImagePath], [City], [Deleted]) VALUES (2, N'Luxus Hunza Attabad Lake Resort', N'~ Luxus Resort Attabad Lake Hunza

~ Resort info

Attabad Lake is one of the beautiful lakes, the tragedy turned into an opportunity for tourism in
 Pakistan, a very attractive blue-colored lake with boats and small resorts on the bank of this lake.
 Luxus Attabad hotel is one of the finest hotels in the Northern areas of Pakistan, 
everyone dream destination is now Luxus hotel Attabad. On such a remote location they are providing 
straight of the art facilities with 3-star services. Rooms are with Panoramic views of mountains and 
Lake, their food is of top quality.

~Key Facilities

*Clean & Sanitized Rooms
*24/7 Security
*AC Rooms      
*Free WiFi & TV               
*Complimentary Breakfast
*Dedicated Service Captain



~ Additional Info

Check In :After 12 PM
Check Out :Before 12 PM
Total Room :20
Location :Attabad Lake Valley,Hunza 
Need Help!
Prior booking to this resort is a must, its a most visited property in Pakistan



~ Rooms

1. Lake View(Economical)

~ Details

Lake View Room is of the first Category with at Second floor and the one angle view of Lake.
Its economical as compared to other category rooms.

~ Price
Rs28000/-

2. Panoramic(Deluxeroom)

~ Details

The difference is its too angle view of the Lake,
the room size is bigger than Infinity lake view Rooms

~ Price
Rs48000/-', N'/Resortimg/Luxus Hunza Attabad Lake Resort3.jpg', N'Hunza', 0)
SET IDENTITY_INSERT [dbo].[ResortInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[RestaurantInfo] ON 

INSERT [dbo].[RestaurantInfo] ([RestaurantInfo_Id], [Name], [Description], [ImagePath], [City], [Deleted]) VALUES (1, N'Cafe De Hunza', N'Take a break at Cafe de Hunza and have a nice cup of joe with their famous walnut cakes. They serve 
western-style coffees and cakes, so if you are indeed in need of a proper coffee fix, especially if you
have been traveling in Pakistan for a while, come by Cafe de Hunza and indulge yourself in their selections
of coffee and cakes', N'/Restaurantimg/img1.jpg', N'Hunza', 0)
INSERT [dbo].[RestaurantInfo] ([RestaurantInfo_Id], [Name], [Description], [ImagePath], [City], [Deleted]) VALUES (2, N'Mountain Cup Café', N'A well reputed cafe in the heart of Hunza surrounded by mighty mountains. Good food, good mood is a 
bliss on a plate. Mountain cup, Fort chowk, Karimabad', N'/Restaurantimg/img2.jpg', N'Hunza', 0)
INSERT [dbo].[RestaurantInfo] ([RestaurantInfo_Id], [Name], [Description], [ImagePath], [City], [Deleted]) VALUES (3, N'Cafe Culture Hunza', N'Café Culture Hunza, based in Altit Village Hunza, is a pioneering effort by a trained professional and
 their family to serve authentic central Hunza cuisine to travelers to and locals of the central Hunza
 Valley. The café provides on-site, on-demand food to travelers and visitors who drop by, and also 
caters on-demand to hotels, and local guests houses for their clients, and institutional clients', N'/Restaurantimg/img3.jpg', N'Hunza', 0)
INSERT [dbo].[RestaurantInfo] ([RestaurantInfo_Id], [Name], [Description], [ImagePath], [City], [Deleted]) VALUES (4, N'Hidden Paradise Hunza', N'Nestled in the heart of a breathtaking mountainous region, Hunza food is known for its wholesome 
ingredients, vibrant flavors, and unique cooking techniques', N'/Restaurantimg/img4.jpg', N'Hunza', 0)
INSERT [dbo].[RestaurantInfo] ([RestaurantInfo_Id], [Name], [Description], [ImagePath], [City], [Deleted]) VALUES (5, N'Wild Thyme Karimabad Hunza', N'Wild Thyme brings you healthy Pakistani food options, our dishes and recipes are loaded with health 
giving superfoods', N'/Restaurantimg/img5.jpg', N'Hunza', 0)
INSERT [dbo].[RestaurantInfo] ([RestaurantInfo_Id], [Name], [Description], [ImagePath], [City], [Deleted]) VALUES (6, N'horizon Restaurant attabad lake hunza', N'The resort itself is new but the view is breathtaking, Attaabad lake in its full view is in front of 
you. You get the best service u can imagine', N'/Restaurantimg/img6.jpg', N'Hunza', 0)
SET IDENTITY_INSERT [dbo].[RestaurantInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[TouristSpots] ON 

INSERT [dbo].[TouristSpots] ([TouristSpots_Id], [Name], [Description], [ImagePath], [City], [Deleted]) VALUES (1, N'Duiker Hill', N'Duikar is the highest village at the altitude of 10,000 feet in Hunza valley. It is a very interesting 
point to visit due to its height and you will get a broader view of high mountain peaks in front of 
you.It is a place to view sunrise and sunset as you can see the first ray of sun touching the high peaks at
sunrise here. You can also enjoy the view of the whole of the Hunza and Nagar valleys here', N'/TouristPlaceimg/img1.jpg', N'Hunza', 0)
INSERT [dbo].[TouristSpots] ([TouristSpots_Id], [Name], [Description], [ImagePath], [City], [Deleted]) VALUES (2, N'Attabad Lake', N'Attabad Lake is located in the Gojal Region of the District Hunza in Gilgit-Baltistan, Pakistan. The 
lake has become one of the biggest tourist attractions in Gilgit-Baltistan, offering activities like 
boating, jet-skiing, fishing, and other recreational activities', N'/TouristPlaceimg/img2.jpg', N'Hunza', 0)
INSERT [dbo].[TouristSpots] ([TouristSpots_Id], [Name], [Description], [ImagePath], [City], [Deleted]) VALUES (3, N'Baltit Fort', N'Baltit Fort was the home of Ayashkutz royal family of Hunza for 700 years.Baltit Fort itself is a treat
to experience for everyone visiting it. It offers insight into the ways and lifestyle of its inhabitants
preserving their cultural heritage and traditions', N'/TouristPlaceimg/img3.jpg', N'Hunza', 0)
INSERT [dbo].[TouristSpots] ([TouristSpots_Id], [Name], [Description], [ImagePath], [City], [Deleted]) VALUES (4, N'Hussaini Suspension Bridge', N'The bridge was built during the time of British occupation of the valley in Shishkat village.Hussaini 
Bridge known as one of the most significant and most dangerous hanging bridges worldwide', N'/TouristPlaceimg/img4.jpg', N'Hunza', 0)
INSERT [dbo].[TouristSpots] ([TouristSpots_Id], [Name], [Description], [ImagePath], [City], [Deleted]) VALUES (5, N'Minapin Glacier', N'Minapin is located on the left side of the Hunza River, can be reached by some one hour hiking from 
Pisan.It also provides a panoramic views of Hunza valley as well as Rakaposhi', N'/TouristPlaceimg/img5.jpg', N'Hunza', 0)
INSERT [dbo].[TouristSpots] ([TouristSpots_Id], [Name], [Description], [ImagePath], [City], [Deleted]) VALUES (6, N'Ganish Village', N'Ganish Village is the first settlement of the Hunza Valley, dating back a thousand years. The people 
came from different areas, and as the settlement grew, they expanded outward and into different areas 
around the Hunza Valley. There are several old mosques, one of which is 400 years old', N'/TouristPlaceimg/img6.jpg', N'Hunza', 0)
SET IDENTITY_INSERT [dbo].[TouristSpots] OFF
GO
ALTER TABLE [dbo].[Booking] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ((0)) FOR [InActive]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[HotelInfo] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[Login] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[Packages] ADD  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Packages] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[PopularSpots] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[ResortInfo] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[RestaurantInfo] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT ((0)) FOR [InActive]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[TouristSpots] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[TravelInfo] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[CustomerInfo]  WITH CHECK ADD FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD FOREIGN KEY([Role_Id])
REFERENCES [dbo].[Roles] ([Role_Id])
GO
USE [master]
GO
ALTER DATABASE [DB_KarnelTravelGuide] SET  READ_WRITE 
GO
