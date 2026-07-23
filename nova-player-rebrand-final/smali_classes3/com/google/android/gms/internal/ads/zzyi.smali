.class final Lcom/google/android/gms/internal/ads/zzyi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:I

.field private final zzb:Landroid/util/SparseArray;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdr;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyi;->zzb:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyi;->zzc:Lcom/google/android/gms/internal/ads/zzdr;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyi;->zza:I

    return-void
.end method


# virtual methods
.method public final zza(I)Ljava/lang/Object;
    .locals 4

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyi;->zza:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyi;->zza:I

    .line 2
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyi;->zza:I

    if-gtz v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyi;->zzb:Landroid/util/SparseArray;

    .line 1
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-ge p1, v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyi;->zza:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 2
    :cond_2
    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyi;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyi;->zzb:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v3, v1

    if-ge v0, v3, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyi;->zza:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyi;->zza:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyi;->zza:I

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzyi;->zza:I

    .line 3
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(ILjava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyi;->zza:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyi;->zzb:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzyi;->zza:I

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyi;->zzb:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-lt p1, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 4
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    if-ne v4, p1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyi;->zzc:Lcom/google/android/gms/internal/ads/zzdr;

    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdr;->zza(Ljava/lang/Object;)V

    .line 6
    :cond_3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final zzc()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyi;->zzb:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(I)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyi;->zzb:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-lt p1, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzyi;->zzc:Lcom/google/android/gms/internal/ads/zzdr;

    .line 2
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzdr;->zza(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyi;->zza:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyi;->zza:I

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zze()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyi;->zzb:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyi;->zzc:Lcom/google/android/gms/internal/ads/zzdr;

    .line 2
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzdr;->zza(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyi;->zza:I

    .line 3
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final zzf()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyi;->zzb:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
