.class final Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;


# instance fields
.field final zzb:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc$1;

    const-string v2, "Failure occurred while trying to finish a future."

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzc;->zzb:Ljava/lang/Throwable;

    return-void
.end method
