.class final Lcom/google/ads/interactivemedia/v3/impl/zzay;
.super Lcom/google/ads/interactivemedia/v3/impl/zzcg;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Landroid/webkit/WebView;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzfe;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/internal/zzfe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzcg;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzay;->zza:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzay;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzfe;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null webView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/zzcg;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/zzcg;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzay;->zza:Landroid/webkit/WebView;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzcg;->zza()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzay;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzfe;

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzcg;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzfe;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzay;->zza:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzay;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzfe;

    mul-int/2addr v0, v1

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzay;->zza:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzay;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzfe;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v1, 0x39

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "JavaScriptWebViewInitComponent{webView="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", omidInitializer="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zza()Landroid/webkit/WebView;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzay;->zza:Landroid/webkit/WebView;

    return-object v0
.end method

.method final zzb()Lcom/google/ads/interactivemedia/v3/internal/zzfe;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzay;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzfe;

    return-object v0
.end method
