.class public final Lcom/google/android/gms/internal/ads/zzefr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgzy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzeew;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzika;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgzy;Lcom/google/android/gms/internal/ads/zzeew;Lcom/google/android/gms/internal/ads/zzika;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefr;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefr;->zzb:Lcom/google/android/gms/internal/ads/zzeew;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzefr;->zzc:Lcom/google/android/gms/internal/ads/zzika;

    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/android/gms/internal/ads/zzefh;Lcom/google/android/gms/internal/ads/zzefh;Lcom/google/android/gms/internal/ads/zzgyw;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbzu;->zzd:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzH(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzeff;

    const/4 v0, 0x1

    .line 3
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzeff;-><init>(I)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzefh;->zza(Lcom/google/android/gms/internal/ads/zzbzu;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefr;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    const-class v1, Ljava/util/concurrent/ExecutionException;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzefq;->zza:Lcom/google/android/gms/internal/ads/zzefq;

    .line 5
    invoke-static {p2, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzh(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefr;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgzg;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgzg;

    move-result-object p2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzefj;->zza:Lcom/google/android/gms/internal/ads/zzefj;

    .line 7
    invoke-static {p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgzg;

    .line 8
    invoke-static {p2, p4, v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgzg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzefk;

    invoke-direct {v1, p0, p3, p1, p4}, Lcom/google/android/gms/internal/ads/zzefk;-><init>(Lcom/google/android/gms/internal/ads/zzefr;Lcom/google/android/gms/internal/ads/zzefh;Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/android/gms/internal/ads/zzgyw;)V

    const-class p1, Lcom/google/android/gms/internal/ads/zzeff;

    .line 9
    invoke-static {p2, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzh(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgzg;

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbzu;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefl;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzefl;-><init>(Lcom/google/android/gms/internal/ads/zzbzu;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefr;->zzb:Lcom/google/android/gms/internal/ads/zzeew;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzefi;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzefi;-><init>(Lcom/google/android/gms/internal/ads/zzeew;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzefm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzefm;-><init>(Lcom/google/android/gms/internal/ads/zzefr;)V

    .line 2
    invoke-direct {p0, p1, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzefr;->zzg(Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/android/gms/internal/ads/zzefh;Lcom/google/android/gms/internal/ads/zzefh;Lcom/google/android/gms/internal/ads/zzgyw;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbzu;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefn;->zza:Lcom/google/android/gms/internal/ads/zzefn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzefo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzefo;-><init>(Lcom/google/android/gms/internal/ads/zzefr;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzefp;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzefp;-><init>(Lcom/google/android/gms/internal/ads/zzefr;)V

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzefr;->zzg(Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/android/gms/internal/ads/zzefh;Lcom/google/android/gms/internal/ads/zzefh;Lcom/google/android/gms/internal/ads/zzgyw;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzefh;Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/android/gms/internal/ads/zzgyw;Lcom/google/android/gms/internal/ads/zzeff;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzefr;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzefh;->zza(Lcom/google/android/gms/internal/ads/zzbzu;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzbzu;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefr;->zzc:Lcom/google/android/gms/internal/ads/zzika;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzegw;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzegw;->zzc(Lcom/google/android/gms/internal/ads/zzbzu;I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzbzu;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefr;->zzb:Lcom/google/android/gms/internal/ads/zzeew;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbzu;->zzh:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeew;->zzd(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzbzu;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefr;->zzc:Lcom/google/android/gms/internal/ads/zzika;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzegw;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbzu;->zzh:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzegw;->zzd(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
