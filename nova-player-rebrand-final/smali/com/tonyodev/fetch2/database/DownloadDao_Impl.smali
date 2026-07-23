.class public final Lcom/tonyodev/fetch2/database/DownloadDao_Impl;
.super Ljava/lang/Object;
.source "DownloadDao_Impl.java"

# interfaces
.implements Lcom/tonyodev/fetch2/database/DownloadDao;


# instance fields
.field private final __converter:Lcom/tonyodev/fetch2/database/Converter;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfDownloadInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

.field private final __insertionAdapterOfDownloadInfo:Landroidx/room/EntityInsertionAdapter;

.field private final __preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfDownloadInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fget__converter(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;)Lcom/tonyodev/fetch2/database/Converter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    return-object p0
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/tonyodev/fetch2/database/Converter;

    invoke-direct {v0}, Lcom/tonyodev/fetch2/database/Converter;-><init>()V

    iput-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    .line 49
    iput-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 50
    new-instance v0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$1;-><init>(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__insertionAdapterOfDownloadInfo:Landroidx/room/EntityInsertionAdapter;

    .line 94
    new-instance v0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$2;-><init>(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__deletionAdapterOfDownloadInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 107
    new-instance v0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$3;-><init>(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__updateAdapterOfDownloadInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 152
    new-instance v0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$4;-><init>(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1

    .line 1773
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 191
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__deletionAdapterOfDownloadInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 194
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 197
    throw p1
.end method

.method public delete(Ljava/util/List;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 203
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__deletionAdapterOfDownloadInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    .line 206
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 209
    throw p1
.end method

.method public get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 24

    move-object/from16 v1, p0

    .line 376
    const-string v0, "SELECT * FROM requests WHERE _id = ?"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    move/from16 v0, p1

    int-to-long v4, v0

    .line 378
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 379
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 380
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 382
    :try_start_0
    const-string v0, "_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 383
    const-string v7, "_namespace"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 384
    const-string v8, "_url"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 385
    const-string v9, "_file"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 386
    const-string v10, "_group"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 387
    const-string v11, "_priority"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 388
    const-string v12, "_headers"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 389
    const-string v13, "_written_bytes"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 390
    const-string v14, "_total_bytes"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 391
    const-string v15, "_status"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 392
    const-string v2, "_error"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 393
    const-string v4, "_network_type"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 394
    const-string v5, "_created"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    .line 395
    :try_start_1
    const-string v3, "_tag"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    .line 396
    const-string v3, "_enqueue_action"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    .line 397
    const-string v3, "_identifier"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    .line 398
    const-string v3, "_download_on_enqueue"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    .line 399
    const-string v3, "_extras"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    .line 400
    const-string v3, "_auto_retry_max_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    .line 401
    const-string v3, "_auto_retry_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 403
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v23

    if-eqz v23, :cond_2

    move/from16 v23, v3

    .line 404
    new-instance v3, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    .line 406
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 407
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    .line 409
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    .line 412
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 415
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    .line 418
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 419
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    .line 422
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 423
    iget-object v7, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v7, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromPriorityValue(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    .line 424
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    .line 427
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    iget-object v7, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v7, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 429
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    .line 431
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 432
    invoke-virtual {v3, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 434
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 435
    invoke-virtual {v3, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 438
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 439
    iget-object v7, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v7, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromStatusValue(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v0

    .line 440
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 443
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 444
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromErrorValue(I)Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    .line 445
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 448
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 449
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromNetworkTypeValue(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v0

    .line 450
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    .line 452
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 453
    invoke-virtual {v3, v4, v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    move/from16 v0, v17

    .line 455
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 458
    :cond_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 460
    :goto_0
    invoke-virtual {v3, v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    move/from16 v0, v18

    .line 463
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 464
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromEnqueueActionValue(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    .line 465
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    move/from16 v0, v19

    .line 467
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 468
    invoke-virtual {v3, v4, v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    move/from16 v0, v20

    .line 471
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 473
    :goto_1
    invoke-virtual {v3, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    move/from16 v0, v21

    .line 476
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 477
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasJsonToExtras(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    .line 478
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    move/from16 v0, v22

    .line 480
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 481
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    move/from16 v0, v23

    .line 483
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 484
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    .line 490
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 491
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 490
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 491
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 492
    throw v0
.end method

.method public get()Ljava/util/List;
    .locals 27

    move-object/from16 v1, p0

    .line 256
    const-string v0, "SELECT * FROM requests"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 257
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 258
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    .line 260
    :try_start_0
    const-string v0, "_id"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 261
    const-string v6, "_namespace"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 262
    const-string v7, "_url"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 263
    const-string v8, "_file"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 264
    const-string v9, "_group"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 265
    const-string v10, "_priority"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 266
    const-string v11, "_headers"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 267
    const-string v12, "_written_bytes"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 268
    const-string v13, "_total_bytes"

    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 269
    const-string v14, "_status"

    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 270
    const-string v15, "_error"

    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 271
    const-string v2, "_network_type"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 272
    const-string v4, "_created"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    .line 273
    :try_start_1
    const-string v3, "_tag"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    .line 274
    const-string v3, "_enqueue_action"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    .line 275
    const-string v3, "_identifier"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    .line 276
    const-string v3, "_download_on_enqueue"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    .line 277
    const-string v3, "_extras"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    .line 278
    const-string v3, "_auto_retry_max_attempts"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    .line 279
    const-string v3, "_auto_retry_attempts"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    .line 280
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v24, v4

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 281
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 283
    new-instance v4, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    move-object/from16 v25, v3

    .line 285
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 286
    invoke-virtual {v4, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    .line 288
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-virtual {v4, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    .line 291
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 292
    invoke-virtual {v4, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 294
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-virtual {v4, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    .line 297
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 298
    invoke-virtual {v4, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    .line 301
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v26, v0

    .line 302
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v0, v3}, Lcom/tonyodev/fetch2/database/Converter;->fromPriorityValue(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    .line 303
    invoke-virtual {v4, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    .line 306
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    iget-object v3, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 308
    invoke-virtual {v4, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    move v0, v6

    move v3, v7

    .line 310
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 311
    invoke-virtual {v4, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 313
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 314
    invoke-virtual {v4, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 317
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 318
    iget-object v7, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v7, v6}, Lcom/tonyodev/fetch2/database/Converter;->fromStatusValue(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v6

    .line 319
    invoke-virtual {v4, v6}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 322
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 323
    iget-object v7, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v7, v6}, Lcom/tonyodev/fetch2/database/Converter;->fromErrorValue(I)Lcom/tonyodev/fetch2/Error;

    move-result-object v6

    .line 324
    invoke-virtual {v4, v6}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 327
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 328
    iget-object v7, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v7, v6}, Lcom/tonyodev/fetch2/database/Converter;->fromNetworkTypeValue(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v6

    .line 329
    invoke-virtual {v4, v6}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    move v7, v2

    move/from16 v6, v24

    move/from16 v24, v3

    .line 331
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 332
    invoke-virtual {v4, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    move/from16 v2, v17

    .line 334
    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 337
    :cond_0
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 339
    :goto_1
    invoke-virtual {v4, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    move/from16 v17, v0

    move/from16 v3, v18

    .line 342
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v18, v2

    .line 343
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromEnqueueActionValue(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    .line 344
    invoke-virtual {v4, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    move/from16 v0, v19

    move/from16 v19, v3

    .line 346
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 347
    invoke-virtual {v4, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    move/from16 v2, v20

    .line 350
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 352
    :goto_2
    invoke-virtual {v4, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    move/from16 v20, v0

    move/from16 v3, v21

    .line 355
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v21, v2

    .line 356
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasJsonToExtras(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    .line 357
    invoke-virtual {v4, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    move/from16 v0, v22

    .line 359
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 360
    invoke-virtual {v4, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    move/from16 v22, v0

    move/from16 v2, v23

    .line 362
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 363
    invoke-virtual {v4, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    move-object/from16 v0, v25

    .line 364
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v23, v2

    move v2, v7

    move/from16 v7, v24

    move/from16 v24, v6

    move/from16 v6, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v3

    move-object v3, v0

    move/from16 v0, v26

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v0, v3

    .line 368
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 369
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 368
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 369
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 370
    throw v0
.end method

.method public get(Ljava/util/List;)Ljava/util/List;
    .locals 27

    move-object/from16 v1, p0

    .line 497
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 498
    const-string v2, "SELECT * FROM requests WHERE _id IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 500
    invoke-static {v0, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 501
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 504
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 506
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    .line 507
    invoke-virtual {v2, v4, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    add-int/2addr v4, v3

    goto :goto_0

    .line 510
    :cond_0
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 511
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 513
    :try_start_0
    const-string v0, "_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 514
    const-string v7, "_namespace"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 515
    const-string v8, "_url"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 516
    const-string v9, "_file"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 517
    const-string v10, "_group"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 518
    const-string v11, "_priority"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 519
    const-string v12, "_headers"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 520
    const-string v13, "_written_bytes"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 521
    const-string v14, "_total_bytes"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 522
    const-string v15, "_status"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 523
    const-string v3, "_error"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 524
    const-string v4, "_network_type"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 525
    const-string v5, "_created"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    .line 526
    :try_start_1
    const-string v2, "_tag"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    .line 527
    const-string v2, "_enqueue_action"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    .line 528
    const-string v2, "_identifier"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    .line 529
    const-string v2, "_download_on_enqueue"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    .line 530
    const-string v2, "_extras"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    .line 531
    const-string v2, "_auto_retry_max_attempts"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    .line 532
    const-string v2, "_auto_retry_attempts"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    .line 533
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v24, v5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 534
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 536
    new-instance v5, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    move-object/from16 v25, v2

    .line 538
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 539
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    .line 541
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 542
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    .line 544
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 545
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 547
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 548
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    .line 550
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 551
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    .line 554
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v26, v0

    .line 555
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v0, v2}, Lcom/tonyodev/fetch2/database/Converter;->fromPriorityValue(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    .line 556
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    .line 559
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 560
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 561
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    move v0, v7

    move v2, v8

    .line 563
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 564
    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 566
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 567
    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 570
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 571
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromStatusValue(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v7

    .line 572
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 575
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 576
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromErrorValue(I)Lcom/tonyodev/fetch2/Error;

    move-result-object v7

    .line 577
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 580
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 581
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromNetworkTypeValue(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    .line 582
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    move v8, v3

    move/from16 v7, v24

    move/from16 v24, v2

    .line 584
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 585
    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    move/from16 v2, v17

    .line 587
    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    .line 590
    :cond_1
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 592
    :goto_2
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    move/from16 v17, v0

    move/from16 v3, v18

    .line 595
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v18, v2

    .line 596
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromEnqueueActionValue(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    .line 597
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    move/from16 v0, v19

    move/from16 v19, v3

    .line 599
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 600
    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    move/from16 v2, v20

    .line 603
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    .line 605
    :goto_3
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    move/from16 v20, v0

    move/from16 v3, v21

    .line 608
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v21, v2

    .line 609
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasJsonToExtras(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    .line 610
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    move/from16 v0, v22

    .line 612
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 613
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    move/from16 v22, v0

    move/from16 v2, v23

    .line 615
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 616
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    move-object/from16 v0, v25

    .line 617
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v23, v21

    move/from16 v21, v3

    move v3, v8

    move/from16 v8, v24

    move/from16 v24, v7

    move/from16 v7, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v23

    move/from16 v23, v2

    move-object v2, v0

    move/from16 v0, v26

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_3
    move-object v0, v2

    .line 621
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 622
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 621
    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 622
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 623
    throw v0
.end method

.method public getByFile(Ljava/lang/String;)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 24

    move-object/from16 v1, p0

    .line 629
    const-string v0, "SELECT * FROM requests WHERE _file = ?"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    move-object/from16 v0, p1

    .line 631
    invoke-virtual {v3, v2, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 632
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 633
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 635
    :try_start_0
    const-string v0, "_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 636
    const-string v7, "_namespace"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 637
    const-string v8, "_url"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 638
    const-string v9, "_file"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 639
    const-string v10, "_group"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 640
    const-string v11, "_priority"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 641
    const-string v12, "_headers"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 642
    const-string v13, "_written_bytes"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 643
    const-string v14, "_total_bytes"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 644
    const-string v15, "_status"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 645
    const-string v2, "_error"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 646
    const-string v4, "_network_type"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 647
    const-string v5, "_created"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    .line 648
    :try_start_1
    const-string v3, "_tag"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    .line 649
    const-string v3, "_enqueue_action"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    .line 650
    const-string v3, "_identifier"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    .line 651
    const-string v3, "_download_on_enqueue"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    .line 652
    const-string v3, "_extras"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    .line 653
    const-string v3, "_auto_retry_max_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    .line 654
    const-string v3, "_auto_retry_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 656
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v23

    if-eqz v23, :cond_2

    move/from16 v23, v3

    .line 657
    new-instance v3, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    .line 659
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 660
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    .line 662
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 663
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    .line 665
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 668
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    .line 671
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 672
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    .line 675
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 676
    iget-object v7, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v7, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromPriorityValue(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    .line 677
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    .line 680
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 681
    iget-object v7, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v7, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 682
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    .line 684
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 685
    invoke-virtual {v3, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 687
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 688
    invoke-virtual {v3, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 691
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 692
    iget-object v7, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v7, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromStatusValue(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v0

    .line 693
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 696
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 697
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromErrorValue(I)Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    .line 698
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 701
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 702
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromNetworkTypeValue(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v0

    .line 703
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    .line 705
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 706
    invoke-virtual {v3, v4, v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    move/from16 v0, v17

    .line 708
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 711
    :cond_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 713
    :goto_0
    invoke-virtual {v3, v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    move/from16 v0, v18

    .line 716
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 717
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromEnqueueActionValue(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    .line 718
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    move/from16 v0, v19

    .line 720
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 721
    invoke-virtual {v3, v4, v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    move/from16 v0, v20

    .line 724
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 726
    :goto_1
    invoke-virtual {v3, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    move/from16 v0, v21

    .line 729
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 730
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasJsonToExtras(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    .line 731
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    move/from16 v0, v22

    .line 733
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 734
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    move/from16 v0, v23

    .line 736
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 737
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    .line 743
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 744
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 743
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 744
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 745
    throw v0
.end method

.method public getByGroup(I)Ljava/util/List;
    .locals 27

    move-object/from16 v1, p0

    .line 1006
    const-string v0, "SELECT * FROM requests WHERE _group = ?"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    move/from16 v0, p1

    int-to-long v4, v0

    .line 1008
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 1009
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1010
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 1012
    :try_start_0
    const-string v0, "_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 1013
    const-string v7, "_namespace"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 1014
    const-string v8, "_url"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 1015
    const-string v9, "_file"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 1016
    const-string v10, "_group"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 1017
    const-string v11, "_priority"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 1018
    const-string v12, "_headers"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 1019
    const-string v13, "_written_bytes"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 1020
    const-string v14, "_total_bytes"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 1021
    const-string v15, "_status"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 1022
    const-string v2, "_error"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 1023
    const-string v4, "_network_type"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1024
    const-string v5, "_created"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    .line 1025
    :try_start_1
    const-string v3, "_tag"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    .line 1026
    const-string v3, "_enqueue_action"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    .line 1027
    const-string v3, "_identifier"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    .line 1028
    const-string v3, "_download_on_enqueue"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    .line 1029
    const-string v3, "_extras"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    .line 1030
    const-string v3, "_auto_retry_max_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    .line 1031
    const-string v3, "_auto_retry_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    .line 1032
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v24, v5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1033
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1035
    new-instance v5, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    move-object/from16 v25, v3

    .line 1037
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1038
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    .line 1040
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1041
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    .line 1043
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1044
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 1046
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1047
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    .line 1049
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1050
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    .line 1053
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v26, v0

    .line 1054
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v0, v3}, Lcom/tonyodev/fetch2/database/Converter;->fromPriorityValue(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    .line 1055
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    .line 1058
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1059
    iget-object v3, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1060
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    move v0, v7

    move v3, v8

    .line 1062
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1063
    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 1065
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1066
    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 1069
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1070
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromStatusValue(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v7

    .line 1071
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 1074
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1075
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromErrorValue(I)Lcom/tonyodev/fetch2/Error;

    move-result-object v7

    .line 1076
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 1079
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1080
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromNetworkTypeValue(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    .line 1081
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    move v8, v2

    move/from16 v7, v24

    move/from16 v24, v3

    .line 1083
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1084
    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    move/from16 v2, v17

    .line 1086
    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 1089
    :cond_0
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1091
    :goto_1
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    move/from16 v17, v0

    move/from16 v3, v18

    .line 1094
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v18, v2

    .line 1095
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromEnqueueActionValue(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    .line 1096
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    move/from16 v0, v19

    move/from16 v19, v3

    .line 1098
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1099
    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    move/from16 v2, v20

    .line 1102
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 1104
    :goto_2
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    move/from16 v20, v0

    move/from16 v3, v21

    .line 1107
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v21, v2

    .line 1108
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasJsonToExtras(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    .line 1109
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    move/from16 v0, v22

    .line 1111
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1112
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    move/from16 v22, v0

    move/from16 v2, v23

    .line 1114
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1115
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    move-object/from16 v0, v25

    .line 1116
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v23, v2

    move v2, v8

    move/from16 v8, v24

    move/from16 v24, v7

    move/from16 v7, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v3

    move-object v3, v0

    move/from16 v0, v26

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v0, v3

    .line 1120
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1121
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 1120
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1121
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1122
    throw v0
.end method

.method public getByStatus(Ljava/util/List;)Ljava/util/List;
    .locals 27

    move-object/from16 v1, p0

    .line 873
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 874
    const-string v2, "SELECT * FROM requests WHERE _status IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 876
    invoke-static {v0, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 877
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 880
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 882
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tonyodev/fetch2/Status;

    .line 883
    iget-object v6, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v6, v5}, Lcom/tonyodev/fetch2/database/Converter;->toStatusValue(Lcom/tonyodev/fetch2/Status;)I

    move-result v5

    int-to-long v5, v5

    .line 884
    invoke-virtual {v2, v4, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    add-int/2addr v4, v3

    goto :goto_0

    .line 887
    :cond_0
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 888
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 890
    :try_start_0
    const-string v0, "_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 891
    const-string v7, "_namespace"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 892
    const-string v8, "_url"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 893
    const-string v9, "_file"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 894
    const-string v10, "_group"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 895
    const-string v11, "_priority"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 896
    const-string v12, "_headers"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 897
    const-string v13, "_written_bytes"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 898
    const-string v14, "_total_bytes"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 899
    const-string v15, "_status"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 900
    const-string v3, "_error"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 901
    const-string v4, "_network_type"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 902
    const-string v5, "_created"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    .line 903
    :try_start_1
    const-string v2, "_tag"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    .line 904
    const-string v2, "_enqueue_action"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    .line 905
    const-string v2, "_identifier"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    .line 906
    const-string v2, "_download_on_enqueue"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    .line 907
    const-string v2, "_extras"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    .line 908
    const-string v2, "_auto_retry_max_attempts"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    .line 909
    const-string v2, "_auto_retry_attempts"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    .line 910
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v24, v5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 911
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 913
    new-instance v5, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    move-object/from16 v25, v2

    .line 915
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 916
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    .line 918
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 919
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    .line 921
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 922
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 924
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 925
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    .line 927
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 928
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    .line 931
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v26, v0

    .line 932
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v0, v2}, Lcom/tonyodev/fetch2/database/Converter;->fromPriorityValue(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    .line 933
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    .line 936
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 937
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 938
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    move v0, v7

    move v2, v8

    .line 940
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 941
    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 943
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 944
    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 947
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 948
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromStatusValue(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v7

    .line 949
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 952
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 953
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromErrorValue(I)Lcom/tonyodev/fetch2/Error;

    move-result-object v7

    .line 954
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 957
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 958
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromNetworkTypeValue(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    .line 959
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    move v8, v3

    move/from16 v7, v24

    move/from16 v24, v2

    .line 961
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 962
    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    move/from16 v2, v17

    .line 964
    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    .line 967
    :cond_1
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 969
    :goto_2
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    move/from16 v17, v0

    move/from16 v3, v18

    .line 972
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v18, v2

    .line 973
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromEnqueueActionValue(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    .line 974
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    move/from16 v0, v19

    move/from16 v19, v3

    .line 976
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 977
    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    move/from16 v2, v20

    .line 980
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    .line 982
    :goto_3
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    move/from16 v20, v0

    move/from16 v3, v21

    .line 985
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v21, v2

    .line 986
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasJsonToExtras(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    .line 987
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    move/from16 v0, v22

    .line 989
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 990
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    move/from16 v22, v0

    move/from16 v2, v23

    .line 992
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 993
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    move-object/from16 v0, v25

    .line 994
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v23, v21

    move/from16 v21, v3

    move v3, v8

    move/from16 v8, v24

    move/from16 v24, v7

    move/from16 v7, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v23

    move/from16 v23, v2

    move-object v2, v0

    move/from16 v0, v26

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_3
    move-object v0, v2

    .line 998
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 999
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 998
    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 999
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1000
    throw v0
.end method

.method public getPendingDownloadsSorted(Lcom/tonyodev/fetch2/Status;)Ljava/util/List;
    .locals 27

    move-object/from16 v1, p0

    .line 1264
    const-string v0, "SELECT * FROM requests WHERE _status = ? ORDER BY _priority DESC, _created ASC"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 1266
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Lcom/tonyodev/fetch2/database/Converter;->toStatusValue(Lcom/tonyodev/fetch2/Status;)I

    move-result v0

    int-to-long v4, v0

    .line 1267
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 1268
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1269
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 1271
    :try_start_0
    const-string v0, "_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 1272
    const-string v7, "_namespace"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 1273
    const-string v8, "_url"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 1274
    const-string v9, "_file"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 1275
    const-string v10, "_group"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 1276
    const-string v11, "_priority"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 1277
    const-string v12, "_headers"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 1278
    const-string v13, "_written_bytes"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 1279
    const-string v14, "_total_bytes"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 1280
    const-string v15, "_status"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 1281
    const-string v2, "_error"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 1282
    const-string v4, "_network_type"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1283
    const-string v5, "_created"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    .line 1284
    :try_start_1
    const-string v3, "_tag"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    .line 1285
    const-string v3, "_enqueue_action"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    .line 1286
    const-string v3, "_identifier"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    .line 1287
    const-string v3, "_download_on_enqueue"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    .line 1288
    const-string v3, "_extras"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    .line 1289
    const-string v3, "_auto_retry_max_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    .line 1290
    const-string v3, "_auto_retry_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    .line 1291
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v24, v5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1292
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1294
    new-instance v5, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    move-object/from16 v25, v3

    .line 1296
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1297
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    .line 1299
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1300
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    .line 1302
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1303
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 1305
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1306
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    .line 1308
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1309
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    .line 1312
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v26, v0

    .line 1313
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v0, v3}, Lcom/tonyodev/fetch2/database/Converter;->fromPriorityValue(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    .line 1314
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    .line 1317
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1318
    iget-object v3, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1319
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    move v0, v7

    move v3, v8

    .line 1321
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1322
    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 1324
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1325
    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 1328
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1329
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromStatusValue(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v7

    .line 1330
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 1333
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1334
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromErrorValue(I)Lcom/tonyodev/fetch2/Error;

    move-result-object v7

    .line 1335
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 1338
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1339
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromNetworkTypeValue(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    .line 1340
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    move v8, v2

    move/from16 v7, v24

    move/from16 v24, v3

    .line 1342
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1343
    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    move/from16 v2, v17

    .line 1345
    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 1348
    :cond_0
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1350
    :goto_1
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    move/from16 v17, v0

    move/from16 v3, v18

    .line 1353
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v18, v2

    .line 1354
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromEnqueueActionValue(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    .line 1355
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    move/from16 v0, v19

    move/from16 v19, v3

    .line 1357
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1358
    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    move/from16 v2, v20

    .line 1361
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 1363
    :goto_2
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    move/from16 v20, v0

    move/from16 v3, v21

    .line 1366
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v21, v2

    .line 1367
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasJsonToExtras(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    .line 1368
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    move/from16 v0, v22

    .line 1370
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1371
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    move/from16 v22, v0

    move/from16 v2, v23

    .line 1373
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1374
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    move-object/from16 v0, v25

    .line 1375
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v23, v2

    move v2, v8

    move/from16 v8, v24

    move/from16 v24, v7

    move/from16 v7, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v3

    move-object v3, v0

    move/from16 v0, v26

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v0, v3

    .line 1379
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1380
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 1379
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1380
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1381
    throw v0
.end method

.method public getPendingDownloadsSortedDesc(Lcom/tonyodev/fetch2/Status;)Ljava/util/List;
    .locals 27

    move-object/from16 v1, p0

    .line 1387
    const-string v0, "SELECT * FROM requests WHERE _status = ? ORDER BY _priority DESC, _created DESC"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 1389
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Lcom/tonyodev/fetch2/database/Converter;->toStatusValue(Lcom/tonyodev/fetch2/Status;)I

    move-result v0

    int-to-long v4, v0

    .line 1390
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 1391
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1392
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 1394
    :try_start_0
    const-string v0, "_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 1395
    const-string v7, "_namespace"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 1396
    const-string v8, "_url"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 1397
    const-string v9, "_file"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 1398
    const-string v10, "_group"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 1399
    const-string v11, "_priority"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 1400
    const-string v12, "_headers"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 1401
    const-string v13, "_written_bytes"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 1402
    const-string v14, "_total_bytes"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 1403
    const-string v15, "_status"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 1404
    const-string v2, "_error"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 1405
    const-string v4, "_network_type"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1406
    const-string v5, "_created"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    .line 1407
    :try_start_1
    const-string v3, "_tag"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    .line 1408
    const-string v3, "_enqueue_action"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    .line 1409
    const-string v3, "_identifier"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    .line 1410
    const-string v3, "_download_on_enqueue"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    .line 1411
    const-string v3, "_extras"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    .line 1412
    const-string v3, "_auto_retry_max_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    .line 1413
    const-string v3, "_auto_retry_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    .line 1414
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v24, v5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1415
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1417
    new-instance v5, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    move-object/from16 v25, v3

    .line 1419
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1420
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    .line 1422
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1423
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    .line 1425
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1426
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 1428
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1429
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    .line 1431
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1432
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    .line 1435
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v26, v0

    .line 1436
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v0, v3}, Lcom/tonyodev/fetch2/database/Converter;->fromPriorityValue(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    .line 1437
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    .line 1440
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1441
    iget-object v3, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1442
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    move v0, v7

    move v3, v8

    .line 1444
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1445
    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 1447
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1448
    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 1451
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1452
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromStatusValue(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v7

    .line 1453
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 1456
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1457
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromErrorValue(I)Lcom/tonyodev/fetch2/Error;

    move-result-object v7

    .line 1458
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 1461
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1462
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromNetworkTypeValue(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    .line 1463
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    move v8, v2

    move/from16 v7, v24

    move/from16 v24, v3

    .line 1465
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1466
    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    move/from16 v2, v17

    .line 1468
    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 1471
    :cond_0
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1473
    :goto_1
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    move/from16 v17, v0

    move/from16 v3, v18

    .line 1476
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v18, v2

    .line 1477
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromEnqueueActionValue(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    .line 1478
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    move/from16 v0, v19

    move/from16 v19, v3

    .line 1480
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1481
    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    move/from16 v2, v20

    .line 1484
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 1486
    :goto_2
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    move/from16 v20, v0

    move/from16 v3, v21

    .line 1489
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v21, v2

    .line 1490
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasJsonToExtras(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    .line 1491
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    move/from16 v0, v22

    .line 1493
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1494
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    move/from16 v22, v0

    move/from16 v2, v23

    .line 1496
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1497
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    move-object/from16 v0, v25

    .line 1498
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v23, v2

    move v2, v8

    move/from16 v8, v24

    move/from16 v24, v7

    move/from16 v7, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v3

    move-object v3, v0

    move/from16 v0, v26

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v0, v3

    .line 1502
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1503
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 1502
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1503
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1504
    throw v0
.end method

.method public insert(Lcom/tonyodev/fetch2/database/DownloadInfo;)J
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 165
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__insertionAdapterOfDownloadInfo:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 168
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 172
    throw p1
.end method

.method public update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 215
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__updateAdapterOfDownloadInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 218
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 221
    throw p1
.end method

.method public update(Ljava/util/List;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 227
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__updateAdapterOfDownloadInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    .line 230
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 233
    throw p1
.end method
