.class Lcom/tonyodev/fetch2/database/DownloadDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "DownloadDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2/database/DownloadDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch2/database/DownloadDao_Impl;


# direct methods
.method constructor <init>(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$1;->this$0:Lcom/tonyodev/fetch2/database/DownloadDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 4

    .line 60
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v0, 0x2

    .line 61
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x3

    .line 62
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x4

    .line 63
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getGroup()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 65
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$1;->this$0:Lcom/tonyodev/fetch2/database/DownloadDao_Impl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->-$$Nest$fget__converter(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;)Lcom/tonyodev/fetch2/database/Converter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getPriority()Lcom/tonyodev/fetch2/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/Converter;->toPriorityValue(Lcom/tonyodev/fetch2/Priority;)I

    move-result v0

    const/4 v1, 0x6

    int-to-long v2, v0

    .line 66
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 67
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$1;->this$0:Lcom/tonyodev/fetch2/database/DownloadDao_Impl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->-$$Nest$fget__converter(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;)Lcom/tonyodev/fetch2/database/Converter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/Converter;->toHeaderStringsMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    .line 68
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    const/16 v0, 0x8

    .line 69
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x9

    .line 70
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 71
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$1;->this$0:Lcom/tonyodev/fetch2/database/DownloadDao_Impl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->-$$Nest$fget__converter(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;)Lcom/tonyodev/fetch2/database/Converter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/Converter;->toStatusValue(Lcom/tonyodev/fetch2/Status;)I

    move-result v0

    const/16 v1, 0xa

    int-to-long v2, v0

    .line 72
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 73
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$1;->this$0:Lcom/tonyodev/fetch2/database/DownloadDao_Impl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->-$$Nest$fget__converter(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;)Lcom/tonyodev/fetch2/database/Converter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getError()Lcom/tonyodev/fetch2/Error;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/Converter;->toErrorValue(Lcom/tonyodev/fetch2/Error;)I

    move-result v0

    const/16 v1, 0xb

    int-to-long v2, v0

    .line 74
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 75
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$1;->this$0:Lcom/tonyodev/fetch2/database/DownloadDao_Impl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->-$$Nest$fget__converter(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;)Lcom/tonyodev/fetch2/database/Converter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/Converter;->toNetworkTypeValue(Lcom/tonyodev/fetch2/NetworkType;)I

    move-result v0

    const/16 v1, 0xc

    int-to-long v2, v0

    .line 76
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0xd

    .line 77
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getCreated()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 78
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTag()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    if-nez v0, :cond_0

    .line 79
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$1;->this$0:Lcom/tonyodev/fetch2/database/DownloadDao_Impl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->-$$Nest$fget__converter(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;)Lcom/tonyodev/fetch2/database/Converter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/Converter;->toEnqueueActionValue(Lcom/tonyodev/fetch2/EnqueueAction;)I

    move-result v0

    const/16 v1, 0xf

    int-to-long v2, v0

    .line 84
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x10

    .line 85
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getIdentifier()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 86
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadOnEnqueue()Z

    move-result v0

    const/16 v1, 0x11

    int-to-long v2, v0

    .line 87
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 88
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$1;->this$0:Lcom/tonyodev/fetch2/database/DownloadDao_Impl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->-$$Nest$fget__converter(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;)Lcom/tonyodev/fetch2/database/Converter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasToString(Lcom/tonyodev/fetch2core/Extras;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    .line 89
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getAutoRetryMaxAttempts()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x13

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 91
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getAutoRetryAttempts()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x14

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p2, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-virtual {p0, p1, p2}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "INSERT OR ABORT INTO `requests` (`_id`,`_namespace`,`_url`,`_file`,`_group`,`_priority`,`_headers`,`_written_bytes`,`_total_bytes`,`_status`,`_error`,`_network_type`,`_created`,`_tag`,`_enqueue_action`,`_identifier`,`_download_on_enqueue`,`_extras`,`_auto_retry_max_attempts`,`_auto_retry_attempts`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
