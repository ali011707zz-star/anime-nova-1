.class public final Lcom/tonyodev/fetch2/database/DownloadDatabase_Impl;
.super Lcom/tonyodev/fetch2/database/DownloadDatabase;
.source "DownloadDatabase_Impl.java"


# instance fields
.field private volatile _downloadDao:Lcom/tonyodev/fetch2/database/DownloadDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tonyodev/fetch2/database/DownloadDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tonyodev/fetch2/database/DownloadDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/tonyodev/fetch2/database/DownloadDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 29
    iput-object p1, p0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tonyodev/fetch2/database/DownloadDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tonyodev/fetch2/database/DownloadDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 4

    .line 134
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 135
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 136
    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "requests"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4

    .line 35
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/tonyodev/fetch2/database/DownloadDatabase_Impl$1;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/tonyodev/fetch2/database/DownloadDatabase_Impl$1;-><init>(Lcom/tonyodev/fetch2/database/DownloadDatabase_Impl;I)V

    const-string v2, "460643a974555d792b8f5a6e1a5d323c"

    const-string v3, "946eca6b182e63ebe50cf82e483715bf"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 127
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 0

    .line 175
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 1

    .line 167
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 3

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 160
    const-class v1, Lcom/tonyodev/fetch2/database/DownloadDao;

    invoke-static {}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDatabase_Impl;->_downloadDao:Lcom/tonyodev/fetch2/database/DownloadDao;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDatabase_Impl;->_downloadDao:Lcom/tonyodev/fetch2/database/DownloadDao;

    return-object v0

    .line 184
    :cond_0
    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDatabase_Impl;->_downloadDao:Lcom/tonyodev/fetch2/database/DownloadDao;

    if-nez v0, :cond_1

    .line 186
    new-instance v0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;

    invoke-direct {v0, p0}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDatabase_Impl;->_downloadDao:Lcom/tonyodev/fetch2/database/DownloadDao;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 188
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDatabase_Impl;->_downloadDao:Lcom/tonyodev/fetch2/database/DownloadDao;

    monitor-exit p0

    return-object v0

    .line 189
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
