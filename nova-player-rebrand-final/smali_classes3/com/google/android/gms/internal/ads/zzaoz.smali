.class public final Lcom/google/android/gms/internal/ads/zzaoz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaon;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzafr;

.field private final zzc:Ljava/lang/String;

.field private final zzd:I

.field private final zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/ads/zzagh;

.field private zzg:Ljava/lang/String;

.field private zzh:I

.field private zzi:I

.field private zzj:Z

.field private zzk:Z

.field private zzl:J

.field private zzm:I

.field private zzn:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzh:I

    new-instance v1, Lcom/google/android/gms/internal/ads/zzer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v1

    const/4 v2, -0x1

    .line 2
    aput-byte v2, v1, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzafr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzb:Lcom/google/android/gms/internal/ads/zzafr;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzn:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzc:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzd:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzh:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzi:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzk:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzn:J

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzaqb;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzg:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzb()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzf:Lcom/google/android/gms/internal/ads/zzagh;

    return-void
.end method

.method public final zzc(JI)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzn:J

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzer;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzf:Lcom/google/android/gms/internal/ads/zzagh;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v0

    if-lez v0, :cond_a

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzh:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_2

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzm:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzi:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzf:Lcom/google/android/gms/internal/ads/zzagh;

    .line 25
    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzi:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzi:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzm:I

    if-lt v1, v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzn:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 26
    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzf:Lcom/google/android/gms/internal/ads/zzagh;

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzn:J

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzm:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 27
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzagh;->zze(JIIILcom/google/android/gms/internal/ads/zzagg;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzn:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzl:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzn:J

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzi:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzh:I

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v0

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzi:I

    const/4 v5, 0x4

    rsub-int/lit8 v4, v4, 0x4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v6

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzi:I

    .line 7
    invoke-virtual {p1, v6, v7, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzm([BII)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzi:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzi:I

    if-lt v6, v5, :cond_0

    .line 8
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzb:Lcom/google/android/gms/internal/ads/zzafr;

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzafr;->zza(I)Z

    move-result v6

    if-nez v6, :cond_3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzi:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzh:I

    goto/16 :goto_0

    :cond_3
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzafr;->zzc:I

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzm:I

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzj:Z

    if-nez v6, :cond_4

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzafr;->zzg:I

    int-to-long v6, v6

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzafr;->zzd:I

    const-wide/32 v9, 0xf4240

    mul-long/2addr v6, v9

    int-to-long v8, v8

    .line 10
    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzl:J

    new-instance v6, Lcom/google/android/gms/internal/ads/zzt;

    .line 11
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzg:Ljava/lang/String;

    .line 12
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zze:Ljava/lang/String;

    .line 13
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzafr;->zzb:Ljava/lang/String;

    .line 14
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const/16 v7, 0x1000

    .line 15
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzn(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzafr;->zze:I

    .line 16
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzE(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzafr;->zzd:I

    .line 17
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzt;->zzF(I)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzc:Ljava/lang/String;

    .line 18
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzt;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzd:I

    .line 19
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzt;->zzg(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 20
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzf:Lcom/google/android/gms/internal/ads/zzagh;

    .line 21
    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzj:Z

    .line 22
    :cond_4
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzf:Lcom/google/android/gms/internal/ads/zzagh;

    .line 23
    invoke-interface {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzh:I

    goto/16 :goto_0

    .line 27
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v5

    :goto_2
    if-ge v4, v5, :cond_9

    add-int/lit8 v6, v4, 0x1

    .line 2
    aget-byte v7, v0, v4

    and-int/lit16 v8, v7, 0xff

    const/16 v9, 0xff

    if-ne v8, v9, :cond_6

    move v8, v2

    goto :goto_3

    :cond_6
    move v8, v3

    :goto_3
    iget-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzk:Z

    if-eqz v9, :cond_7

    and-int/lit16 v7, v7, 0xe0

    const/16 v9, 0xe0

    if-ne v7, v9, :cond_7

    move v7, v2

    goto :goto_4

    :cond_7
    move v7, v3

    :goto_4
    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzk:Z

    if-eqz v7, :cond_8

    .line 3
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzk:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v3

    .line 4
    aget-byte v0, v0, v4

    aput-byte v0, v3, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzi:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzh:I

    goto/16 :goto_0

    :cond_8
    move v4, v6

    goto :goto_2

    .line 5
    :cond_9
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final zze(Z)V
    .locals 0

    .line 0
    return-void
.end method
