.class public final Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;
.super Ljava/lang/Object;
.source "FetchDatabaseManagerImpl.kt"

# interfaces
.implements Lcom/tonyodev/fetch2/database/FetchDatabaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl$WhenMappings;
    }
.end annotation


# instance fields
.field private volatile closed:Z

.field private final database:Landroidx/sqlite/db/SupportSQLiteDatabase;

.field private final defaultStorageResolver:Lcom/tonyodev/fetch2core/DefaultStorageResolver;

.field private delegate:Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;

.field private final fileExistChecksEnabled:Z

.field private final liveSettings:Lcom/tonyodev/fetch2/fetch/LiveSettings;

.field private final logger:Lcom/tonyodev/fetch2core/Logger;

.field private final namespace:Ljava/lang/String;

.field private final pendingCountIncludeAddedQuery:Ljava/lang/String;

.field private final pendingCountQuery:Ljava/lang/String;

.field private final requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

.field private final updatedDownloadsList:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$XW3HcCabUQ3FAgn9zZB78PqE20k(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Lcom/tonyodev/fetch2/fetch/LiveSettings;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitizeOnFirstEntry$lambda$6(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Lcom/tonyodev/fetch2/fetch/LiveSettings;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tonyodev/fetch2core/Logger;[Lcom/tonyodev/fetch2/database/migration/Migration;Lcom/tonyodev/fetch2/fetch/LiveSettings;ZLcom/tonyodev/fetch2core/DefaultStorageResolver;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "namespace"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "migrations"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liveSettings"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultStorageResolver"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->namespace:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    .line 24
    iput-object p5, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->liveSettings:Lcom/tonyodev/fetch2/fetch/LiveSettings;

    .line 25
    iput-boolean p6, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->fileExistChecksEnabled:Z

    .line 26
    iput-object p7, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->defaultStorageResolver:Lcom/tonyodev/fetch2core/DefaultStorageResolver;

    .line 39
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".db"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-static {p1, p3, p2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 40
    array-length p2, p4

    invoke-static {p4, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/room/migration/Migration;

    invoke-virtual {p1, p2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    .line 41
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/tonyodev/fetch2/database/DownloadDatabase;

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    .line 42
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 225
    sget-object p1, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/Status;->getValue()I

    move-result p2

    .line 226
    sget-object p3, Lcom/tonyodev/fetch2/Status;->DOWNLOADING:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {p3}, Lcom/tonyodev/fetch2/Status;->getValue()I

    move-result p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "SELECT _id FROM requests WHERE _status = \'"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\' OR _status = \'"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "\'"

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 224
    iput-object p5, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->pendingCountQuery:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/Status;->getValue()I

    move-result p1

    .line 230
    invoke-virtual {p3}, Lcom/tonyodev/fetch2/Status;->getValue()I

    move-result p3

    .line 231
    sget-object p5, Lcom/tonyodev/fetch2/Status;->ADDED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {p5}, Lcom/tonyodev/fetch2/Status;->getValue()I

    move-result p5

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 228
    iput-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->pendingCountIncludeAddedQuery:Ljava/lang/String;

    .line 255
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->updatedDownloadsList:Ljava/util/List;

    return-void
.end method

.method private final onCompleted(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 4

    .line 316
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 317
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 318
    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 319
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->updatedDownloadsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private final onDownloading(Lcom/tonyodev/fetch2/database/DownloadInfo;Z)V
    .locals 4

    if-eqz p2, :cond_1

    .line 304
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-ltz p2, :cond_0

    .line 305
    sget-object p2, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    goto :goto_0

    .line 307
    :cond_0
    sget-object p2, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    .line 309
    :goto_0
    invoke-virtual {p1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 310
    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 311
    iget-object p2, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->updatedDownloadsList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private final onPaused(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 4

    .line 289
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 290
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->fileExistChecksEnabled:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->defaultStorageResolver:Lcom/tonyodev/fetch2core/DefaultStorageResolver;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2core/DefaultStorageResolver;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p1, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    const-wide/16 v0, -0x1

    .line 293
    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 294
    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 295
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->updatedDownloadsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->getDelegate()Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;->deleteTempFilesForDownload(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    :cond_0
    return-void
.end method

.method private final sanitize(Lcom/tonyodev/fetch2/database/DownloadInfo;Z)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 327
    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize(Ljava/util/List;Z)Z

    move-result p1

    return p1
.end method

.method private final sanitize(Ljava/util/List;Z)Z
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->updatedDownloadsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 260
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    :pswitch_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch2/database/DownloadInfo;

    .line 262
    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v1

    sget-object v2, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 266
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->onPaused(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    goto :goto_0

    .line 264
    :pswitch_2
    invoke-direct {p0, v0, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->onDownloading(Lcom/tonyodev/fetch2/database/DownloadInfo;Z)V

    goto :goto_0

    .line 263
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->onCompleted(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->updatedDownloadsList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 279
    :try_start_0
    iget-object p2, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->updatedDownloadsList:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->update(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 281
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->getLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object v0

    const-string v1, "Failed to update"

    invoke-interface {v0, v1, p2}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->updatedDownloadsList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Lcom/tonyodev/fetch2/database/DownloadInfo;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 323
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize(Lcom/tonyodev/fetch2/database/DownloadInfo;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Ljava/util/List;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 257
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize(Ljava/util/List;Z)Z

    move-result p0

    return p0
.end method

.method private static final sanitizeOnFirstEntry$lambda$6(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Lcom/tonyodev/fetch2/fetch/LiveSettings;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/LiveSettings;->getDidSanitizeDatabaseOnFirstEntry()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->get()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize(Ljava/util/List;Z)Z

    .line 250
    invoke-virtual {p1, v1}, Lcom/tonyodev/fetch2/fetch/LiveSettings;->setDidSanitizeDatabaseOnFirstEntry(Z)V

    .line 252
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final throwExceptionIfClosed()V
    .locals 3

    .line 354
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->namespace:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " database is closed"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 332
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->closed:Z

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 346
    :catch_1
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->getLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object v0

    const-string v1, "Database closed"

    invoke-interface {v0, v1}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public delete(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 1

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 61
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->delete(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    return-void
.end method

.method public delete(Ljava/util/List;)V
    .locals 1

    const-string v0, "downloadInfoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 66
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->delete(Ljava/util/List;)V

    return-void
.end method

.method public get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 3

    .line 136
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 137
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 138
    invoke-static {p0, p1, v2, v0, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Lcom/tonyodev/fetch2/database/DownloadInfo;ZILjava/lang/Object;)Z

    return-object p1
.end method

.method public get()Ljava/util/List;
    .locals 4

    .line 129
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 130
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/tonyodev/fetch2/database/DownloadDao;->get()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 131
    invoke-static {p0, v0, v3, v1, v2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Ljava/util/List;ZILjava/lang/Object;)Z

    return-object v0
.end method

.method public get(Ljava/util/List;)Ljava/util/List;
    .locals 3

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 144
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 145
    invoke-static {p0, p1, v2, v0, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Ljava/util/List;ZILjava/lang/Object;)Z

    return-object p1
.end method

.method public getByFile(Ljava/lang/String;)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 3

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 151
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->getByFile(Ljava/lang/String;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 152
    invoke-static {p0, p1, v2, v0, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Lcom/tonyodev/fetch2/database/DownloadInfo;ZILjava/lang/Object;)Z

    return-object p1
.end method

.method public getByGroup(I)Ljava/util/List;
    .locals 3

    .line 175
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 176
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->getByGroup(I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 177
    invoke-static {p0, p1, v2, v0, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Ljava/util/List;ZILjava/lang/Object;)Z

    return-object p1
.end method

.method public getByStatus(Ljava/util/List;)Ljava/util/List;
    .locals 4

    const-string v0, "statuses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 167
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->getByStatus(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 168
    invoke-static {p0, v0, v3, v1, v2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Ljava/util/List;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 367
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 368
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/database/DownloadInfo;

    .line 169
    invoke-virtual {v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    return-object v0
.end method

.method public getDelegate()Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->delegate:Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;

    return-object v0
.end method

.method public getLogger()Lcom/tonyodev/fetch2core/Logger;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    return-object v0
.end method

.method public getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 1

    .line 350
    new-instance v0, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    return-object v0
.end method

.method public getPendingCount(Z)J
    .locals 2

    if-eqz p1, :cond_0

    .line 235
    :try_start_0
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->pendingCountIncludeAddedQuery:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->pendingCountQuery:Ljava/lang/String;

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 237
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    int-to-long v0, v0

    .line 238
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getPendingDownloadsSorted(Lcom/tonyodev/fetch2/PrioritySort;)Ljava/util/List;
    .locals 4

    const-string v0, "prioritySort"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 201
    sget-object v0, Lcom/tonyodev/fetch2/PrioritySort;->ASC:Lcom/tonyodev/fetch2/PrioritySort;

    if-ne p1, v0, :cond_0

    .line 202
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object p1

    sget-object v0, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-interface {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadDao;->getPendingDownloadsSorted(Lcom/tonyodev/fetch2/Status;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object p1

    sget-object v0, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-interface {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadDao;->getPendingDownloadsSortedDesc(Lcom/tonyodev/fetch2/Status;)Ljava/util/List;

    move-result-object p1

    :goto_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 206
    invoke-static {p0, p1, v2, v0, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Ljava/util/List;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/tonyodev/fetch2/database/DownloadInfo;

    .line 207
    invoke-virtual {v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v2

    sget-object v3, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    if-ne v2, v3, :cond_1

    .line 377
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    return-object p1
.end method

.method public insert(Lcom/tonyodev/fetch2/database/DownloadInfo;)Lkotlin/Pair;
    .locals 4

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 47
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->insert(Lcom/tonyodev/fetch2/database/DownloadInfo;)J

    move-result-wide v0

    .line 48
    new-instance v2, Lkotlin/Pair;

    iget-object v3, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v3, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->wasRowInserted(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public sanitizeOnFirstEntry()V
    .locals 2

    .line 246
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 247
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->liveSettings:Lcom/tonyodev/fetch2/fetch/LiveSettings;

    new-instance v1, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/fetch/LiveSettings;->execute(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public setDelegate(Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->delegate:Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;

    return-void
.end method

.method public update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 1

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 77
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 1

    const-string v0, "downloadInfoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 82
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->update(Ljava/util/List;)V

    return-void
.end method

.method public updateExtras(ILcom/tonyodev/fetch2core/Extras;)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 5

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 115
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 116
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 119
    invoke-virtual {p2}, Lcom/tonyodev/fetch2core/Extras;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 p2, 0x1

    aput-object v1, v3, p2

    .line 116
    const-string p2, "UPDATE requests SET _extras = \'?\' WHERE _id = ?"

    invoke-interface {v0, p2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object p2, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V

    .line 122
    iget-object p2, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 123
    iget-object p2, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    const/4 p2, 0x0

    .line 124
    invoke-static {p0, p1, v4, v2, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Lcom/tonyodev/fetch2/database/DownloadInfo;ZILjava/lang/Object;)Z

    return-object p1
.end method

.method public updateFileBytesInfoAndStatusOnly(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 8

    const-string v0, "DatabaseManager exception"

    const-string v1, "downloadInfo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 90
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    const-string v2, "UPDATE requests SET _written_bytes = ?, _total_bytes = ?, _status = ? WHERE _id = ?"

    .line 96
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 97
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 98
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tonyodev/fetch2/Status;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 99
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v4, v6, v3

    const/4 v3, 0x2

    aput-object v5, v6, v3

    const/4 v3, 0x3

    aput-object p1, v6, v3

    .line 90
    invoke-interface {v1, v2, v6}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->getLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 109
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->getLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
