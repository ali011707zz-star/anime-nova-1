.class Lcom/tonyodev/fetch2/database/DownloadDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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

    .line 107
    iput-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$3;->this$0:Lcom/tonyodev/fetch2/database/DownloadDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 4

    .line 117
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v0, 0x2

    .line 118
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x3

    .line 119
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x4

    .line 120
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getGroup()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 122
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$3;->this$0:Lcom/tonyodev/fetch2/database/DownloadDao_Impl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->-$$Nest$fget__converter(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;)Lcom/tonyodev/fetch2/database/Converter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getPriority()Lcom/tonyodev/fetch2/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/Converter;->toPriorityValue(Lcom/tonyodev/fetch2/Priority;)I

    move-result v0

    const/4 v1, 0x6

    int-to-long v2, v0

    .line 123
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 124
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$3;->this$0:Lcom/tonyodev/fetch2/database/DownloadDao_Impl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->-$$Nest$fget__converter(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;)Lcom/tonyodev/fetch2/database/Converter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/Converter;->toHeaderStringsMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    .line 125
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    const/16 v0, 0x8

    .line 126
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x9

    .line 127
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 128
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$3;->this$0:Lcom/tonyodev/fetch2/database/DownloadDao_Impl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->-$$Nest$fget__converter(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;)Lcom/tonyodev/fetch2/database/Converter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/Converter;->toStatusValue(Lcom/tonyodev/fetch2/Status;)I

    move-result v0

    const/16 v1, 0xa

    int-to-long v2, v0

    .line 129
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 130
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$3;->this$0:Lcom/tonyodev/fetch2/database/DownloadDao_Impl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->-$$Nest$fget__converter(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;)Lcom/tonyodev/fetch2/database/Converter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getError()Lcom/tonyodev/fetch2/Error;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/Converter;->toErrorValue(Lcom/tonyodev/fetch2/Error;)I

    move-result v0

    const/16 v1, 0xb

    int-to-long v2, v0

    .line 131
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 132
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$3;->this$0:Lcom/tonyodev/fetch2/database/DownloadDao_Impl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->-$$Nest$fget__converter(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;)Lcom/tonyodev/fetch2/database/Converter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/Converter;->toNetworkTypeValue(Lcom/tonyodev/fetch2/NetworkType;)I

    move-result v0

    const/16 v1, 0xc

    int-to-long v2, v0

    .line 133
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0xd

    .line 134
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getCreated()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 135
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTag()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    if-nez v0, :cond_0

    .line 136
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$3;->this$0:Lcom/tonyodev/fetch2/database/DownloadDao_Impl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->-$$Nest$fget__converter(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;)Lcom/tonyodev/fetch2/database/Converter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/Converter;->toEnqueueActionValue(Lcom/tonyodev/fetch2/EnqueueAction;)I

    move-result v0

    const/16 v1, 0xf

    int-to-long v2, v0

    .line 141
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x10

    .line 142
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getIdentifier()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 143
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadOnEnqueue()Z

    move-result v0

    const/16 v1, 0x11

    int-to-long v2, v0

    .line 144
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 145
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$3;->this$0:Lcom/tonyodev/fetch2/database/DownloadDao_Impl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->-$$Nest$fget__converter(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;)Lcom/tonyodev/fetch2/database/Converter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasToString(Lcom/tonyodev/fetch2core/Extras;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    .line 146
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getAutoRetryMaxAttempts()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x13

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 148
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getAutoRetryAttempts()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x14

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 149
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x15

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p2, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-virtual {p0, p1, p2}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 111
    const-string v0, "UPDATE OR REPLACE `requests` SET `_id` = ?,`_namespace` = ?,`_url` = ?,`_file` = ?,`_group` = ?,`_priority` = ?,`_headers` = ?,`_written_bytes` = ?,`_total_bytes` = ?,`_status` = ?,`_error` = ?,`_network_type` = ?,`_created` = ?,`_tag` = ?,`_enqueue_action` = ?,`_identifier` = ?,`_download_on_enqueue` = ?,`_extras` = ?,`_auto_retry_max_attempts` = ?,`_auto_retry_attempts` = ? WHERE `_id` = ?"

    return-object v0
.end method
