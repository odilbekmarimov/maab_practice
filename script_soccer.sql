USE [SOCCER_DB]
GO
/****** Object:  Table [dbo].[asst_referee_mast]    Script Date: 10/1/2024 6:18:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asst_referee_mast](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ass_ref_id] [float] NULL,
	[ass_ref_name] [nvarchar](255) NULL,
	[country_id] [float] NULL,
 CONSTRAINT [asst_referee_mast$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[coach_mast]    Script Date: 10/1/2024 6:18:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[coach_mast](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[coach_id] [float] NULL,
	[coach_name] [nvarchar](255) NULL,
 CONSTRAINT [coach_mast$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[goal_details]    Script Date: 10/1/2024 6:18:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[goal_details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[goal_id] [float] NULL,
	[match_no] [float] NULL,
	[player_id] [float] NULL,
	[team_id] [float] NULL,
	[goal_time] [float] NULL,
	[goal_type] [nvarchar](255) NULL,
	[play_stage] [nvarchar](255) NULL,
	[goal_schedule] [nvarchar](255) NULL,
	[goal_half] [float] NULL,
 CONSTRAINT [goal_details$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[match_captain]    Script Date: 10/1/2024 6:18:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[match_captain](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[match_no] [float] NULL,
	[team_id] [float] NULL,
	[player_captain] [float] NULL,
 CONSTRAINT [match_captain$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[match_details]    Script Date: 10/1/2024 6:18:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[match_details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[match_no] [float] NULL,
	[play_stage] [nvarchar](255) NULL,
	[team_id] [float] NULL,
	[win_lose] [nvarchar](255) NULL,
	[decided_by] [nvarchar](255) NULL,
	[goal_score] [float] NULL,
	[penalty_score] [nvarchar](255) NULL,
	[ass_ref] [float] NULL,
	[player_gk] [float] NULL,
 CONSTRAINT [match_details$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[match_mast]    Script Date: 10/1/2024 6:18:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[match_mast](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[match_no] [float] NULL,
	[play_stage] [nvarchar](255) NULL,
	[play_date] [datetime2](0) NULL,
	[results] [nvarchar](255) NULL,
	[decided_by] [nvarchar](255) NULL,
	[goal_score] [nvarchar](255) NULL,
	[venue_id] [float] NULL,
	[referee_id] [float] NULL,
	[audence] [float] NULL,
	[plr_of_match] [float] NULL,
	[stop1_sec] [float] NULL,
	[stop2_sec] [float] NULL,
 CONSTRAINT [match_mast$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[penalty_gk]    Script Date: 10/1/2024 6:18:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[penalty_gk](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[match_no] [float] NULL,
	[team_id] [float] NULL,
	[player_gk] [float] NULL,
 CONSTRAINT [penalty_gk$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[penalty_shootout]    Script Date: 10/1/2024 6:18:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[penalty_shootout](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[kick_id] [float] NULL,
	[match_no] [float] NULL,
	[team_id] [float] NULL,
	[player_id] [float] NULL,
	[score_goal] [nvarchar](255) NULL,
	[kick_no] [float] NULL,
 CONSTRAINT [penalty_shootout$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[player_booked]    Script Date: 10/1/2024 6:18:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[player_booked](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[match_no] [float] NULL,
	[team_id] [float] NULL,
	[player_id] [float] NULL,
	[booking_time] [float] NULL,
	[sent_off] [nvarchar](255) NULL,
	[play_schedule] [nvarchar](255) NULL,
	[play_half] [float] NULL,
 CONSTRAINT [player_booked$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[player_in_out]    Script Date: 10/1/2024 6:18:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[player_in_out](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[match_no] [float] NULL,
	[team_id] [float] NULL,
	[player_id] [float] NULL,
	[in_out] [nvarchar](255) NULL,
	[time_in_out] [float] NULL,
	[play_schedule] [nvarchar](255) NULL,
	[play_half] [float] NULL,
 CONSTRAINT [player_in_out$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[player_mast]    Script Date: 10/1/2024 6:18:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[player_mast](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[player_id] [float] NULL,
	[team_id] [float] NULL,
	[jersey_no] [float] NULL,
	[player_name] [nvarchar](255) NULL,
	[posi_to_play] [nvarchar](255) NULL,
	[dt_of_bir] [datetime2](0) NULL,
	[age] [float] NULL,
	[playing_club] [nvarchar](255) NULL,
 CONSTRAINT [player_mast$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[playing_position]    Script Date: 10/1/2024 6:18:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[playing_position](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Field1] [nvarchar](255) NULL,
	[Field2] [nvarchar](255) NULL,
 CONSTRAINT [playing_position$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[referee_mast]    Script Date: 10/1/2024 6:18:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[referee_mast](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[referee_id] [float] NULL,
	[referee_name] [nvarchar](255) NULL,
	[country_id] [float] NULL,
 CONSTRAINT [referee_mast$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Soccer Country]    Script Date: 10/1/2024 6:18:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Soccer Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[country_id] [float] NULL,
	[country_abbr] [nvarchar](255) NULL,
	[country_name] [nvarchar](255) NULL,
 CONSTRAINT [Soccer Country$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Soccer_city]    Script Date: 10/1/2024 6:18:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Soccer_city](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[city_id] [float] NULL,
	[city] [nvarchar](255) NULL,
	[country_id] [float] NULL,
 CONSTRAINT [Soccer_city$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Soccer_team]    Script Date: 10/1/2024 6:18:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Soccer_team](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[team_id] [float] NULL,
	[team_group] [nvarchar](255) NULL,
	[match_played] [float] NULL,
	[won] [float] NULL,
	[draw] [float] NULL,
	[lost] [float] NULL,
	[goal_for] [float] NULL,
	[goal_agnst] [float] NULL,
	[goal_diff] [float] NULL,
	[points] [float] NULL,
	[group_position] [float] NULL,
 CONSTRAINT [Soccer_team$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[soccer_venue]    Script Date: 10/1/2024 6:18:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[soccer_venue](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[venue_id] [float] NULL,
	[venue_name] [nvarchar](255) NULL,
	[city_id] [float] NULL,
	[aud_capacity] [float] NULL,
 CONSTRAINT [soccer_venue$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Team_coaches]    Script Date: 10/1/2024 6:18:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team_coaches](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[team_id] [float] NULL,
	[coach_id] [float] NULL,
 CONSTRAINT [Team_coaches$ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[asst_referee_mast].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'asst_referee_mast', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[asst_referee_mast].[ass_ref_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'asst_referee_mast', @level2type=N'COLUMN',@level2name=N'ass_ref_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[asst_referee_mast].[ass_ref_name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'asst_referee_mast', @level2type=N'COLUMN',@level2name=N'ass_ref_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[asst_referee_mast].[country_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'asst_referee_mast', @level2type=N'COLUMN',@level2name=N'country_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[asst_referee_mast].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'asst_referee_mast', @level2type=N'CONSTRAINT',@level2name=N'asst_referee_mast$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[asst_referee_mast]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'asst_referee_mast'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[coach_mast].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'coach_mast', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[coach_mast].[coach_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'coach_mast', @level2type=N'COLUMN',@level2name=N'coach_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[coach_mast].[coach_name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'coach_mast', @level2type=N'COLUMN',@level2name=N'coach_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[coach_mast].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'coach_mast', @level2type=N'CONSTRAINT',@level2name=N'coach_mast$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[coach_mast]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'coach_mast'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[goal_details].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'goal_details', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[goal_details].[goal_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'goal_details', @level2type=N'COLUMN',@level2name=N'goal_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[goal_details].[match_no]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'goal_details', @level2type=N'COLUMN',@level2name=N'match_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[goal_details].[player_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'goal_details', @level2type=N'COLUMN',@level2name=N'player_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[goal_details].[team_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'goal_details', @level2type=N'COLUMN',@level2name=N'team_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[goal_details].[goal_time]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'goal_details', @level2type=N'COLUMN',@level2name=N'goal_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[goal_details].[goal_type]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'goal_details', @level2type=N'COLUMN',@level2name=N'goal_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[goal_details].[play_stage]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'goal_details', @level2type=N'COLUMN',@level2name=N'play_stage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[goal_details].[goal_schedule]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'goal_details', @level2type=N'COLUMN',@level2name=N'goal_schedule'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[goal_details].[goal_half]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'goal_details', @level2type=N'COLUMN',@level2name=N'goal_half'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[goal_details].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'goal_details', @level2type=N'CONSTRAINT',@level2name=N'goal_details$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[goal_details]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'goal_details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_captain].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_captain', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_captain].[match_no]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_captain', @level2type=N'COLUMN',@level2name=N'match_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_captain].[team_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_captain', @level2type=N'COLUMN',@level2name=N'team_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_captain].[player_captain]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_captain', @level2type=N'COLUMN',@level2name=N'player_captain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_captain].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_captain', @level2type=N'CONSTRAINT',@level2name=N'match_captain$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_captain]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_captain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_details].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_details', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_details].[match_no]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_details', @level2type=N'COLUMN',@level2name=N'match_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_details].[play_stage]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_details', @level2type=N'COLUMN',@level2name=N'play_stage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_details].[team_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_details', @level2type=N'COLUMN',@level2name=N'team_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_details].[win_lose]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_details', @level2type=N'COLUMN',@level2name=N'win_lose'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_details].[decided_by]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_details', @level2type=N'COLUMN',@level2name=N'decided_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_details].[goal_score]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_details', @level2type=N'COLUMN',@level2name=N'goal_score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_details].[penalty_score]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_details', @level2type=N'COLUMN',@level2name=N'penalty_score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_details].[ass_ref]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_details', @level2type=N'COLUMN',@level2name=N'ass_ref'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_details].[player_gk]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_details', @level2type=N'COLUMN',@level2name=N'player_gk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_details].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_details', @level2type=N'CONSTRAINT',@level2name=N'match_details$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_details]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_mast].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_mast', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_mast].[match_no]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_mast', @level2type=N'COLUMN',@level2name=N'match_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_mast].[play_stage]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_mast', @level2type=N'COLUMN',@level2name=N'play_stage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_mast].[play_date]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_mast', @level2type=N'COLUMN',@level2name=N'play_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_mast].[results]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_mast', @level2type=N'COLUMN',@level2name=N'results'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_mast].[decided_by]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_mast', @level2type=N'COLUMN',@level2name=N'decided_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_mast].[goal_score]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_mast', @level2type=N'COLUMN',@level2name=N'goal_score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_mast].[venue_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_mast', @level2type=N'COLUMN',@level2name=N'venue_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_mast].[referee_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_mast', @level2type=N'COLUMN',@level2name=N'referee_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_mast].[audence]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_mast', @level2type=N'COLUMN',@level2name=N'audence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_mast].[plr_of_match]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_mast', @level2type=N'COLUMN',@level2name=N'plr_of_match'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_mast].[stop1_sec]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_mast', @level2type=N'COLUMN',@level2name=N'stop1_sec'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_mast].[stop2_sec]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_mast', @level2type=N'COLUMN',@level2name=N'stop2_sec'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_mast].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_mast', @level2type=N'CONSTRAINT',@level2name=N'match_mast$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[match_mast]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_mast'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[penalty_gk].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'penalty_gk', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[penalty_gk].[match_no]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'penalty_gk', @level2type=N'COLUMN',@level2name=N'match_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[penalty_gk].[team_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'penalty_gk', @level2type=N'COLUMN',@level2name=N'team_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[penalty_gk].[player_gk]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'penalty_gk', @level2type=N'COLUMN',@level2name=N'player_gk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[penalty_gk].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'penalty_gk', @level2type=N'CONSTRAINT',@level2name=N'penalty_gk$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[penalty_gk]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'penalty_gk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[penalty_shootout].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'penalty_shootout', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[penalty_shootout].[kick_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'penalty_shootout', @level2type=N'COLUMN',@level2name=N'kick_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[penalty_shootout].[match_no]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'penalty_shootout', @level2type=N'COLUMN',@level2name=N'match_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[penalty_shootout].[team_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'penalty_shootout', @level2type=N'COLUMN',@level2name=N'team_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[penalty_shootout].[player_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'penalty_shootout', @level2type=N'COLUMN',@level2name=N'player_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[penalty_shootout].[score_goal]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'penalty_shootout', @level2type=N'COLUMN',@level2name=N'score_goal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[penalty_shootout].[kick_no]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'penalty_shootout', @level2type=N'COLUMN',@level2name=N'kick_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[penalty_shootout].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'penalty_shootout', @level2type=N'CONSTRAINT',@level2name=N'penalty_shootout$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[penalty_shootout]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'penalty_shootout'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_booked].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_booked', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_booked].[match_no]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_booked', @level2type=N'COLUMN',@level2name=N'match_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_booked].[team_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_booked', @level2type=N'COLUMN',@level2name=N'team_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_booked].[player_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_booked', @level2type=N'COLUMN',@level2name=N'player_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_booked].[booking_time]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_booked', @level2type=N'COLUMN',@level2name=N'booking_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_booked].[sent_off]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_booked', @level2type=N'COLUMN',@level2name=N'sent_off'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_booked].[play_schedule]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_booked', @level2type=N'COLUMN',@level2name=N'play_schedule'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_booked].[play_half]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_booked', @level2type=N'COLUMN',@level2name=N'play_half'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_booked].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_booked', @level2type=N'CONSTRAINT',@level2name=N'player_booked$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_booked]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_booked'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_in_out].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_in_out', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_in_out].[match_no]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_in_out', @level2type=N'COLUMN',@level2name=N'match_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_in_out].[team_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_in_out', @level2type=N'COLUMN',@level2name=N'team_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_in_out].[player_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_in_out', @level2type=N'COLUMN',@level2name=N'player_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_in_out].[in_out]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_in_out', @level2type=N'COLUMN',@level2name=N'in_out'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_in_out].[time_in_out]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_in_out', @level2type=N'COLUMN',@level2name=N'time_in_out'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_in_out].[play_schedule]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_in_out', @level2type=N'COLUMN',@level2name=N'play_schedule'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_in_out].[play_half]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_in_out', @level2type=N'COLUMN',@level2name=N'play_half'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_in_out].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_in_out', @level2type=N'CONSTRAINT',@level2name=N'player_in_out$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_in_out]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_in_out'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_mast].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_mast', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_mast].[player_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_mast', @level2type=N'COLUMN',@level2name=N'player_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_mast].[team_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_mast', @level2type=N'COLUMN',@level2name=N'team_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_mast].[jersey_no]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_mast', @level2type=N'COLUMN',@level2name=N'jersey_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_mast].[player_name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_mast', @level2type=N'COLUMN',@level2name=N'player_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_mast].[posi_to_play]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_mast', @level2type=N'COLUMN',@level2name=N'posi_to_play'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_mast].[dt_of_bir]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_mast', @level2type=N'COLUMN',@level2name=N'dt_of_bir'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_mast].[age]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_mast', @level2type=N'COLUMN',@level2name=N'age'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_mast].[playing_club]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_mast', @level2type=N'COLUMN',@level2name=N'playing_club'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_mast].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_mast', @level2type=N'CONSTRAINT',@level2name=N'player_mast$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[player_mast]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'player_mast'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[playing_position].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'playing_position', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[playing_position].[Field1]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'playing_position', @level2type=N'COLUMN',@level2name=N'Field1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[playing_position].[Field2]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'playing_position', @level2type=N'COLUMN',@level2name=N'Field2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[playing_position].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'playing_position', @level2type=N'CONSTRAINT',@level2name=N'playing_position$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[playing_position]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'playing_position'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[referee_mast].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'referee_mast', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[referee_mast].[referee_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'referee_mast', @level2type=N'COLUMN',@level2name=N'referee_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[referee_mast].[referee_name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'referee_mast', @level2type=N'COLUMN',@level2name=N'referee_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[referee_mast].[country_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'referee_mast', @level2type=N'COLUMN',@level2name=N'country_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[referee_mast].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'referee_mast', @level2type=N'CONSTRAINT',@level2name=N'referee_mast$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[referee_mast]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'referee_mast'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer Country].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer Country', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer Country].[country_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer Country', @level2type=N'COLUMN',@level2name=N'country_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer Country].[country_abbr]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer Country', @level2type=N'COLUMN',@level2name=N'country_abbr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer Country].[country_name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer Country', @level2type=N'COLUMN',@level2name=N'country_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer Country].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer Country', @level2type=N'CONSTRAINT',@level2name=N'Soccer Country$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer Country]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer Country'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer_city].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer_city', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer_city].[city_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer_city', @level2type=N'COLUMN',@level2name=N'city_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer_city].[city]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer_city', @level2type=N'COLUMN',@level2name=N'city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer_city].[country_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer_city', @level2type=N'COLUMN',@level2name=N'country_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer_city].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer_city', @level2type=N'CONSTRAINT',@level2name=N'Soccer_city$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer_city]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer_team].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer_team', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer_team].[team_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer_team', @level2type=N'COLUMN',@level2name=N'team_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer_team].[team_group]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer_team', @level2type=N'COLUMN',@level2name=N'team_group'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer_team].[match_played]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer_team', @level2type=N'COLUMN',@level2name=N'match_played'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer_team].[won]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer_team', @level2type=N'COLUMN',@level2name=N'won'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer_team].[draw]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer_team', @level2type=N'COLUMN',@level2name=N'draw'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer_team].[lost]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer_team', @level2type=N'COLUMN',@level2name=N'lost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer_team].[goal_for]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer_team', @level2type=N'COLUMN',@level2name=N'goal_for'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer_team].[goal_agnst]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer_team', @level2type=N'COLUMN',@level2name=N'goal_agnst'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer_team].[goal_diff]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer_team', @level2type=N'COLUMN',@level2name=N'goal_diff'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer_team].[points]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer_team', @level2type=N'COLUMN',@level2name=N'points'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer_team].[group_position]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer_team', @level2type=N'COLUMN',@level2name=N'group_position'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer_team].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer_team', @level2type=N'CONSTRAINT',@level2name=N'Soccer_team$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Soccer_team]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soccer_team'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[soccer_venue].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'soccer_venue', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[soccer_venue].[venue_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'soccer_venue', @level2type=N'COLUMN',@level2name=N'venue_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[soccer_venue].[venue_name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'soccer_venue', @level2type=N'COLUMN',@level2name=N'venue_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[soccer_venue].[city_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'soccer_venue', @level2type=N'COLUMN',@level2name=N'city_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[soccer_venue].[aud_capacity]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'soccer_venue', @level2type=N'COLUMN',@level2name=N'aud_capacity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[soccer_venue].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'soccer_venue', @level2type=N'CONSTRAINT',@level2name=N'soccer_venue$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[soccer_venue]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'soccer_venue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Team_coaches].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Team_coaches', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Team_coaches].[team_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Team_coaches', @level2type=N'COLUMN',@level2name=N'team_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Team_coaches].[coach_id]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Team_coaches', @level2type=N'COLUMN',@level2name=N'coach_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Team_coaches].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Team_coaches', @level2type=N'CONSTRAINT',@level2name=N'Team_coaches$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'SoccerDB.[Team_coaches]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Team_coaches'
GO
