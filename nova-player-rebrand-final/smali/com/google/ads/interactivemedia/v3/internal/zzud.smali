.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/zzud;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final synthetic zza:Ljava/util/concurrent/Executor;

.field private final synthetic zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsr;


# direct methods
.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzsr;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzud;->zza:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzud;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsr;

    return-void
.end method


# virtual methods
.method public final synthetic execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzud;->zza:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzud;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsr;

    invoke-static {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzuh;->zzd(Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzsr;Ljava/lang/Runnable;)V

    return-void
.end method
