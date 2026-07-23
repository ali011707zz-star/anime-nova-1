.class public final Lcom/google/ads/interactivemedia/v3/internal/zzef;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzqx;


# instance fields
.field private final zzb:Z

.field private final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqx;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const-string v10, "IABGPP_GppSID"

    const-string v11, "String"

    const-string v0, "IABTCF_AddtlConsent"

    const-string v1, "String"

    const-string v2, "IABTCF_gdprApplies"

    const-string v3, "Number"

    const-string v4, "IABTCF_TCString"

    const-string v5, "String"

    const-string v6, "IABUSPrivacy_String"

    const-string v7, "String"

    const-string v8, "IABGPP_HDR_GppString"

    const-string v9, "String"

    invoke-static/range {v0 .. v11}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzef;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    return-void
.end method

.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzqx;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzef;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzef;->zzb:Z

    return-void
.end method

.method public static zza(Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;)Lcom/google/ads/interactivemedia/v3/internal/zzef;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzef;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;->consentSettingsConfig:Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData$ConsentSettingsConfig;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData$ConsentSettingsConfig;->consentKeyTypes:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzd(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-result-object v0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;->disableJsIdLessEvaluation:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzef;

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzef;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzqx;Z)V

    return-object p0
.end method


# virtual methods
.method final synthetic zzb()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzef;->zzb:Z

    return v0
.end method

.method final synthetic zzc()Lcom/google/ads/interactivemedia/v3/internal/zzqx;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzef;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    return-object v0
.end method
