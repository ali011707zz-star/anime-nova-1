.class final Lcom/google/android/gms/internal/ads/zzgsx;
.super Ljava/util/AbstractCollection;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgsy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgsy;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgsx;->zza:Lcom/google/android/gms/internal/ads/zzgsy;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsx;->zza:Lcom/google/android/gms/internal/ads/zzgsy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgvn;->zzf()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsx;->zza:Lcom/google/android/gms/internal/ads/zzgsy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgsy;->zzr(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsx;->zza:Lcom/google/android/gms/internal/ads/zzgsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgsy;->zzk()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsx;->zza:Lcom/google/android/gms/internal/ads/zzgsy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgvn;->zzd()I

    move-result v0

    return v0
.end method
