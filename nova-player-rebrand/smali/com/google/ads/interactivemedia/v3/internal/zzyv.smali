.class final Lcom/google/ads/interactivemedia/v3/internal/zzyv;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzyv;


# instance fields
.field final zzb:Ljava/util/Map;

.field final zzc:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzyv;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzyv;-><init>(Ljava/util/Map;Ljava/util/List;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzyv;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzyv;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyv;->zzb:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyv;->zzc:Ljava/util/List;

    return-void
.end method
