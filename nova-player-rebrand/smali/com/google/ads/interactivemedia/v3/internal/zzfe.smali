.class public final Lcom/google/ads/interactivemedia/v3/internal/zzfe;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/zzby;


# instance fields
.field private final zza:Landroid/webkit/WebView;

.field private zzb:Z

.field private zzc:Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/internal/zzff;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfe;->zzb:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfe;->zzc:Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfe;->zza:Landroid/webkit/WebView;

    return-void
.end method

.method public static zza(Landroid/content/Context;Landroid/webkit/WebView;)Lcom/google/ads/interactivemedia/v3/internal/zzfe;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzff;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzff;-><init>()V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzfe;

    invoke-direct {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfe;-><init>(Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/internal/zzff;)V

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzbt;->zza(Landroid/content/Context;)V

    .line 2
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzfe;->zze()V

    return-object v1
.end method

.method private final zze()V
    .locals 3

    .line 1
    const-string v0, "Google1"

    const-string v1, "3.38.0"

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzff;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/omid/library/adsession/zzl;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfe;->zza:Landroid/webkit/WebView;

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;->zza(Lcom/google/ads/interactivemedia/omid/library/adsession/zzl;Landroid/webkit/WebView;Z)Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfe;->zzc:Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final zzb()Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfe;->zzc:Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;

    return-object v0
.end method

.method public final zzc()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfe;->zzb:Z

    return v0
.end method

.method public final zzd(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->activate:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzb()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfe;->zzb:Z

    return-void

    :cond_1
    const/4 p1, 0x1

    goto :goto_0
.end method
