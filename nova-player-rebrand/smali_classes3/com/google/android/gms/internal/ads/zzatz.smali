.class public final Lcom/google/android/gms/internal/ads/zzatz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaty;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzauk;I)B
    .locals 0

    .line 0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzauk;->zzb(I)B

    move-result p1

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzauk;II)Lcom/google/android/gms/internal/ads/zzauk;
    .locals 1

    .line 0
    if-ltz p2, :cond_0

    if-gt p2, p3, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzauk;->zza:[B

    array-length v0, p1

    if-gt p3, v0, :cond_0

    if-gt p2, p3, :cond_0

    if-gt p3, v0, :cond_0

    sub-int/2addr p3, p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzauk;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzauk;->zzh([BII)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzauk;-><init>([B)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzaty;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzatz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzatz;-><init>()V

    return-object v0
.end method
