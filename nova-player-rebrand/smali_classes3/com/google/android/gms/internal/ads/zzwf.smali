.class public final Lcom/google/android/gms/internal/ads/zzwf;
.super Lcom/google/android/gms/internal/ads/zzyp;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbe;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbd;

.field private zze:Lcom/google/android/gms/internal/ads/zzwd;

.field private zzf:Lcom/google/android/gms/internal/ads/zzwc;

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwm;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzyp;-><init>(Lcom/google/android/gms/internal/ads/zzwm;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwm;->zzI()Z

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzb:Z

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbe;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzbe;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzc:Lcom/google/android/gms/internal/ads/zzbe;

    .line 4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbd;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzbd;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzd:Lcom/google/android/gms/internal/ads/zzbd;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwm;->zzH()Lcom/google/android/gms/internal/ads/zzbf;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwm;->zzJ()Lcom/google/android/gms/internal/ads/zzak;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwd;->zzp(Lcom/google/android/gms/internal/ads/zzak;)Lcom/google/android/gms/internal/ads/zzwd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzwd;

    return-void
.end method

.method private final zzK(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzwd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwd;->zzs()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzwd;->zzc:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzwd;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwd;->zzs()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private final zzL(J)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzf:Lcom/google/android/gms/internal/ads/zzwc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzwd;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzwc;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzwk;->zza:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzvy;->zze(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzwd;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzd:Lcom/google/android/gms/internal/ads/zzbd;

    .line 2
    invoke-virtual {v2, v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;

    iget-wide v1, v4, Lcom/google/android/gms/internal/ads/zzbd;->zzd:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    const-wide/16 p1, -0x1

    add-long/2addr v1, p1

    const-wide/16 p1, 0x0

    .line 3
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 4
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwc;->zzo(J)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final zzA(Lcom/google/android/gms/internal/ads/zzak;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzwd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzyl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzwd;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvy;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzyl;-><init>(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzak;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzwd;->zzr(Lcom/google/android/gms/internal/ads/zzbf;)Lcom/google/android/gms/internal/ads/zzwd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzwd;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwd;->zzp(Lcom/google/android/gms/internal/ads/zzak;)Lcom/google/android/gms/internal/ads/zzwd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzwd;

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyp;->zza:Lcom/google/android/gms/internal/ads/zzwm;

    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzwm;->zzA(Lcom/google/android/gms/internal/ads/zzak;)V

    return-void
.end method

.method public final zzB()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzg:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyp;->zza:Lcom/google/android/gms/internal/ads/zzwm;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzvs;->zzv(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzwm;)V

    :cond_0
    return-void
.end method

.method public final zzC(Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzaan;J)Lcom/google/android/gms/internal/ads/zzwc;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwc;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzwc;-><init>(Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzaan;J)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzyp;->zza:Lcom/google/android/gms/internal/ads/zzwm;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzwc;->zzr(Lcom/google/android/gms/internal/ads/zzwm;)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzh:Z

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzwk;->zza:Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzwf;->zzK(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzwk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwc;->zzt(Lcom/google/android/gms/internal/ads/zzwk;)V

    return-object v0

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzf:Lcom/google/android/gms/internal/ads/zzwc;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzg:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzg:Z

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzyp;->zza:Lcom/google/android/gms/internal/ads/zzwm;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvs;->zzv(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzwm;)V

    :cond_1
    return-object v0
.end method

.method public final zzD(Lcom/google/android/gms/internal/ads/zzwi;)V
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzwc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwc;->zzu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzf:Lcom/google/android/gms/internal/ads/zzwc;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzf:Lcom/google/android/gms/internal/ads/zzwc;

    :cond_0
    return-void
.end method

.method protected final zzE(Lcom/google/android/gms/internal/ads/zzbf;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzh:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzwd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwd;->zzr(Lcom/google/android/gms/internal/ads/zzbf;)Lcom/google/android/gms/internal/ads/zzwd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzwd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzf:Lcom/google/android/gms/internal/ads/zzwc;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwc;->zzq()J

    move-result-wide v2

    .line 2
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzwf;->zzL(J)Z

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbf;->zzg()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzi:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzwd;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwd;->zzr(Lcom/google/android/gms/internal/ads/zzbf;)Lcom/google/android/gms/internal/ads/zzwd;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbe;->zza:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzwd;->zzc:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzwd;->zzq(Lcom/google/android/gms/internal/ads/zzbf;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzwd;

    move-result-object p1

    .line 4
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzwd;

    goto :goto_3

    .line 5
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzc:Lcom/google/android/gms/internal/ads/zzbe;

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    .line 6
    invoke-virtual {p1, v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzbe;->zzb:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzf:Lcom/google/android/gms/internal/ads/zzwc;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzwc;->zza()J

    move-result-wide v6

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzwd;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzd:Lcom/google/android/gms/internal/ads/zzbd;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzwc;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzwk;->zza:Ljava/lang/Object;

    .line 7
    invoke-virtual {v9, v2, v10}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzwd;

    .line 8
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    cmp-long v0, v6, v4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-wide v6, v4

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzd:Lcom/google/android/gms/internal/ads/zzbd;

    const/4 v5, 0x0

    move-object v2, p1

    .line 9
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzbf;->zzm(Lcom/google/android/gms/internal/ads/zzbe;Lcom/google/android/gms/internal/ads/zzbd;IJ)Landroid/util/Pair;

    move-result-object p1

    .line 10
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 11
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzi:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzwd;

    .line 12
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzwd;->zzr(Lcom/google/android/gms/internal/ads/zzbf;)Lcom/google/android/gms/internal/ads/zzwd;

    move-result-object p1

    goto :goto_2

    .line 13
    :cond_4
    invoke-static {v2, v8, v0}, Lcom/google/android/gms/internal/ads/zzwd;->zzq(Lcom/google/android/gms/internal/ads/zzbf;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzwd;

    move-result-object p1

    .line 12
    :goto_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzwd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzf:Lcom/google/android/gms/internal/ads/zzwc;

    if-eqz p1, :cond_5

    .line 14
    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/internal/ads/zzwf;->zzL(J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzwc;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzwk;->zza:Ljava/lang/Object;

    .line 15
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzwf;->zzK(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzwk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v1

    :cond_5
    :goto_3
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzi:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzh:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzwd;

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzvj;->zze(Lcom/google/android/gms/internal/ads/zzbf;)V

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzf:Lcom/google/android/gms/internal/ads/zzwc;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzwc;->zzt(Lcom/google/android/gms/internal/ads/zzwk;)V

    :cond_6
    return-void
.end method

.method protected final zzF(Lcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzwk;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzwd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwd;->zzs()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzwk;->zza:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzwd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwd;->zzs()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzwd;->zzc:Ljava/lang/Object;

    .line 2
    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzwk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzG(Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzaan;J)Lcom/google/android/gms/internal/ads/zzwi;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzwf;->zzC(Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzaan;J)Lcom/google/android/gms/internal/ads/zzwc;

    move-result-object p1

    return-object p1
.end method

.method public final zzd()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzg:Z

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzvs;->zzd()V

    return-void
.end method

.method public final zzz()Lcom/google/android/gms/internal/ads/zzbf;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzwd;

    return-object v0
.end method
