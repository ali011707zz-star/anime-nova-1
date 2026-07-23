.class public abstract Lcom/google/android/gms/internal/ads/zzbf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbf;->zza:Lcom/google/android/gms/internal/ads/zzbf;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x24

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x2

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzbf;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbf;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbf;->zza()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbf;->zza()I

    move-result v3

    if-ne v1, v3, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbf;->zzc()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbf;->zzc()I

    move-result v3

    if-eq v1, v3, :cond_2

    goto/16 :goto_3

    .line 3
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbe;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbe;-><init>()V

    .line 4
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbd;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbd;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbe;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzbe;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbd;

    .line 5
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzbd;-><init>()V

    move v6, v2

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbf;->zza()I

    move-result v7

    if-ge v6, v7, :cond_4

    const-wide/16 v7, 0x0

    .line 7
    invoke-virtual {p0, v6, v1, v7, v8}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object v9

    invoke-virtual {p1, v6, v4, v7, v8}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object v7

    .line 8
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzbe;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    return v2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    move v1, v2

    .line 9
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbf;->zzc()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 10
    invoke-virtual {p0, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v4

    .line 11
    invoke-virtual {p1, v1, v5, v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzbd;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzk(Z)I

    move-result v1

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzk(Z)I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 14
    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzj(Z)I

    move-result v3

    .line 15
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzj(Z)I

    move-result v4

    if-ne v3, v4, :cond_a

    :goto_2
    if-eq v1, v3, :cond_9

    .line 16
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzh(IIZ)I

    move-result v4

    .line 17
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzh(IIZ)I

    move-result v1

    if-ne v4, v1, :cond_8

    move v1, v4

    goto :goto_2

    :cond_8
    return v2

    :cond_9
    return v0

    :cond_a
    :goto_3
    return v2
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbe;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbd;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbf;->zza()I

    move-result v2

    add-int/lit16 v2, v2, 0xd9

    const/4 v3, 0x0

    move v4, v3

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbf;->zza()I

    move-result v5

    mul-int/lit8 v2, v2, 0x1f

    if-ge v4, v5, :cond_0

    const-wide/16 v5, 0x0

    .line 5
    invoke-virtual {p0, v4, v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbe;->hashCode()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbf;->zzc()I

    move-result v0

    add-int/2addr v2, v0

    move v0, v3

    .line 8
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbf;->zzc()I

    move-result v4

    const/4 v5, 0x1

    if-ge v0, v4, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    .line 9
    invoke-virtual {p0, v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbd;->hashCode()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzbf;->zzk(Z)I

    move-result v0

    :goto_2
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    mul-int/lit8 v2, v2, 0x1f

    .line 11
    invoke-virtual {p0, v0, v3, v5}, Lcom/google/android/gms/internal/ads/zzbf;->zzh(IIZ)I

    move-result v1

    add-int/2addr v2, v0

    move v0, v1

    goto :goto_2

    :cond_2
    return v2
.end method

.method public abstract zza()I
.end method

.method public abstract zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;
.end method

.method public abstract zzc()I
.end method

.method public abstract zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;
.end method

.method public abstract zze(Ljava/lang/Object;)I
.end method

.method public abstract zzf(I)Ljava/lang/Object;
.end method

.method public final zzg()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbf;->zza()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzh(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzbf;->zzj(Z)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzbf;->zzk(Z)I

    move-result p1

    return p1

    :cond_0
    add-int/2addr p1, v0

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 4
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    return p1

    .line 3
    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzbf;->zzj(Z)I

    move-result p2

    if-ne p1, p2, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    add-int/2addr p1, v0

    return p1
.end method

.method public zzi(IIZ)I
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzbf;->zzk(Z)I

    move-result p2

    const/4 p3, -0x1

    if-ne p1, p2, :cond_0

    return p3

    :cond_0
    add-int/2addr p1, p3

    return p1
.end method

.method public zzj(Z)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbf;->zzg()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbf;->zza()I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public zzk(Z)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbf;->zzg()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzl(ILcom/google/android/gms/internal/ads/zzbd;Lcom/google/android/gms/internal/ads/zzbe;IZ)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object p2

    .line 2
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object v2

    .line 4
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbe;->zzo:I

    if-ne v2, p1, :cond_1

    .line 5
    invoke-virtual {p0, p2, p4, p5}, Lcom/google/android/gms/internal/ads/zzbf;->zzh(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object p1

    .line 7
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbe;->zzn:I

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzbe;Lcom/google/android/gms/internal/ads/zzbd;IJ)Landroid/util/Pair;
    .locals 8

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzbf;->zzn(Lcom/google/android/gms/internal/ads/zzbe;Lcom/google/android/gms/internal/ads/zzbd;IJJ)Landroid/util/Pair;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzbe;Lcom/google/android/gms/internal/ads/zzbd;IJJ)Landroid/util/Pair;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbf;->zza()I

    move-result v0

    const-string v1, "index"

    .line 2
    invoke-static {p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzm(IILjava/lang/String;)I

    .line 3
    invoke-virtual {p0, p3, p1, p6, p7}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p4, p6

    const-wide/16 v0, 0x0

    if-nez p3, :cond_0

    iget-wide p3, p1, Lcom/google/android/gms/internal/ads/zzbe;->zzl:J

    move-wide p4, v0

    .line 4
    :cond_0
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzbe;->zzn:I

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, p3, p2, v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;

    .line 6
    :goto_0
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzbe;->zzo:I

    if-ge p3, v3, :cond_1

    iget-wide v3, p2, Lcom/google/android/gms/internal/ads/zzbd;->zze:J

    cmp-long v3, p4, v0

    if-eqz v3, :cond_1

    add-int/lit8 v4, p3, 0x1

    .line 7
    invoke-virtual {p0, v4, p2, v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v5

    .line 8
    iget-wide v5, v5, Lcom/google/android/gms/internal/ads/zzbd;->zze:J

    if-ltz v3, :cond_1

    move p3, v4

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;

    .line 10
    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/zzbd;->zze:J

    .line 11
    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/zzbd;->zzd:J

    cmp-long p1, v2, p6

    if-eqz p1, :cond_2

    const-wide/16 p6, -0x1

    add-long/2addr v2, p6

    .line 12
    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    .line 13
    :cond_2
    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    .line 14
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzbd;->zzb:Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbf;->zze(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object p1

    return-object p1
.end method
