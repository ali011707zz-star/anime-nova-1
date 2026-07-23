.class public final Lcom/google/android/gms/internal/ads/zzzk;
.super Lcom/google/android/gms/internal/ads/zzbk;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Z

.field private zzb:Z

.field private zzc:Z

.field private zzd:Z

.field private zze:Z

.field private zzf:Z

.field private zzg:Z

.field private final zzh:Landroid/util/SparseArray;

.field private final zzi:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbk;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    .line 2
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzh:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzi:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zza:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzd:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zze:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzf:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzg:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzzl;[B)V
    .locals 4

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbk;-><init>(Lcom/google/android/gms/internal/ads/zzbl;)V

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzzl;->zzK:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzzk;->zza:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzzl;->zzM:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzb:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzzl;->zzO:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzc:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzzl;->zzT:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzd:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzzl;->zzU:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzzk;->zze:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzzl;->zzV:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzf:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzzl;->zzX:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzg:Z

    new-instance p2, Landroid/util/SparseArray;

    .line 5
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzl;->zze()Landroid/util/SparseArray;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 7
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzh:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzl;->zzf()Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzi:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method final synthetic zzA()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzb:Z

    return v0
.end method

.method final synthetic zzB()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzc:Z

    return v0
.end method

.method final synthetic zzC()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzd:Z

    return v0
.end method

.method final synthetic zzD()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zze:Z

    return v0
.end method

.method final synthetic zzE()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzf:Z

    return v0
.end method

.method final synthetic zzF()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzg:Z

    return v0
.end method

.method final synthetic zzG()Landroid/util/SparseArray;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzh:Landroid/util/SparseArray;

    return-object v0
.end method

.method final synthetic zzH()Landroid/util/SparseBooleanArray;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzi:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method protected final zzx(Lcom/google/android/gms/internal/ads/zzbl;)Lcom/google/android/gms/internal/ads/zzzk;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbk;->zza(Lcom/google/android/gms/internal/ads/zzbl;)Lcom/google/android/gms/internal/ads/zzbk;

    return-object p0
.end method

.method public final zzy(IZ)Lcom/google/android/gms/internal/ads/zzzk;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzi:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-ne v1, p2, :cond_0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-object p0
.end method

.method final synthetic zzz()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zza:Z

    return v0
.end method
