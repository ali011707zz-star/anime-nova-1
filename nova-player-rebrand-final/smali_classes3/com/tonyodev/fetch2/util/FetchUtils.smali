.class public abstract Lcom/tonyodev/fetch2/util/FetchUtils;
.super Ljava/lang/Object;
.source "FetchUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/util/FetchUtils$WhenMappings;
    }
.end annotation


# direct methods
.method public static final canCancelDownload(Lcom/tonyodev/fetch2/Download;)Z
    .locals 1

    const-string v0, "download"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object p0

    sget-object v0, Lcom/tonyodev/fetch2/util/FetchUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final canPauseDownload(Lcom/tonyodev/fetch2/Download;)Z
    .locals 2

    const-string v0, "download"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object p0

    sget-object v0, Lcom/tonyodev/fetch2/util/FetchUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static final canResumeDownload(Lcom/tonyodev/fetch2/Download;)Z
    .locals 1

    const-string v0, "download"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object p0

    sget-object v0, Lcom/tonyodev/fetch2/util/FetchUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final canRetryDownload(Lcom/tonyodev/fetch2/Download;)Z
    .locals 1

    const-string v0, "download"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object p0

    sget-object v0, Lcom/tonyodev/fetch2/util/FetchUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final deleteAllInFolderForId(ILjava/lang/String;)V
    .locals 9

    const-string v0, "fileTempDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 149
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v5, v6, v2, v7, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 225
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :cond_2
    :goto_1
    if-ge v2, p0, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    check-cast p1, Ljava/io/File;

    .line 152
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_3
    return-void
.end method

.method public static final getDownloadedInfoFilePath(IILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "fileTempDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".data"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getFileSliceInfo(IJ)Lcom/tonyodev/fetch2core/FileSliceInfo;
    .locals 3

    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    long-to-float p0, p1

    const/high16 v0, 0x44800000    # 1024.0f

    div-float v1, p0, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p1, 0x6

    int-to-float p2, p1

    div-float/2addr p0, p2

    float-to-double v0, p0

    .line 180
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p0, v0

    float-to-long v0, p0

    .line 181
    new-instance p0, Lcom/tonyodev/fetch2core/FileSliceInfo;

    invoke-direct {p0, p1, v0, v1}, Lcom/tonyodev/fetch2core/FileSliceInfo;-><init>(IJ)V

    return-object p0

    :cond_0
    cmpl-float v0, v1, v2

    if-ltz v0, :cond_1

    const/4 p1, 0x4

    int-to-float p2, p1

    div-float/2addr p0, p2

    float-to-double v0, p0

    .line 185
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p0, v0

    float-to-long v0, p0

    .line 186
    new-instance p0, Lcom/tonyodev/fetch2core/FileSliceInfo;

    invoke-direct {p0, p1, v0, v1}, Lcom/tonyodev/fetch2core/FileSliceInfo;-><init>(IJ)V

    return-object p0

    .line 188
    :cond_1
    new-instance p0, Lcom/tonyodev/fetch2core/FileSliceInfo;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/tonyodev/fetch2core/FileSliceInfo;-><init>(IJ)V

    return-object p0

    :cond_2
    long-to-float p1, p1

    int-to-float p2, p0

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 191
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-float p1, p1

    float-to-long p1, p1

    .line 192
    new-instance v0, Lcom/tonyodev/fetch2core/FileSliceInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/tonyodev/fetch2core/FileSliceInfo;-><init>(IJ)V

    return-object v0
.end method

.method public static final getMetaFilePath(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "fileTempDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".meta.data"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getPreviousSliceCount(ILjava/lang/String;)I
    .locals 1

    const-string v0, "fileTempDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 119
    :try_start_0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/util/FetchUtils;->getMetaFilePath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getLongDataFromFile(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, p0

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static final getRequestForDownload(Lcom/tonyodev/fetch2/Download;JJLjava/lang/String;I)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
    .locals 15

    const-string v0, "download"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestMethod"

    move-object/from16 v10, p5

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    .line 61
    const-string v0, ""

    goto :goto_1

    :cond_1
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_1
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Range"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v1, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    .line 65
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v2

    .line 66
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getFile()Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 70
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getTag()Ljava/lang/String;

    move-result-object v7

    .line 71
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getIdentifier()J

    move-result-wide v8

    .line 73
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v11

    const/4 v12, 0x0

    .line 75
    const-string v13, ""

    move/from16 v14, p6

    .line 64
    invoke-direct/range {v1 .. v14}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Lcom/tonyodev/fetch2core/Extras;ZLjava/lang/String;I)V

    return-object v1
.end method

.method public static final getRequestForDownload(Lcom/tonyodev/fetch2/Download;Ljava/lang/String;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
    .locals 10

    const-string v0, "download"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x10

    const/4 v9, 0x0

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, p1

    .line 52
    invoke-static/range {v1 .. v9}, Lcom/tonyodev/fetch2/util/FetchUtils;->getRequestForDownload$default(Lcom/tonyodev/fetch2/Download;JJLjava/lang/String;IILjava/lang/Object;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getRequestForDownload$default(Lcom/tonyodev/fetch2/Download;JJLjava/lang/String;IILjava/lang/Object;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
    .locals 2

    and-int/lit8 p8, p7, 0x2

    const-wide/16 v0, -0x1

    if-eqz p8, :cond_0

    move-wide p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_1

    move-wide p3, v0

    :cond_1
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_2

    .line 58
    const-string p5, "GET"

    :cond_2
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_3

    const/4 p6, 0x1

    .line 55
    :cond_3
    invoke-static/range {p0 .. p6}, Lcom/tonyodev/fetch2/util/FetchUtils;->getRequestForDownload(Lcom/tonyodev/fetch2/Download;JJLjava/lang/String;I)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getRequestForDownload$default(Lcom/tonyodev/fetch2/Download;Ljava/lang/String;ILjava/lang/Object;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 51
    const-string p1, "GET"

    :cond_0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/util/FetchUtils;->getRequestForDownload(Lcom/tonyodev/fetch2/Download;Ljava/lang/String;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final getSavedDownloadedInfo(IILjava/lang/String;)J
    .locals 2

    const-string v0, "fileTempDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 166
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2/util/FetchUtils;->getDownloadedInfoFilePath(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getLongDataFromFile(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public static final saveCurrentSliceCount(IILjava/lang/String;)V
    .locals 1

    const-string v0, "fileTempDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    :try_start_0
    invoke-static {p0, p2}, Lcom/tonyodev/fetch2/util/FetchUtils;->getMetaFilePath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    int-to-long p1, p1

    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->writeLongToFile(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
