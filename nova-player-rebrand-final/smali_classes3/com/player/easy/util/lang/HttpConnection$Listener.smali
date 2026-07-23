.class public interface abstract Lcom/player/easy/util/lang/HttpConnection$Listener;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/player/easy/util/lang/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onConnectionCreated(Ljava/net/HttpURLConnection;)V
.end method

.method public abstract onIOException(Ljava/io/IOException;)V
.end method

.method public abstract onMovedPermanently(Ljava/lang/String;)V
.end method

.method public abstract onResponseHandle(Ljava/net/HttpURLConnection;ILjava/lang/String;)V
.end method

.method public abstract onTooManyRedirects()V
.end method
