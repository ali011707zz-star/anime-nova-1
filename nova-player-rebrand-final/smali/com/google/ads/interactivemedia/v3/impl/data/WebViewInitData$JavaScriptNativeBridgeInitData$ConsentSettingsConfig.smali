.class public Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData$ConsentSettingsConfig;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConsentSettingsConfig"
.end annotation


# instance fields
.field public final consentKeyTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v5, 0x0

    .line 1
    new-array v6, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzc(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;Z[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzagj;->zzb(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzpk;->zza(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpj;

    move-result-object v0

    const-string v1, "consentKeyTypes"

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData$ConsentSettingsConfig;->consentKeyTypes:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzpj;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpj;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpj;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
