.class final Lcom/google/ads/interactivemedia/v3/internal/zznp;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzns;


# static fields
.field private static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzba;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzba;->zzg()Lcom/google/ads/interactivemedia/v3/internal/zzad;

    move-result-object v0

    const-string v1, "E"

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzo(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzba;

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zznp;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzba;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/ads/interactivemedia/v3/internal/zzba;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zznp;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzba;

    return-object v0
.end method
