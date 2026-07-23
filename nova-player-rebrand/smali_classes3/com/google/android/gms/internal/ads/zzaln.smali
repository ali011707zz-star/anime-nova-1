.class final Lcom/google/android/gms/internal/ads/zzaln;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzalo;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzer;

.field private zzc:I

.field private zzd:I

.field private zze:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzalo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzalo;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaln;->zza:Lcom/google/android/gms/internal/ads/zzalo;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzer;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaln;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaln;->zzc:I

    return-void
.end method

.method private final zzf(I)I
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaln;->zzd:I

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaln;->zzd:I

    add-int v2, p1, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaln;->zza:Lcom/google/android/gms/internal/ads/zzalo;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzalo;->zzc:I

    if-ge v2, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaln;->zzd:I

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzalo;->zzf:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    :cond_1
    return v0
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaln;->zza:Lcom/google/android/gms/internal/ads/zzalo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzalo;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaln;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaln;->zzc:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaln;->zze:Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaev;)Z
    .locals 7

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaln;->zze:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaln;->zze:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaln;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    .line 2
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaln;->zze:Z

    const/4 v2, 0x1

    if-nez v0, :cond_a

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaln;->zzc:I

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaln;->zza:Lcom/google/android/gms/internal/ads/zzalo;

    const-wide/16 v3, -0x1

    invoke-virtual {v0, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzalo;->zzb(Lcom/google/android/gms/internal/ads/zzaev;J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzalo;->zzc(Lcom/google/android/gms/internal/ads/zzaev;Z)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzalo;->zzd:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzalo;->zza:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaln;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzaln;->zzf(I)I

    move-result v0

    add-int/2addr v3, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaln;->zzd:I

    goto :goto_1

    :cond_2
    move v0, v1

    .line 5
    :goto_1
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzaey;->zzd(Lcom/google/android/gms/internal/ads/zzaev;I)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaln;->zzc:I

    goto :goto_3

    :cond_4
    :goto_2
    return v1

    .line 6
    :cond_5
    :goto_3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaln;->zzf(I)I

    move-result v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaln;->zzc:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaln;->zzd:I

    add-int/2addr v3, v4

    if-lez v0, :cond_8

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaln;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v5

    add-int/2addr v5, v0

    .line 7
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzc(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v6

    .line 8
    invoke-static {p1, v5, v6, v0}, Lcom/google/android/gms/internal/ads/zzaey;->zzc(Lcom/google/android/gms/internal/ads/zzaev;[BII)Z

    move-result v5

    if-nez v5, :cond_6

    return v1

    :cond_6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v5

    add-int/2addr v5, v0

    .line 9
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaln;->zza:Lcom/google/android/gms/internal/ads/zzalo;

    add-int/lit8 v4, v3, -0x1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalo;->zzf:[I

    .line 10
    aget v0, v0, v4

    const/16 v4, 0xff

    if-eq v0, v4, :cond_7

    goto :goto_4

    :cond_7
    move v2, v1

    :goto_4
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaln;->zze:Z

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaln;->zza:Lcom/google/android/gms/internal/ads/zzalo;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzalo;->zzc:I

    if-ne v3, v0, :cond_9

    const/4 v3, -0x1

    :cond_9
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaln;->zzc:I

    goto/16 :goto_0

    :cond_a
    return v2
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzalo;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaln;->zza:Lcom/google/android/gms/internal/ads/zzalo;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzer;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaln;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    return-object v0
.end method

.method public final zze()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaln;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v1

    array-length v1, v1

    const v2, 0xfe01

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v3

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzb([BI)V

    return-void
.end method
