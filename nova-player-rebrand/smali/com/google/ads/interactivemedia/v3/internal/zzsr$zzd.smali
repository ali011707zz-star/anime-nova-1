.class final Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;


# instance fields
.field next:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;

.field final zzb:Ljava/lang/Runnable;

.field final zzc:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;->zzb:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;->zzb:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method
