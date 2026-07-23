.class public interface abstract Lcom/tonyodev/fetch2/Download;
.super Ljava/lang/Object;
.source "Download.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getAutoRetryAttempts()I
.end method

.method public abstract getAutoRetryMaxAttempts()I
.end method

.method public abstract getCreated()J
.end method

.method public abstract getDownloadOnEnqueue()Z
.end method

.method public abstract getDownloaded()J
.end method

.method public abstract getDownloadedBytesPerSecond()J
.end method

.method public abstract getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;
.end method

.method public abstract getError()Lcom/tonyodev/fetch2/Error;
.end method

.method public abstract getEtaInMilliSeconds()J
.end method

.method public abstract getExtras()Lcom/tonyodev/fetch2core/Extras;
.end method

.method public abstract getFile()Ljava/lang/String;
.end method

.method public abstract getFileUri()Landroid/net/Uri;
.end method

.method public abstract getGroup()I
.end method

.method public abstract getHeaders()Ljava/util/Map;
.end method

.method public abstract getId()I
.end method

.method public abstract getIdentifier()J
.end method

.method public abstract getNamespace()Ljava/lang/String;
.end method

.method public abstract getNetworkType()Lcom/tonyodev/fetch2/NetworkType;
.end method

.method public abstract getPriority()Lcom/tonyodev/fetch2/Priority;
.end method

.method public abstract getProgress()I
.end method

.method public abstract getRequest()Lcom/tonyodev/fetch2/Request;
.end method

.method public abstract getStatus()Lcom/tonyodev/fetch2/Status;
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract getTotal()J
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method
