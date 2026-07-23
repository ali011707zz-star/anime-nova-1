.class public final Lcom/google/android/gms/internal/ads/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:J

.field public final zzb:I

.field public final zzc:[Landroid/net/Uri;

.field public final zzd:[Lcom/google/android/gms/internal/ads/zzak;

.field public final zze:[I

.field public final zzf:[J

.field public final zzg:[Ljava/lang/String;

.field public final zzh:[Lcom/google/android/gms/internal/ads/zzb;

.field public final zzi:J

.field public final zzj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x24

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x2

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x3

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x4

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x5

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x6

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x7

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x8

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x9

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0xa

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0xb

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 15

    const/4 v0, 0x0

    .line 1
    new-array v6, v0, [I

    new-array v7, v0, [Lcom/google/android/gms/internal/ads/zzak;

    new-array v8, v0, [J

    new-array v12, v0, [Ljava/lang/String;

    new-array v13, v0, [Lcom/google/android/gms/internal/ads/zzb;

    const/4 v14, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/zza;-><init>(JII[I[Lcom/google/android/gms/internal/ads/zzak;[JJZ[Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzb;Z)V

    return-void
.end method

.method private constructor <init>(JII[I[Lcom/google/android/gms/internal/ads/zzak;[JJZ[Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzb;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length p1, p5

    array-length p2, p6

    const/4 p4, 0x1

    const/4 p8, 0x0

    if-ne p1, p2, :cond_0

    move p9, p4

    goto :goto_0

    :cond_0
    move p9, p8

    :goto_0
    invoke-static {p9}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    .line 3
    array-length p9, p12

    if-ne p1, p9, :cond_1

    goto :goto_1

    :cond_1
    move p4, p8

    :goto_1
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    const-wide/16 p9, 0x0

    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/zza;->zza:J

    iput p3, p0, Lcom/google/android/gms/internal/ads/zza;->zzb:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zza;->zze:[I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zza;->zzd:[Lcom/google/android/gms/internal/ads/zzak;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zza;->zzf:[J

    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/zza;->zzi:J

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zza;->zzj:Z

    new-array p1, p2, [Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zza;->zzc:[Landroid/net/Uri;

    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zza;->zzc:[Landroid/net/Uri;

    array-length p2, p1

    if-ge p8, p2, :cond_3

    .line 4
    aget-object p2, p6, p8

    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_3

    :cond_2
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzak;->zzb:Lcom/google/android/gms/internal/ads/zzag;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzag;->zza:Landroid/net/Uri;

    :goto_3
    aput-object p2, p1, p8

    add-int/lit8 p8, p8, 0x1

    goto :goto_2

    :cond_3
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zza;->zzg:[Ljava/lang/String;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zza;->zzh:[Lcom/google/android/gms/internal/ads/zzb;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zza;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zza;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zza;->zzb:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zza;->zzb:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zza;->zzd:[Lcom/google/android/gms/internal/ads/zzak;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zza;->zzd:[Lcom/google/android/gms/internal/ads/zzak;

    .line 2
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zza;->zze:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zza;->zze:[I

    .line 3
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zza;->zzf:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zza;->zzf:[J

    .line 4
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zza;->zzg:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zza;->zzg:[Ljava/lang/String;

    .line 5
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zza;->zzh:[Lcom/google/android/gms/internal/ads/zzb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zza;->zzh:[Lcom/google/android/gms/internal/ads/zzb;

    .line 6
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zza;->zzb:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zza;->zzd:[Lcom/google/android/gms/internal/ads/zzak;

    mul-int/lit16 v0, v0, 0x3c1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zza;->zze:[I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zza;->zzf:[J

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zza;->zzg:[Ljava/lang/String;

    mul-int/lit16 v0, v0, 0x745f

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zza;->zzh:[Lcom/google/android/gms/internal/ads/zzb;

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public final zza(I)I
    .locals 3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zza;->zze:[I

    array-length v2, v1

    if-ge p1, v2, :cond_1

    .line 2
    aget v1, v1, p1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zza;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zza;->zze:[I

    array-length v2, v1

    const/4 v3, 0x0

    .line 2
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    .line 4
    invoke-static {v10, v2, v4, v3}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zza;->zzf:[J

    .line 5
    array-length v2, v1

    .line 6
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 7
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v12

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    invoke-static {v12, v2, v4, v5, v6}, Ljava/util/Arrays;->fill([JIIJ)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zza;->zzd:[Lcom/google/android/gms/internal/ads/zzak;

    .line 9
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, [Lcom/google/android/gms/internal/ads/zzak;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zza;->zzg:[Ljava/lang/String;

    .line 10
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, [Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zza;->zzh:[Lcom/google/android/gms/internal/ads/zzb;

    .line 11
    array-length v2, v1

    .line 12
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 13
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, [Lcom/google/android/gms/internal/ads/zzb;

    new-instance v5, Lcom/google/android/gms/internal/ads/zza;

    const/4 v15, 0x0

    const/16 v18, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const-wide/16 v13, 0x0

    .line 14
    invoke-direct/range {v5 .. v18}, Lcom/google/android/gms/internal/ads/zza;-><init>(JII[I[Lcom/google/android/gms/internal/ads/zzak;[JJZ[Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzb;Z)V

    return-object v5
.end method
