.class final Lcom/google/android/gms/internal/ads/zziaf;
.super Lcom/google/android/gms/internal/ads/zziag;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzian;

.field private zzb:I

.field private final zzc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzian;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziaf;->zza:Lcom/google/android/gms/internal/ads/zzian;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zziag;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zziaf;->zzb:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzian;->zzc()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zziaf;->zzc:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziaf;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziaf;->zzc:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziaf;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziaf;->zzc:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zziaf;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziaf;->zza:Lcom/google/android/gms/internal/ads/zzian;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzian;->zzb(I)B

    move-result v0

    return v0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
