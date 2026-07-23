.class public final Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;
.super Ljava/lang/Object;
.source "FetchFileResourceTransporter.kt"


# instance fields
.field private final client:Ljava/net/Socket;

.field private volatile closed:Z

.field private dataInput:Ljava/io/DataInputStream;

.field private dataOutput:Ljava/io/DataOutputStream;

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 2

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->client:Ljava/net/Socket;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->lock:Ljava/lang/Object;

    .line 36
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataInput:Ljava/io/DataInputStream;

    .line 38
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataOutput:Ljava/io/DataOutputStream;

    .line 40
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->closed:Z

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Ljava/net/Socket;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 19
    new-instance p1, Ljava/net/Socket;

    invoke-direct {p1}, Ljava/net/Socket;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;-><init>(Ljava/net/Socket;)V

    return-void
.end method

.method private final throwExceptionIfClosed()V
    .locals 2

    .line 199
    iget-boolean v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "FetchFileResourceTransporter is already closed."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final throwIfNotConnected()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataInput:Ljava/io/DataInputStream;

    if-nez v0, :cond_0

    const-string v0, "dataInput"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataOutput:Ljava/io/DataOutputStream;

    if-nez v0, :cond_1

    const-string v0, "dataOutput"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-boolean v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->closed:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 181
    iput-boolean v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 183
    :try_start_1
    iget-object v2, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataInput:Ljava/io/DataInputStream;

    if-nez v2, :cond_0

    const-string v2, "dataInput"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :catch_0
    :try_start_2
    iget-object v2, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataOutput:Ljava/io/DataOutputStream;

    if-nez v2, :cond_1

    const-string v2, "dataOutput"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    :catch_1
    :try_start_3
    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->client:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    :catch_2
    :cond_2
    :try_start_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw v1
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 2

    const-string v0, "socketAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwExceptionIfClosed()V

    .line 48
    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->client:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 49
    new-instance p1, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->client:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataInput:Ljava/io/DataInputStream;

    .line 50
    new-instance p1, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->client:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataOutput:Ljava/io/DataOutputStream;

    .line 51
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwExceptionIfClosed()V

    .line 165
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwIfNotConnected()V

    .line 166
    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataInput:Ljava/io/DataInputStream;

    if-nez v1, :cond_0

    const-string v1, "dataInput"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public receiveFileResponse()Lcom/tonyodev/fetch2core/server/FileResponse;
    .locals 13

    .line 114
    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwExceptionIfClosed()V

    .line 116
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwIfNotConnected()V

    .line 117
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataInput:Ljava/io/DataInputStream;

    if-nez v2, :cond_0

    const-string v2, "dataInput"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    const-string v3, "readUTF(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toLowerCase(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    const-string v2, "status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 119
    const-string v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 120
    const-string v2, "connection"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 121
    const-string v2, "date"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 122
    const-string v2, "content-length"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 123
    const-string v2, "md5"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 124
    const-string v2, "sessionid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 125
    new-instance v3, Lcom/tonyodev/fetch2core/server/FileResponse;

    .line 131
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 132
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 125
    invoke-direct/range {v3 .. v12}, Lcom/tonyodev/fetch2core/server/FileResponse;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit v1

    return-object v3

    :goto_1
    monitor-exit v1

    throw v0
.end method

.method public sendFileRequest(Lcom/tonyodev/fetch2core/server/FileRequest;)V
    .locals 3

    const-string v0, "fileRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwExceptionIfClosed()V

    .line 107
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwIfNotConnected()V

    .line 108
    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataOutput:Ljava/io/DataOutputStream;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "dataOutput"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/server/FileRequest;->getToJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataOutput:Ljava/io/DataOutputStream;

    if-nez p1, :cond_1

    const-string p1, "dataOutput"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v2, p1

    :goto_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 110
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p1
.end method
