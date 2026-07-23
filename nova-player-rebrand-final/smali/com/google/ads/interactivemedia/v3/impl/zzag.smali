.class final synthetic Lcom/google/ads/interactivemedia/v3/impl/zzag;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/ads/interactivemedia/v3/api/BaseRequest;

.field private final synthetic zzb:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final synthetic zzc:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

.field private final synthetic zzd:J

.field private final synthetic zze:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final synthetic zzf:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final synthetic zzg:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/internal/zzafx;JLcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zza:Lcom/google/ads/interactivemedia/v3/api/BaseRequest;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zzd:J

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zze:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p8, p0, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zzg:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zza:Lcom/google/ads/interactivemedia/v3/api/BaseRequest;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->getSecureSignals()Lcom/google/ads/interactivemedia/v3/api/signals/SecureSignals;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzf(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zzg:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zze:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zzd:J

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v4, v5, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzd(JJ)Lcom/google/ads/interactivemedia/v3/internal/zzafw;

    move-result-object v4

    .line 6
    invoke-virtual {v6, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzafx;->zzf(Lcom/google/ads/interactivemedia/v3/internal/zzafw;)Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v4

    .line 7
    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzf(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 8
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zze(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzk(Ljava/util/Collection;)Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v0

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v4

    .line 10
    invoke-static {v1, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzf(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/zzaw;

    .line 11
    invoke-direct {v4, v3, v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzaw;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzpl;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzqu;Lcom/google/ads/interactivemedia/v3/internal/zzpl;)V

    return-object v4
.end method
