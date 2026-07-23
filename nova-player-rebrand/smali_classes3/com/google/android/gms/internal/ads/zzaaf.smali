.class public final Lcom/google/android/gms/internal/ads/zzaaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:[I

.field private final zzb:[Lcom/google/android/gms/internal/ads/zzyn;

.field private final zzc:[I

.field private final zzd:[[[I

.field private final zze:Lcom/google/android/gms/internal/ads/zzyn;


# direct methods
.method constructor <init>([Ljava/lang/String;[I[Lcom/google/android/gms/internal/ads/zzyn;[I[[[ILcom/google/android/gms/internal/ads/zzyn;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaaf;->zza:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaaf;->zzb:[Lcom/google/android/gms/internal/ads/zzyn;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzaaf;->zzd:[[[I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaaf;->zzc:[I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzaaf;->zze:Lcom/google/android/gms/internal/ads/zzyn;

    return-void
.end method


# virtual methods
.method public final zza(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaf;->zza:[I

    aget p1, v0, p1

    return p1
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzyn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaf;->zzb:[Lcom/google/android/gms/internal/ads/zzyn;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final zzc(III)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaf;->zzd:[[[I

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    aget p1, p1, p3

    return p1
.end method

.method public final zzd(IIZ)I
    .locals 8

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaaf;->zzb:[Lcom/google/android/gms/internal/ads/zzyn;

    aget-object v0, p3, p1

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzyn;->zza(I)Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbg;->zza:I

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaaf;->zzd:[[[I

    .line 2
    aget-object v5, v5, p1

    aget-object v5, v5, p2

    aget v5, v5, v3

    and-int/lit8 v5, v5, 0x7

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 3
    aput v3, v1, v4

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const/4 v1, 0x0

    const/16 v3, 0x10

    move v4, v2

    move v5, v3

    move v3, v4

    .line 5
    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_3

    .line 6
    aget v6, v0, v2

    .line 7
    aget-object v7, p3, p1

    .line 8
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/ads/zzyn;->zza(I)Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbg;->zza(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    add-int/lit8 v7, v4, 0x1

    if-nez v4, :cond_2

    move-object v1, v6

    goto :goto_2

    .line 9
    :cond_2
    invoke-static {v1, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    or-int/2addr v3, v4

    .line 8
    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaaf;->zzd:[[[I

    .line 10
    aget-object v4, v4, p1

    aget-object v4, v4, p2

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x18

    .line 11
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v2, v2, 0x1

    move v4, v7

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaaf;->zzc:[I

    .line 12
    aget p1, p2, p1

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_4
    return v5
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzyn;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaf;->zze:Lcom/google/android/gms/internal/ads/zzyn;

    return-object v0
.end method
