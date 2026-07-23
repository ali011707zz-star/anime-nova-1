.class public final Lcom/google/android/gms/internal/ads/zzfqb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/util/client/zzx;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/client/zzu;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgzz;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfqc;

.field private final zze:Lcom/google/android/gms/internal/ads/zzclx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/client/zzx;Lcom/google/android/gms/ads/internal/util/client/zzu;Lcom/google/android/gms/internal/ads/zzgzz;Lcom/google/android/gms/internal/ads/zzfqc;Lcom/google/android/gms/internal/ads/zzclx;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqb;->zza:Lcom/google/android/gms/ads/internal/util/client/zzx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfqb;->zzb:Lcom/google/android/gms/ads/internal/util/client/zzu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfqb;->zzc:Lcom/google/android/gms/internal/ads/zzgzz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfqb;->zzd:Lcom/google/android/gms/internal/ads/zzfqc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfqb;->zze:Lcom/google/android/gms/internal/ads/zzclx;

    return-void
.end method

.method private final zze(Ljava/lang/String;JI)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqb;->zza:Lcom/google/android/gms/ads/internal/util/client/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zzx;->zza()I

    move-result v1

    if-le p4, v1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfqb;->zzd:Lcom/google/android/gms/internal/ads/zzfqc;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zzx;->zzd()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, ""

    const/4 p4, 0x2

    invoke-virtual {p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzfqc;->zza(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p1, Lcom/google/android/gms/ads/internal/util/client/zzt;->zzd:Lcom/google/android/gms/ads/internal/util/client/zzt;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/ads/internal/util/client/zzt;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzt;

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzjS:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 9
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pa"

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 10
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfqa;

    move-object v2, p0

    move-object v6, p1

    move-wide v4, p2

    move v3, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfqa;-><init>(Lcom/google/android/gms/internal/ads/zzfqb;IJLjava/lang/String;)V

    const-wide/16 p1, 0x0

    cmp-long p1, v4, p1

    if-nez p1, :cond_3

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzfqb;->zzc:Lcom/google/android/gms/internal/ads/zzgzz;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfpz;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/ads/zzfpz;-><init>(Lcom/google/android/gms/internal/ads/zzfqb;Ljava/lang/String;)V

    .line 13
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzgzy;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    .line 14
    invoke-static {p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzfqb;->zzc:Lcom/google/android/gms/internal/ads/zzgzz;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfpy;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/ads/zzfpy;-><init>(Lcom/google/android/gms/internal/ads/zzfqb;Ljava/lang/String;)V

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    invoke-interface {p1, p2, v4, v5, p3}, Lcom/google/android/gms/internal/ads/zzgzz;->zze(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/ads/zzgzx;

    move-result-object p2

    .line 12
    invoke-static {p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method private final zzf(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/util/client/zzt;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzkk:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqb;->zze:Lcom/google/android/gms/internal/ads/zzclx;

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzi(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzj(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzclx;->zzb()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zzkl:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqb;->zzb:Lcom/google/android/gms/ads/internal/util/client/zzu;

    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/util/client/zzu;->zzc(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/ads/internal/util/client/zzt;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqb;->zzb:Lcom/google/android/gms/ads/internal/util/client/zzu;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/util/client/zzu;->zzc(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/ads/internal/util/client/zzt;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzg:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    .line 3
    :try_start_0
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfqb;->zze(Ljava/lang/String;JI)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 5
    :catch_0
    sget-object p1, Lcom/google/android/gms/ads/internal/util/client/zzt;->zzb:Lcom/google/android/gms/ads/internal/util/client/zzt;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    sget-object p1, Lcom/google/android/gms/ads/internal/util/client/zzt;->zzb:Lcom/google/android/gms/ads/internal/util/client/zzt;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzb(IJLjava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzt;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zzt;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzt;

    if-eq p5, v0, :cond_0

    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzfqb;->zza:Lcom/google/android/gms/ads/internal/util/client/zzx;

    invoke-virtual {p5}, Lcom/google/android/gms/ads/internal/util/client/zzx;->zzb()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    long-to-double p2, p2

    invoke-virtual {p5}, Lcom/google/android/gms/ads/internal/util/client/zzx;->zzc()D

    move-result-wide v0

    mul-double/2addr v0, p2

    double-to-long v0, v0

    :cond_1
    add-int/2addr p1, v2

    .line 2
    invoke-direct {p0, p4, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfqb;->zze(Ljava/lang/String;JI)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/util/client/zzt;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfqb;->zzf(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/util/client/zzt;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzd(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/util/client/zzt;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfqb;->zzf(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/util/client/zzt;

    move-result-object p1

    return-object p1
.end method
