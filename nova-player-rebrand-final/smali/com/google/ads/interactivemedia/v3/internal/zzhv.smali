.class public final Lcom/google/ads/interactivemedia/v3/internal/zzhv;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzhu;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzhu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzhv;Landroid/content/Context;)V

    invoke-static {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhv;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhv;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method
