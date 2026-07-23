.class final Lcom/google/android/gms/internal/ads/zzcs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcr;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzct;

.field private final zzb:[S

.field private zzc:[S

.field private zzd:[S

.field private zze:[S

.field private zzf:I

.field private zzg:I

.field private zzh:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzct;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcs;->zza:Lcom/google/android/gms/internal/ads/zzct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzct;->zzh()I

    move-result v0

    .line 2
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzb:[S

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzct;->zzh()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v1

    mul-int/2addr v0, v1

    .line 3
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzc:[S

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzct;->zzh()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v1

    mul-int/2addr v0, v1

    .line 4
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzd:[S

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzct;->zzh()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result p1

    mul-int/2addr v0, p1

    .line 5
    new-array p1, v0, [S

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcs;->zze:[S

    return-void
.end method

.method private final zzs([SIII)I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xff

    move v3, v0

    move v4, v3

    :goto_0
    if-gt p3, p4, :cond_5

    move v5, v0

    move v6, v5

    :goto_1
    if-ge v5, p3, :cond_0

    .line 1
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcs;->zza:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v7

    mul-int/2addr v7, p2

    add-int v8, v7, v5

    aget-short v8, p1, v8

    add-int/2addr v7, p3

    add-int/2addr v7, v5

    .line 2
    aget-short v7, p1, v7

    sub-int/2addr v8, v7

    .line 3
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    mul-int v5, v6, v3

    mul-int v7, v1, p3

    if-ge v5, v7, :cond_1

    move v1, v6

    :cond_1
    if-ge v5, v7, :cond_2

    move v3, p3

    :cond_2
    mul-int v5, v6, v2

    mul-int v7, v4, p3

    if-le v5, v7, :cond_3

    move v4, v6

    :cond_3
    if-le v5, v7, :cond_4

    move v2, p3

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 4
    :cond_5
    div-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzf:I

    .line 5
    div-int/2addr v4, v2

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzg:I

    return v3
.end method

.method private final zzt([SII)[S
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcs;->zza:Lcom/google/android/gms/internal/ads/zzct;

    array-length v1, p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v2

    div-int/2addr v1, v2

    add-int/2addr p2, p3

    if-gt p2, v1, :cond_0

    return-object p1

    :cond_0
    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result p2

    mul-int/2addr v1, p2

    .line 2
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 0
    const/4 v0, 0x2

    return v0
.end method

.method public final zzb(IJJ)V
    .locals 15

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcs;->zza:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzd:[S

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzct;->zzj()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcs;->zze:[S

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v7

    mul-int v7, v7, p1

    add-int/2addr v7, v1

    aget-short v8, v6, v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v9

    add-int/2addr v7, v9

    .line 2
    aget-short v6, v6, v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzct;->zzm()I

    move-result v7

    int-to-long v9, v7

    mul-long v9, v9, p2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzct;->zzl()I

    move-result v7

    int-to-long v11, v7

    mul-long v11, v11, p4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzct;->zzl()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v13, v2

    mul-long v13, v13, p4

    int-to-long v7, v8

    move v2, v1

    int-to-long v0, v6

    sub-long v11, v13, v11

    sub-long/2addr v13, v9

    sub-long v9, v11, v13

    mul-long/2addr v13, v7

    mul-long/2addr v9, v0

    add-long/2addr v13, v9

    .line 3
    div-long/2addr v13, v11

    long-to-int v0, v13

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    int-to-short v0, v0

    .line 4
    aput-short v0, v3, v5

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzc()Z
    .locals 4

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzf:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcs;->zza:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzct;->zzn()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzg:I

    mul-int/lit8 v3, v0, 0x3

    if-le v2, v3, :cond_1

    return v1

    :cond_1
    add-int/2addr v0, v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzh:I

    mul-int/lit8 v2, v2, 0x3

    if-gt v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final zzd(II)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzc:[S

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcs;->zza:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzct;->zzh()I

    move-result v4

    div-int/2addr v4, p2

    if-ge v2, v4, :cond_1

    move v4, v1

    move v5, v4

    .line 1
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v6

    mul-int/2addr v6, p2

    if-ge v4, v6, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v7

    mul-int/2addr v7, p1

    mul-int/2addr v6, v2

    add-int/2addr v7, v6

    add-int/2addr v7, v4

    aget-short v6, v0, v7

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2
    :cond_0
    div-int/2addr v5, v6

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzb:[S

    int-to-short v4, v5

    .line 3
    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zze(III)I
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzb:[S

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzcs;->zzs([SIII)I

    move-result p1

    return p1
.end method

.method public final zzf(III)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzc:[S

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcs;->zzs([SIII)I

    move-result p1

    return p1
.end method

.method public final zzg()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzh:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzg:I

    return-void
.end method

.method public final zzh(IIIII)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzd:[S

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzc:[S

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_1

    mul-int v4, p3, p2

    mul-int v5, p5, p2

    mul-int v6, p4, p2

    add-int/2addr v6, v3

    add-int/2addr v5, v3

    add-int/2addr v4, v3

    move v7, v2

    :goto_1
    if-ge v7, p1, :cond_0

    aget-short v8, v1, v6

    sub-int v9, p1, v7

    mul-int/2addr v8, v9

    aget-short v9, v1, v5

    mul-int/2addr v9, v7

    add-int/2addr v8, v9

    div-int/2addr v8, p1

    int-to-short v8, v8

    aput-short v8, v0, v4

    add-int/2addr v4, p2

    add-int/2addr v6, p2

    add-int/2addr v5, p2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzi()V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzh:I

    return-void
.end method

.method public final zzj(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcs;->zza:Lcom/google/android/gms/internal/ads/zzct;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzc:[S

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzct;->zzi()I

    move-result v0

    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzcs;->zzt([SII)[S

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzc:[S

    return-void
.end method

.method public final zzk(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcs;->zza:Lcom/google/android/gms/internal/ads/zzct;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzd:[S

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzct;->zzj()I

    move-result v0

    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzcs;->zzt([SII)[S

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzd:[S

    return-void
.end method

.method public final zzl(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcs;->zza:Lcom/google/android/gms/internal/ads/zzct;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcs;->zze:[S

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzct;->zzk()I

    move-result v0

    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzcs;->zzt([SII)[S

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcs;->zze:[S

    return-void
.end method

.method public final zzm(II)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcs;->zza:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v2

    mul-int/2addr v2, p2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzc:[S

    add-int v3, p1, v1

    aput-short v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzn(Ljava/nio/ByteBuffer;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcs;->zza:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzct;->zzi()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzc:[S

    mul-int/2addr v1, v0

    div-int/lit8 v0, p2, 0x2

    invoke-virtual {v2, v3, v1, v0}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 2
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final zzo(Ljava/nio/ByteBuffer;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcs;->zza:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v1

    mul-int/2addr v1, p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzd:[S

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    add-int/2addr p2, p2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    mul-int/2addr p2, v0

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final synthetic zzp()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcs;->zze:[S

    return-object v0
.end method

.method public final synthetic zzq()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzd:[S

    return-object v0
.end method

.method public final synthetic zzr()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcs;->zzc:[S

    return-object v0
.end method
