.class public Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
.super Ljava/lang/Object;
.source "Downloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2core/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerRequest"
.end annotation


# instance fields
.field private final extras:Lcom/tonyodev/fetch2core/Extras;

.field private final file:Ljava/lang/String;

.field private final fileUri:Landroid/net/Uri;

.field private final headers:Ljava/util/Map;

.field private final id:I

.field private final identifier:J

.field private final redirectUrl:Ljava/lang/String;

.field private final redirected:Z

.field private final requestMethod:Ljava/lang/String;

.field private final segment:I

.field private final tag:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Lcom/tonyodev/fetch2core/Extras;ZLjava/lang/String;I)V
    .locals 1

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileUri"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestMethod"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "redirectUrl"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p1, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->id:I

    .line 147
    iput-object p2, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->url:Ljava/lang/String;

    .line 151
    iput-object p3, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->headers:Ljava/util/Map;

    .line 154
    iput-object p4, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->file:Ljava/lang/String;

    .line 157
    iput-object p5, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->fileUri:Landroid/net/Uri;

    .line 160
    iput-object p6, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->tag:Ljava/lang/String;

    .line 163
    iput-wide p7, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->identifier:J

    .line 166
    iput-object p9, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->requestMethod:Ljava/lang/String;

    .line 169
    iput-object p10, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->extras:Lcom/tonyodev/fetch2core/Extras;

    .line 172
    iput-boolean p11, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->redirected:Z

    .line 175
    iput-object p12, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->redirectUrl:Ljava/lang/String;

    .line 181
    iput p13, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->segment:I

    return-void
.end method


# virtual methods
.method public final getExtras()Lcom/tonyodev/fetch2core/Extras;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->extras:Lcom/tonyodev/fetch2core/Extras;

    return-object v0
.end method

.method public final getFile()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->file:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileUri()Landroid/net/Uri;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->fileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->id:I

    return v0
.end method

.method public final getIdentifier()J
    .locals 2

    .line 163
    iget-wide v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->identifier:J

    return-wide v0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->requestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getSegment()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->segment:I

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->url:Ljava/lang/String;

    return-object v0
.end method
