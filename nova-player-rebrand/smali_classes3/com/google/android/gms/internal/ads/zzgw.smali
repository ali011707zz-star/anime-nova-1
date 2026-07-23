.class public final Lcom/google/android/gms/internal/ads/zzgw;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgv;

.field private zzb:Landroid/net/Uri;

.field private zzc:[B

.field private zzd:I

.field private zze:I

.field private zzf:Z


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgu;-><init>([B)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Z)V

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zza:Lcom/google/android/gms/internal/ads/zzgv;

    array-length p1, p1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    .line 3
    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zze:I

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzc:[B

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzd:I

    .line 2
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzd:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzd:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgw;->zze:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgw;->zze:I

    .line 3
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzgt;->zzh(I)V

    return p3
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhf;)J
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgt;->zzf(Lcom/google/android/gms/internal/ads/zzhf;)V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhf;->zza:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzb:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgw;->zza:Lcom/google/android/gms/internal/ads/zzgv;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgv;->zza(Landroid/net/Uri;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzc:[B

    .line 3
    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzhf;->zze:J

    array-length v0, v0

    int-to-long v3, v0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_2

    long-to-int v1, v1

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzd:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zze:I

    .line 5
    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzhf;->zzf:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    int-to-long v4, v0

    .line 6
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zze:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzf:Z

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgt;->zzg(Lcom/google/android/gms/internal/ads/zzhf;)V

    if-eqz v3, :cond_1

    return-wide v1

    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgw;->zze:I

    int-to-long v0, p1

    return-wide v0

    .line 3
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhc;

    const/16 v0, 0x7d8

    .line 4
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzhc;-><init>(I)V

    throw p1
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzb:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzf:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzf:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzi()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzb:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzc:[B

    return-void
.end method
