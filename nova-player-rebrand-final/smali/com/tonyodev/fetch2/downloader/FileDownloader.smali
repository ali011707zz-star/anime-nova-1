.class public interface abstract Lcom/tonyodev/fetch2/downloader/FileDownloader;
.super Ljava/lang/Object;
.source "FileDownloader.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;
    }
.end annotation


# virtual methods
.method public abstract getDownload()Lcom/tonyodev/fetch2/Download;
.end method

.method public abstract getInterrupted()Z
.end method

.method public abstract setDelegate(Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;)V
.end method

.method public abstract setInterrupted(Z)V
.end method

.method public abstract setTerminated(Z)V
.end method
