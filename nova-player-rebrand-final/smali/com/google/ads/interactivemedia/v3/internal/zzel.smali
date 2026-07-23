.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/zzel;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzpg;


# instance fields
.field private final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzep;

.field private final synthetic zzb:Lcom/google/ads/interactivemedia/v3/api/BaseRequest;

.field private final synthetic zzc:Lcom/google/ads/interactivemedia/v3/internal/zzej;

.field private final synthetic zzd:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzep;Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Lcom/google/ads/interactivemedia/v3/internal/zzej;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzel;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzep;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzel;->zzb:Lcom/google/ads/interactivemedia/v3/api/BaseRequest;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzel;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzej;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzel;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzel;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzep;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzel;->zzb:Lcom/google/ads/interactivemedia/v3/api/BaseRequest;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzel;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzej;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzel;->zzd:Ljava/lang/String;

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zzc(Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Lcom/google/ads/interactivemedia/v3/internal/zzej;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    return-object p1
.end method
