.class public final Lcom/google/android/gms/internal/ads/zzcwn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzens;


# instance fields
.field public final zza:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwn;->zza:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwn;->zza:Ljava/util/List;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzemm;)Lcom/google/android/gms/internal/ads/zzekg;
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzekh;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcwm;->zza:Lcom/google/android/gms/internal/ads/zzcwm;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzekh;-><init>(Lcom/google/android/gms/internal/ads/zzekg;Lcom/google/android/gms/internal/ads/zzgqt;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzekg;)Lcom/google/android/gms/internal/ads/zzekg;
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzekh;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcwl;->zza:Lcom/google/android/gms/internal/ads/zzcwl;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzekh;-><init>(Lcom/google/android/gms/internal/ads/zzekg;Lcom/google/android/gms/internal/ads/zzgqt;)V

    return-object v0
.end method


# virtual methods
.method public final zzm()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwn;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcwk;

    .line 2
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcwk;-><init>(Lcom/google/android/gms/internal/ads/zzcwn;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_0
    return-void
.end method
