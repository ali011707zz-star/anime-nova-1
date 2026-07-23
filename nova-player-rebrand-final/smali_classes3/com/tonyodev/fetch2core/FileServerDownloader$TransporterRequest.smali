.class public Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;
.super Ljava/lang/Object;
.source "FileServerDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2core/FileServerDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransporterRequest"
.end annotation


# instance fields
.field private fileRequest:Lcom/tonyodev/fetch2core/server/FileRequest;

.field private inetSocketAddress:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v1, v0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->inetSocketAddress:Ljava/net/InetSocketAddress;

    .line 19
    new-instance v3, Lcom/tonyodev/fetch2core/server/FileRequest;

    const/16 v16, 0x3ff

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v3 .. v17}, Lcom/tonyodev/fetch2core/server/FileRequest;-><init>(ILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/tonyodev/fetch2core/Extras;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->fileRequest:Lcom/tonyodev/fetch2core/server/FileRequest;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 23
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 24
    :cond_2
    const-string v1, "null cannot be cast to non-null type com.tonyodev.fetch2core.FileServerDownloader.TransporterRequest"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;

    .line 25
    iget-object v1, p0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->inetSocketAddress:Ljava/net/InetSocketAddress;

    iget-object v3, p1, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 26
    :cond_3
    iget-object v1, p0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->fileRequest:Lcom/tonyodev/fetch2core/server/FileRequest;

    iget-object p1, p1, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->fileRequest:Lcom/tonyodev/fetch2core/server/FileRequest;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getFileRequest()Lcom/tonyodev/fetch2core/server/FileRequest;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->fileRequest:Lcom/tonyodev/fetch2core/server/FileRequest;

    return-object v0
.end method

.method public final getInetSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->inetSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 32
    iget-object v1, p0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->fileRequest:Lcom/tonyodev/fetch2core/server/FileRequest;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/server/FileRequest;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setFileRequest(Lcom/tonyodev/fetch2core/server/FileRequest;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->fileRequest:Lcom/tonyodev/fetch2core/server/FileRequest;

    return-void
.end method

.method public final setInetSocketAddress(Ljava/net/InetSocketAddress;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->inetSocketAddress:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->inetSocketAddress:Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->fileRequest:Lcom/tonyodev/fetch2core/server/FileRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TransporterRequest(inetSocketAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", fileRequest="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
