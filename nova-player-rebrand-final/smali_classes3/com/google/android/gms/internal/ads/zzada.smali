.class final Lcom/google/android/gms/internal/ads/zzada;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzacs;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzacq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzff;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzff;

.field private final zze:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzact;

.field private zzg:J

.field private zzh:J

.field private zzi:J

.field private zzj:Lcom/google/android/gms/internal/ads/zzbv;

.field private zzk:J

.field private final zzl:Lcom/google/android/gms/internal/ads/zzabs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzact;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzada;->zzl:Lcom/google/android/gms/internal/ads/zzabs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzada;->zza:Lcom/google/android/gms/internal/ads/zzacs;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzada;->zzf:Lcom/google/android/gms/internal/ads/zzact;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzacq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzacq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzada;->zzb:Lcom/google/android/gms/internal/ads/zzacq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzff;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzff;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzada;->zzc:Lcom/google/android/gms/internal/ads/zzff;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzff;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzff;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzada;->zzd:Lcom/google/android/gms/internal/ads/zzff;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzada;->zze:Lcom/google/android/gms/internal/ads/zzeg;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzada;->zzg:J

    .line 2
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbv;->zza:Lcom/google/android/gms/internal/ads/zzbv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzada;->zzj:Lcom/google/android/gms/internal/ads/zzbv;

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzada;->zzh:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzada;->zzi:J

    return-void
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzff;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzff;->zzc()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzff;->zzc()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzff;->zzd()Ljava/lang/Object;

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzff;->zzd()Ljava/lang/Object;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public final zza()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zze:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zze()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zzg:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zzh:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zzi:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zzd:Lcom/google/android/gms/internal/ads/zzff;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzff;->zzc()I

    move-result v1

    if-lez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzada;->zzh(Lcom/google/android/gms/internal/ads/zzff;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zzk:J

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zzc:Lcom/google/android/gms/internal/ads/zzff;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzff;->zzc()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzada;->zzh(Lcom/google/android/gms/internal/ads/zzff;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbv;

    const-wide/16 v2, 0x0

    .line 4
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzff;->zza(JLjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final zzb(JJ)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzada;->zze:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzada;->zzd:Lcom/google/android/gms/internal/ads/zzff;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzc()J

    move-result-wide v4

    .line 2
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzff;->zze(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v15, 0x2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzada;->zzk:J

    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzada;->zzk:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzada;->zza:Lcom/google/android/gms/internal/ads/zzacs;

    .line 5
    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/zzacs;->zza(I)V

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzada;->zza:Lcom/google/android/gms/internal/ads/zzacs;

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzada;->zzk:J

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzada;->zzb:Lcom/google/android/gms/internal/ads/zzacq;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    .line 6
    invoke-virtual/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(JJJJZZLcom/google/android/gms/internal/ads/zzacq;)I

    move-result v2

    const/4 v6, 0x5

    const/4 v7, 0x4

    if-eq v2, v6, :cond_1

    if-eq v2, v7, :cond_1

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzada;->zzf:Lcom/google/android/gms/internal/ads/zzact;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzacq;->zza()J

    move-result-wide v8

    .line 7
    invoke-virtual {v6, v4, v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzact;->zza(JJ)V

    :cond_1
    if-eqz v2, :cond_4

    const/4 v6, 0x1

    if-eq v2, v6, :cond_4

    if-eq v2, v15, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    if-eq v2, v7, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzada;->zzh:J

    goto :goto_0

    .line 7
    :cond_3
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzada;->zzh:J

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzb()J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzada;->zzl:Lcom/google/android/gms/internal/ads/zzabs;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzabq;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzabq;-><init>(Lcom/google/android/gms/internal/ads/zzabs;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzabs;->zza:Lcom/google/android/gms/internal/ads/zzabt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzabt;->zzC()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 9
    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzabt;->zzz()Ljava/util/Queue;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzadp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadp;->zzb()V

    goto :goto_0

    :cond_4
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzada;->zzh:J

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzb()J

    move-result-wide v5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzada;->zzc:Lcom/google/android/gms/internal/ads/zzff;

    .line 12
    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzff;->zze(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbv;

    if-eqz v1, :cond_5

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbv;->zza:Lcom/google/android/gms/internal/ads/zzbv;

    .line 13
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzbv;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzada;->zzj:Lcom/google/android/gms/internal/ads/zzbv;

    .line 14
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzbv;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzada;->zzj:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzada;->zzl:Lcom/google/android/gms/internal/ads/zzabs;

    .line 15
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzabs;->zza(Lcom/google/android/gms/internal/ads/zzbv;)V

    :cond_5
    if-nez v2, :cond_6

    .line 16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    goto :goto_1

    .line 18
    :cond_6
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzacq;->zzb()J

    move-result-wide v1

    .line 16
    :goto_1
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzada;->zzl:Lcom/google/android/gms/internal/ads/zzabs;

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()Z

    move-result v7

    move-wide/from16 v16, v1

    move-object v2, v4

    move-wide/from16 v3, v16

    .line 18
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzabs;->zzb(JJZ)V

    goto/16 :goto_0

    :cond_7
    :goto_2
    return-void
.end method

.method public final zzc(II)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zzg:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzada;->zzc:Lcom/google/android/gms/internal/ads/zzff;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbv;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, p1, p2, v4}, Lcom/google/android/gms/internal/ads/zzbv;-><init>(IIF)V

    .line 2
    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzff;->zza(JLjava/lang/Object;)V

    return-void
.end method

.method public final zzd(IJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zze:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zza:Lcom/google/android/gms/internal/ads/zzacs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacs;->zza(I)V

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzada;->zzk:J

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzada;->zzd:Lcom/google/android/gms/internal/ads/zzff;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zzg:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 2
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 3
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzff;->zza(JLjava/lang/Object;)V

    return-void
.end method

.method public final zze(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zze:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeg;->zza(J)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzada;->zzg:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzada;->zzi:J

    return-void
.end method

.method public final zzf()V
    .locals 4

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zzg:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zzg:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zzh:J

    :cond_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zzi:J

    return-void
.end method

.method public final zzg()Z
    .locals 4

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzada;->zzi:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzada;->zzh:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
