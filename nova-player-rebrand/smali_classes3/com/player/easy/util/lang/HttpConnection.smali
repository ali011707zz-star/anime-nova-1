.class public Lcom/player/easy/util/lang/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/util/lang/HttpConnection$Listener;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIMEOUT:I = 0x4e20

.field private static final MAX_REDIRECTS:I = 0x5


# instance fields
.field private listener:Lcom/player/easy/util/lang/HttpConnection$Listener;

.field private referer:Ljava/lang/String;

.field private socketFactory:Lcom/player/easy/util/system/TLSSocketFactory;

.field private timeout:I

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4e20

    .line 33
    iput v0, p0, Lcom/player/easy/util/lang/HttpConnection;->timeout:I

    .line 51
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/player/easy/util/lang/HttpConnection;->url:Ljava/net/URL;

    .line 52
    new-instance p1, Lcom/player/easy/util/system/TLSSocketFactory;

    invoke-direct {p1}, Lcom/player/easy/util/system/TLSSocketFactory;-><init>()V

    iput-object p1, p0, Lcom/player/easy/util/lang/HttpConnection;->socketFactory:Lcom/player/easy/util/system/TLSSocketFactory;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x5

    if-ge v1, v3, :cond_8

    const/4 v1, 0x0

    .line 78
    :try_start_0
    iget-object v3, p0, Lcom/player/easy/util/lang/HttpConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 80
    iget v1, p0, Lcom/player/easy/util/lang/HttpConnection;->timeout:I

    invoke-virtual {v3, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 81
    iget v1, p0, Lcom/player/easy/util/lang/HttpConnection;->timeout:I

    invoke-virtual {v3, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 84
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    iget-object v4, p0, Lcom/player/easy/util/lang/HttpConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    const-string v4, "Cookie"

    invoke-virtual {v3, v4, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v3

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_2

    .line 92
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/player/easy/util/lang/HttpConnection;->referer:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    const-string v1, "Referer"

    iget-object v4, p0, Lcom/player/easy/util/lang/HttpConnection;->referer:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_1
    instance-of v1, v3, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_2

    .line 97
    move-object v1, v3

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v4, p0, Lcom/player/easy/util/lang/HttpConnection;->socketFactory:Lcom/player/easy/util/system/TLSSocketFactory;

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/player/easy/util/lang/HttpConnection;->listener:Lcom/player/easy/util/lang/HttpConnection$Listener;

    if-eqz v1, :cond_3

    .line 100
    invoke-interface {v1, v3}, Lcom/player/easy/util/lang/HttpConnection$Listener;->onConnectionCreated(Ljava/net/HttpURLConnection;)V

    .line 102
    :cond_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 113
    iget-object v0, p0, Lcom/player/easy/util/lang/HttpConnection;->listener:Lcom/player/easy/util/lang/HttpConnection$Listener;

    if-eqz v0, :cond_4

    .line 114
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v1, v2}, Lcom/player/easy/util/lang/HttpConnection$Listener;->onResponseHandle(Ljava/net/HttpURLConnection;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :cond_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 107
    :pswitch_0
    :try_start_2
    const-string v4, "Location"

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/player/easy/util/lang/HttpConnection;->url:Ljava/net/URL;

    invoke-direct {v5, v6, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/player/easy/util/lang/HttpConnection;->url:Ljava/net/URL;

    const/16 v4, 0x12d

    if-ne v1, v4, :cond_5

    .line 109
    iget-object v1, p0, Lcom/player/easy/util/lang/HttpConnection;->listener:Lcom/player/easy/util/lang/HttpConnection$Listener;

    if-eqz v1, :cond_5

    .line 110
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/player/easy/util/lang/HttpConnection$Listener;->onMovedPermanently(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    :cond_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move v1, v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 119
    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/player/easy/util/lang/HttpConnection;->listener:Lcom/player/easy/util/lang/HttpConnection$Listener;

    if-eqz v2, :cond_6

    .line 120
    invoke-interface {v2, v0}, Lcom/player/easy/util/lang/HttpConnection$Listener;->onIOException(Ljava/io/IOException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    if-eqz v1, :cond_9

    .line 125
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 126
    :cond_7
    throw v0

    .line 129
    :cond_8
    iget-object v0, p0, Lcom/player/easy/util/lang/HttpConnection;->listener:Lcom/player/easy/util/lang/HttpConnection$Listener;

    if-eqz v0, :cond_9

    .line 130
    invoke-interface {v0}, Lcom/player/easy/util/lang/HttpConnection$Listener;->onTooManyRedirects()V

    :cond_9
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setListener(Lcom/player/easy/util/lang/HttpConnection$Listener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/player/easy/util/lang/HttpConnection;->listener:Lcom/player/easy/util/lang/HttpConnection$Listener;

    return-void
.end method

.method public setReferer(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/player/easy/util/lang/HttpConnection;->referer:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/player/easy/util/lang/HttpConnection;->timeout:I

    return-void
.end method
