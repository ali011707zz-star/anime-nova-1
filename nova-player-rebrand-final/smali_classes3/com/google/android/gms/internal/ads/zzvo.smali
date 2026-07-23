.class public final Lcom/google/android/gms/internal/ads/zzvo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwi;
.implements Lcom/google/android/gms/internal/ads/zzwh;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzwi;

.field zzb:J

.field private zzc:Lcom/google/android/gms/internal/ads/zzwh;

.field private zzd:[Lcom/google/android/gms/internal/ads/zzvn;

.field private zze:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwi;ZJJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvo;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzvn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzd:[Lcom/google/android/gms/internal/ads/zzvn;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvo;->zze:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzb:J

    return-void
.end method

.method private static zzq(JJJ)J
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p4, v0

    .line 1
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    :cond_0
    return-wide p0
.end method


# virtual methods
.method public final zza(JJ)V
    .locals 0

    .line 0
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzb:J

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzwh;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzc:Lcom/google/android/gms/internal/ads/zzwh;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvo;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzwi;->zzb(Lcom/google/android/gms/internal/ads/zzwh;J)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzc()V

    return-void
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzyn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzd()Lcom/google/android/gms/internal/ads/zzyn;

    move-result-object v0

    return-object v0
.end method

.method public final zze([Lcom/google/android/gms/internal/ads/zzaac;[Z[Lcom/google/android/gms/internal/ads/zzyc;[ZJ)J
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p3

    .line 1
    array-length v1, v8

    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzvn;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzvo;->zzd:[Lcom/google/android/gms/internal/ads/zzvn;

    new-array v4, v1, [Lcom/google/android/gms/internal/ads/zzyc;

    const/4 v9, 0x0

    move v1, v9

    :goto_0
    array-length v2, v8

    const/4 v10, 0x0

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzvo;->zzd:[Lcom/google/android/gms/internal/ads/zzvn;

    aget-object v3, v8, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzvn;

    aput-object v3, v2, v1

    if-eqz v3, :cond_0

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzvn;->zza:Lcom/google/android/gms/internal/ads/zzyc;

    .line 2
    :cond_0
    aput-object v10, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvo;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    .line 3
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzwi;->zze([Lcom/google/android/gms/internal/ads/zzaac;[Z[Lcom/google/android/gms/internal/ads/zzyc;[ZJ)J

    move-result-wide v11

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzvo;->zzb:J

    move-wide/from16 v13, p5

    move-wide v15, v5

    .line 4
    invoke-static/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzvo;->zzq(JJJ)J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzvo;->zzo()Z

    move-result v1

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_4

    cmp-long v1, v11, p5

    if-gez v1, :cond_2

    goto :goto_2

    :cond_2
    const-wide/16 v15, 0x0

    cmp-long v1, v11, v15

    if-eqz v1, :cond_4

    .line 5
    array-length v1, v2

    move v3, v9

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v7, v2, v3

    if-eqz v7, :cond_3

    .line 6
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzaac;->zzc()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v7

    .line 7
    iget-object v11, v7, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzv;->zzk:Ljava/lang/String;

    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzas;->zzd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    :goto_2
    move-wide v13, v5

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4
    :cond_4
    :goto_3
    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzvo;->zze:J

    :goto_4
    array-length v1, v8

    if-ge v9, v1, :cond_8

    .line 8
    aget-object v1, v4, v9

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvo;->zzd:[Lcom/google/android/gms/internal/ads/zzvn;

    .line 9
    aput-object v10, v1, v9

    goto :goto_5

    .line 12
    :cond_5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzvo;->zzd:[Lcom/google/android/gms/internal/ads/zzvn;

    .line 10
    aget-object v3, v2, v9

    if-eqz v3, :cond_6

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzvn;->zza:Lcom/google/android/gms/internal/ads/zzyc;

    if-eq v3, v1, :cond_7

    :cond_6
    new-instance v3, Lcom/google/android/gms/internal/ads/zzvn;

    .line 11
    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzvn;-><init>(Lcom/google/android/gms/internal/ads/zzvo;Lcom/google/android/gms/internal/ads/zzyc;)V

    aput-object v3, v2, v9

    .line 9
    :cond_7
    :goto_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvo;->zzd:[Lcom/google/android/gms/internal/ads/zzvn;

    .line 12
    aget-object v1, v1, v9

    aput-object v1, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_8
    return-wide v5
.end method

.method public final zzf(JZ)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvo;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzf(JZ)V

    return-void
.end method

.method public final zzg(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwi;->zzg(J)V

    return-void
.end method

.method public final zzh()J
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvo;->zzo()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzvo;->zze:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzvo;->zze:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvo;->zzh()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_0

    return-wide v5

    :cond_0
    return-wide v3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzh()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    return-wide v1

    :cond_2
    const-wide/16 v5, 0x0

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzb:J

    .line 3
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzvo;->zzq(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzi()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzi()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzb:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final zzj(J)J
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->zze:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzd:[Lcom/google/android/gms/internal/ads/zzvn;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzvn;->zza()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwi;->zzj(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzb:J

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzvo;->zzq(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzk(JLcom/google/android/gms/internal/ads/zzmt;)J
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3

    .line 1
    iget-wide v2, p3, Lcom/google/android/gms/internal/ads/zzmt;->zzd:J

    .line 2
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    .line 3
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 4
    iget-wide v6, p3, Lcom/google/android/gms/internal/ads/zzmt;->zze:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzb:J

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v10, v8, v10

    if-nez v10, :cond_0

    const-wide v8, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    sub-long/2addr v8, p1

    .line 5
    :goto_0
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    cmp-long v2, v0, v6

    if-eqz v2, :cond_2

    :cond_1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzmt;

    .line 6
    invoke-direct {p3, v4, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzmt;-><init>(JJ)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwi;->zzk(JLcom/google/android/gms/internal/ads/zzmt;)J

    move-result-wide p1

    return-wide p1

    :cond_3
    return-wide v0
.end method

.method public final zzl()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzl()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzb:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzll;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzwi;->zzm(Lcom/google/android/gms/internal/ads/zzll;)Z

    move-result p1

    return p1
.end method

.method public final zzn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzn()Z

    move-result v0

    return v0
.end method

.method final zzo()Z
    .locals 4

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->zze:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzwi;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzc:Lcom/google/android/gms/internal/ads/zzwh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzwh;->zzp(Lcom/google/android/gms/internal/ads/zzwi;)V

    return-void
.end method

.method public final bridge synthetic zzs(Lcom/google/android/gms/internal/ads/zzye;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzwi;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzc:Lcom/google/android/gms/internal/ads/zzwh;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzyd;->zzs(Lcom/google/android/gms/internal/ads/zzye;)V

    return-void
.end method
