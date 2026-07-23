.class public final Lcom/google/android/gms/internal/ads/zzguc;
.super Lcom/google/android/gms/internal/ads/zzgtz;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgtz;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgtz;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgua;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzgtz;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgtz;

    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzgtz;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgtz;

    return-object p0
.end method

.method public final varargs zzg([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgtz;->zzb([Ljava/lang/Object;I)V

    return-object p0
.end method

.method public final zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzguc;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzgtz;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgua;

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzguf;
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzguf;->zzt([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v0

    return-object v0
.end method
