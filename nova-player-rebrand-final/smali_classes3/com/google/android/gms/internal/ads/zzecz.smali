.class public final Lcom/google/android/gms/internal/ads/zzecz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgzy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgzy;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzeej;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzika;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgzy;Lcom/google/android/gms/internal/ads/zzgzy;Lcom/google/android/gms/internal/ads/zzeej;Lcom/google/android/gms/internal/ads/zzika;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecz;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzecz;->zzb:Lcom/google/android/gms/internal/ads/zzgzy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzecz;->zzc:Lcom/google/android/gms/internal/ads/zzeej;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzecz;->zzd:Lcom/google/android/gms/internal/ads/zzika;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbzu;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbzu;->zzd:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzH(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeff;

    const/4 v1, 0x1

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeff;-><init>(I)V

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecz;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzecy;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzecy;-><init>(Lcom/google/android/gms/internal/ads/zzecz;Lcom/google/android/gms/internal/ads/zzbzu;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzy;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzecz;->zzb:Lcom/google/android/gms/internal/ads/zzgzy;

    const-class v2, Ljava/util/concurrent/ExecutionException;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzecv;->zza:Lcom/google/android/gms/internal/ads/zzecv;

    .line 6
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzh(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 7
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzecw;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzecw;-><init>(Lcom/google/android/gms/internal/ads/zzecz;Lcom/google/android/gms/internal/ads/zzbzu;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzecz;->zzb:Lcom/google/android/gms/internal/ads/zzgzy;

    const-class v1, Lcom/google/android/gms/internal/ads/zzeff;

    .line 8
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzh(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzbzu;)Lcom/google/android/gms/internal/ads/zzefg;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecz;->zzc:Lcom/google/android/gms/internal/ads/zzeej;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeej;->zza(Lcom/google/android/gms/internal/ads/zzbzu;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzgC:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefg;

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbzu;ILcom/google/android/gms/internal/ads/zzeff;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzbzu;->zzm:Landroid/os/Bundle;

    if-eqz p3, :cond_0

    const-string v0, "ls"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzecz;->zzd:Lcom/google/android/gms/internal/ads/zzika;

    .line 2
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzegw;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzegw;->zzb(Lcom/google/android/gms/internal/ads/zzbzu;I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/zzecx;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zzecx;-><init>(Lcom/google/android/gms/internal/ads/zzbzu;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzecz;->zzb:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 3
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
