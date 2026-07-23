.class final Lcom/google/android/gms/internal/ads/zzamq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:I

.field public final zzb:I

.field public final zzc:Landroid/util/SparseArray;

.field public final zzd:Landroid/util/SparseArray;

.field public final zze:Landroid/util/SparseArray;

.field public final zzf:Landroid/util/SparseArray;

.field public final zzg:Landroid/util/SparseArray;

.field public zzh:Lcom/google/android/gms/internal/ads/zzamk;

.field public zzi:Lcom/google/android/gms/internal/ads/zzamm;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzb:I

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzc:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    .line 2
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzd:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    .line 3
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zze:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    .line 4
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzf:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    .line 5
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzg:Landroid/util/SparseArray;

    return-void
.end method
