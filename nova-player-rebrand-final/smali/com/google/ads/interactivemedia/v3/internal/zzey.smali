.class public final Lcom/google/ads/interactivemedia/v3/internal/zzey;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzux;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzuy;-><init>()V

    const-class v1, Lcom/google/ads/interactivemedia/v3/api/UiElement;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/data/UiElementImpl;->GSON_TYPE_ADAPTER:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zza(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzuy;

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzuy;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzex;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzex;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzey;)V

    const-class v2, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zza(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzuy;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzpc;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpc;-><init>()V

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzvq;)Lcom/google/ads/interactivemedia/v3/internal/zzuy;

    .line 6
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzux;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzey;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzux;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    const-string v1, "sid"

    .line 4
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->zza(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    move-result-object v3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzey;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzux;

    const-string v1, "data"

    .line 7
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->webViewLoaded:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    if-ne v3, v2, :cond_0

    const-class v2, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;

    goto :goto_0

    .line 9
    :cond_0
    const-class v2, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;

    .line 8
    :goto_0
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzc(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzf(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Ljava/lang/Object;

    move-result-object v6

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    .line 9
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->zza(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    move-result-object v4

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    .line 5
    :cond_1
    new-instance p1, Ljava/net/MalformedURLException;

    const-string v0, "Session id must be provided in message."

    invoke-direct {p1, v0}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    new-instance p1, Ljava/net/MalformedURLException;

    const-string v0, "URL must have message."

    invoke-direct {p1, v0}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzey;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzux;

    const-class v1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgDataWebViewCompat;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzd(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzf(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgDataWebViewCompat;

    .line 3
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgDataWebViewCompat;->sid:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgDataWebViewCompat;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->zza(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    move-result-object v3

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    .line 6
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgDataWebViewCompat;->type:Ljava/lang/String;

    .line 7
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->zza(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    move-result-object v4

    iget-object v5, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgDataWebViewCompat;->sid:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgDataWebViewCompat;->data:Ljava/lang/String;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->webViewLoaded:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    if-ne v3, v6, :cond_0

    const-class v6, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;

    goto :goto_0

    .line 9
    :cond_0
    const-class v6, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;

    .line 8
    :goto_0
    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zzc(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzf(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Ljava/lang/Object;

    move-result-object v6

    .line 9
    iget-object v7, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgDataWebViewCompat;->id:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Session id must be provided in message."

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzqw;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqw;-><init>()V

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzb()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    move-result-object v2

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzqw;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqw;

    const-string v1, "sid"

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzd()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzqw;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqw;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "data"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqw;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqw;

    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zze()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zze()Ljava/lang/String;

    move-result-object v1

    const-string v2, "replyToMessageId"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqw;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqw;

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqw;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zza()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    move-result-object p1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzey;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzux;

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzd(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "javascript:adsense.mobileads.afmanotify.receiveMessage"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object v0, v1, p1

    const-string p1, "%s(\'%s\', %s);"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
