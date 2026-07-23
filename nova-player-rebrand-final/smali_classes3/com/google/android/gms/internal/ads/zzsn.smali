.class final Lcom/google/android/gms/internal/ads/zzsn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqa;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzsw;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzql;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzsw;Lcom/google/android/gms/internal/ads/zzql;[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzb:Lcom/google/android/gms/internal/ads/zzql;

    return-void
.end method


# virtual methods
.method public final zza(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzI()Lcom/google/android/gms/internal/ads/zzsn;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzJ()Lcom/google/android/gms/internal/ads/zzrg;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzJ()Lcom/google/android/gms/internal/ads/zzrg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Lcom/google/android/gms/internal/ads/zzta;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzta;->zzaw()Lcom/google/android/gms/internal/ads/zzrb;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrb;->zzd(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzI()Lcom/google/android/gms/internal/ads/zzsn;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzJ()Lcom/google/android/gms/internal/ads/zzrg;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzN()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzJ()Lcom/google/android/gms/internal/ads/zzrg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Lcom/google/android/gms/internal/ads/zzta;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzta;->zzat(Lcom/google/android/gms/internal/ads/zzta;)Lcom/google/android/gms/internal/ads/zzmk;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzmk;->zza()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzc()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzI()Lcom/google/android/gms/internal/ads/zzsn;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzM(Z)V

    return-void
.end method

.method public final zzd()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzI()Lcom/google/android/gms/internal/ads/zzsn;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzJ()Lcom/google/android/gms/internal/ads/zzrg;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzK()Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsq;->zzj()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzK()Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsq;->zzk()Lcom/google/android/gms/internal/ads/zzql;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzK()Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsq;->zzj()I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzL()Lcom/google/android/gms/internal/ads/zzqc;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzqc;->zzi()I

    move-result v3

    .line 3
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzr(JI)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzO()J

    move-result-wide v3

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v11, v5, v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzJ()Lcom/google/android/gms/internal/ads/zzrg;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzK()Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzk()Lcom/google/android/gms/internal/ads/zzql;

    move-result-object v0

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    check-cast v3, Lcom/google/android/gms/internal/ads/zzsz;

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzsz;->zza:Lcom/google/android/gms/internal/ads/zzta;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzta;->zzaw()Lcom/google/android/gms/internal/ads/zzrb;

    move-result-object v7

    .line 7
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzp(J)J

    move-result-wide v9

    .line 8
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzrb;->zze(IJJ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final zze()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsw;->zzH()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzJ()Lcom/google/android/gms/internal/ads/zzrg;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzb:Lcom/google/android/gms/internal/ads/zzql;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzrd;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzql;->zza:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzql;->zzb:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    const/4 v7, 0x0

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzrd;-><init>(IIIZZI)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzJ()Lcom/google/android/gms/internal/ads/zzrg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Lcom/google/android/gms/internal/ads/zzta;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzta;->zzaw()Lcom/google/android/gms/internal/ads/zzrb;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzrb;->zzl(Lcom/google/android/gms/internal/ads/zzrd;)V

    :cond_0
    return-void
.end method
