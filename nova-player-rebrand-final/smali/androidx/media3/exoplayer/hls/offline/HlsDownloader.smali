.class public final Landroidx/media3/exoplayer/hls/offline/HlsDownloader;
.super Landroidx/media3/exoplayer/offline/SegmentDownloader;
.source "HlsDownloader.java"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/offline/HlsDownloader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/offline/SegmentDownloader<",
        "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/cache/CacheDataSource$Factory;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    new-instance v0, Landroidx/media3/exoplayer/dash/offline/DashDownloader$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/media3/exoplayer/dash/offline/DashDownloader$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/hls/offline/HlsDownloader;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    new-instance v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;

    invoke-direct {v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;-><init>()V

    const-wide/16 v7, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/hls/offline/HlsDownloader;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;JJJ)V

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;JJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;",
            ">;",
            "Landroidx/media3/datasource/cache/CacheDataSource$Factory;",
            "Ljava/util/concurrent/Executor;",
            "JJJ)V"
        }
    .end annotation

    .line 209
    invoke-direct/range {p0 .. p10}, Landroidx/media3/exoplayer/offline/SegmentDownloader;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;JJJ)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;JJJLandroidx/media3/exoplayer/hls/offline/HlsDownloader$1;)V
    .locals 0

    .line 68
    invoke-direct/range {p0 .. p10}, Landroidx/media3/exoplayer/hls/offline/HlsDownloader;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;JJJ)V

    return-void
.end method

.method private addMediaPlaylistDataSpecs(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/datasource/DataSpec;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 272
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 273
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v1}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->getCompressibleDataSpec(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addSegment(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;Ljava/util/HashSet;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;",
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;",
            ">;)V"
        }
    .end annotation

    .line 282
    iget-object v0, p1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    .line 283
    iget-wide v1, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-wide v3, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    add-long/2addr v1, v3

    .line 284
    iget-object p1, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 285
    invoke-static {v0, p1}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 286
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 287
    new-instance p3, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    invoke-static {p1}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->getCompressibleDataSpec(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    invoke-direct {p3, v1, v2, p1}, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;-><init>(JLandroidx/media3/datasource/DataSpec;)V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_0
    iget-object p1, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->url:Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 291
    new-instance v3, Landroidx/media3/datasource/DataSpec;

    iget-wide v5, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeOffset:J

    iget-wide v7, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeLength:J

    invoke-direct/range {v3 .. v8}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JJ)V

    .line 292
    new-instance p1, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    invoke-direct {p1, v1, v2, v3}, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;-><init>(JLandroidx/media3/datasource/DataSpec;)V

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected getSegments(Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;Z)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/datasource/DataSource;",
            "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move/from16 v2, p3

    .line 222
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 223
    instance-of v4, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    if-eqz v4, :cond_0

    .line 224
    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    .line 225
    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->mediaPlaylistUrls:Ljava/util/List;

    invoke-direct {v1, v0, v3}, Landroidx/media3/exoplayer/hls/offline/HlsDownloader;->addMediaPlaylistDataSpecs(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    .line 228
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->getCompressibleDataSpec(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    .line 227
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 232
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 233
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_8

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v0, 0x1

    check-cast v8, Landroidx/media3/datasource/DataSpec;

    .line 234
    new-instance v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    const-wide/16 v10, 0x0

    invoke-direct {v0, v10, v11, v8}, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;-><init>(JLandroidx/media3/datasource/DataSpec;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p1

    .line 237
    :try_start_0
    invoke-virtual {v1, v12, v8, v2}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->getManifest(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)Landroidx/media3/exoplayer/offline/FilterableManifest;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    iget-object v8, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    if-eqz v2, :cond_1

    goto :goto_2

    .line 247
    :cond_1
    iget-wide v10, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->startPositionUs:J

    :goto_2
    if-eqz v2, :cond_2

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    :cond_2
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 248
    iget-wide v13, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->durationUs:J

    :goto_3
    const/16 v17, 0x0

    move-object/from16 v7, v17

    move-wide/from16 v17, v15

    const/4 v15, 0x0

    .line 249
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_6

    .line 250
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    move-object/from16 v19, v8

    move/from16 v16, v9

    .line 251
    iget-wide v8, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    move-wide/from16 v20, v8

    iget-wide v8, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    add-long v8, v20, v8

    move-wide/from16 v20, v8

    .line 252
    iget-wide v8, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->durationUs:J

    add-long v8, v20, v8

    cmp-long v8, v8, v10

    if-gtz v8, :cond_3

    goto :goto_5

    :cond_3
    cmp-long v8, v13, v17

    if-eqz v8, :cond_4

    add-long v8, v10, v13

    cmp-long v8, v20, v8

    if-ltz v8, :cond_4

    goto :goto_6

    .line 260
    :cond_4
    iget-object v8, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->initializationSegment:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    if-eqz v8, :cond_5

    if-eq v8, v7, :cond_5

    .line 263
    invoke-direct {v1, v0, v8, v5, v4}, Landroidx/media3/exoplayer/hls/offline/HlsDownloader;->addSegment(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    move-object v7, v8

    .line 265
    :cond_5
    invoke-direct {v1, v0, v2, v5, v4}, Landroidx/media3/exoplayer/hls/offline/HlsDownloader;->addSegment(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    :goto_5
    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v16

    move-object/from16 v8, v19

    goto :goto_4

    :cond_6
    move/from16 v16, v9

    :goto_6
    move/from16 v2, p3

    move/from16 v0, v16

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move/from16 v16, v9

    if-eqz p3, :cond_7

    goto :goto_6

    .line 240
    :cond_7
    throw v0

    :cond_8
    return-object v4
.end method

.method protected bridge synthetic getSegments(Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/offline/FilterableManifest;Z)Ljava/util/List;
    .locals 0

    .line 67
    check-cast p2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/hls/offline/HlsDownloader;->getSegments(Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
