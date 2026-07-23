.class public abstract Lcom/tonyodev/fetch2core/OutputResourceWrapper;
.super Ljava/lang/Object;
.source "OutputResourceWrapper.kt"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract flush()V
.end method

.method public abstract setWriteOffset(J)V
.end method

.method public abstract write([BII)V
.end method
