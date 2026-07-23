.class public final Lcom/tonyodev/fetch2core/StorageResolverHelper$getOutputResourceWrapper$2;
.super Lcom/tonyodev/fetch2core/OutputResourceWrapper;
.source "StorageResolverHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2core/StorageResolverHelper;->getOutputResourceWrapper(Ljava/io/RandomAccessFile;)Lcom/tonyodev/fetch2core/OutputResourceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/OutputResourceWrapper;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/tonyodev/fetch2core/StorageResolverHelper$getOutputResourceWrapper$2;->randomAccessFile:Ljava/io/RandomAccessFile;

    const-wide/16 v0, 0x0

    .line 105
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/tonyodev/fetch2core/StorageResolverHelper$getOutputResourceWrapper$2;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public flush()V
    .locals 0

    .line 0
    return-void
.end method

.method public setWriteOffset(J)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/tonyodev/fetch2core/StorageResolverHelper$getOutputResourceWrapper$2;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/tonyodev/fetch2core/StorageResolverHelper$getOutputResourceWrapper$2;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method
