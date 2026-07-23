.class final Lcom/google/android/gms/internal/ads/zzauj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzauk;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzauk;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzauk;->zza:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzauk;->zza:[B

    array-length v3, v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzauk;->zzb(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzauk;->zzg(B)I

    move-result v2

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzauk;->zzb(I)B

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzauk;->zzg(B)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzauk;->zza:[B

    array-length p1, p1

    invoke-static {v2, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
