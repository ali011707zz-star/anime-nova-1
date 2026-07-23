.class public Lcom/tonyodev/fetch2core/DefaultStorageResolver;
.super Ljava/lang/Object;
.source "DefaultStorageResolver.kt"

# interfaces
.implements Lcom/tonyodev/fetch2core/StorageResolver;


# instance fields
.field private final context:Landroid/content/Context;

.field private final defaultTempDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultTempDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/tonyodev/fetch2core/DefaultStorageResolver;->context:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/tonyodev/fetch2core/DefaultStorageResolver;->defaultTempDir:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createFile(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/tonyodev/fetch2core/DefaultStorageResolver;->context:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/tonyodev/fetch2core/StorageResolverHelper;->createFileAtPath(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/tonyodev/fetch2core/DefaultStorageResolver;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/tonyodev/fetch2core/StorageResolverHelper;->deleteFile(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public fileExists(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 35
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2core/DefaultStorageResolver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "getContentResolver(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/tonyodev/fetch2core/StorageResolverHelper;->getOutputResourceWrapper(Ljava/lang/String;Landroid/content/ContentResolver;)Lcom/tonyodev/fetch2core/OutputResourceWrapper;

    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method public getDirectoryForFileDownloaderTypeParallel(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/lang/String;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/tonyodev/fetch2core/DefaultStorageResolver;->defaultTempDir:Ljava/lang/String;

    return-object p1
.end method

.method public getRequestOutputResourceWrapper(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Lcom/tonyodev/fetch2core/OutputResourceWrapper;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getFile()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tonyodev/fetch2core/DefaultStorageResolver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "getContentResolver(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/tonyodev/fetch2core/StorageResolverHelper;->getOutputResourceWrapper(Ljava/lang/String;Landroid/content/ContentResolver;)Lcom/tonyodev/fetch2core/OutputResourceWrapper;

    move-result-object p1

    return-object p1
.end method

.method public preAllocateFile(Ljava/lang/String;J)Z
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    return v1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/tonyodev/fetch2core/DefaultStorageResolver;->context:Landroid/content/Context;

    invoke-static {p1, p2, p3, v0}, Lcom/tonyodev/fetch2core/StorageResolverHelper;->allocateFile(Ljava/lang/String;JLandroid/content/Context;)V

    return v1

    .line 52
    :cond_1
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " file_not_found"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
