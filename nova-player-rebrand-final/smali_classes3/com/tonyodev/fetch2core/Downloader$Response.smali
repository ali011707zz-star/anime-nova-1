.class public Lcom/tonyodev/fetch2core/Downloader$Response;
.super Ljava/lang/Object;
.source "Downloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2core/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field private final acceptsRanges:Z

.field private final byteStream:Ljava/io/InputStream;

.field private final code:I

.field private final contentLength:J

.field private final errorResponse:Ljava/lang/String;

.field private final hash:Ljava/lang/String;

.field private final isSuccessful:Z

.field private final request:Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

.field private final responseHeaders:Ljava/util/Map;


# direct methods
.method public constructor <init>(IZJLjava/io/InputStream;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hash"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseHeaders"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput p1, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->code:I

    .line 192
    iput-boolean p2, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->isSuccessful:Z

    .line 195
    iput-wide p3, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->contentLength:J

    .line 198
    iput-object p5, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->byteStream:Ljava/io/InputStream;

    .line 201
    iput-object p6, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->request:Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    .line 204
    iput-object p7, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->hash:Ljava/lang/String;

    .line 207
    iput-object p8, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->responseHeaders:Ljava/util/Map;

    .line 210
    iput-boolean p9, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->acceptsRanges:Z

    .line 213
    iput-object p10, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->errorResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAcceptsRanges()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->acceptsRanges:Z

    return v0
.end method

.method public final getByteStream()Ljava/io/InputStream;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->byteStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getCode()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->code:I

    return v0
.end method

.method public final getContentLength()J
    .locals 2

    .line 195
    iget-wide v0, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->contentLength:J

    return-wide v0
.end method

.method public final getErrorResponse()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->errorResponse:Ljava/lang/String;

    return-object v0
.end method

.method public final getHash()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequest()Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->request:Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    return-object v0
.end method

.method public final getResponseHeaders()Ljava/util/Map;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->responseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public final isSuccessful()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/tonyodev/fetch2core/Downloader$Response;->isSuccessful:Z

    return v0
.end method
